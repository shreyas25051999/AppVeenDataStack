Feature: Functions on Strings

# Scenarios - TS.., ..., ..

@Author
Scenario Outline: Log into Author
	Given User navigate to Author login page
	And User enters "<username>" and "<password>" in Author login page
	And Verify User has Logged in successfully in Author Url
Examples:
|username|password|
|deepak@appveen.com|123123123|

Scenario: Delete data service
	Given Data service "string_ListOfValue" exists
	Then Remove the data service

Scenario: Create data service
	Given Data service "string_ListOfValue" does not exist
	Then Create new data service "string_ListOfValue"
 #Under testData, picks up strings.json create the JSON

Scenario Outline: Assign to Appcenter Group
 	Then Group "Number-Group" does not exist
	Then Create new group "Number-Group" 
	And Assign appcenter permissions for "string_ListOfValue" dataservice to "<user>"
	
	Examples:
	|user|
	|maker@appveen.com|


Scenario: Log out of Author
	Given User logged into Author
	Then User logs out of Author
	

@AppCenter
Scenario Outline: Log into AppCenter
	Given User navigate to AppCenter login page
	And User enters "<username>" and "<password>" in AppCenter login page
	And Verify User has Logged in Successfully 
Examples:
|username|password|
|maker@appveen.com|123123123|


 #INSERT/UPDATE
Scenario: Add data to data service
	Given Data service "string_ListOfValue"
	Then Add data to the data service
	
	
Scenario Outline: Add record to data service
	Given Data service "string_ListOfValue"
	Then Add record "<data>" to the data service
	And Expect error "DS STRING TEXT Error" on label "DS STRING TEXT Label"
	And Save button is disabled
Examples:
|data|
|{"_id":"STR1002", "dsStringListOfValues1001":"LIST 1","dsStringListOfValues1002":"", "dsStringListOfValues1014":"","dsStringListOfValues1015":"","dsStringListOfValues1018":""}|


Scenario Outline: Add record to data service
	Given Data service "string_ListOfValue"
	Then Add record "<data>" to the data service	
	And Expect error "ID STR1001 already exists" on save
	Examples:
		|data|
	  |{ "_id" : "STR1001","dsStringListOfValues1002" : "LIST 2","dsStringListOfValues1003" : "LIST 1","dsStringListOfValues1007" : "LIST 1","dsStringListOfValues1008" : "LIST 1","dsStringListOfValues1014" : "LIST 1","dsStringListOfValues1015" : "LIST 1"}|


Scenario Outline: Add record to data service
	Given Data service "string_ListOfValue"
	Then Add record "<data>" to the data service		
	And Expect error "Unique check validation failed for dsStringLongText1002" on save
Examples:
|data|
|{ "_id" : "STR1003","dsStringListOfValues1001" : "LIST 1","dsStringListOfValues1002" : "LIST 1","dsStringListOfValues1003" : "LIST 1","dsStringListOfValues1007" : "LIST 1","dsStringListOfValues1008" : "LIST 1","dsStringListOfValues1014" : "LIST 1","dsStringListOfValues1015" : "LIST 1"}|
	
	
	
	Scenario Outline: Fetch record from the data service
	Given Data service "string_ListOfValue"
	Then Fetch record "<id>" from the data service 
	And Match it to "<data>"
Examples:
|id|data|
|STR1001|{"_id": "STR1001","dsStringListOfValues1001": "LIST 1","dsStringListOfValues1002": "LIST 1","dsStringListOfValues1003": "LIST 1","dsStringListOfValues1004": "LIST 1","dsStringListOfValues1005": "LIST 1","dsStringListOfValues1007": "LIST 1", "dsStringListOfValues1008": "LIST 1", "dsStringListOfValues1010": "LIST 1",  "dsStringListOfValues1013": "LIST 1", "dsStringListOfValues1014": "LIST 1", "dsStringListOfValues1015": "LIST 1",  "dsStringListOfValues1018": "LIST 2"}|
	
	
	Scenario Outline: Update record to data service
	Given Data service "string_ListOfValue"
	Then Update record "<id>" with "<data>" to the data service
Examples:

|id|data|
|STR1001|{"dsStringListOfValues1001": "LIST 2","dsStringListOfValues1002": "LIST 2","dsStringListOfValues1003": "LIST 2","dsStringListOfValues1004": "LIST 2","dsStringListOfValues1005": "LIST 2","dsStringListOfValues1007": "LIST 2", "dsStringListOfValues1008": "LIST 2", "dsStringListOfValues1010": "LIST 2",  "dsStringListOfValues1013": "LIST 2", "dsStringText1014": "LIST 2", "dsStringListOfValues1015": "LIST 2",  "dsStringListOfValues1018": "LIST 2"}|

Scenario Outline: Fetch record from the data service
	Given Data service "string_ListOfValue"
	Then Fetch record "<id>" from the data service
	And Match it to "<data>"
Examples:
|id|data|
|STR1001|{"_id": "STR1001","dsStringListOfValues1001": "Long 1001","dsStringListOfValues1002": "Long 1002","dsStringListOfValues1003": "Long 1003","dsStringLongText1004": "Long 1004","dsStringListOfValues1005": "Long 1005","dsStringListOfValues1007": "Long 1007", "dsStringListOfValues1008": "Long 1008", "dsStringListOfValues1010": "Long 1010",  "dsStringListOfValues1013": "Long 1013", "dsStringText1014": "Long 1014", "dsStringListOfValues1015": "Long 1015",  "dsStringListOfValues1018": "Long 1018"}|
	
#Scenario Outline: Delete record from the data service
#	Given Data service "string_ListOfValue"
#	Then Delete record "<id>" from the data service
#	And deleting from listing page
#Examples:
#|id|
#|STR1001|