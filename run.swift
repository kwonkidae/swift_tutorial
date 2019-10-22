import Foundation

print("kkdosk")

struct Run {
	let id: String
	let startTime: Date
	var endTime: Date?

	func elapsedTime() -> TimeInterval {
		return Date().timeIntervalSince(startTime)
	}

	func isFinished() -> Bool {
		return endTime != nil
	}

	mutating func setFinished() {
		endTime = Date()
	}

	init(id: String, startTime: Date) {
		self.id = id
		self.startTime = startTime
		self.endTime = nil
	}
}

var run = Run(id: "10", startTime: Date())

print(run.elapsedTime())