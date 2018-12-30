// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CloudHSMV2
public enum CloudHSMV2ErrorType: AWSErrorType {
    case cloudHsmInternalFailureException(message: String?)
    case cloudHsmServiceException(message: String?)
    case cloudHsmInvalidRequestException(message: String?)
    case cloudHsmAccessDeniedException(message: String?)
    case cloudHsmResourceNotFoundException(message: String?)
}

extension CloudHSMV2ErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "CloudHsmInternalFailureException":
            self = .cloudHsmInternalFailureException(message: message)
        case "CloudHsmServiceException":
            self = .cloudHsmServiceException(message: message)
        case "CloudHsmInvalidRequestException":
            self = .cloudHsmInvalidRequestException(message: message)
        case "CloudHsmAccessDeniedException":
            self = .cloudHsmAccessDeniedException(message: message)
        case "CloudHsmResourceNotFoundException":
            self = .cloudHsmResourceNotFoundException(message: message)
        default:
            return nil
        }
    }
}