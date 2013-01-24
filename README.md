# JsonToDictionary

This class makes it easier to read json and covert it to NSDictionary, and viceversa.


## How to use

Just drag the class to your project and add it to the project target.

To convert JSON to NSDictionary:

	[JsonToDictionary diccionaryFromJsonString:MyJsonString];
	
To convert NSDictionary to JSON:

	[JsonToDictionary jsonStringFromDictionary:MyDictionary];