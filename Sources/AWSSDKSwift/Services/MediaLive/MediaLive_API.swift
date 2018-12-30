// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
API for AWS Elemental MediaLive
*/
public struct MediaLive {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "medialive",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-10-14",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [MediaLiveErrorType.self]
        )
    }

    ///  Get a channel schedule
    public func describeSchedule(_ input: DescribeScheduleRequest) throws -> Future<DescribeScheduleResponse> {
        return try client.send(operation: "DescribeSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: "GET", input: input)
    }

    ///  Produces list of inputs that have been created
    public func listInputs(_ input: ListInputsRequest) throws -> Future<ListInputsResponse> {
        return try client.send(operation: "ListInputs", path: "/prod/inputs", httpMethod: "GET", input: input)
    }

    ///  Delete an expired reservation.
    public func deleteReservation(_ input: DeleteReservationRequest) throws -> Future<DeleteReservationResponse> {
        return try client.send(operation: "DeleteReservation", path: "/prod/reservations/{reservationId}", httpMethod: "DELETE", input: input)
    }

    ///  List offerings available for purchase.
    public func listOfferings(_ input: ListOfferingsRequest) throws -> Future<ListOfferingsResponse> {
        return try client.send(operation: "ListOfferings", path: "/prod/offerings", httpMethod: "GET", input: input)
    }

    ///  Deletes an Input Security Group
    public func deleteInputSecurityGroup(_ input: DeleteInputSecurityGroupRequest) throws -> Future<DeleteInputSecurityGroupResponse> {
        return try client.send(operation: "DeleteInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: "DELETE", input: input)
    }

    ///  Stops a running channel
    public func stopChannel(_ input: StopChannelRequest) throws -> Future<StopChannelResponse> {
        return try client.send(operation: "StopChannel", path: "/prod/channels/{channelId}/stop", httpMethod: "POST", input: input)
    }

    ///  Starts deletion of channel. The associated outputs are also deleted.
    public func deleteChannel(_ input: DeleteChannelRequest) throws -> Future<DeleteChannelResponse> {
        return try client.send(operation: "DeleteChannel", path: "/prod/channels/{channelId}", httpMethod: "DELETE", input: input)
    }

    ///  Updates an input.
    public func updateInput(_ input: UpdateInputRequest) throws -> Future<UpdateInputResponse> {
        return try client.send(operation: "UpdateInput", path: "/prod/inputs/{inputId}", httpMethod: "PUT", input: input)
    }

    ///  Updates a channel.
    public func updateChannel(_ input: UpdateChannelRequest) throws -> Future<UpdateChannelResponse> {
        return try client.send(operation: "UpdateChannel", path: "/prod/channels/{channelId}", httpMethod: "PUT", input: input)
    }

    ///  Produces a summary of an Input Security Group
    public func describeInputSecurityGroup(_ input: DescribeInputSecurityGroupRequest) throws -> Future<DescribeInputSecurityGroupResponse> {
        return try client.send(operation: "DescribeInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: "GET", input: input)
    }

    ///  Purchase an offering and create a reservation.
    public func purchaseOffering(_ input: PurchaseOfferingRequest) throws -> Future<PurchaseOfferingResponse> {
        return try client.send(operation: "PurchaseOffering", path: "/prod/offerings/{offeringId}/purchase", httpMethod: "POST", input: input)
    }

    ///  Get details for an offering.
    public func describeOffering(_ input: DescribeOfferingRequest) throws -> Future<DescribeOfferingResponse> {
        return try client.send(operation: "DescribeOffering", path: "/prod/offerings/{offeringId}", httpMethod: "GET", input: input)
    }

    ///  Deletes the input end point
    public func deleteInput(_ input: DeleteInputRequest) throws -> Future<DeleteInputResponse> {
        return try client.send(operation: "DeleteInput", path: "/prod/inputs/{inputId}", httpMethod: "DELETE", input: input)
    }

    ///  Creates a Input Security Group
    public func createInputSecurityGroup(_ input: CreateInputSecurityGroupRequest) throws -> Future<CreateInputSecurityGroupResponse> {
        return try client.send(operation: "CreateInputSecurityGroup", path: "/prod/inputSecurityGroups", httpMethod: "POST", input: input)
    }

    ///  Gets details about a channel
    public func describeChannel(_ input: DescribeChannelRequest) throws -> Future<DescribeChannelResponse> {
        return try client.send(operation: "DescribeChannel", path: "/prod/channels/{channelId}", httpMethod: "GET", input: input)
    }

    ///  Produces list of channels that have been created
    public func listChannels(_ input: ListChannelsRequest) throws -> Future<ListChannelsResponse> {
        return try client.send(operation: "ListChannels", path: "/prod/channels", httpMethod: "GET", input: input)
    }

    ///  Produces a list of Input Security Groups for an account
    public func listInputSecurityGroups(_ input: ListInputSecurityGroupsRequest) throws -> Future<ListInputSecurityGroupsResponse> {
        return try client.send(operation: "ListInputSecurityGroups", path: "/prod/inputSecurityGroups", httpMethod: "GET", input: input)
    }

    ///  List purchased reservations.
    public func listReservations(_ input: ListReservationsRequest) throws -> Future<ListReservationsResponse> {
        return try client.send(operation: "ListReservations", path: "/prod/reservations", httpMethod: "GET", input: input)
    }

    ///  Update a channel schedule
    public func batchUpdateSchedule(_ input: BatchUpdateScheduleRequest) throws -> Future<BatchUpdateScheduleResponse> {
        return try client.send(operation: "BatchUpdateSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: "PUT", input: input)
    }

    ///  Produces details about an input
    public func describeInput(_ input: DescribeInputRequest) throws -> Future<DescribeInputResponse> {
        return try client.send(operation: "DescribeInput", path: "/prod/inputs/{inputId}", httpMethod: "GET", input: input)
    }

    ///  Creates a new channel
    public func createChannel(_ input: CreateChannelRequest) throws -> Future<CreateChannelResponse> {
        return try client.send(operation: "CreateChannel", path: "/prod/channels", httpMethod: "POST", input: input)
    }

    ///  Get details for a reservation.
    public func describeReservation(_ input: DescribeReservationRequest) throws -> Future<DescribeReservationResponse> {
        return try client.send(operation: "DescribeReservation", path: "/prod/reservations/{reservationId}", httpMethod: "GET", input: input)
    }

    ///  Starts an existing channel
    public func startChannel(_ input: StartChannelRequest) throws -> Future<StartChannelResponse> {
        return try client.send(operation: "StartChannel", path: "/prod/channels/{channelId}/start", httpMethod: "POST", input: input)
    }

    ///  Update an Input Security Group's Whilelists.
    public func updateInputSecurityGroup(_ input: UpdateInputSecurityGroupRequest) throws -> Future<UpdateInputSecurityGroupResponse> {
        return try client.send(operation: "UpdateInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: "PUT", input: input)
    }

    ///  Create an input
    public func createInput(_ input: CreateInputRequest) throws -> Future<CreateInputResponse> {
        return try client.send(operation: "CreateInput", path: "/prod/inputs", httpMethod: "POST", input: input)
    }


}