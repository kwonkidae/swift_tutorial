#!/usr/bin/swift
func fibonacci(_ n: Int) -> Int {
	if n <= 2 {
		return 1
	} else {
		return fibonacci(n - 1) + fibonacci(n - 2)
	}
}
// print(fibonacci(10))

let label = "The width is "
let width = 94
let widthLabel = label + String(width)
// print(widthLabel)

let apples = 3
let oranges = 5
let appleSummary = "I have\(apples) apples."
// print(appleSummary)

let quotation = """
I said "I have \(apples) apples."
"""
print(quotation)

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
	"Malcolm": "Captain"
]

// print(shoppingList)
// print(occupations)

let emptyArray = [String]()
let emptyDictionary = [String: Float]()

// print(emptyArray)
// print(emptyDictionary)

let indivisualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in indivisualScores {
	if score > 50 {
		teamScore += 3
	} else {
		teamScore += 1
	}
}

print(teamScore)

var optionalString: String? = nil
print(optionalString == nil)

var optionalName: String?
var greeting = "Hello!"
if let name = optionalName {
	greeting = "Hello, \(name)"
	print(greeting)
}
// print(optionalName as Any)

let vegetable = "red pepper"
// switch vegetable {
// case "celery":
// 	print("Add some riisins")
// case "cucumber", "watercress":
// 	print("That would make a good tea sanwitch.")
// case let x where x.hasSuffix("pepper"):
// 	print("Is it a spucy\(x)?")
// default:
// 	print("Everything tastes good in soup.")
// }

let interestingNumbers = [
	"Prime": [2,3, 5, 7, 11, 13],
	"Fibonacci": [1, 1, 2, 3, 5, 8],
	"Square": [1, 4, 9, 16, 25],
]

var largest = 0
for (_, numbers) in interestingNumbers {
	for number in numbers {
		if number > largest {
			largest = number
		}
	}
}
// print(largest)

var n = 2
while n < 100 {
	n *= 2
}
// print(n)

var m = 2
repeat {
	m *= 2
} while m < 100
// print(m)

var total = 0
for i in 0..<4 {
	total += i
}

print(total)