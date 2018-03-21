#!/usr/bin/swift
enum PrinterError: Error {
	case outOfPaper
	case noToner
	case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
	if printerName == "Never Has Toner" {
		throw PrinterError.noToner
	}
	return "Job sent"
}

do {
	let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
	print(printerResponse)
} catch {
	print(error)
}

do {
	let printerResponse = try send(job: 1040, toPrinter: "Never Has Toner")
	print(printerResponse)
} catch PrinterError.onFire {
	print("i'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
	print("Printer error: \(printerError).")
} catch {
	print(error)
}

let printerSuccess = try? send(job: 1884, toPrinter: "Mergen")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")

print(printerSuccess!)
print(printerFailure ?? "error raise")

var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
	fridgeIsOpen = true
	defer {
		print("defer")
		fridgeIsOpen = false
	}

	let result = fridgeContent.contains(food)
	return result
}
print(fridgeContains("banana"))
print(fridgeIsOpen)