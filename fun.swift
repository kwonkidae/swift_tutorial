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