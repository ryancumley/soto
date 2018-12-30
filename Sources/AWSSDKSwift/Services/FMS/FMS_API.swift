// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS Firewall Manager This is the AWS Firewall Manager API Reference. This guide is for developers who need detailed information about the AWS Firewall Manager API actions, data types, and errors. For detailed information about AWS Firewall Manager features, see the AWS Firewall Manager Developer Guide.
*/
public struct FMS {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AWSFMS_20180101",
            service: "fms",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-01-01",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [FMSErrorType.self]
        )
    }

    ///  Disassociates the account that has been set as the AWS Firewall Manager administrator account. You will need to submit an AssociateAdminAccount request to set a new account as the AWS Firewall administrator.
    public func disassociateAdminAccount(_ input: DisassociateAdminAccountRequest) throws {
        _ = try client.send(operation: "DisassociateAdminAccount", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the AWS Organizations master account that is associated with AWS Firewall Manager as the AWS Firewall Manager administrator.
    public func getAdminAccount(_ input: GetAdminAccountRequest) throws -> Future<GetAdminAccountResponse> {
        return try client.send(operation: "GetAdminAccount", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns an array of PolicyComplianceStatus objects in the response. Use PolicyComplianceStatus to get a summary of which member accounts are protected by the specified policy. 
    public func listComplianceStatus(_ input: ListComplianceStatusRequest) throws -> Future<ListComplianceStatusResponse> {
        return try client.send(operation: "ListComplianceStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an AWS Firewall Manager policy.
    public func putPolicy(_ input: PutPolicyRequest) throws -> Future<PutPolicyResponse> {
        return try client.send(operation: "PutPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns detailed compliance information about the specified member account. Details include resources that are in and out of compliance with the specified policy. Resources are considered non-compliant if the specified policy has not been applied to them.
    public func getComplianceDetail(_ input: GetComplianceDetailRequest) throws -> Future<GetComplianceDetailResponse> {
        return try client.send(operation: "GetComplianceDetail", path: "/", httpMethod: "POST", input: input)
    }

    ///  Permanently deletes an AWS Firewall Manager policy. 
    public func deletePolicy(_ input: DeletePolicyRequest) throws {
        _ = try client.send(operation: "DeletePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an AWS Firewall Manager association with the IAM role and the Amazon Simple Notification Service (SNS) topic that is used to record AWS Firewall Manager SNS logs.
    public func deleteNotificationChannel(_ input: DeleteNotificationChannelRequest) throws {
        _ = try client.send(operation: "DeleteNotificationChannel", path: "/", httpMethod: "POST", input: input)
    }

    ///  Designates the IAM role and Amazon Simple Notification Service (SNS) topic that AWS Firewall Manager uses to record SNS logs.
    public func putNotificationChannel(_ input: PutNotificationChannelRequest) throws {
        _ = try client.send(operation: "PutNotificationChannel", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the AWS Firewall Manager administrator account. AWS Firewall Manager must be associated with the master account your AWS organization or associated with a member account that has the appropriate permissions. If the account ID that you submit is not an AWS Organizations master account, AWS Firewall Manager will set the appropriate permissions for the given member account. The account that you associate with AWS Firewall Manager is called the AWS Firewall Manager administrator account. 
    public func associateAdminAccount(_ input: AssociateAdminAccountRequest) throws {
        _ = try client.send(operation: "AssociateAdminAccount", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns an array of PolicySummary objects in the response.
    public func listPolicies(_ input: ListPoliciesRequest) throws -> Future<ListPoliciesResponse> {
        return try client.send(operation: "ListPolicies", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the Amazon Simple Notification Service (SNS) topic that is used to record AWS Firewall Manager SNS logs.
    public func getNotificationChannel(_ input: GetNotificationChannelRequest) throws -> Future<GetNotificationChannelResponse> {
        return try client.send(operation: "GetNotificationChannel", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a MemberAccounts object that lists the member accounts in the administrator's AWS organization. The ListMemberAccounts must be submitted by the account that is set as the AWS Firewall Manager administrator.
    public func listMemberAccounts(_ input: ListMemberAccountsRequest) throws -> Future<ListMemberAccountsResponse> {
        return try client.send(operation: "ListMemberAccounts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the specified AWS Firewall Manager policy.
    public func getPolicy(_ input: GetPolicyRequest) throws -> Future<GetPolicyResponse> {
        return try client.send(operation: "GetPolicy", path: "/", httpMethod: "POST", input: input)
    }


}