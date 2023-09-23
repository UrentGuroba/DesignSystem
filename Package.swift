// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DesignSystem",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DesignSystem",
            targets: [
				"DesignSystem",
				"ColorsService",
				"Common",
				"FontService"
			]
		),
	],
	dependencies: [
	],
	targets: [
		.target(
			name: "DesignSystem",
			dependencies: [
				"Common",
				"FontService",
				"ColorsService"
			]
		),
		.target(
			name: "ColorsService",
			resources: [.process("Resources")]
		),
		.target(
			name: "FontService",
			resources: [.process("Fonts")]
		),
		.target(
			name: "Common",
			dependencies: [
				"FontService",
				"ColorsService"
			]
		),
		.testTarget(
			name: "DesignSystemTests",
			dependencies: ["DesignSystem"]),
	]
)

