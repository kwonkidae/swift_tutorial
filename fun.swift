#!/usr/bin/swift
func greet(person: String, day: String) -> String {
	return "Hello \(person), today is \(day)."
}

print(greet(person: "Bon", day: "Tuesday"))

func greet_(_ person: String, _ day: String) -> String {
	return "Hello \(person), today is \(day)."
}

print(greet_("John",  "Wednesday"))

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
	var min = scores[0]
	var max = scores[0]
	var sum = 0

	for score in scores {
		if score > max {
			max = score
		} else if score < min {
			min = score
		}
		sum += score
	}

	return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.0)
print(statistics.1)

func returnFifteen() -> Int {
	var y = 10
	func add() {
		y += 5
	}
	add()
	return y
}

print(returnFifteen())

func makeIncrementer() -> ((Int) -> Int) {
	func addOne(number: Int) -> Int {
		return 1 + number
	}
	return addOne
}

var increment = makeIncrementer()
print(increment(7))

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
	for item in list {
		if condition(item) {
			return true
		}
	}
	return false
}

func lessThanTen(number: Int) -> Bool {
	return number < 10
}
var numbers = [20, 19, 11, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))