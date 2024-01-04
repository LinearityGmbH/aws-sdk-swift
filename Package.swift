// swift-tools-version:5.5

//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// This manifest is auto-generated.  Do not commit edits to this file;
// they will be overwritten.

import Foundation
import PackageDescription

let smithyTestUtil = PackageDescription.Target.Dependency.product(name: "SmithyTestUtil", package: "smithy-swift")
let clientRuntime = PackageDescription.Target.Dependency.product(name: "ClientRuntime", package: "smithy-swift")
let awsCommonRuntimeKit = PackageDescription.Target.Dependency.product(name: "AwsCommonRuntimeKit", package: "aws-crt-swift")

let package = Package(
    name: "aws-sdk-swift",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13)
    ],
    products: [
        .library(name: "AWSClientRuntime", targets: ["AWSClientRuntime"]),
        .library(name: "AWSCognitoIdentity", targets: ["AWSCognitoIdentity"]),
        .library(name: "AWSCognitoIdentityProvider", targets: ["AWSCognitoIdentityProvider"]),
        .library(name: "AWSLocation", targets: ["AWSLocation"]),
        .library(name: "AWSPinpoint", targets: ["AWSPinpoint"]),
        .library(name: "AWSComprehend", targets: ["AWSComprehend"]),
        .library(name: "AWSPolly", targets: ["AWSPolly"]),
        .library(name: "AWSRekognition", targets: ["AWSRekognition"]),
        .library(name: "AWSTextract", targets: ["AWSTextract"]),
        .library(name: "AWSTranscribe", targets: ["AWSTranscribe"]),
        .library(name: "AWSTranscribeStreaming", targets: ["AWSTranscribeStreaming"]),
        .library(name: "AWSTranslate", targets: ["AWSTranslate"]),
        .library(name: "AWSCloudWatch", targets: ["AWSCloudWatch"]),
        .library(name: "AWSCloudWatchEvents", targets: ["AWSCloudWatchEvents"]),
        .library(name: "AWSCloudWatchLogs", targets: ["AWSCloudWatchLogs"]),
        .library(name: "AWSS3", targets: ["AWSS3"]),
    ],
    dependencies: [
        .package(url: "https://github.com/awslabs/aws-crt-swift", .exact("0.6.1"))
    ],
    targets: [
        .target(name: "AWSClientRuntime", dependencies: [awsCommonRuntimeKit, clientRuntime], path: "./Sources/Core/AWSClientRuntime"),
        .target(name: "AWSCognitoIdentity", dependencies: [clientRuntime, "AWSClientRuntime"], path: "./Sources/Services/AWSCognitoIdentity"),
        .target(name: "AWSCognitoIdentityProvider", dependencies: [clientRuntime, "AWSClientRuntime"], path: "./Sources/Services/AWSCognitoIdentityProvider"),
        .target(name: "AWSLocation", dependencies: [clientRuntime, "AWSClientRuntime"], path: "./Sources/Services/AWSLocation"),
        .target(name: "AWSPinpoint", dependencies: [clientRuntime, "AWSClientRuntime"], path: "./Sources/Services/AWSPinpoint"),
        .target(name: "AWSComprehend", dependencies: [clientRuntime, "AWSClientRuntime"], path: "./Sources/Services/AWSComprehend"),
        .target(name: "AWSPolly", dependencies: [clientRuntime, "AWSClientRuntime"], path: "./Sources/Services/AWSPolly"),
        .target(name: "AWSRekognition", dependencies: [clientRuntime, "AWSClientRuntime"], path: "./Sources/Services/AWSRekognition"),
        .target(name: "AWSTextract", dependencies: [clientRuntime, "AWSClientRuntime"], path: "./Sources/Services/AWSTextract"),
        .target(name: "AWSTranscribe", dependencies: [clientRuntime, "AWSClientRuntime"], path: "./Sources/Services/AWSTranscribe"),
        .target(name: "AWSTranscribeStreaming", dependencies: [clientRuntime, "AWSClientRuntime"], path: "./Sources/Services/AWSTranscribeStreaming"),
        .target(name: "AWSTranslate", dependencies: [clientRuntime, "AWSClientRuntime"], path: "./Sources/Services/AWSTranslate"),
        .target(name: "AWSCloudWatch", dependencies: [clientRuntime, "AWSClientRuntime"], path: "./Sources/Services/AWSCloudWatch"),
        .target(name: "AWSCloudWatchEvents", dependencies: [clientRuntime, "AWSClientRuntime"], path: "./Sources/Services/AWSCloudWatchEvents"),
        .target(name: "AWSCloudWatchLogs", dependencies: [clientRuntime, "AWSClientRuntime"], path: "./Sources/Services/AWSCloudWatchLogs"),
        .target(name: "AWSS3", dependencies: [clientRuntime, "AWSClientRuntime"], path: "./Sources/Services/AWSS3"),
    ]
)

let useLocalDeps = ProcessInfo.processInfo.environment["AWS_SWIFT_SDK_USE_LOCAL_DEPS"] != nil
let useMainDeps = ProcessInfo.processInfo.environment["AWS_SWIFT_SDK_USE_MAIN_DEPS"] != nil

switch (useLocalDeps, useMainDeps) {
case (true, true):
    fatalError("Unable to determine which dependencies to use. Please only specify one of AWS_SWIFT_SDK_USE_LOCAL_DEPS or AWS_SWIFT_SDK_USE_MAIN_DEPS.")
case (true, false):
    package.dependencies += [
        .package(path: "../smithy-swift")
    ]
case (false, true):
    package.dependencies += [
        .package(url: "https://github.com/awslabs/smithy-swift", branch: "main")
    ]
case (false, false):
    package.dependencies += [
        .package(url: "https://github.com/awslabs/smithy-swift", .exact("0.15.0"))
    ]
}
