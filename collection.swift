#!/usr/bin/swift
var someInts = [Int]()
// print("someInts of type [Int]with \(someInts.count) Items.")
someInts.append(3)
// print(someInts)
someInts = []
// print(someInts)

// Creating an Array with a Default Value
var threeDoubles = Array(repeating: 0.0, count: 3)
// print(threeDoubles)

// Creating an Array by Adding Tow Arrays Together
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

var sixDoubles = threeDoubles + anotherThreeDoubles
// print(sixDoubles)

var shoppingList: [String] = ["Eggs", "Milk"]
// print(shoppingList)

// print("The shopping list contains \(shoppingList.count) items.")
if shoppingList.isEmpty {
	print("The shopping list is empty.")
} else {
	print("The shopping list is not empty.")
}

shoppingList.append("Flour")

shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

var firstItem = shoppingList[0]

// print(shoppingList)
// print(firstItem)

shoppingList[0] = "Six eggs"
// print(shoppingList)

shoppingList[4...6] = ["Bananas", "Apples"]
// print(shoppingList)

shoppingList.insert("Maple Syrup", at: 0)
print(shoppingList)

let mapleSyrup = shoppingList.remove(at: 0)

firstItem = shoppingList[0]
// print(firstItem)

let apples = shoppingList.removeLast()
// print(apples)

// for item in shoppingList {
	// print(item)
// }

// for (index, value) in shoppingList.enumerated() {
	// print("Item \(index + 1): \(value)")
// }

var letters = Set<Character>()
// print("letters is of type Set<Character> with \(letters.count) items.")

letters.insert("a")
// print(letters)

letters = []

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]

print("I have \(favoriteGenres.count) favorite music genres.")

if favoriteGenres.isEmpty {
	print("As far as music goes, I'm not picky")
} else {
	print("I have particular music preference")
}

favoriteGenres.insert("Jazz")

if let removedGenre = favoriteGenres.remove("Rock") {
	print("\(removedGenre)? I'm over it")
} else {
	print("I never much cared for that.")
}

if favoriteGenres.contains("Funk") {
	print("I get up on the food foot.")
} else {
	print("It's too funky in here.")
}

for genre in favoriteGenres {
	print("\(genre)")
}

for genre in favoriteGenres.sorted() {
	print("\(genre)")
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

print(oddDigits.union(evenDigits).sorted())
print(oddDigits.intersection(evenDigits).sorted())
print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

print(houseAnimals.isSubset(of: farmAnimals))
print(farmAnimals.isSuperset(of: houseAnimals))
print(farmAnimals.isDisjoint(with: cityAnimals))

var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen"
print(namesOfIntegers)
// reset
namesOfIntegers = [:]

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Doublin"]
print(airports)

print("The airports dictionary contains \(airports.count) items.")

if airports.isEmpty {
	print("The airports dictionary is empty.")
} else {
	print("The airports dictionary is not empty.")
}

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
	print("The old value for DUB was \(oldValue).")
}

if let airportName = airports["DUB"] {
	print("The name of the airport is \(airportName).")
} else {
	print("That airport is not in the airports dictionary.")
}

if let removedValue = airports.removeValue(forKey: "DUB") {
	print("The removed airport's name is \(removedValue).")
} else {
	print("THe airports dictionary does not contain a value for DUB.")
}

for (airportCode, airportName) in airports {
	print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
	print("Airport code: \(airportCode)")
}

for airportName in airports.values {
	print("Airport name: \(airportName)")
}

let airportCodes = [String](airports.keys)
print(airportCodes)

let airportNames = [String](airports.values)
print(airportNames) 