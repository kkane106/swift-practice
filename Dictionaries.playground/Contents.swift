// Dictionaries!!!
// Dictionary syntax [key0: value0, key1: value1]

// Shorthand Dictionary declaration
var variableDict = [String: String]()
variableDict["Banana"] = "Potato"
variableDict["Banana"]
variableDict.count

var variableDict2 = ["Kris": "Tan"]
variableDict2["Kris"]

var dict = ["luke": "navy blue", "devin": "white"]
dict.count
dict["kris"] = "lime green"
dict.isEmpty
// return an array of the keys
dict.keys.array
// return an arry of the values
dict.values.array

dict.removeValueForKey("luke")
dict

var people = ["Arthur": 29, "Thomas": 23]

// This actually does work in project, playground just sucks
var profile: [String: AnyObject] = ["Name": "Arthur", "Age": 29, "Location": "DC"]
