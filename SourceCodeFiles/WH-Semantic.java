/*
 * Copyright © 2020 All rights reserved.
 * Copyright Owner: John Jung-Woon Yoo
 * The code in this file is copyrighted,
 * and cannot be used for commercial and/or non-commercial purposes
 * without written permission of the copyright owner.
 * If you would like to use the code in this file entirely or partially,
 * contact the copyright owner by email (jyoo@bradley.edu) for permission.
 */

import java.io.*;

import java.net.ServerSocket;
import java.net.Socket;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;
import java.util.LinkedList;

import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

import ilog.concert.*;
import ilog.cplex.*;
import ilog.cplex.IloCplex.Status;


import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.helpers.XMLReaderFactory;
import org.xml.sax.helpers.DefaultHandler;

class SuperSubRelationship {
    String m_SuperConcept;// parent parameter
    String m_SubConcept;// child parameter
}

//The class WebServicesInfo represents each web service.
//In this class each web service is given
//m_WebServiceID: a String which represents The unique ID of the web service.
//each object of this class (web service) has two linked list,
//m_InputParameterList: represents the Input parameters of the web service
//m_OutputParameterList: represents the Output parameters of the web service
//m_Label: represents the Label of the web service. the labels are subjected to change by each iteration.
//m_LabelPaket is used to store labels in each iteration. Then we replace all m_LabelPaket elements to m_Labels.
class WebServicesInfo {
	String m_WebServiceID;
	String m_WebServiceSerial;
	LinkedList<String> m_InputParameterList;
	LinkedList<String> m_OutputParameterList;
	//Integer m_Label;
	//Integer m_LabelPocket;
	Double m_Price;

	// here we made one input linked list and one output linked list to be put
	// in the characteristics of class WebServicesInfo.
	WebServicesInfo() {
		m_InputParameterList = new LinkedList<String>();
		m_OutputParameterList = new LinkedList<String>();
	}
}

//We need a hash table which shows for a given parameter the web services which
//have that parameter as their input and web services which have that parameter
//as their out put. each object of this class represents one parameter and the
//Linked list of web services which have that parameter as the Input and the
//Linked list of web services which have that parameter as the Output.
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


public class WebServiceComposition extends DefaultHandler
{
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


	public Hashtable<String, LinkedList<WebServicesInfo>> m_NeighborsOfWebServiceY;
	// (key,WebServiceID, content: a list of WebServiceID)
	// It is the hash table which the key is a web service and the contents are
	// its neighbors.

	public Hashtable<String, parameterInfo> m_AllParametersHash;
	// key: parameter, content: list of WS-related IN/OUT parameters

	public LinkedList<String> m_ListOfInitialParameters;
	public LinkedList<String> m_ListOfGoalParameters;

	WebServicesInfo m_TempWebServiceInfo;
	String m_CurrentElement;
	boolean m_inputOrOutputFlag = true;//true means input parameters/false means output parameters
	Integer m_LabelIndex = 0;

	public LinkedList<Integer> m_aListOfSelectedLabels;

	public LinkedList<String> m_EliminatedWebServices;

	public int m_SerialNoOfWebServices = 0;
	public int m_NoOfWebServices = 0;

	WebServiceComposition()
    {
		super();

		m_DefaultFilePath = "c:\\AutoPlan\\";
    	m_MaxStage = 5;

    	m_ParametersUsedForInput = new Hashtable<String, String>(100, (float)0.5);
    	m_ParametersUsedForOutput = new Hashtable<String, String>(100, (float)0.5);

    	m_AllParameters = new LinkedList<String>();
    	m_BinaryVariables = new Hashtable<String, String>();

    	m_SuperSubRelationships = new Hashtable<String, SuperSubRelationship>(100, (float) 0.5);
        m_SuperSubHierarchy = new Hashtable<String, LinkedList<String>>(100, (float) 0.5);
        m_SubSuperHierarchy = new Hashtable<String, String>(100, (float) 0.5);
        
     	//m_Tasks = new LinkedList<Task> ();

    	m_ExecutionServicesForMinServices = new LinkedList<String> ();
    	//m_ExecutionServicesForMinDepths = new LinkedList<String> ();


		m_SolutionHashTable = new Hashtable<Integer, LinkedList<String>>();
		m_AllWebServicesHash = new Hashtable<String, WebServicesInfo>();
		m_WebServicesWithInputParameterX = new Hashtable<String, LinkedList<String>>();
		m_WebServicesWithOutputParameterX = new Hashtable<String, LinkedList<String>>();

		m_NeighborsOfWebServiceY = new Hashtable<String, LinkedList<WebServicesInfo>>();
		m_AllParametersHash = new Hashtable<String, parameterInfo>();

		m_ListOfInitialParameters = new LinkedList<String>();
		m_ListOfGoalParameters = new LinkedList<String>();
		m_aListOfSelectedLabels = new LinkedList<Integer>() ;

		m_EliminatedWebServices = new LinkedList<String>();
    }


    void generateIPFormulation(String modelFileFullPath, int taskID)
    {
    	//System.out.println("Writing wsc.lp file (IP formulation)!");

    	Date start = new Date();
    	long startTime = start.getTime();

    	FileWriter modelFileWriter = null;
    	BufferedWriter modelBufferedWriter = null;

    	try
    	{
    		String minServicesModeFileFullPath;
    		if(taskID == 1)
    		{
    			minServicesModeFileFullPath = modelFileFullPath + "formulation" + ".lp";
    		}
    		else
    		{
    			minServicesModeFileFullPath = modelFileFullPath + "formulationWITH" + ".lp";
    		}

    		modelFileWriter = new FileWriter(minServicesModeFileFullPath);//append? true?
    		modelBufferedWriter = new BufferedWriter(modelFileWriter);

    		StringBuffer objectiveMinMaxBuffer = new StringBuffer();
    		objectiveMinMaxBuffer.append("Minimize ");
    		modelBufferedWriter.write(objectiveMinMaxBuffer.toString());
    		modelBufferedWriter.newLine();
    		modelBufferedWriter.flush();

    		int noOfWebServices = m_AllWebServicesHash.size();
    		Enumeration<String> enumerationOfWebServices = m_AllWebServicesHash.keys();

    		for(;enumerationOfWebServices.hasMoreElements();)
    		{
    			//String serviceName = m_AllServices.get(webServiceIndex);
    			String serviceName = enumerationOfWebServices.nextElement();//enumerationOfWebServices..toString();
    			StringBuffer objectiveFunctionBuffer = new StringBuffer();

    			for(int stage = 1; stage <= m_MaxStage; stage++)//Stage
    			{
    				StringBuffer sb = new StringBuffer();
    				sb.append("+");
    				//sb.append(Math.pow((double)m_ObjectiveFunctionMultiplier, (double)stage));
    				sb.append(m_AllWebServicesHash.get(serviceName).m_Price);
    				sb.append(serviceName);
    				sb.append("_");
    				sb.append(stage);

    				objectiveFunctionBuffer.append(sb);
    			}
    			modelBufferedWriter.write(objectiveFunctionBuffer.toString());
        		modelBufferedWriter.newLine();
        		modelFileWriter.flush();
    		}

    		/*
    		 * Constraints
    		 */

	    	modelBufferedWriter.write("subject to");
			modelBufferedWriter.newLine();
			modelFileWriter.flush();

			Date objective = new Date();
			long objectiveTime = objective.getTime();
			//CP System.out.println("Objective function:" + (objectiveTime - startTime));


	    	/*
	    	 * Initial constraints
	    	 */
	    	int noOfConcepts = m_AllParameters.size();
	    	LinkedList<String> initialParameters = m_ListOfInitialParameters;//m_Tasks.get(taskID).m_InitialParameters;
	    	//prefixes: I - input, O - output, K - known-unused, S - semantic

	    	for(int conceptIndex = 0; conceptIndex < noOfConcepts; conceptIndex++)
	    	{
	    		for(int variableType = 1; variableType <= 3; variableType++)//except Semantic variables
	    		{
	    			// Stage 0 (zero)
	    			StringBuffer aConstraint = new StringBuffer();

	    			switch (variableType)//Input
	    			{
		    			case 1://Input
		    			{
		    				aConstraint.append("I_");
		    				aConstraint.append(m_AllParameters.get(conceptIndex));
		    				aConstraint.append("_");
		    				aConstraint.append(0);//Stage 0
		    				aConstraint.append("=");
		    				aConstraint.append("0");
		    				break;
		    			}
		    			case 2://Output
		    			{
		    				aConstraint.append("O_");
		    				aConstraint.append(m_AllParameters.get(conceptIndex));
		    				aConstraint.append("_");
		    				aConstraint.append(0);//Stage 0
		    				aConstraint.append("=");
		    				if(initialParameters.contains(m_AllParameters.get(conceptIndex)))
		    				{
		    					aConstraint.append("1");
		    				}
		    				else
		    				{
		    					aConstraint.append("0");
		    				}
		    				break;
		    			}
		    			case 3://Known-unused
		    			{
		    				aConstraint.append("K_");
		    				aConstraint.append(m_AllParameters.get(conceptIndex));
		    				aConstraint.append("_");
		    				aConstraint.append(0);//Stage 0
		    				aConstraint.append("=");
		    				aConstraint.append("0");
		    				break;
		    			}
		    			case 4://Semantics
		    			{
		    				/*
		    				aConstraint.append("S_");
		    				aConstraint.append(m_AllParameters.get(conceptIndex));
		    				aConstraint.append("_");
		    				aConstraint.append(0);//Stage 0
		    				aConstraint.append("=");
		    				aConstraint.append("0");
		    				*/
		    				break;
		    			}
	    			}
	    			modelBufferedWriter.write(aConstraint.toString());
	    			modelBufferedWriter.newLine();

	    		}
	    	}
	    	modelFileWriter.flush();

	    	Date initial = new Date();
	    	long initialTime = initial.getTime();
	    	//CP System.out.println("Initial constraints:" + (initialTime - objectiveTime));

	    	/*
	    	 * Goal constraints
	    	 */
	    	LinkedList<String> goalParameters = m_ListOfGoalParameters;//m_Tasks.get(taskID).m_GoalParameters;
	    	int noOfGoalConcepts = goalParameters.size();

	    	for(int conceptIndex = 0; conceptIndex < noOfGoalConcepts; conceptIndex++)
	    	{
	    		StringBuffer aConstraint = new StringBuffer();
	    		aConstraint.append("+");
	    		aConstraint.append("O_");
				aConstraint.append(goalParameters.get(conceptIndex));
	    		aConstraint.append("_");
				aConstraint.append(m_MaxStage);//Stage MaxStage

				aConstraint.append("+");
				aConstraint.append("K_");
				aConstraint.append(goalParameters.get(conceptIndex));
				aConstraint.append("_");
				aConstraint.append(m_MaxStage);//Stage MaxStage

				aConstraint.append("+");
				aConstraint.append("I_");
				aConstraint.append(goalParameters.get(conceptIndex));
				aConstraint.append("_");
				aConstraint.append(m_MaxStage);//Stage MaxStage

				aConstraint.append("+");
				aConstraint.append("S_");
				aConstraint.append(goalParameters.get(conceptIndex));
				aConstraint.append("_");
				aConstraint.append(m_MaxStage);//Stage MaxStage

				aConstraint.append(">=1");

				modelBufferedWriter.write(aConstraint.toString());
    			modelBufferedWriter.newLine();
	    	}
	    	modelFileWriter.flush();

	    	Date goal = new Date();
	    	long goalTime = goal.getTime();
	    	//CP System.out.println("Goal constraints:" + (goalTime - initialTime));


			/*
			 * Web services invocation constraints
			 */
			//Output
	    	//sigma(serv(p,s))>=O(p,s)
	    	for(int conceptIndex = 0; conceptIndex < noOfConcepts; conceptIndex++)
	    	{
	    		String aConcept = m_AllParameters.get(conceptIndex);
	    		LinkedList<String> webServicesWithOutputParameterX = m_WebServicesWithOutputParameterX.get(aConcept);
	    		if( webServicesWithOutputParameterX != null)
	    		{
	    			int noOfWebServicesWithOutputParameterX = webServicesWithOutputParameterX.size();

		    		for(int stage = 1; stage <= m_MaxStage; stage++)//Stage
	    			{
			    		StringBuffer aConstraint = new StringBuffer();

		    			for(int webServiceIndex = 0; webServiceIndex < noOfWebServicesWithOutputParameterX; webServiceIndex++)
		    			{
		    				aConstraint.append("+");
		    				aConstraint.append(webServicesWithOutputParameterX.get(webServiceIndex));
		    				aConstraint.append("_");
		    				aConstraint.append(stage);
		    			}
		    			aConstraint.append("-");
		    			aConstraint.append("O_");
		    			aConstraint.append(aConcept);
		    			aConstraint.append("_");
	    				aConstraint.append(stage);
	    				aConstraint.append(">=0");
	    				String str = aConstraint.toString();
	    				modelBufferedWriter.write(str);
	        			modelBufferedWriter.newLine();
		    		}
	    		}
	    		else
	    		{
	    			for(int stage = 1; stage <= m_MaxStage; stage++)//Stage
	    			{
		    			StringBuffer aConstraint = new StringBuffer();

		    			aConstraint.append("-");
		    			aConstraint.append("O_");
		    			aConstraint.append(aConcept);
		    			aConstraint.append("_");
	    				aConstraint.append(stage);
	    				aConstraint.append(">=0");
	    				String str = aConstraint.toString();
	    				modelBufferedWriter.write(str);
	        			modelBufferedWriter.newLine();
	    			}
	    		}
	    	}
	    	modelFileWriter.flush();

	     	//serv(p,s)<=O(p,s)
	    	for(int conceptIndex = 0; conceptIndex < noOfConcepts; conceptIndex++)
	    	{
	    		String aConcept = m_AllParameters.get(conceptIndex);
	    		LinkedList<String> webServicesWithOutputParameterX = m_WebServicesWithOutputParameterX.get(aConcept);
	    		if( webServicesWithOutputParameterX != null)
	    		{
		    		int noOfWebServicesWithOutputParameterX = webServicesWithOutputParameterX.size();

		    		for(int stage = 1; stage <= m_MaxStage; stage++)//Stage
	    			{
		    			for(int webServiceIndex = 0; webServiceIndex < noOfWebServicesWithOutputParameterX; webServiceIndex++)
		    			{
		    				StringBuffer aConstraint = new StringBuffer();
			    			aConstraint.append("+");
		    				aConstraint.append(webServicesWithOutputParameterX.get(webServiceIndex));
		    				aConstraint.append("_");
		    				aConstraint.append(stage);
		    				aConstraint.append("-");
			    			aConstraint.append("O_");
			    			aConstraint.append(aConcept);
			    			aConstraint.append("_");
		    				aConstraint.append(stage);
		    				aConstraint.append("<=0");
		    				modelBufferedWriter.write(aConstraint.toString());
		        			modelBufferedWriter.newLine();
		    			}
		    		}
	    		}
	    		else
	    		{
	    			for(int stage = 1; stage <= m_MaxStage; stage++)//Stage
	    			{
		    			StringBuffer aConstraint = new StringBuffer();

		    			aConstraint.append("-");
		    			aConstraint.append("O_");
		    			aConstraint.append(aConcept);
		    			aConstraint.append("_");
	    				aConstraint.append(stage);
	    				aConstraint.append("<=0");
	    				modelBufferedWriter.write(aConstraint.toString());
	        			modelBufferedWriter.newLine();
	    			}
	    		}
	    	}
	    	modelFileWriter.flush();


	    	//Input
	    	//sigma(serv(p,s))>=I(p,s)
	    	for(int conceptIndex = 0; conceptIndex < noOfConcepts; conceptIndex++)
	    	{
	    		String aConcept = m_AllParameters.get(conceptIndex);
	    		LinkedList<String> webServicesWithInputParameterX = m_WebServicesWithInputParameterX.get(aConcept);

	    		if( webServicesWithInputParameterX != null)
	    		{
		    		int noOfWebServicesWithInputParameterX = webServicesWithInputParameterX.size();

		    		for(int stage = 1; stage <= m_MaxStage; stage++)//Stage
	    			{
			    		StringBuffer aConstraint = new StringBuffer();

		    			for(int webServiceIndex = 0; webServiceIndex < noOfWebServicesWithInputParameterX; webServiceIndex++)
		    			{
		    				aConstraint.append("+");
		    				aConstraint.append(webServicesWithInputParameterX.get(webServiceIndex));
		    				aConstraint.append("_");
		    				aConstraint.append(stage);
		    			}
		    			aConstraint.append("-");
		    			aConstraint.append("I_");
		    			aConstraint.append(aConcept);
		    			aConstraint.append("_");
	    				aConstraint.append(stage);
	    				aConstraint.append(">=0");
	    				modelBufferedWriter.write(aConstraint.toString());
	        			modelBufferedWriter.newLine();
		    		}
	    		}
	    		else
	    		{
	    			for(int stage = 1; stage <= m_MaxStage; stage++)//Stage
	    			{
		    			StringBuffer aConstraint = new StringBuffer();

		    			aConstraint.append("-");
		    			aConstraint.append("I_");
		    			aConstraint.append(aConcept);
		    			aConstraint.append("_");
	    				aConstraint.append(stage);
	    				aConstraint.append(">=0");
	    				modelBufferedWriter.write(aConstraint.toString());
	        			modelBufferedWriter.newLine();
	    			}
	    		}
	    	}
	    	modelFileWriter.flush();

	    	//serv(p,s)<=I(p,s)
	    	for(int conceptIndex = 0; conceptIndex < noOfConcepts; conceptIndex++)
	    	{
	    		String aConcept = m_AllParameters.get(conceptIndex);
	    		LinkedList<String> webServicesWithInputParameterX = m_WebServicesWithInputParameterX.get(aConcept);

	    		if( webServicesWithInputParameterX != null)
	    		{
		    		int noOfWebServicesWithInputParameterX = webServicesWithInputParameterX.size();

		    		for(int stage = 1; stage <= m_MaxStage; stage++)//Stage
	    			{
		    			for(int webServiceIndex = 0; webServiceIndex < noOfWebServicesWithInputParameterX; webServiceIndex++)
		    			{
		    				StringBuffer aConstraint = new StringBuffer();
			    			aConstraint.append("+");
		    				aConstraint.append(webServicesWithInputParameterX.get(webServiceIndex));
		    				aConstraint.append("_");
		    				aConstraint.append(stage);
		    				aConstraint.append("-");
			    			aConstraint.append("I_");
			    			aConstraint.append(aConcept);
			    			aConstraint.append("_");
		    				aConstraint.append(stage);
		    				aConstraint.append("<=0");
		    				modelBufferedWriter.write(aConstraint.toString());
		        			modelBufferedWriter.newLine();
		    			}
		    		}
	    		}
	    		else
	    		{
	    			for(int stage = 1; stage <= m_MaxStage; stage++)//Stage
	    			{
		    			StringBuffer aConstraint = new StringBuffer();

		    			aConstraint.append("-");
		    			aConstraint.append("I_");
		    			aConstraint.append(aConcept);
		    			aConstraint.append("_");
	    				aConstraint.append(stage);
	    				aConstraint.append("<=0");
	    				modelBufferedWriter.write(aConstraint.toString());
	        			modelBufferedWriter.newLine();
	    			}
	    		}
	    	}
	    	modelFileWriter.flush();

	    	Date invocation = new Date();
	    	long invocationTime = invocation.getTime();
	    	//CP System.out.println("Web Service invocation constraints:" + (invocationTime - objectiveTime));

			/*
			 * Non-concurrency constraints
			 */
	    	for(int conceptIndex = 0; conceptIndex < noOfConcepts; conceptIndex++)
	    	{
	    		String aConcept = m_AllParameters.get(conceptIndex);

	    		for(int stage = 1; stage <= m_MaxStage; stage++)//Stage
    			{
    				StringBuffer aConstraint = new StringBuffer();
	    			aConstraint.append("+");
    				aConstraint.append("O_");
    				aConstraint.append(aConcept);
    				aConstraint.append("_");
    				aConstraint.append(stage);
    				aConstraint.append("+");
	    			aConstraint.append("K_");
	    			aConstraint.append(aConcept);
	    			aConstraint.append("_");
    				aConstraint.append(stage);
    				aConstraint.append("<=1");
    				modelBufferedWriter.write(aConstraint.toString());
        			modelBufferedWriter.newLine();

        			StringBuffer bConstraint = new StringBuffer();
        			bConstraint.append("+");
        			bConstraint.append("I_");
        			bConstraint.append(aConcept);
        			bConstraint.append("_");
        			bConstraint.append(stage);
        			bConstraint.append("+");
        			bConstraint.append("K_");
        			bConstraint.append(aConcept);
        			bConstraint.append("_");
        			bConstraint.append(stage);
        			bConstraint.append("<=1");

    				modelBufferedWriter.write(bConstraint.toString());
        			modelBufferedWriter.newLine();
    			}
	    	}
	    	modelFileWriter.flush();

	    	Date nonconcurrency = new Date();
	    	long nonConcurrencyTime = nonconcurrency.getTime();
	    	//CP System.out.println("Non-concurrency constraints:" + (nonConcurrencyTime - invocationTime));

			/*
			 * Sequence constraints
			 */
	    	for(int conceptIndex = 0; conceptIndex < noOfConcepts; conceptIndex++)
	    	{
	    		String aConcept = m_AllParameters.get(conceptIndex);

	    		for(int stage = 1; stage <= m_MaxStage; stage++)//Stage
    			{
    				StringBuffer aConstraint = new StringBuffer();
	    			aConstraint.append("+");
    				aConstraint.append("I_");
    				aConstraint.append(aConcept);
    				aConstraint.append("_");
    				aConstraint.append(stage);
    				aConstraint.append("+");
	    			aConstraint.append("K_");
	    			aConstraint.append(aConcept);
	    			aConstraint.append("_");
    				aConstraint.append(stage);
    				aConstraint.append("-");
    				aConstraint.append("I_");
    				aConstraint.append(aConcept);
    				aConstraint.append("_");
    				aConstraint.append(stage-1);
    				aConstraint.append("-");
	    			aConstraint.append("O_");
	    			aConstraint.append(aConcept);
	    			aConstraint.append("_");
    				aConstraint.append(stage-1);
    				aConstraint.append("-");
    				aConstraint.append("K_");
    				aConstraint.append(aConcept);
    				aConstraint.append("_");
    				aConstraint.append(stage-1);
    				aConstraint.append("-");
	    			aConstraint.append("S_");
	    			aConstraint.append(aConcept);
	    			aConstraint.append("_");
    				aConstraint.append(stage-1);
    				aConstraint.append("<=0");
    				modelBufferedWriter.write(aConstraint.toString());
        			modelBufferedWriter.newLine();
        		}
	    	}
	    	modelFileWriter.flush();

	    	Date sequence = new Date();
	    	long sequenceTime = sequence.getTime();
	    	//CP System.out.println("Semantic constraints:" + (semanticTime - nonConcurrencyTime));

	    	/*
             * Semantic constraints
             */

            Enumeration<SuperSubRelationship> enumerationOfSuperSubRelationships = m_SuperSubRelationships.elements();

            // S(p(1), s) >= S(p(2), s), S(p(2), s) >= S(p(3), s),
            for (; enumerationOfSuperSubRelationships.hasMoreElements();) {
                SuperSubRelationship aSuperSubRelationship = enumerationOfSuperSubRelationships.nextElement();

                if (aSuperSubRelationship.m_SuperConcept.compareTo("root") != 0) {
                    for (int stage = 0; stage <= m_MaxStage; stage++)// Stage
                                                                        // starts
                                                                        // from
                                                                        // "0"
                    {
                        StringBuffer aConstraint = new StringBuffer();
                        aConstraint.append("+");
                        aConstraint.append("S_");
                        aConstraint.append(aSuperSubRelationship.m_SuperConcept);
                        aConstraint.append("_");
                        aConstraint.append(stage);
                        aConstraint.append("-");
                        aConstraint.append("S_");
                        aConstraint.append(aSuperSubRelationship.m_SubConcept);
                        aConstraint.append("_");
                        aConstraint.append(stage);
                        aConstraint.append(">=0");
                        modelBufferedWriter.write(aConstraint.toString());
                        modelBufferedWriter.newLine();
                    }
                }
            }
            modelFileWriter.flush();

            // S(p(1), s) >= O(p(1), s)
            for (int conceptIndex = 0; conceptIndex < noOfConcepts; conceptIndex++) {
                for (int stage = 0; stage <= m_MaxStage; stage++)// Stage starts
                                                                    // from "0"
                {
                    StringBuffer aConstraint = new StringBuffer();
                    aConstraint.append("+");
                    aConstraint.append("S_");
                    aConstraint.append(m_AllParameters.get(conceptIndex));
                    aConstraint.append("_");
                    aConstraint.append(stage);
                    aConstraint.append("-");
                    aConstraint.append("O_");
                    aConstraint.append(m_AllParameters.get(conceptIndex));
                    aConstraint.append("_");
                    aConstraint.append(stage);
                    aConstraint.append(">=0");
                    modelBufferedWriter.write(aConstraint.toString());
                    modelBufferedWriter.newLine();
                }
            }
            modelFileWriter.flush();

            // """S(p(1), s) <= O(p(1), s)""" or S(p(1), s) <= O(p(2), s) or
            // S(p(1), s) <= O(p(3), s)
            for (int conceptIndex = 0; conceptIndex < noOfConcepts; conceptIndex++) {
                for (int stage = 0; stage <= m_MaxStage; stage++)// Stage starts
                                                                    // from "0"
                                                                    // but "B_"
                                                                    // starts
                                                                    // from
                                                                    // Stage 1
                                                                    // due to
                                                                    // counter++
                {
                    String aConcept = m_AllParameters.get(conceptIndex);
                    String aSuperConcept = m_AllParameters.get(conceptIndex);

                    LinkedList<String> aListOfSubClasses = null;

                    StringBuffer binaryConstraint = new StringBuffer();
                    boolean multipleBinaryFlag = false;
                    int counter = 0;
                    counter++;

                    StringBuffer cConstraint = new StringBuffer();
                    cConstraint.append("+");
                    cConstraint.append("S_");
                    cConstraint.append(aConcept);
                    cConstraint.append("_");
                    cConstraint.append(stage);
                    cConstraint.append("-");
                    cConstraint.append("O_");
                    cConstraint.append(aConcept);// SubClass
                    cConstraint.append("_");
                    cConstraint.append(stage);
                    cConstraint.append("-");
                    cConstraint.append("B_");
                    cConstraint.append(aConcept);
                    cConstraint.append("_");
                    cConstraint.append(counter);
                    cConstraint.append("_");
                    cConstraint.append(stage);
                    cConstraint.append("<=0");

                    modelBufferedWriter.write(cConstraint.toString());
                    modelBufferedWriter.newLine();

                    binaryConstraint.append("+");
                    binaryConstraint.append("B_");
                    binaryConstraint.append(aConcept);
                    binaryConstraint.append("_");
                    binaryConstraint.append(counter);
                    binaryConstraint.append("_");
                    binaryConstraint.append(stage);

                    StringBuffer binaryVariable1 = new StringBuffer();
                    binaryVariable1.append("B_");
                    binaryVariable1.append(aConcept);
                    binaryVariable1.append("_");
                    binaryVariable1.append(counter);
                    binaryVariable1.append("_");
                    binaryVariable1.append(stage);

                    // m_BinaryVariables.add(binaryVariable1.toString());

                    LinkedList<String> aSubHierarchy = new LinkedList<String>();
                    aListOfSubClasses = m_SuperSubHierarchy.get(aSuperConcept);
                    if (aListOfSubClasses != null) {
                        int noOfSubConceptsOfThisSuperConcept = aListOfSubClasses.size();

                        for (int index = 0; index < noOfSubConceptsOfThisSuperConcept; index++) {
                            aSubHierarchy.addLast(aListOfSubClasses.get(index));
                        }

                        // while((aListOfSubClasses =
                        // m_SuperSubHierarchy.get(aSuperConcept)).size() != 0)
                        while (aSubHierarchy.isEmpty() == false) {
                            multipleBinaryFlag = true;
                            counter++;

                            StringBuffer aConstraint = new StringBuffer();
                            StringBuffer binaryVariable2 = new StringBuffer();
                            String aSubConcept = null;

                            aSubConcept = aSubHierarchy.removeFirst();// always
                                                                        // get
                                                                        // the
                                                                        // first
                                                                        // entry

                            aConstraint.append("+");
                            aConstraint.append("S_");
                            aConstraint.append(aConcept);
                            aConstraint.append("_");
                            aConstraint.append(stage);
                            aConstraint.append("-");
                            aConstraint.append("O_");
                            aConstraint.append(aSubConcept);// SubClass
                            aConstraint.append("_");
                            aConstraint.append(stage);
                            aConstraint.append("-");
                            aConstraint.append("B_");
                            aConstraint.append(aConcept);
                            aConstraint.append("_");
                            aConstraint.append(counter);
                            aConstraint.append("_");
                            aConstraint.append(stage);
                            aConstraint.append("<=0");
                            modelBufferedWriter.write(aConstraint.toString());
                            modelBufferedWriter.newLine();

                            binaryConstraint.append("+");
                            binaryConstraint.append("B_");
                            binaryConstraint.append(aConcept);
                            binaryConstraint.append("_");
                            binaryConstraint.append(counter);
                            binaryConstraint.append("_");
                            binaryConstraint.append(stage);

                            binaryVariable2.append("B_");
                            binaryVariable2.append(aConcept);
                            binaryVariable2.append("_");
                            binaryVariable2.append(counter);
                            binaryVariable2.append("_");
                            binaryVariable2.append(stage);

                            // m_BinaryVariables.add(binaryVariable2.toString());

                            aSuperConcept = aSubConcept;
                            aListOfSubClasses = m_SuperSubHierarchy.get(aSuperConcept);
                            if (aListOfSubClasses != null) {
                                noOfSubConceptsOfThisSuperConcept = aListOfSubClasses.size();

                                for (int index = 0; index < noOfSubConceptsOfThisSuperConcept; index++) {
                                    aSubHierarchy.addLast(aListOfSubClasses.get(index));
                                }
                            }
                        }

                        {
                            binaryConstraint.append("<=");
                            binaryConstraint.append(counter - 1);
                            // binaryConstraint.append(counter);
                            modelBufferedWriter.write(binaryConstraint.toString());
                            modelBufferedWriter.newLine();
                            modelFileWriter.flush();
                        }
                    } else {
                        {
                            binaryConstraint.append("<=");
                            binaryConstraint.append(counter - 1);
                            // binaryConstraint.append(counter);
                            modelBufferedWriter.write(binaryConstraint.toString());
                            modelBufferedWriter.newLine();
                            modelFileWriter.flush();
                        }
                    }

                    if (stage == 0) {
                        m_BinaryVariables.put(aConcept, String.valueOf(counter));
                    }
                }
            }
            modelFileWriter.flush();

            Date semantic = new Date();
            long semanticTime = semantic.getTime();
            //System.out.println("Semantic constraints:" + (semanticTime - sequenceTime));

            
			/*
			 * Binary constraints
			 */

	    	modelBufferedWriter.write("bounds");
	    	modelBufferedWriter.newLine();
	    	modelBufferedWriter.write("binaries");
			modelBufferedWriter.newLine();
			modelFileWriter.flush();

			//input, output, known-unused, semantic variables
	    	for(int conceptIndex = 0; conceptIndex < noOfConcepts; conceptIndex++)
	    	{
	    		String aConcept = m_AllParameters.get(conceptIndex);
	    		for(int variableType = 1; variableType <= 3; variableType++)//remove semantic variables
	    		{
	    			String variablePrefix = null;
	    			switch (variableType)//Input
	    			{
	    				case 1://Input
		    			{
		    				variablePrefix = "I_";
		    				break;
		    			}
		    			case 2://Output
		    			{
		    				variablePrefix = "O_";
		    				break;
		    			}
		    			case 3://Known-unused
		    			{
		    				variablePrefix = "K_";
		    				break;
		    			}
		    			case 4://Semantics
		    			{
		    				variablePrefix = "S_";
		    				break;
		    			}
	    			}

		    		for(int stage = 0; stage <= m_MaxStage; stage++)//Stage starts from zero(0)
	    			{
	    				StringBuffer aConstraint = new StringBuffer();

	    				aConstraint.append(variablePrefix);
	    				aConstraint.append(aConcept);
	    				aConstraint.append("_");
	    				aConstraint.append(stage);

	    				modelBufferedWriter.write(aConstraint.toString());
	        			modelBufferedWriter.newLine();
	        		}
	    		}
	    	}
	    	modelFileWriter.flush();

	    	Date binary1 = new Date();
	    	long binary1Time = binary1.getTime();
	    	//CP System.out.println("Binary (Input/Output/Known-Unused/Semantic)constraints:" + (binary1Time - semanticTime));

			//service variables
			Enumeration<String> enumerationOfWebServices1 = m_AllWebServicesHash.keys();
    		//for(int webServiceIndex = 0; webServiceIndex < noOfWebServices; webServiceIndex++)//Web services
    		for(;enumerationOfWebServices1.hasMoreElements();)
	    	//for(int webServiceIndex = 0; webServiceIndex < noOfWebServices; webServiceIndex++)
	    	{
    			String aWebService = enumerationOfWebServices1.nextElement();

	    		for(int stage = 1; stage <= m_MaxStage; stage++)//Stage starts from one(1) <=== Services
    			{
	    			StringBuffer aConstraint = new StringBuffer();
    				//aConstraint.append(m_AllServices.get(webServiceIndex));
	    			aConstraint.append(aWebService);
    				aConstraint.append("_");
    				aConstraint.append(stage);

    				modelBufferedWriter.write(aConstraint.toString());
        			modelBufferedWriter.newLine();
        			//modelFileWriter.flush();
    			}
	    	}
	    	modelFileWriter.flush();

	    	Date binary2 = new Date();
	    	long binary2Time = binary2.getTime();

			//binary variables
	    	//int noOfBinaryVariables = m_BinaryVariables.size();
	    	//for(int binaryVariableIndex = 0; binaryVariableIndex < noOfBinaryVariables; binaryVariableIndex++)
			Enumeration<String> enumerationOfBinaryVariables = m_BinaryVariables.keys();

			for(;enumerationOfBinaryVariables.hasMoreElements();)
	    	{
				String aConcept = enumerationOfBinaryVariables.nextElement();
				String aCounter = m_BinaryVariables.get(aConcept);

	    		long maxIndex = Long.valueOf(aCounter);

				for(long index = 1; index <= maxIndex; index++)
				{
					for(int stage = 0; stage <= m_MaxStage; stage++)//stage starts from 0.
					{
						StringBuffer aConstraint = new StringBuffer();
			    		aConstraint.append("B_" + aConcept);
			    		aConstraint.append("_" + index);
			    		aConstraint.append("_" + stage);

						modelBufferedWriter.write(aConstraint.toString());
						modelBufferedWriter.newLine();
					}

	    		}
				modelFileWriter.flush();
			}
	    	modelFileWriter.flush();


	    	Date binary = new Date();
	    	long binaryTime = binary.getTime();
	    	//CP System.out.println("Binary (Binary for Semantics) constraints:" + (binaryTime - semanticTime));

	    	modelBufferedWriter.write("end");
			//modelBufferedWriter.newLine();
			modelFileWriter.flush();

	    	modelBufferedWriter.close();
			modelFileWriter.close();
    	}
		catch (FileNotFoundException fnfe)
		{
			System.err.println("File not found: " + modelFileFullPath);
		}
		catch (IOException ioe)
		{
			System.err.println(ioe.getMessage());
		}
		finally
		{
			try
			{
				if(modelBufferedWriter != null)
				{
					modelBufferedWriter.close();
				}

				if(modelFileWriter != null)
				{
					modelFileWriter.close();
				}
			}
			catch (IOException e)
			{
				System.err.println(e.getMessage());
			}
		}
    }

    public int composeWebServicesForMinServices(String modelPath, int taskID) throws IOException
    {
    	try {
    		//CP System.out.println("Composing Web Services (CPLEX running)");

    		IloCplex cplex = new IloCplex();
    		OutputStream output = new FileOutputStream(m_DefaultFilePath +"log.txt");
    		cplex.setOut(output);
    		cplex.importModel(modelPath);//m_DefaultFilePath+"wsc.lp"
    		//cplex.importModel(args[0]+"wsc.lp");

    		if( cplex.isPrimalFeasible() == true)
    		{
    			//CP System.out.println("Primal Feasible");
    		}

    		cplex.solve();
    		Status status = cplex.getStatus();

    		if ( status == IloCplex.Status.Optimal )
    		{
    			//CP System.out.println("Solution status = " + cplex.getStatus());
    			//CP System.out.println("Solution value  = " + cplex.getObjValue());

    			// Access the IloLPMatrix object that has been read from a file in
    			// order to access variables which are the columns of the LP.  The
    			// method importModel() guarantees that exactly one IloLPMatrix
    			// object will exist, which is why no tests or iterators are
    			// needed in the following line of code.

    			IloLPMatrix lp = (IloLPMatrix)cplex.LPMatrixIterator().next();

    			double[] x = cplex.getValues(lp);
    			//for (int j = 0; j < x.length; ++j) {
    			//	System.out.println("Variable " + j + ": Value = " + x[j]);
            	//}

    			FileWriter compositionResultsFileWriter = null;
		    	BufferedWriter compositionResultsBufferedWriter = null;

		    	try
		    	{

		    		compositionResultsFileWriter = new FileWriter(m_DefaultFilePath+"solution.txt");

		    		compositionResultsBufferedWriter = new BufferedWriter(compositionResultsFileWriter);

		    		for (int j = 0; j < x.length - m_BinaryVariables.size(); ++j) // - m_BinaryVariables.size();
		    		{

    		    		IloNumVar numVar = lp.getNumVar(j);
    		    		String variableName = numVar.getName();
    		    		String xValue = String.valueOf(x[j]);

    		    		boolean onePointZero = false;

    		    		//if((xValue.indexOf("1.0")!= -1 || xValue.indexOf("0.9")!= -1) && variableName.indexOf("O_") == -1 && variableName.indexOf("I_") == -1 && variableName.indexOf("K_") == -1 && variableName.indexOf("S_") == -1 && variableName.indexOf("B_") == -1 && variableName.indexOf("E-") == -1 )
    		    		if((xValue.indexOf("1.0")!= -1 || xValue.indexOf("0.9")!= -1) && xValue.indexOf("-0.9") == -1 && xValue.indexOf("-1.0") == -1 && xValue.indexOf("E-") == -1 && variableName.indexOf("O_") == -1 && variableName.indexOf("I_") == -1 && variableName.indexOf("K_") == -1 && variableName.indexOf("S_") == -1 && variableName.indexOf("B_") == -1 && variableName.indexOf("E-") == -1 )
        		    		onePointZero = true;

    		    		if (onePointZero)// && variableName.indexOf("serv") != -1)
    		    		{
    		    			//System.out.println("Variable " + j + " Name: " + numVar.getName() + ": Value = " + x[j]);
    		    			compositionResultsBufferedWriter.write(variableName+ " :" + x[j]);
    		    			compositionResultsBufferedWriter.newLine();

    		    			//save services into a linkedlist
    		    			int locationOfUnderScore = 0;
    		    			locationOfUnderScore = variableName.indexOf("_");
    		    			String aWSID = variableName.substring(0, locationOfUnderScore);

    		    			if (m_ExecutionServicesForMinServices.contains(aWSID) == false)
    		    			{
    		    				m_ExecutionServicesForMinServices.add(aWSID);
    		    			}
    		    		}
    		    		compositionResultsFileWriter.flush();
    		    	}
		    		compositionResultsBufferedWriter.close();
		    		compositionResultsFileWriter.close();
		    	}
		    	catch (IOException ioe)
    			{
    				System.err.println(ioe.getMessage());
    				return m_ERROR;//error
    			}
    			finally
    			{
    				try
    				{
    					if(compositionResultsBufferedWriter != null)
    					{
    						compositionResultsBufferedWriter.close();
    					}

    					if(compositionResultsFileWriter != null)
    					{
    						compositionResultsFileWriter.close();
    					}
    				}
    				catch (IOException e)
    				{
    					System.err.println(e.getMessage());
    					cplex.end();
    					return m_ERROR;//error
    				}
    			}
    			cplex.end();
    			output.close();
    			System.out.println("Optimal");
				return m_OPTIMAL;//feasible with a solution
    		}
    		else if ( status == IloCplex.Status.Feasible )
    		{
    			cplex.end();
    			System.out.println("Feasible");
    			return m_FEASIBLE;//feasible
    		}
    		else if ( status == IloCplex.Status.Infeasible )
    		{
    			cplex.end();
    			System.out.println("Infeasible");
    			return m_INFEASIBLE;//infeasible
    		}
    		else if ( status == IloCplex.Status.Unbounded)
    		{
    			cplex.end();
    			System.out.println("Unbounded");
    			return m_UNBOUNDED;//unbounded
    		}

    		return m_ERROR2;
    	}
    	catch (IloException e)
    	{
    		System.err.println("Concert exception caught: " + e);
    		return m_ERROR;//error
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

			String query;

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

	// read hierarchy
    void setParameterRelationships() throws ClassNotFoundException {
    	try {
            //Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            String connectionString = DBconnectionString;
            
            //System.out.println("Connecting to database...");
            Connection conn0 = null;
            conn0 = DriverManager.getConnection(connectionString, DBUserID, DBPassword);

            Statement stmt0 = null;
            stmt0 = conn0.createStatement();
            
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

                aRelationship.m_SuperConcept = m_ResultSet.getString(1);
                aRelationship.m_SubConcept = m_ResultSet.getString(2);

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

	void readWebServicesFromDatabase() {
		// TODO Auto-generated method stub

		try {
			//Class.forName(DBDriver);
			//Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

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

			//reading a list of WebServices with their parameters and their general information

			while(recordSetForAllWebServicesInfo.next() == true)
			{
				aWebService = new WebServicesInfo();
				aWebService.m_WebServiceSerial = recordSetForAllWebServicesInfo.getString(1).trim();
				aWebService.m_WebServiceID = recordSetForAllWebServicesInfo.getString(1).trim();
				aWebService.m_Price = Double.valueOf(recordSetForAllWebServicesInfo.getString(4).trim());
				
				if( m_EliminatedWebServices.contains(aWebService.m_WebServiceID) != true)
				{

					String qry2 = "SELECT * FROM InputParameter WHERE webServiceID = '"+aWebService.m_WebServiceSerial+"';";
					ResultSet recordSetForInputParameters = stmt2.executeQuery(qry2);

					while(recordSetForInputParameters.next() ==true)
					{
						// 2 means second column.
						String InputParameter = recordSetForInputParameters.getString(2).trim();

						if(m_SerialNoOfWebServices > m_NoOfWebServices)//0.7
						{
							InputParameter = InputParameter + "ABC";
						}

						m_ParametersUsedForInput.put(InputParameter , "concept");
						aWebService.m_InputParameterList.addLast(InputParameter);

						LinkedList<String> aWebServicesList;
						aWebServicesList = (LinkedList<String>) m_WebServicesWithInputParameterX.get(InputParameter);

			    		if(aWebServicesList == null)
			    		{
			    			aWebServicesList = new LinkedList<String>();
			    			aWebServicesList.add(aWebService.m_WebServiceID.trim());
						}
						else
						{
							aWebServicesList.add(aWebService.m_WebServiceID.trim());
						}
						m_WebServicesWithInputParameterX.put(InputParameter, aWebServicesList);
					}
					recordSetForInputParameters.close();

					String qry3 = "SELECT * FROM OutputParameter WHERE webServiceID = '"+aWebService.m_WebServiceSerial+"';";
					ResultSet recordSetForOutputParameters = stmt2.executeQuery(qry3);

					while(recordSetForOutputParameters.next() == true)
					{
						String OutputParameter = recordSetForOutputParameters.getString(2).trim();

						m_ParametersUsedForOutput.put(OutputParameter , "concept");
						aWebService.m_OutputParameterList.addLast(OutputParameter);

						LinkedList<String> aWebServicesList;
						aWebServicesList = (LinkedList<String>) m_WebServicesWithOutputParameterX.get(OutputParameter);
						if(aWebServicesList == null)
			    		{
			    			aWebServicesList = new LinkedList<String>();
			    			aWebServicesList.add(aWebService.m_WebServiceID.trim());
						}
						else
						{
							aWebServicesList.add(aWebService.m_WebServiceID.trim());
						}
						m_WebServicesWithOutputParameterX.put(OutputParameter, aWebServicesList);

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

			//for (; enumerationOfWebServices1.hasMoreElements();)
            //{
            //    String serviceName = enumerationOfWebServices1.nextElement();
            //    System.out.println(m_AllServices.get(serviceName).webServiceName);
            //}
            // m_AllParameters //it is a linkedList, so it does not have any
            
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

    public static void main(String[] args) throws SAXException, IOException, ClassNotFoundException
    {
    	LinkedList<String> initialParameters = new LinkedList<String>();
    	LinkedList<String> goalParameters = new LinkedList<String>();
    	
    	Date startDate = new Date();
    	long startTime = startDate.getTime();

    	WebServiceComposition wsComposition = new WebServiceComposition();
    	wsComposition.DBTransactionID = Integer.valueOf(args[0]);
    	//wsComposition.DBTransactionID = 2;//Integer.valueOf(args[0]);
    	wsComposition.noOfDepthInHierarchy = Integer.valueOf(args[1]);
    	wsComposition.noOfChildrenInHierarchy = Integer.valueOf(args[2]);

    	System.out.println("[Task " + wsComposition.DBTransactionID + "]");
    	
    	//reading parameter hierarchy from Database
    	//AIPYooMath - without semantics (hierarchy)
    	//wsComposition.setParameterRelationships();
    	wsComposition.setParameterRelationships();
    	
    	//reading web services from Database
		wsComposition.readWebServicesFromDatabase();
		//CP System.out.println("********************************************************************************* No. of Web Services (WITHOUT) : " + wsComposition.m_AllWebServicesHash.size());

		Date endReading= new Date();
		long endReadingTime = endReading.getTime();
		//CP System.out.println("Reading: " + (endReadingTime - startWITHOUTTime));

		wsComposition.createAllParameterHashTable();

		// create m_ParametersUsedForInput and m_ParametersUsedForOutput
		wsComposition.createAllParameterRelatedDataStructure();

		//randomly generating query
		String initialAndGoalParameterPath = wsComposition.m_DefaultFilePath+"initialAndGoal.query";
		wsComposition.generateInitialAndGoalParameters(initialAndGoalParameterPath, initialParameters, goalParameters);

		//set the generated initial and goal parameters to m_ListOfInitialParameters and m_ListOfGoalParameters.
		wsComposition.setInitialAndGoalParameters(initialParameters, goalParameters);

		Date creatingAllParameterHashTable = new Date();
		long creatingAllParameterHashTableTime = creatingAllParameterHashTable.getTime();
		//CP System.out.println("Creating All Parameter Hashtable: " + (creatingAllParameterHashTableTime - endReadingTime));

		//solution will be written in BPEL format and saved in the following path.
    	String solutionPath = wsComposition.m_DefaultFilePath+"solution.bpel";
    	//String modelFilePath = wsComposition.m_DefaultFilePath;//+"wsc-" + i + ".lp";

		//generate IP formulation based on the (un-eliminated) web services after elimination.
		wsComposition.generateIPFormulation(wsComposition.m_DefaultFilePath, 1); //1 means WITHOUT

		/************************************************************************
		 * Web Service Composition
		 ***********************************************************************/
		Date formulationWITHOUTTask = new Date();
    	long formulationWITHOUTTaskTime = formulationWITHOUTTask.getTime();
    	//CP System.out.println("Formulation(WITHOUT):" + (formulationWITHOUTTaskTime - creatingAllParameterHashTableTime));

    	String modelFilePathForMinServices = wsComposition.m_DefaultFilePath + "formulation.lp";

    	//int resultForMinDepths = wsComposition.composeWebServicesForMinDepths(modelFilePathForMinDepths, 1);
    	int resultForMinServices = wsComposition.composeWebServicesForMinServices(modelFilePathForMinServices, 1);

    	/*
    	 * Finding the optimal plan using the selected web services
    	 */

    	wsComposition.generateStagePlan();
    	/************************************************************************
		 * Composition Result Generation (WITHOUT)
		 ***********************************************************************/

    	Date finishTask = new Date();
    	long finishTime = finishTask.getTime();
    	System.out.println("Duration: " + (finishTime - startTime) + " milliseconds");

    }


	private void generateStagePlan() throws ClassNotFoundException {
		// TODO Auto-generated method stub
		Integer stageNumber = 1;

		LinkedList<String> currentlyKnownParameter = new LinkedList<String> ();
		LinkedList<String> aCopyOfExecutionServices = new LinkedList<String> ();

		currentlyKnownParameter = (LinkedList<String>)m_ListOfInitialParameters.clone();
		aCopyOfExecutionServices= (LinkedList<String>)m_ExecutionServicesForMinServices.clone();

		for(int i = 0; i < m_ListOfInitialParameters.size(); i++)
		{
			String aParameter = m_ListOfInitialParameters.get(i);//m_AllWebServicesHash.get(aListOfWSInCurrentStage.get(l)).m_OutputParameterList.get(m);
			currentlyKnownParameter.add(aParameter);
			while (aParameter != null && m_SubSuperHierarchy.get(aParameter) != null && m_SubSuperHierarchy.get(aParameter) != "root")
			{
				currentlyKnownParameter.add(m_SubSuperHierarchy.get(aParameter));
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
					for (int k = 0; k < currentlyKnownParameter.size(); k++)
					{
						if(aWSInfo.m_InputParameterList.get(j).compareTo(currentlyKnownParameter.get(k)) == 0 )
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

			LinkedList<String> aListOfWSInCurrentStage = m_SolutionHashTable.get(stageNumber);
			for(int l = 0; l < aListOfWSInCurrentStage.size(); l++)
			{
				int noOfOutputParameters = m_AllWebServicesHash.get(aListOfWSInCurrentStage.get(l)).m_OutputParameterList.size();
				for (int m = 0; m < noOfOutputParameters; m++)
				{
					String aParameter = m_AllWebServicesHash.get(aListOfWSInCurrentStage.get(l)).m_OutputParameterList.get(m);
					currentlyKnownParameter.add(aParameter);
					while (aParameter != null && m_SubSuperHierarchy.get(aParameter) != null && m_SubSuperHierarchy.get(aParameter) != "root")
					{
						currentlyKnownParameter.add(m_SubSuperHierarchy.get(aParameter));
						aParameter = m_SubSuperHierarchy.get(aParameter);
					}					
				}

				aCopyOfExecutionServices.remove(aListOfWSInCurrentStage.get(l));
			}
			stageNumber++;
		}

		//insert solution into database
		try {
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
					stmt0.executeUpdate(query);
			    	System.out.println("Stage: " + n + " WebService: " + m_SolutionHashTable.get(n).get(p));
				}
			}

			//conn0.close();

		} catch (SQLException sqle) {
			// TODO Auto-generated catch block
			sqle.printStackTrace();
		}
	}
}
