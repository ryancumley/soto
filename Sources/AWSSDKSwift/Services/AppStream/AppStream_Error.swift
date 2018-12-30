// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for AppStream
public enum AppStreamErrorType: AWSErrorType {
    case resourceAlreadyExistsException(message: String?)
    case limitExceededException(message: String?)
    case invalidAccountStatusException(message: String?)
    case resourceNotFoundException(message: String?)
    case operationNotPermittedException(message: String?)
    case concurrentModificationException(message: String?)
    case resourceInUseException(message: String?)
    case invalidParameterCombinationException(message: String?)
    case invalidRoleException(message: String?)
    case incompatibleImageException(message: String?)
    case resourceNotAvailableException(message: String?)
}

extension AppStreamErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "InvalidAccountStatusException":
            self = .invalidAccountStatusException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "OperationNotPermittedException":
            self = .operationNotPermittedException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "InvalidParameterCombinationException":
            self = .invalidParameterCombinationException(message: message)
        case "InvalidRoleException":
            self = .invalidRoleException(message: message)
        case "IncompatibleImageException":
            self = .incompatibleImageException(message: message)
        case "ResourceNotAvailableException":
            self = .resourceNotAvailableException(message: message)
        default:
            return nil
        }
    }
}