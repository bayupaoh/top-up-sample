// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let uiKitUtils = "UIKitUtils"
let topUpDS = "TopUpDS"
let pulsaAndData = "PulsaAndData"
let voucher = "Voucher"
let depedencyInjectionModule = "DepedencyInjectionModule"

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
// Add Depedency Here
//    static let skeletonView = Self.product(name: "SkeletonView", package: "SkeletonView")
}


let package = Package(
    name: "topup-sample-library",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        uiKitUtils.library,
        topUpDS.library,
//        voucher.core.library,
//        voucher.coreLive.library,
//        voucher.library,
//        pulsaAndData.core.library,
//        pulsaAndData.coreLive.library,
        pulsaAndData.library,
        depedencyInjectionModule.library
    ],
    dependencies: [
        // Define depedencies here
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: depedencyInjectionModule,
            dependencies: []
        ),
        .target(
            name: uiKitUtils,
            dependencies: []
        ),
        .target(
            name: topUpDS,
            dependencies: [
                uiKitUtils.dependency
            ]
        ),
        .target(
            name: pulsaAndData,
            dependencies: [
                uiKitUtils.dependency,
                topUpDS.dependency,
            ]
        ),
    ]
)
