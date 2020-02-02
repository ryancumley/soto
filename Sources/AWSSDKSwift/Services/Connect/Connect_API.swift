// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS Connect service.

Amazon Connect is a cloud-based contact center solution that makes it easy to set up and manage a customer contact center and provide reliable customer engagement at any scale. Amazon Connect provides rich metrics and real-time reporting that allow you to optimize contact routing. You can also resolve customer issues more efficiently by putting customers in touch with the right agents. There are limits to the number of Amazon Connect resources that you can create and limits to the number of requests that you can make per second. For more information, see Amazon Connect Service Limits in the Amazon Connect Administrator Guide.
*/
public struct Connect {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Connect client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "connect",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-08-08",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ConnectErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a user account for the specified Amazon Connect instance.
    public func createUser(_ input: CreateUserRequest) -> EventLoopFuture<CreateUserResponse> {
        return client.send(operation: "CreateUser", path: "/users/{InstanceId}", httpMethod: "PUT", input: input)
    }

    ///  Deletes a user account from the specified Amazon Connect instance.
    @discardableResult public func deleteUser(_ input: DeleteUserRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteUser", path: "/users/{InstanceId}/{UserId}", httpMethod: "DELETE", input: input)
    }

    ///  Describes the specified user account. You can find the instance ID in the console (it’s the final part of the ARN). The console does not display the user IDs. Instead, list the users and note the IDs provided in the output.
    public func describeUser(_ input: DescribeUserRequest) -> EventLoopFuture<DescribeUserResponse> {
        return client.send(operation: "DescribeUser", path: "/users/{InstanceId}/{UserId}", httpMethod: "GET", input: input)
    }

    ///  Describes the specified hierarchy group.
    public func describeUserHierarchyGroup(_ input: DescribeUserHierarchyGroupRequest) -> EventLoopFuture<DescribeUserHierarchyGroupResponse> {
        return client.send(operation: "DescribeUserHierarchyGroup", path: "/user-hierarchy-groups/{InstanceId}/{HierarchyGroupId}", httpMethod: "GET", input: input)
    }

    ///  Describes the hierarchy structure of the specified Amazon Connect instance.
    public func describeUserHierarchyStructure(_ input: DescribeUserHierarchyStructureRequest) -> EventLoopFuture<DescribeUserHierarchyStructureResponse> {
        return client.send(operation: "DescribeUserHierarchyStructure", path: "/user-hierarchy-structure/{InstanceId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves the contact attributes for the specified contact.
    public func getContactAttributes(_ input: GetContactAttributesRequest) -> EventLoopFuture<GetContactAttributesResponse> {
        return client.send(operation: "GetContactAttributes", path: "/contact/attributes/{InstanceId}/{InitialContactId}", httpMethod: "GET", input: input)
    }

    ///  Gets the real-time metric data from the specified Amazon Connect instance. For more information, see Real-time Metrics Reports in the Amazon Connect Administrator Guide.
    public func getCurrentMetricData(_ input: GetCurrentMetricDataRequest) -> EventLoopFuture<GetCurrentMetricDataResponse> {
        return client.send(operation: "GetCurrentMetricData", path: "/metrics/current/{InstanceId}", httpMethod: "POST", input: input)
    }

    ///  Retrieves a token for federation.
    public func getFederationToken(_ input: GetFederationTokenRequest) -> EventLoopFuture<GetFederationTokenResponse> {
        return client.send(operation: "GetFederationToken", path: "/user/federate/{InstanceId}", httpMethod: "GET", input: input)
    }

    ///  Gets historical metric data from the specified Amazon Connect instance. For more information, see Historical Metrics Reports in the Amazon Connect Administrator Guide.
    public func getMetricData(_ input: GetMetricDataRequest) -> EventLoopFuture<GetMetricDataResponse> {
        return client.send(operation: "GetMetricData", path: "/metrics/historical/{InstanceId}", httpMethod: "POST", input: input)
    }

    ///  Provides information about the contact flows for the specified Amazon Connect instance.
    public func listContactFlows(_ input: ListContactFlowsRequest) -> EventLoopFuture<ListContactFlowsResponse> {
        return client.send(operation: "ListContactFlows", path: "/contact-flows-summary/{InstanceId}", httpMethod: "GET", input: input)
    }

    ///  Provides information about the hours of operation for the specified Amazon Connect instance.
    public func listHoursOfOperations(_ input: ListHoursOfOperationsRequest) -> EventLoopFuture<ListHoursOfOperationsResponse> {
        return client.send(operation: "ListHoursOfOperations", path: "/hours-of-operations-summary/{InstanceId}", httpMethod: "GET", input: input)
    }

    ///  Provides information about the phone numbers for the specified Amazon Connect instance.
    public func listPhoneNumbers(_ input: ListPhoneNumbersRequest) -> EventLoopFuture<ListPhoneNumbersResponse> {
        return client.send(operation: "ListPhoneNumbers", path: "/phone-numbers-summary/{InstanceId}", httpMethod: "GET", input: input)
    }

    ///  Provides information about the queues for the specified Amazon Connect instance.
    public func listQueues(_ input: ListQueuesRequest) -> EventLoopFuture<ListQueuesResponse> {
        return client.send(operation: "ListQueues", path: "/queues-summary/{InstanceId}", httpMethod: "GET", input: input)
    }

    ///  Provides summary information about the routing profiles for the specified Amazon Connect instance.
    public func listRoutingProfiles(_ input: ListRoutingProfilesRequest) -> EventLoopFuture<ListRoutingProfilesResponse> {
        return client.send(operation: "ListRoutingProfiles", path: "/routing-profiles-summary/{InstanceId}", httpMethod: "GET", input: input)
    }

    ///  Provides summary information about the security profiles for the specified Amazon Connect instance.
    public func listSecurityProfiles(_ input: ListSecurityProfilesRequest) -> EventLoopFuture<ListSecurityProfilesResponse> {
        return client.send(operation: "ListSecurityProfiles", path: "/security-profiles-summary/{InstanceId}", httpMethod: "GET", input: input)
    }

    ///  Lists the tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input)
    }

    ///  Provides summary information about the hierarchy groups for the specified Amazon Connect instance.
    public func listUserHierarchyGroups(_ input: ListUserHierarchyGroupsRequest) -> EventLoopFuture<ListUserHierarchyGroupsResponse> {
        return client.send(operation: "ListUserHierarchyGroups", path: "/user-hierarchy-groups-summary/{InstanceId}", httpMethod: "GET", input: input)
    }

    ///  Provides summary information about the users for the specified Amazon Connect instance.
    public func listUsers(_ input: ListUsersRequest) -> EventLoopFuture<ListUsersResponse> {
        return client.send(operation: "ListUsers", path: "/users-summary/{InstanceId}", httpMethod: "GET", input: input)
    }

    ///  Initiates a contact flow to start a new chat for the customer. Response of this API provides a token required to obtain credentials from the CreateParticipantConnection API in the Amazon Connect Participant Service. When a new chat contact is successfully created, clients need to subscribe to the participant’s connection for the created chat within 5 minutes. This is achieved by invoking CreateParticipantConnection with WEBSOCKET and CONNECTION_CREDENTIALS. 
    public func startChatContact(_ input: StartChatContactRequest) -> EventLoopFuture<StartChatContactResponse> {
        return client.send(operation: "StartChatContact", path: "/contact/chat", httpMethod: "PUT", input: input)
    }

    ///  Initiates a contact flow to place an outbound call to a customer. There is a 60 second dialing timeout for this operation. If the call is not connected after 60 seconds, it fails.
    public func startOutboundVoiceContact(_ input: StartOutboundVoiceContactRequest) -> EventLoopFuture<StartOutboundVoiceContactResponse> {
        return client.send(operation: "StartOutboundVoiceContact", path: "/contact/outbound-voice", httpMethod: "PUT", input: input)
    }

    ///  Ends the specified contact.
    public func stopContact(_ input: StopContactRequest) -> EventLoopFuture<StopContactResponse> {
        return client.send(operation: "StopContact", path: "/contact/stop", httpMethod: "POST", input: input)
    }

    ///  Adds the specified tags to the specified resource. The supported resource type is users.
    @discardableResult public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input)
    }

    ///  Removes the specified tags from the specified resource.
    @discardableResult public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input)
    }

    ///  Creates or updates the contact attributes associated with the specified contact. You can add or update attributes for both ongoing and completed contacts. For example, you can update the customer's name or the reason the customer called while the call is active, or add notes about steps that the agent took during the call that are displayed to the next agent that takes the call. You can also update attributes for a contact using data from your CRM application and save the data with the contact in Amazon Connect. You could also flag calls for additional analysis, such as legal review or identifying abusive callers. Contact attributes are available in Amazon Connect for 24 months, and are then deleted.  Important: You cannot use the operation to update attributes for contacts that occurred prior to the release of the API, September 12, 2018. You can update attributes only for contacts that started after the release of the API. If you attempt to update attributes for a contact that occurred prior to the release of the API, a 400 error is returned. This applies also to queued callbacks that were initiated prior to the release of the API but are still active in your instance.
    public func updateContactAttributes(_ input: UpdateContactAttributesRequest) -> EventLoopFuture<UpdateContactAttributesResponse> {
        return client.send(operation: "UpdateContactAttributes", path: "/contact/attributes", httpMethod: "POST", input: input)
    }

    ///  Assigns the specified hierarchy group to the specified user.
    @discardableResult public func updateUserHierarchy(_ input: UpdateUserHierarchyRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateUserHierarchy", path: "/users/{InstanceId}/{UserId}/hierarchy", httpMethod: "POST", input: input)
    }

    ///  Updates the identity information for the specified user.
    @discardableResult public func updateUserIdentityInfo(_ input: UpdateUserIdentityInfoRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateUserIdentityInfo", path: "/users/{InstanceId}/{UserId}/identity-info", httpMethod: "POST", input: input)
    }

    ///  Updates the phone configuration settings for the specified user.
    @discardableResult public func updateUserPhoneConfig(_ input: UpdateUserPhoneConfigRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateUserPhoneConfig", path: "/users/{InstanceId}/{UserId}/phone-config", httpMethod: "POST", input: input)
    }

    ///  Assigns the specified routing profile to the specified user.
    @discardableResult public func updateUserRoutingProfile(_ input: UpdateUserRoutingProfileRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateUserRoutingProfile", path: "/users/{InstanceId}/{UserId}/routing-profile", httpMethod: "POST", input: input)
    }

    ///  Assigns the specified security profiles to the specified user.
    @discardableResult public func updateUserSecurityProfiles(_ input: UpdateUserSecurityProfilesRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateUserSecurityProfiles", path: "/users/{InstanceId}/{UserId}/security-profiles", httpMethod: "POST", input: input)
    }
}
