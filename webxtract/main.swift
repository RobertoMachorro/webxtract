//
//  main.swift
//  webxtract
//
//  Created by Roberto Machorro on 1/25/22.
//

import Foundation
import ArgumentParser

struct Webxtract: ParsableCommand {
	@Flag(help: "Include debugging information.")
	var verbose = false

	@Option(name: .shortAndLong, help: "The number of times to attempt page download.")
	var attempts: Int?

	@Argument(help: "The source's web address.")
	var url: String

	@Argument(help: "A Regular Expression to apply on content.")
	var expression: String

	mutating func run() throws {
		let attemptsCount = attempts ?? 1

		for i in 1...attemptsCount {
			if verbose {
				print("\(url) verbose (attempt \(i))")
			} else {
				print(url)
			}
		}
	}
}

Webxtract.main()
