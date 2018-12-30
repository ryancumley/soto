// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for EFS
public enum EFSErrorType: AWSErrorType {
    case badRequest(message: String?)
    case internalServerError(message: String?)
    case fileSystemNotFound(message: String?)
    case incorrectFileSystemLifeCycleState(message: String?)
    case insufficientThroughputCapacity(message: String?)
    case throughputLimitExceeded(message: String?)
    case tooManyRequests(message: String?)
    case mountTargetConflict(message: String?)
    case subnetNotFound(message: String?)
    case noFreeAddressesInSubnet(message: String?)
    case ipAddressInUse(message: String?)
    case networkInterfaceLimitExceeded(message: String?)
    case securityGroupLimitExceeded(message: String?)
    case securityGroupNotFound(message: String?)
    case unsupportedAvailabilityZone(message: String?)
    case mountTargetNotFound(message: String?)
    case incorrectMountTargetState(message: String?)
    case fileSystemAlreadyExists(message: String?)
    case fileSystemLimitExceeded(message: String?)
    case dependencyTimeout(message: String?)
    case fileSystemInUse(message: String?)
}

extension EFSErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BadRequest":
            self = .badRequest(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "FileSystemNotFound":
            self = .fileSystemNotFound(message: message)
        case "IncorrectFileSystemLifeCycleState":
            self = .incorrectFileSystemLifeCycleState(message: message)
        case "InsufficientThroughputCapacity":
            self = .insufficientThroughputCapacity(message: message)
        case "ThroughputLimitExceeded":
            self = .throughputLimitExceeded(message: message)
        case "TooManyRequests":
            self = .tooManyRequests(message: message)
        case "MountTargetConflict":
            self = .mountTargetConflict(message: message)
        case "SubnetNotFound":
            self = .subnetNotFound(message: message)
        case "NoFreeAddressesInSubnet":
            self = .noFreeAddressesInSubnet(message: message)
        case "IpAddressInUse":
            self = .ipAddressInUse(message: message)
        case "NetworkInterfaceLimitExceeded":
            self = .networkInterfaceLimitExceeded(message: message)
        case "SecurityGroupLimitExceeded":
            self = .securityGroupLimitExceeded(message: message)
        case "SecurityGroupNotFound":
            self = .securityGroupNotFound(message: message)
        case "UnsupportedAvailabilityZone":
            self = .unsupportedAvailabilityZone(message: message)
        case "MountTargetNotFound":
            self = .mountTargetNotFound(message: message)
        case "IncorrectMountTargetState":
            self = .incorrectMountTargetState(message: message)
        case "FileSystemAlreadyExists":
            self = .fileSystemAlreadyExists(message: message)
        case "FileSystemLimitExceeded":
            self = .fileSystemLimitExceeded(message: message)
        case "DependencyTimeout":
            self = .dependencyTimeout(message: message)
        case "FileSystemInUse":
            self = .fileSystemInUse(message: message)
        default:
            return nil
        }
    }
}