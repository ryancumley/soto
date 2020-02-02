// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS IoTEvents service.

AWS IoT Events monitors your equipment or device fleets for failures or changes in operation, and triggers actions when such events occur. AWS IoT Events API commands enable you to create, read, update and delete inputs and detector models, and to list their versions.
*/
public struct IoTEvents {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the IoTEvents client
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
            service: "iotevents",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2018-07-27",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [IoTEventsErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a detector model.
    public func createDetectorModel(_ input: CreateDetectorModelRequest) -> EventLoopFuture<CreateDetectorModelResponse> {
        return client.send(operation: "CreateDetectorModel", path: "/detector-models", httpMethod: "POST", input: input)
    }

    ///  Creates an input.
    public func createInput(_ input: CreateInputRequest) -> EventLoopFuture<CreateInputResponse> {
        return client.send(operation: "CreateInput", path: "/inputs", httpMethod: "POST", input: input)
    }

    ///  Deletes a detector model. Any active instances of the detector model are also deleted.
    public func deleteDetectorModel(_ input: DeleteDetectorModelRequest) -> EventLoopFuture<DeleteDetectorModelResponse> {
        return client.send(operation: "DeleteDetectorModel", path: "/detector-models/{detectorModelName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an input.
    public func deleteInput(_ input: DeleteInputRequest) -> EventLoopFuture<DeleteInputResponse> {
        return client.send(operation: "DeleteInput", path: "/inputs/{inputName}", httpMethod: "DELETE", input: input)
    }

    ///  Describes a detector model. If the "version" parameter is not specified, information about the latest version is returned.
    public func describeDetectorModel(_ input: DescribeDetectorModelRequest) -> EventLoopFuture<DescribeDetectorModelResponse> {
        return client.send(operation: "DescribeDetectorModel", path: "/detector-models/{detectorModelName}", httpMethod: "GET", input: input)
    }

    ///  Describes an input.
    public func describeInput(_ input: DescribeInputRequest) -> EventLoopFuture<DescribeInputResponse> {
        return client.send(operation: "DescribeInput", path: "/inputs/{inputName}", httpMethod: "GET", input: input)
    }

    ///  Retrieves the current settings of the AWS IoT Events logging options.
    public func describeLoggingOptions(_ input: DescribeLoggingOptionsRequest) -> EventLoopFuture<DescribeLoggingOptionsResponse> {
        return client.send(operation: "DescribeLoggingOptions", path: "/logging", httpMethod: "GET", input: input)
    }

    ///  Lists all the versions of a detector model. Only the metadata associated with each detector model version is returned.
    public func listDetectorModelVersions(_ input: ListDetectorModelVersionsRequest) -> EventLoopFuture<ListDetectorModelVersionsResponse> {
        return client.send(operation: "ListDetectorModelVersions", path: "/detector-models/{detectorModelName}/versions", httpMethod: "GET", input: input)
    }

    ///  Lists the detector models you have created. Only the metadata associated with each detector model is returned.
    public func listDetectorModels(_ input: ListDetectorModelsRequest) -> EventLoopFuture<ListDetectorModelsResponse> {
        return client.send(operation: "ListDetectorModels", path: "/detector-models", httpMethod: "GET", input: input)
    }

    ///  Lists the inputs you have created.
    public func listInputs(_ input: ListInputsRequest) -> EventLoopFuture<ListInputsResponse> {
        return client.send(operation: "ListInputs", path: "/inputs", httpMethod: "GET", input: input)
    }

    ///  Lists the tags (metadata) you have assigned to the resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags", httpMethod: "GET", input: input)
    }

    ///  Sets or updates the AWS IoT Events logging options. If you update the value of any "loggingOptions" field, it takes up to one minute for the change to take effect. Also, if you change the policy attached to the role you specified in the "roleArn" field (for example, to correct an invalid policy) it takes up to five minutes for that change to take effect.
    @discardableResult public func putLoggingOptions(_ input: PutLoggingOptionsRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "PutLoggingOptions", path: "/logging", httpMethod: "PUT", input: input)
    }

    ///  Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags", httpMethod: "POST", input: input)
    }

    ///  Removes the given tags (metadata) from the resource.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags", httpMethod: "DELETE", input: input)
    }

    ///  Updates a detector model. Detectors (instances) spawned by the previous version are deleted and then re-created as new inputs arrive.
    public func updateDetectorModel(_ input: UpdateDetectorModelRequest) -> EventLoopFuture<UpdateDetectorModelResponse> {
        return client.send(operation: "UpdateDetectorModel", path: "/detector-models/{detectorModelName}", httpMethod: "POST", input: input)
    }

    ///  Updates an input.
    public func updateInput(_ input: UpdateInputRequest) -> EventLoopFuture<UpdateInputResponse> {
        return client.send(operation: "UpdateInput", path: "/inputs/{inputName}", httpMethod: "PUT", input: input)
    }
}
