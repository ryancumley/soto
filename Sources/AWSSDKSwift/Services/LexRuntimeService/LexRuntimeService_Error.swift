// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for LexRuntimeService
public enum LexRuntimeServiceErrorType: AWSErrorType {
    case notFoundException(message: String?)
    case badRequestException(message: String?)
    case limitExceededException(message: String?)
    case internalFailureException(message: String?)
    case conflictException(message: String?)
    case unsupportedMediaTypeException(message: String?)
    case notAcceptableException(message: String?)
    case requestTimeoutException(message: String?)
    case dependencyFailedException(message: String?)
    case badGatewayException(message: String?)
    case loopDetectedException(message: String?)
}

extension LexRuntimeServiceErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "InternalFailureException":
            self = .internalFailureException(message: message)
        case "ConflictException":
            self = .conflictException(message: message)
        case "UnsupportedMediaTypeException":
            self = .unsupportedMediaTypeException(message: message)
        case "NotAcceptableException":
            self = .notAcceptableException(message: message)
        case "RequestTimeoutException":
            self = .requestTimeoutException(message: message)
        case "DependencyFailedException":
            self = .dependencyFailedException(message: message)
        case "BadGatewayException":
            self = .badGatewayException(message: message)
        case "LoopDetectedException":
            self = .loopDetectedException(message: message)
        default:
            return nil
        }
    }
}