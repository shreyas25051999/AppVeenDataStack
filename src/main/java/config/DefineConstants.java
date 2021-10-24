package config;

import base.BaseClass;

public class DefineConstants extends BaseClass{
	// Test data file Path
	public static final String Path_TestData = "";

	// Application URL
//	public static final String staging_AUTHOR_URL = "https://staging.appveen.com/author";
//	public static final String staging_APP_CENTER_URL = "https://staging.appveen.com/appcenter";
//	
//	public static final String bifrost_AUTHOR_URL = "https://bifrost.ds.appveen.com/author/#/auth";
//	public static final String bifrost_APP_CENTER_URL = "https://bifrost.ds.appveen.com/appcenter/#/auth";
	
//	public static final String User_Email_Id="vtest@appveen.com";
	public static final String User_Email_Id="deepak@appveen.com";
	public static final String User_Password="123123123";

	
	// Explicit Wait Time
	public static final int explicitWait_10 = 10;
	
	public static final int explicitWait_20 = 20;
	
	public static final int explicitWait_30 = 30;

	public static final int explicitWait_60 = 60;

	public static final String PROJECT_PATH = System.getProperty("user.dir")+"/";

	public static final String PROJECT_OS = System.getProperty("os.name");

	public static final String TestData_Folder = path+"\\Test_Data";
	
	public static final String Locator_Folder = path+"\\locator";
	
	public static final String Authentication_TestData_Folder = "Authentication";
	
	public static final String Set_One_TestData_Folder = "Set_One";

	public static final String Success_Message = "Service Created.";
	
	public static final String App_Center_Success_Message = "Saved.";
		
	// Authentication Json File
	public static final String Authentication = TestData_Folder + "//" + Authentication_TestData_Folder + "//" + "Login.json";
	//Set One
	public static final String TC_01_CreateDS = TestData_Folder + "//" + Set_One_TestData_Folder + "//" + "TC_01_CreateDS.json";
	
	public static final String json_FilePath = Locator_Folder + "\\" + "locator.json";
	
	public static final String json_GroupPage_FilePath = Locator_Folder + "\\" + "groupPageLocator.json";
	
	public static final String json_AppCenter_FilePath = Locator_Folder + "\\" + "appCenterLocator.json";
	
	
	public static final String TC_Create_New_Data_Service = TestData_Folder +  "//" + "data.json";
	
	public static final String reportConfigPath= path + "\\configs\\extent-config.xml";
}