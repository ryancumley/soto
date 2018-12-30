// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ACMPCA
public enum ACMPCAErrorType: AWSErrorType {
    case requestInProgressException(message: String?)
    case requestFailedException(message: String?)
    case resourceNotFoundException(message: String?)
    case invalidArnException(message: String?)
    case invalidStateException(message: String?)
    case invalidTagException(message: String?)
    case tooManyTagsException(message: String?)
    case limitExceededException(message: String?)
    case invalidArgsException(message: String?)
    case malformedCSRException(message: String?)
    case concurrentModificationException(message: String?)
    case invalidPolicyException(message: String?)
    case malformedCertificateException(message: String?)
    case certificateMismatchException(message: String?)
    case invalidNextTokenException(message: String?)
    case requestAlreadyProcessedException(message: String?)
}

extension ACMPCAErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "RequestInProgressException":
            self = .requestInProgressException(message: message)
        case "RequestFailedException":
            self = .requestFailedException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "InvalidArnException":
            self = .invalidArnException(message: message)
        case "InvalidStateException":
            self = .invalidStateException(message: message)
        case "InvalidTagException":
            self = .invalidTagException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "InvalidArgsException":
            self = .invalidArgsException(message: message)
        case "MalformedCSRException":
            self = .malformedCSRException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "InvalidPolicyException":
            self = .invalidPolicyException(message: message)
        case "MalformedCertificateException":
            self = .malformedCertificateException(message: message)
        case "CertificateMismatchException":
            self = .certificateMismatchException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "RequestAlreadyProcessedException":
            self = .requestAlreadyProcessedException(message: message)
        default:
            return nil
        }
    }
}