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

print(emptyArray)
print(emptyDictionary)