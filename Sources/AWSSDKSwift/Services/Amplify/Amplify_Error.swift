// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Amplify
public enum AmplifyErrorType: AWSErrorType {
    case badRequestException(message: String?)
    case unauthorizedException(message: String?)
    case internalFailureException(message: String?)
    case notFoundException(message: String?)
    case limitExceededException(message: String?)
    case dependentServiceFailureException(message: String?)
}

extension AmplifyErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "UnauthorizedException":
            self = .unauthorizedException(message: message)
        case "InternalFailureException":
            self = .internalFailureException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "DependentServiceFailureException":
            self = .dependentServiceFailureException(message: message)
        default:
            return nil
        }
    }
}