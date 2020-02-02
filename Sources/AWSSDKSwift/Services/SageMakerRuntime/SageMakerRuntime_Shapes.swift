// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension SageMakerRuntime {
    //MARK: Enums

    //MARK: Shapes

    public struct InvokeEndpointInput: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "Body"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Accept", location: .header(locationName: "Accept"), required: false, type: .string), 
            AWSShapeMember(label: "Body", required: true, type: .blob), 
            AWSShapeMember(label: "ContentType", location: .header(locationName: "Content-Type"), required: false, type: .string), 
            AWSShapeMember(label: "CustomAttributes", location: .header(locationName: "X-Amzn-SageMaker-Custom-Attributes"), required: false, type: .string), 
            AWSShapeMember(label: "EndpointName", location: .uri(locationName: "EndpointName"), required: true, type: .string), 
            AWSShapeMember(label: "TargetModel", location: .header(locationName: "X-Amzn-SageMaker-Target-Model"), required: false, type: .string)
        ]

        /// The desired MIME type of the inference in the response.
        public let accept: String?
        /// Provides input data, in the format specified in the ContentType request header. Amazon SageMaker passes all of the data in the body to the model.  For information about the format of the request body, see Common Data Formats—Inference.
        public let body: Data
        /// The MIME type of the input data in the request body.
        public let contentType: String?
        /// Provides additional information about a request for an inference submitted to a model hosted at an Amazon SageMaker endpoint. The information is an opaque value that is forwarded verbatim. You could use this value, for example, to provide an ID that you can use to track a request or to provide other metadata that a service endpoint was programmed to process. The value must consist of no more than 1024 visible US-ASCII characters as specified in Section 3.3.6. Field Value Components of the Hypertext Transfer Protocol (HTTP/1.1). This feature is currently supported in the AWS SDKs but not in the Amazon SageMaker Python SDK.
        public let customAttributes: String?
        /// The name of the endpoint that you specified when you created the endpoint using the CreateEndpoint API. 
        public let endpointName: String
        /// Specifies the model to be requested for an inference when invoking a multi-model endpoint. 
        public let targetModel: String?

        public init(accept: String? = nil, body: Data, contentType: String? = nil, customAttributes: String? = nil, endpointName: String, targetModel: String? = nil) {
            self.accept = accept
            self.body = body
            self.contentType = contentType
            self.customAttributes = customAttributes
            self.endpointName = endpointName
            self.targetModel = targetModel
        }

        public func validate(name: String) throws {
            try validate(self.accept, name:"accept", parent: name, max: 1024)
            try validate(self.accept, name:"accept", parent: name, pattern: "\\p{ASCII}*")
            try validate(self.body, name:"body", parent: name, max: 5242880)
            try validate(self.contentType, name:"contentType", parent: name, max: 1024)
            try validate(self.contentType, name:"contentType", parent: name, pattern: "\\p{ASCII}*")
            try validate(self.customAttributes, name:"customAttributes", parent: name, max: 1024)
            try validate(self.customAttributes, name:"customAttributes", parent: name, pattern: "\\p{ASCII}*")
            try validate(self.endpointName, name:"endpointName", parent: name, max: 63)
            try validate(self.endpointName, name:"endpointName", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")
            try validate(self.targetModel, name:"targetModel", parent: name, max: 1024)
            try validate(self.targetModel, name:"targetModel", parent: name, min: 1)
            try validate(self.targetModel, name:"targetModel", parent: name, pattern: "\\A\\S[\\p{Print}]*\\z")
        }

        private enum CodingKeys: String, CodingKey {
            case accept = "Accept"
            case body = "Body"
            case contentType = "Content-Type"
            case customAttributes = "X-Amzn-SageMaker-Custom-Attributes"
            case endpointName = "EndpointName"
            case targetModel = "X-Amzn-SageMaker-Target-Model"
        }
    }

    public struct InvokeEndpointOutput: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "Body"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Body", required: true, type: .blob), 
            AWSShapeMember(label: "ContentType", location: .header(locationName: "Content-Type"), required: false, type: .string), 
            AWSShapeMember(label: "CustomAttributes", location: .header(locationName: "X-Amzn-SageMaker-Custom-Attributes"), required: false, type: .string), 
            AWSShapeMember(label: "InvokedProductionVariant", location: .header(locationName: "x-Amzn-Invoked-Production-Variant"), required: false, type: .string)
        ]

        /// Includes the inference provided by the model. For information about the format of the response body, see Common Data Formats—Inference.
        public let body: Data
        /// The MIME type of the inference returned in the response body.
        public let contentType: String?
        /// Provides additional information in the response about the inference returned by a model hosted at an Amazon SageMaker endpoint. The information is an opaque value that is forwarded verbatim. You could use this value, for example, to return an ID received in the CustomAttributes header of a request or other metadata that a service endpoint was programmed to produce. The value must consist of no more than 1024 visible US-ASCII characters as specified in Section 3.3.6. Field Value Components of the Hypertext Transfer Protocol (HTTP/1.1). If the customer wants the custom attribute returned, the model must set the custom attribute to be included on the way back.  This feature is currently supported in the AWS SDKs but not in the Amazon SageMaker Python SDK.
        public let customAttributes: String?
        /// Identifies the production variant that was invoked.
        public let invokedProductionVariant: String?

        public init(body: Data, contentType: String? = nil, customAttributes: String? = nil, invokedProductionVariant: String? = nil) {
            self.body = body
            self.contentType = contentType
            self.customAttributes = customAttributes
            self.invokedProductionVariant = invokedProductionVariant
        }

        private enum CodingKeys: String, CodingKey {
            case body = "Body"
            case contentType = "Content-Type"
            case customAttributes = "X-Amzn-SageMaker-Custom-Attributes"
            case invokedProductionVariant = "x-Amzn-Invoked-Production-Variant"
        }
    }
}
