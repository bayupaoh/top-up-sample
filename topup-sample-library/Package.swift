// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let utils = "Utils"
let topUpDS = "TopUpDS"
let pulsaAndData = "PulsaAndData"
let payment = "Payment"
let voucher = "Voucher"
let depedencyConatiner = "DepedencyContainer"

private extension String {
    
    var tests: String {
        "\(self)Tests"
    }

    var core: String {
        "\(self)Core"
    }

    var coreLive: String {
        "\(self)CoreLive"
    }
    
    var library: Product {
        .library(name: self, targets: [self])
    }

    var dependency : Target.Dependency {
        .init(stringLiteral: self)
    }
}

private extension Target.Dependency {
    static let kingFisher = Self.product(name: "Kingfisher", package: "Kingfisher")
}


let package = Package(
    name: "topup-sample-library",
    platforms: [.iOS(.v15)],
    products: [
        utils.library,
        topUpDS.library,
        voucher.core.library,
        voucher.coreLive.library,
        voucher.library,
        payment.core.library,
        payment.coreLive.library,
        payment.library,
        pulsaAndData.core.library,
        pulsaAndData.coreLive.library,
        pulsaAndData.library,
        depedencyConatiner.library
    ],
    dependencies: [
        .package(url: "https://github.com/onevcat/Kingfisher.git", exact: "8.0.0"),
    ],
    targets: [
        .target(
            name: depedencyConatiner,
            dependencies: []
        ),
        .target(
            name: utils,
            dependencies: [
                .kingFisher
            ]
        ),
        .target(
            name: topUpDS,
            dependencies: [
                utils.dependency
            ]
        ),
        .target(
            name: pulsaAndData.core,
            dependencies: []
        ),
        .target(
            name: pulsaAndData.coreLive,
            dependencies: []
        ),
        .target(
            name: pulsaAndData,
            dependencies: [
                utils.dependency,
                topUpDS.dependency,
            ],
            resources: [
                .process("Assets/")
            ]
        ),
        .target(
            name: voucher.core,
            dependencies: []
        ),
        .target(
            name: voucher.coreLive,
            dependencies: []
        ),
        .target(
            name: voucher,
            dependencies: [
                utils.dependency,
                topUpDS.dependency,
            ],
            resources: [
                .process("Assets/")
            ]
        ),
        .target(
            name: payment.core,
            dependencies: []
        ),
        .target(
            name: payment.coreLive,
            dependencies: []
        ),
        .target(
            name: payment,
            dependencies: [
                utils.dependency,
                topUpDS.dependency,
            ],
            resources: [
                .process("Assets/")
            ]
        )
    ]
)
