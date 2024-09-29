// swift-tools-version: 6.0.1

import PackageDescription

let package = Package(
	name: "MyProbe",
	targets: [
		.target(
			name: "CMyLib",
			sources: [
				"./mylib.c"
			]
		),
		.executableTarget(
			name: "MyProbe",
			dependencies: ["CMyLib"],
			path: "Sources/Swift"
		)
	]
)
