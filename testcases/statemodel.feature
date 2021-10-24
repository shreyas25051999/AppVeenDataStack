Feature: DS STATE MODEL

# Scenarios - 

@Author
Scenario Outline: Log into Author
	Given User navigate to Author login page
	And User enters "<username>" and "<password>" in Author login page
	And Verify User has Logged in successfully in Author Url
Examples:
|username|password|
|vtest@appveen.com|123123123|

Scenario: Delete data service
	Given Data service "string_StateModel" exists
	Then Remove the data service

Scenario: Create data service
	Given Data service "string_StateModel" does not exist
#	Then Create new data service "string_StateModel" for State_Model 
#	
#
#Scenario Outline: Add Attributes to data service
#Given Add attributes "<attributeName>" and type "<attributeType>"
#
#And Save button is not clicked	
#Examples:
#	|attributeName|attributeType|
#	|Name|Text|
#	|DOB|Date|
#	|Salary|Number|
#	|Onboarding Status|Text|
#
#Scenario: Configure State model
#Given Click on Experience tab to create a State Model 
#Then Create a State Model for the field "Onboarding Status"
#
#Scenario Outline: Create State for State Model
#Then Create states "<state_name>"
#Examples:
#|state_name|
#|Open|
#|In Progress|
#|Rejected|
#|Deffered|
#|Config Issue|
#|Cannot Reproduce|
#|Working as Expected|
#|Ready for QA|
#|Re-open|
#|Ready for Release|
#
#Scenario Outline: Create State for State Model
#And Set Current State "<from state>" and "<next state>" and Save
#Examples:
#|from state|next state|
#|Open|In Progress,Rejected,Deffered,Config Issue,Cannot Reproduce,Working as Expected|
#|In Progress|Ready for QA,Open|
#|Ready for QA|Ready for Release,Re-open|
#|Re-open|In Progress|
#|Ready for Release|Closed|
#|Rejected|Open|
#|Deffered|Open|
#
#
#Scenario Outline: Assign to Appcenter Group
#	Then Group "string_StateModel" does not exist
#	Then Create new group "string_StateModel" 
#	And Assign appcenter permissions for "string_StateModel" dataservice to "<user>"
#	
#	Examples:
#	|user|
#	|maker@appveen.com|
#
#
#Scenario: Log out of Author
#	Given User logged into Author
#	Then User logs out of Author
#
#@AppCenter
#Scenario Outline: Log into AppCenter
#	Given User navigate to AppCenter login page
#	And User enters "<username>" and "<password>" in AppCenter login page
#	And Verify User has Logged in Successfully 
#Examples:
#|username|password|
#|maker@appveen.com|123123123|
#
#
 #INSERT/UPDATE
#Scenario Outline: Add data to data service
#	Given Data service "string_StateModel"
#	Then Add data to the data service
#	And Verify the State is "<Current State>"
#	Examples:
#	|Current State|Open|
#	
#Scenario Outline: Edit record to data service and verify available next states
#	Given Data service "string_StateModel"
#	Then Add record "<data>" to the data service
#	And Verify "<Next State>" is available
#	And Verify "<Invalid State>" is not available
#	And update "<Update State>" and save the record
#Examples:
#|data|Next State|Invalid State|Update state|
#|{"_id": "STR1001","dsStringListOfValues1001": "LIST 1","dsStringListOfValues1002": " ","dsStringListOfValues1003": "LIST 1","dsStringListOfValues1004": "LIST 1","dsStringListOfValues1005": "LIST 1","dsStringListOfValues1007": "LIST 1", "dsStringListOfValues1008": "LIST 1", "dsStringListOfValues1010": "LIST 1",  "dsStringListOfValues1013": "LIST 1", "dsStringListOfValues1014": " ", "dsStringListOfValues1015": " ",  "dsStringListOfValues1018": " ", "dsStringListOfValues1020":"LIST 1"}|In Progress,Rejected,Deferred|Closed,Ready for QA|Deferred|
#
#
#Scenario Outline: Edit record to data service
#	Given Data service "number_ListOfValue"
#	Then Add record "<data>" to the data service
#	And update "<Next State>" and save the record
#Examples:
#|data|Next State|
#|{"_id":"NUM1001","dsNumberListOfValues1001": 123,"dsNumberListOfValues1002": "","dsNumberListOfValues1003": 4569,"dsNumberListOfValues1004": 23,"dsNumberListOfValues1005": 123,"dsNumberListOfValues1007":123, "dsNumberListOfValues1008": 211, "dsNumberListOfValues1010": 4569,  "dsNumberListOfValues1013": 123, "dsNumberListOfValues1014": "", "dsNumberListOfValues1015": "",  "dsNumberListOfValues1016": 123,"dsNumberListOfValues1017":"","dsNumberListOfValues1018":"",  "dsNumberListOfValues1020":4569}|In Progress|
#
#Scenario Outline: Fetch record from the data service
#	Given Data service "number_ListOfValue"
#	Then Fetch record "<id>" from the data service
#	And Match it to "<data>"
#Examples:
#|id|data|
#|NUM1001|{"_id": "NUM1001","dsNumberListOfValues1001": 123,"dsNumberListOfValues1002": 2,"dsNumberListOfValues1003": 123,"dsNumberListOfValues1004": 123,"dsNumberListOfValues1005": 501,"dsNumberListOfValues1007": 123, "dsNumberListOfValues1008": 211, "dsNumberListOfValues1010": 123,  "dsNumberListOfValues1013": 123, "dsNumberListOfValues1014": 4569, "dsNumberListOfValues1015": 211, "dsNumberListOfValues1018": 456,  "dsNumberListOfValues1020": 4569, "Onboarding Status":"In Progress"}|
#
#Scenario: Log out of App Center
#	Given User log out from AppCenter