/*
 * Copyright © 2020 All rights reserved.
 * Copyright Owner: John Jung-Woon Yoo
 * The code in this file is copyrighted,
 * and cannot be used for commercial and/or non-commercial purposes
 * without written permission of the copyright owner.
 * If you would like to use the code in this file entirely or partially,
 * contact the copyright owner by email (jyoo@bradley.edu) for permission.
 */

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedList;

import org.apache.commons.math3.util.CombinatoricsUtils;


class SuperSubRelationship {
    String m_SuperParameter;// parent parameter
    String m_SubParameter;// child parameter
}

class WebServicesInfo {
	String m_WebServiceID;
	String m_WebServiceSerial;
	LinkedList<String> m_InputParameterList;
	LinkedList<String> m_OutputParameterList;
	Double m_Price;

	// here we made one input linked list and one output linked list to be put
	// in the characteristics of class WebServicesInfo.
	WebServicesInfo() {
		m_InputParameterList = new LinkedList<String>();
		m_OutputParameterList = new LinkedList<String>();
	}
}

class parameterInfo {
	LinkedList<String> m_WSwithInputParameterX;
	LinkedList<String> m_WSwithOutputParameterX;

	// here we made two linked lists. one of which shows the list of web
	// services that have the parameter as input.
	// the other one shows the list of web services that have the parameter as
	// output.
	parameterInfo() {
		m_WSwithInputParameterX = new LinkedList<String>();
		m_WSwithOutputParameterX = new LinkedList<String>();
	}
}

public class BruteForceWSC {
	
	int m_MaxStage;// = 30;
	int m_NoOfCompositionResults = 0;//0 - optimal, 1 - one solutions, 2 - two solutions
	int m_ObjectiveFunctionMultiplier = 10;

	String m_DefaultFilePath;

	int m_OPTIMAL = 0;
	int m_FEASIBLE = 1;
	int m_INFEASIBLE = 2;
	int m_UNBOUNDED = 3;
	int m_ERROR = -1;
	int m_ERROR2 = -2;

	Hashtable<String, String> m_ParametersUsedForInput;//service.wsdl => Request <Concept, "concept">
	Hashtable<String, String> m_ParametersUsedForOutput;//service.wsdl => Response <Concept, "concept">


	LinkedList<String> m_AllParameters;//taxonomy.owl => "Thing : Concept" => Use only "Concept" <Concept, "concept">

	Hashtable<String, String> m_BinaryVariables;// for semantic constraints : Hashtable<Concept, no of variables>

	// key is an numerical index starting with 1.
    Hashtable<String, SuperSubRelationship> m_SuperSubRelationships;// each row
                                                                    // in the
                                                                    // hierarchy
                                                                    // table
    // key is the parent parameter
    Hashtable<String, LinkedList<String>> m_SuperSubHierarchy;// key is a
                                                                // parent parameter ID,
                                                                // content is a
                                                                // list of
                                                                // direct child
                                                                // parameters

    // key is the child parameter
    Hashtable<String, String> m_SubSuperHierarchy;// key is a
                                                                // child parameter ID,
                                                                // content is the
                                                                // parent parameter

	//LinkedList<Task> m_Tasks;//challenge.wsdl => Task #
	LinkedList<String> m_ExecutionServicesForMinServices;
	//LinkedList<String> m_ExecutionServicesForMinDepths;

	// (key:Web service IDs, content: list of WebServices(WebServicesInfo))
	// It is the hash table which has all the web services.

	//for Microsoft SQL Server
	//public String DBconnectionString = "jdbc:sqlserver://EGT-NC2208\\AUTOPLAN;database=AutoPlanCourse;integratedSecurity=true;";
	//for MySQL
	public String DBconnectionString = "jdbc:mysql://localhost:3306/" + "autowscs";
	public String DBDriver = "com.mysql.cj.jdbc.Driver";
	public String DBUserID = "autoplan";
	public String DBPassword = "autoplan";
	public long DBTransactionID = 0;
	public int noOfDepthInHierarchy = 0;
	public int noOfChildrenInHierarchy = 0;
	
	public Hashtable<Integer, LinkedList<String>> m_SolutionHashTable;

	public Hashtable<String, WebServicesInfo> m_AllWebServicesHash;
	// (key:Web service IDs, content: list of WebServices(WebServicesInfo))
	// It is the hash table which has all the web services.

	public Hashtable<String, LinkedList<String>> m_WebServicesWithInputParameterX;
	// (key:parameter, content: list of WebServiceID)
	// It is the hash table which as each parameter ID as the key and the web
	// service which have
	// that parameter as Input.

	public Hashtable<String, LinkedList<String>> m_WebServicesWithOutputParameterX;
	// (key:Web service IDs, content: list of WebServices(WebServicesInfo))
	// It is the hash table which as each parameter ID as the key and the web
	// service which have
	// that parameter as Input.

	public Hashtable<String, parameterInfo> m_AllParametersHash;
	// key: parameter, content: list of WS-related IN/OUT parameters

	public LinkedList<String> m_ListOfInitialParameters;
	public LinkedList<String> m_ListOfGoalParameters;

	WebServicesInfo m_TempWebServiceInfo;
	String m_CurrentElement;
	boolean m_inputOrOutputFlag = true;//true means input parameters/false means output parameters
	Integer m_LabelIndex = 0;

	public int m_SerialNoOfWebServices = 0;
	public int m_NoOfWebServices = 0;

	BruteForceWSC()
    {
		super();

		m_DefaultFilePath = "c:\\AutoPlan\\";
    	m_MaxStage = 6;

    	m_ParametersUsedForInput = new Hashtable<String, String>(100, (float)0.5);
    	m_ParametersUsedForOutput = new Hashtable<String, String>(100, (float)0.5);

    	m_AllParameters = new LinkedList<String>();
    	m_BinaryVariables = new Hashtable<String, String>();

    	m_SuperSubRelationships = new Hashtable<String, SuperSubRelationship>(100, (float) 0.5);
        m_SuperSubHierarchy = new Hashtable<String, LinkedList<String>>(100, (float) 0.5);
        m_SubSuperHierarchy = new Hashtable<String, String>(100, (float) 0.5);

    	m_ExecutionServicesForMinServices = new LinkedList<String> ();

		m_SolutionHashTable = new Hashtable<Integer, LinkedList<String>>();
		m_AllWebServicesHash = new Hashtable<String, WebServicesInfo>();
		m_WebServicesWithInputParameterX = new Hashtable<String, LinkedList<String>>();
		m_WebServicesWithOutputParameterX = new Hashtable<String, LinkedList<String>>();

		m_AllParametersHash = new Hashtable<String, parameterInfo>();
		//m_AllConectionsHash = new Hashtable<String, LinkedList<aPairOfLabelsConnectingTwoCommunities>>();
		m_ListOfInitialParameters = new LinkedList<String>();
		m_ListOfGoalParameters = new LinkedList<String>();
    }

	
	void readWebServicesFromDatabase() {
		// TODO Auto-generated method stub

		try {
			Connection conn0 = null;
			Connection conn1 = null;
			Connection conn2 = null;
			Connection conn3 = null;
			
			String connectionString = DBconnectionString;
			conn0 = DriverManager.getConnection(connectionString, DBUserID, DBPassword);
			conn1 = DriverManager.getConnection(connectionString, DBUserID, DBPassword);
			conn2 = DriverManager.getConnection(connectionString, DBUserID, DBPassword);
			conn3 = DriverManager.getConnection(connectionString, DBUserID, DBPassword);

			Statement stmt0 = null;
			Statement stmt1 = null;
			Statement stmt2 = null;
			Statement stmt3 = null;
			
			stmt0 = conn0.createStatement();
			stmt1 = conn1.createStatement();
			stmt2 = conn2.createStatement();
			stmt3 = conn3.createStatement();

			String qry0 = "SELECT COUNT(*) FROM WebServiceList;";
			ResultSet recordSetForNoOfWebServices = stmt0.executeQuery(qry0);
			recordSetForNoOfWebServices.next();
			m_NoOfWebServices = Integer.valueOf(recordSetForNoOfWebServices.getString(1).trim());

			String qry1 = "SELECT * FROM WebServiceList;";

			ResultSet recordSetForAllWebServicesInfo = stmt1.executeQuery(qry1);
			WebServicesInfo aWebService;

			//reading a list of web services with their parameters and their general information
			ResultSet rs;

			while(recordSetForAllWebServicesInfo.next() == true)
			{
				aWebService = new WebServicesInfo();
				aWebService.m_WebServiceSerial = recordSetForAllWebServicesInfo.getString(1).trim();
				aWebService.m_WebServiceID = recordSetForAllWebServicesInfo.getString(1).trim();
				aWebService.m_Price = Double.valueOf(recordSetForAllWebServicesInfo.getString(4).trim());

				//if( m_EliminatedWebServices.contains(aWebService.m_WebServiceID) != true)
				{

					String qry2 = "SELECT * FROM InputParameter WHERE webServiceID = '"+aWebService.m_WebServiceSerial+"';";
					ResultSet recordSetForInputParameters = stmt2.executeQuery(qry2);

					while(recordSetForInputParameters.next() ==true)
					{
						// 2 means second column.
						String inputParameter = recordSetForInputParameters.getString(2).trim();

						//if(m_SerialNoOfWebServices > m_NoOfWebServices*(1 - m_CommunityEliminationRatio))//0.7
						if(m_SerialNoOfWebServices > m_NoOfWebServices)//0.7
						{
							inputParameter = inputParameter + "ABC";
						}

						m_ParametersUsedForInput.put(inputParameter , "concept");
						aWebService.m_InputParameterList.addLast(inputParameter);

						LinkedList<String> aWebServicesList;
						aWebServicesList = (LinkedList<String>) m_WebServicesWithInputParameterX.get(inputParameter);

			    		if(aWebServicesList == null)
			    		{
			    			aWebServicesList = new LinkedList<String>();
			    			aWebServicesList.add(aWebService.m_WebServiceID.trim());
						}
						else
						{
							aWebServicesList.add(aWebService.m_WebServiceID.trim());
						}
						m_WebServicesWithInputParameterX.put(inputParameter, aWebServicesList);
					}
					recordSetForInputParameters.close();

					String qry3 = "SELECT * FROM OutputParameter WHERE webServiceID = '"+aWebService.m_WebServiceSerial+"';";
					ResultSet recordSetForOutputParameters = stmt2.executeQuery(qry3);

					while(recordSetForOutputParameters.next() == true)
					{
						String outputParameter = recordSetForOutputParameters.getString(2).trim();

						m_ParametersUsedForOutput.put(outputParameter , "concept");
						aWebService.m_OutputParameterList.addLast(outputParameter);

						LinkedList<String> aWebServicesList;
						aWebServicesList = (LinkedList<String>) m_WebServicesWithOutputParameterX.get(outputParameter);
						if(aWebServicesList == null)
			    		{
			    			aWebServicesList = new LinkedList<String>();
			    			aWebServicesList.add(aWebService.m_WebServiceID.trim());
						}
						else
						{
							aWebServicesList.add(aWebService.m_WebServiceID.trim());
						}
						m_WebServicesWithOutputParameterX.put(outputParameter, aWebServicesList);

					}

					recordSetForOutputParameters.close();

					m_AllWebServicesHash.put(aWebService.m_WebServiceID, aWebService);
					for(int i = 0; i < aWebService.m_InputParameterList.size(); i++)
					{
						addOneWebServiceToParameterList(m_WebServicesWithInputParameterX, aWebService.m_InputParameterList.get(i),
								aWebService.m_WebServiceID);
					}

					for(int i = 0; i < aWebService.m_OutputParameterList.size(); i++)
					{
						addOneWebServiceToParameterList(m_WebServicesWithOutputParameterX, aWebService.m_OutputParameterList.get(i),
								aWebService.m_WebServiceID);
					}
				}
			}

            stmt3 = conn3.createStatement();

            String sql = "SELECT * FROM parameterhierarchy";
            stmt3.executeQuery(sql);
            ResultSet m_ResultSet = stmt3.getResultSet();

            while (m_ResultSet.next()) {
                if (m_AllParameters.contains(m_ResultSet.getString(1)) == false) {

                    m_AllParameters.add(m_ResultSet.getString(1));
                }
                if (m_AllParameters.contains(m_ResultSet.getString(2)) == false) {
                    // m_AllParameters.add(m_ResultSet.getString(1));
                    m_AllParameters.add(m_ResultSet.getString(2));
                }
            }

            m_ResultSet.close();
			//

		} catch (SQLException sqle) {
			// TODO Auto-generated catch block
			sqle.printStackTrace();
		} 

	}
	
	// In order to fill the hash table of parameters with the web services which
	// have the parameter as their IN/OUT we run this public void.
	public void addOneWebServiceToParameterList(
			Hashtable<String, LinkedList<String>> webServicesWithParameterX,
			String parameterID, String webServiceID) {
		// if the linked list of the parameter is vacant we need to
		if (webServicesWithParameterX.get(parameterID) == null) {
			LinkedList<String> aLinkedList = new LinkedList<String>();
			aLinkedList.add(webServiceID);
			webServicesWithParameterX.put(parameterID, aLinkedList);
		} else {
			if (webServicesWithParameterX.get(parameterID).contains(
					webServiceID) != true) {
				webServicesWithParameterX.get(parameterID)
						.addLast(webServiceID);
			}
		}
	}
	
	private int discoverStagePlan() throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Integer stageNumber = 1;

		LinkedList<String> currentlyKnownKnowledge = new LinkedList<String> ();
		LinkedList<String> aCopyOfExecutionServices = new LinkedList<String> ();
		LinkedList<String> aCopyOfGoals = new LinkedList<String> ();

		currentlyKnownKnowledge = (LinkedList<String>)m_ListOfInitialParameters.clone();
		aCopyOfExecutionServices= (LinkedList<String>)m_ExecutionServicesForMinServices.clone();
		aCopyOfGoals = (LinkedList<String>)m_ListOfGoalParameters.clone();
		
		for(int i = 0; i < m_ListOfInitialParameters.size(); i++)
		{
			String aParameter = m_ListOfInitialParameters.get(i);//m_AllWebServicesHash.get(aListOfWSInCurrentStage.get(l)).m_OutputParameterList.get(m);
			currentlyKnownKnowledge.add(aParameter);
			while (aParameter != null && m_SubSuperHierarchy.get(aParameter) != null && m_SubSuperHierarchy.get(aParameter) != "root")
			{
				currentlyKnownKnowledge.add(m_SubSuperHierarchy.get(aParameter));
				aParameter = m_SubSuperHierarchy.get(aParameter);
			}					

		}

		while(aCopyOfExecutionServices.isEmpty() == false)
		{
			//select all web services whose inputs are satisfied by currently known parameters
			for(int i = 0; i < aCopyOfExecutionServices.size(); i++)
			{
				String aWSID = aCopyOfExecutionServices.get(i);
				WebServicesInfo aWSInfo = new WebServicesInfo();
				aWSInfo = m_AllWebServicesHash.get(aWSID);

				int noOfInputParameters = aWSInfo.m_InputParameterList.size();
				int noOfMatchingInputs = 0;

				for(int j = 0; j < noOfInputParameters; j++)
				{
					for (int k = 0; k < currentlyKnownKnowledge.size(); k++)
					{
						if(aWSInfo.m_InputParameterList.get(j).compareTo(currentlyKnownKnowledge.get(k)) == 0 )
						{
							noOfMatchingInputs++;
							break;
						}
					}

					if(noOfInputParameters == noOfMatchingInputs)
					{
						if(m_SolutionHashTable.get(stageNumber) == null)
						{
							LinkedList<String> anInitialList = new LinkedList<String>();
							anInitialList.add(aWSID);
							m_SolutionHashTable.put(stageNumber, anInitialList);
						}
						else
						{
							m_SolutionHashTable.get(stageNumber).add(aWSID);
						}

						//aCopyOfExecutionServices.remove(i);
						break;
					}
				}
			}

			if(m_SolutionHashTable.get(stageNumber) != null)
			{
				LinkedList<String> aListOfWSInCurrentStage = m_SolutionHashTable.get(stageNumber);
				for(int l = 0; l < aListOfWSInCurrentStage.size(); l++)
				{
					int noOfOutputParameters = m_AllWebServicesHash.get(aListOfWSInCurrentStage.get(l)).m_OutputParameterList.size();
					for (int m = 0; m < noOfOutputParameters; m++)
					{
						String aParameter = m_AllWebServicesHash.get(aListOfWSInCurrentStage.get(l)).m_OutputParameterList.get(m);
						currentlyKnownKnowledge.add(aParameter);
						while (aParameter != null && m_SubSuperHierarchy.get(aParameter) != null && m_SubSuperHierarchy.get(aParameter) != "root")
						{
							currentlyKnownKnowledge.add(m_SubSuperHierarchy.get(aParameter));
							aParameter = m_SubSuperHierarchy.get(aParameter);
						}					
					}
					aCopyOfExecutionServices.remove(aListOfWSInCurrentStage.get(l));
				}
				stageNumber++;
			}
			else
			{
				//System.out.println("Infeasible: No usable WebServices with initials");
				break;
			}
		}

		//Check if CurrentlyKnownKnowledge includes all goal parameters.
		boolean goalCompleted = false;
		int noOfGoals = aCopyOfGoals.size();
		int counter = 0;
		for(int i = 1; i <= aCopyOfGoals.size(); i++)
		{
			if (currentlyKnownKnowledge.contains(aCopyOfGoals.get(i-1)) == false)
			{
				goalCompleted = false;
				break;
			}
			else
			{	
				counter++;
			}
		}
		
		if(counter == noOfGoals)
		{
			System.out.println("Feasible: goal(s) accomplished");
			goalCompleted = true;
		}
		
		if(goalCompleted != true)
		{
			//System.out.println("Infeasible: some goal(s) not accomplished");
			return 1;//Solution Not Found
		}
		else //(goalCompleted == true)
		{
			//insert solution into database
			Connection conn0 = null;
			//String DBconnectionString = "jdbc:sqlserver://EGT-23454;database=CPDataSet1;integratedSecurity=true;";
			String connectionString = DBconnectionString;
			conn0 = DriverManager.getConnection(connectionString, DBUserID, DBPassword);
	
			Statement stmt0 = null;
			stmt0 = conn0.createStatement();
	
			String query;
	
			int noOfStage = stageNumber - 1;
			stmt0.executeUpdate("DELETE FROM Result WHERE transactionID = " + DBTransactionID + ";");
	
			for (int n = 1; n<= noOfStage; n++)
			{
				for (int p = 0 ; p < m_SolutionHashTable.get(n).size(); p++)
				{
					query = "INSERT INTO Result VALUES (" + DBTransactionID + ", " + n + ", '" + m_SolutionHashTable.get(n).get(p) + "');";
					System.out.println("Stage: " + n + " WebService: " + m_SolutionHashTable.get(n).get(p));
					stmt0.executeUpdate(query);
				}
			}
			//conn0.close();
			
			return 0;//Solution Found
		}
	}

	// read hierarchy
    void setParameterRelationships() throws ClassNotFoundException {

        try {
            String connectionString = DBconnectionString;
            
            Connection conn0 = null;
            conn0 = DriverManager.getConnection(connectionString, DBUserID, DBPassword);

            Statement stmt0 = null;
            stmt0 = conn0.createStatement();
            //String sql = "SELECT * FROM parameterhierarchy";
            
            //YOO - noOfDepth, noOfChildren parameterize
        	String sql = "";
            if (noOfDepthInHierarchy != 0 && noOfChildrenInHierarchy != 0)
            {
            	sql = "SELECT * FROM parameterhierarchy WHERE noOfDepth = " + noOfDepthInHierarchy + " AND noOfChildren = " + noOfChildrenInHierarchy;
            }
            else
            {
            	sql = "SELECT * FROM parameterhierarchy";
            }
            
            stmt0.executeQuery(sql);
            ResultSet m_ResultSet = stmt0.getResultSet();

            int aCounter = 1;
            while (m_ResultSet.next()) {
            	
            	m_SubSuperHierarchy.put(m_ResultSet.getString(2),m_ResultSet.getString(1));
                SuperSubRelationship aRelationship = new SuperSubRelationship();

                aRelationship.m_SuperParameter = m_ResultSet.getString(1);
                aRelationship.m_SubParameter = m_ResultSet.getString(2);

                m_SuperSubRelationships.put(String.valueOf(aCounter), aRelationship);
                aCounter++;

                if (m_SuperSubHierarchy.containsKey(m_ResultSet.getString(1)) == true) {

                    // retrieve existing parent's record from hashtable and a
                    // child
                    m_SuperSubHierarchy.get(m_ResultSet.getString(1)).add(m_ResultSet.getString(2));
                } else {
                    LinkedList<String> Children = new LinkedList<String>();
                    // create a record in the hashtable and add a Child
                    Children.add(m_ResultSet.getString(2));
                    m_SuperSubHierarchy.put(m_ResultSet.getString(1), Children);
                }

            }

            // m_ResultSet.close();

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    
    public void createAllParameterRelatedDataStructure()
	{
		Enumeration allKeysOfInputParameters = m_WebServicesWithInputParameterX.keys();
		Enumeration allKeysOfOutputParameters = m_WebServicesWithOutputParameterX.keys();
		Enumeration allKeysOfParameters = m_AllParametersHash.keys();

		while (allKeysOfInputParameters.hasMoreElements() == true)
		{
			m_ParametersUsedForInput.put((String)allKeysOfInputParameters.nextElement(), "concept");
		}

		while (allKeysOfOutputParameters.hasMoreElements() == true)
		{
			m_ParametersUsedForOutput.put((String)allKeysOfOutputParameters.nextElement(), "concept");
		}

		while (allKeysOfParameters.hasMoreElements() == true)
		{
			m_AllParameters.add((String)allKeysOfParameters.nextElement());
		}
	}

	public void createAllParameterHashTable()
	{
		Enumeration allKeysOfInputParameters = m_WebServicesWithInputParameterX.keys();
		Enumeration allKeysOfOutputParameters = m_WebServicesWithOutputParameterX.keys();

		// filling data to AllParameterHash
		while (allKeysOfInputParameters.hasMoreElements() == true) {
			String parameterID = (String) allKeysOfInputParameters.nextElement();
			parameterInfo aParameterInfo = new parameterInfo();
			aParameterInfo.m_WSwithInputParameterX = m_WebServicesWithInputParameterX.get(parameterID);
			m_AllParametersHash.put(parameterID, aParameterInfo);
		}

		while (allKeysOfOutputParameters.hasMoreElements() == true) {
			String parameterID = (String) allKeysOfOutputParameters.nextElement();
			if (m_AllParametersHash.containsKey(parameterID) == true) // exists
			{
				parameterInfo aParameterInfo = m_AllParametersHash.get(parameterID);
				aParameterInfo.m_WSwithOutputParameterX = m_WebServicesWithOutputParameterX.get(parameterID);
			} else // not exist
			{
				parameterInfo aParameterInfo = new parameterInfo();
				aParameterInfo.m_WSwithOutputParameterX = m_WebServicesWithOutputParameterX.get(parameterID);
				m_AllParametersHash.put(parameterID, aParameterInfo);
			}
		}
	}
    
	public void generateInitialAndGoalParameters(String initialAndGoalParameterFileFullPath, LinkedList<String> initialParameters, LinkedList<String> goalParameters) throws IOException, ClassNotFoundException {

		//read initial/goal parameters from database
		try {
			Connection conn0 = null;


			//String DBconnectionString = "jdbc:sqlserver://EGT-23454;database=CPDataSet1;integratedSecurity=true;";
			String connectionString = DBconnectionString;
			conn0 = DriverManager.getConnection(connectionString, DBUserID, DBPassword);

			Statement stmt0 = null;
			stmt0 = conn0.createStatement();

			ResultSet recordSetForInitialGoal = stmt0.executeQuery("SELECT * FROM InitialGoalParameter WHERE transactionID = " + DBTransactionID + ";");

			while(recordSetForInitialGoal.next() == true)
			{
				if (recordSetForInitialGoal.getString(2).compareTo("I") == 0)
				{
					//initial
					initialParameters.add(recordSetForInitialGoal.getString(3));
				}
				else if (recordSetForInitialGoal.getString(2).compareTo("G") == 0)
				{
					//goal
					goalParameters.add(recordSetForInitialGoal.getString(3));
				}
				else
				{
					//??
				}

			}
			//conn0.close();

		} catch (SQLException sqle) {
			// TODO Auto-generated catch block
			sqle.printStackTrace();
		}
	}

	public void setInitialAndGoalParameters(LinkedList<String> initialParameters, LinkedList<String> goalParameters) {

		String textString = "";
		for(int i = 0; i < initialParameters.size(); i++)
		{
			m_ListOfInitialParameters.add(initialParameters.get(i));
			textString = textString + " " + initialParameters.get(i);
		}
		System.out.println("Initials:" + textString);
		
		textString = "";
		for(int i = 0; i < goalParameters.size(); i++)
		{
			m_ListOfGoalParameters.add(goalParameters.get(i));
			textString = textString + " " + goalParameters.get(i);
		}
		System.out.println("Goals:" + textString);
	}
	
	public static void main(String[] args) throws ClassNotFoundException, IOException, SQLException {
		// TODO Auto-generated method stub
		
		LinkedList<String> initialParameters = new LinkedList<String>();
    	LinkedList<String> goalParameters = new LinkedList<String>();
    	
    	Date startDate = new Date();
    	long startTime = startDate.getTime();

    	BruteForceWSC wsComposition = new BruteForceWSC();
    	wsComposition.DBTransactionID = Integer.valueOf(args[0]);
    	wsComposition.noOfDepthInHierarchy = Integer.valueOf(args[1]);
    	wsComposition.noOfChildrenInHierarchy = Integer.valueOf(args[2]);

//    	wsComposition.DBTransactionID = 1;
    	System.out.println("[Task " + wsComposition.DBTransactionID + "]");


    	//reading parameter hierarchy from Database
    	wsComposition.setParameterRelationships();
    	
    	//reading web services from Database
		wsComposition.readWebServicesFromDatabase();
		wsComposition.createAllParameterHashTable();
		wsComposition.createAllParameterRelatedDataStructure();

		//reading initial/goal
		String initialAndGoalParameterPath = wsComposition.m_DefaultFilePath+"initialAndGoal.query";
		wsComposition.generateInitialAndGoalParameters(initialAndGoalParameterPath, initialParameters, goalParameters);

		//set the initial and goal to m_ListOfInitial and m_ListOfGoal.
		wsComposition.setInitialAndGoalParameters(initialParameters, goalParameters);

		//Brute Force Breadth-First Search
		/************************************************************************
		 * Brute Force Breadth-First Search
		 ***********************************************************************/
		
		int n = wsComposition.m_NoOfWebServices;
		int r;
		String textString;
		boolean firstSolutionFound = false;
		for(r = 1; r <= wsComposition.m_MaxStage; r++) //maxStage = 6 
		{	
			Iterator<int[]> iterator = CombinatoricsUtils.combinationsIterator(n, r);
		    while (iterator.hasNext() && firstSolutionFound == false) {
		       final int[] combination = iterator.next();
		       ArrayList<String> listOfAllWebServices = new ArrayList<String>();
		       listOfAllWebServices = Collections.list(wsComposition.m_AllWebServicesHash.keys());
		       wsComposition.m_ExecutionServicesForMinServices.clear();
		       wsComposition.m_SolutionHashTable.clear();
		       
		       textString = "";
		       
		       //Start YOO added for the case that no WS needed.
		       if (wsComposition.discoverStagePlan() ==0)
		       {
		    	   //System.out.println(textString);
		    	   firstSolutionFound = true;
		    	   break;
		       };
		       //End YOO added for the case that no WS needed.
		       
		       for(int i = 1; i <= r; i++)
		       {
			        wsComposition.m_ExecutionServicesForMinServices.add(listOfAllWebServices.get(combination[i-1]));
			        textString = textString + " " + listOfAllWebServices.get(combination[i-1]);
		       }
		     
		       //Print all combination explored
		       //System.out.println(textString);
		       
		       //After selection of WebServices, run the detailed stage (semester) plan. 
		       /************************************************************************
		        * Composition Result Generation (WITHOUT)
		        ***********************************************************************/
		       if (wsComposition.discoverStagePlan() ==0)
		       {
		    	   //System.out.println(textString);
		    	   firstSolutionFound = true;
		    	   break;
		       };
		    }
		    
		    if (firstSolutionFound == true)
		    {
		    	System.out.println("Optimal Solution Found");
		    	break;
		    }
		}
		
		Date finishDate = new Date();
    	long finishTime = finishDate.getTime();

    	System.out.println("Duration: " + (finishTime - startTime) + " milliseconds");
	}

}
