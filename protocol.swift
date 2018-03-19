#!/usr/bin/swift
protocol ExampleProtocol {
	var simpleDescription: String { get }
	mutating func adjust()
}