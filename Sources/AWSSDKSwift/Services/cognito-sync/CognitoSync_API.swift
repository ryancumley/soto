// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import Core

/**
Amazon Cognito Sync Amazon Cognito Sync provides an AWS service and client library that enable cross-device syncing of application-related user data. High-level client libraries are available for both iOS and Android. You can use these libraries to persist data locally so that it's available even if the device is offline. Developer credentials don't need to be stored on the mobile device to access the service. You can use Amazon Cognito to obtain a normalized user ID and credentials. User data is persisted in a dataset that can store up to 1 MB of key-value pairs, and you can have up to 20 datasets per user identity. With Amazon Cognito Sync, the data stored for each identity is accessible only to credentials assigned to that identity. In order to use the Cognito Sync service, you need to make API calls using credentials retrieved with Amazon Cognito Identity service. If you want to use Cognito Sync in an Android or iOS application, you will probably want to make API calls via the AWS Mobile SDK. To learn more, see the Developer Guide for Android and the Developer Guide for iOS.
*/
public struct CognitoSync {

    let request: AWSRequest

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil) {
        self.request = AWSRequest(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "cognito-sync",
            endpoint: endpoint
        )
    }

    ///  Deletes the specific dataset. The dataset will be deleted permanently, and the action can't be undone. Datasets that this dataset was merged with will no longer report the merge. Any subsequent operation on this dataset will result in a ResourceNotFoundException. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.
    public func deleteDataset(_ input: DeleteDatasetRequest) throws -> DeleteDatasetResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteDataset", path: "/identitypools/\(input.identityPoolId)/identities/\(input.identityId)/datasets/\(input.datasetName)", httpMethod: "DELETE", httpHeaders: [:], input: input)
        return try CognitoSyncResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Gets usage details (for example, data storage) about a particular identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    public func describeIdentityPoolUsage(_ input: DescribeIdentityPoolUsageRequest) throws -> DescribeIdentityPoolUsageResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeIdentityPoolUsage", path: "/identitypools/\(input.identityPoolId)", httpMethod: "GET", httpHeaders: [:], input: input)
        return try CognitoSyncResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Subscribes to receive notifications when a dataset is modified by another device. This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.
    public func subscribeToDataset(_ input: SubscribeToDatasetRequest) throws -> SubscribeToDatasetResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "SubscribeToDataset", path: "/identitypools/\(input.identityPoolId)/identities/\(input.identityId)/datasets/\(input.datasetName)/subscriptions/\(input.deviceId)", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CognitoSyncResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Get the status of the last BulkPublish operation for an identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    public func getBulkPublishDetails(_ input: GetBulkPublishDetailsRequest) throws -> GetBulkPublishDetailsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetBulkPublishDetails", path: "/identitypools/\(input.identityPoolId)/getBulkPublishDetails", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CognitoSyncResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Sets the AWS Lambda function for a given event type for an identity pool. This request only updates the key/value pair specified. Other key/values pairs are not updated. To remove a key value pair, pass a empty value for the particular key. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    public func setCognitoEvents(_ input: SetCognitoEventsRequest) throws {
        _ = try request.invoke(operation: "SetCognitoEvents", path: "/identitypools/\(input.identityPoolId)/events", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Gets paginated records, optionally changed after a particular sync count for a dataset and identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. ListRecords can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.
    public func listRecords(_ input: ListRecordsRequest) throws -> ListRecordsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListRecords", path: "/identitypools/\(input.identityPoolId)/identities/\(input.identityId)/datasets/\(input.datasetName)/records?syncSessionToken=\(input.syncSessionToken?.description ?? "")&lastSyncCount=\(input.lastSyncCount?.description ?? "")&nextToken=\(input.nextToken?.description ?? "")&maxResults=\(input.maxResults?.description ?? "")", httpMethod: "GET", httpHeaders: [:], input: input)
        return try CognitoSyncResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Sets the necessary configuration for push sync. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    public func setIdentityPoolConfiguration(_ input: SetIdentityPoolConfigurationRequest) throws -> SetIdentityPoolConfigurationResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "SetIdentityPoolConfiguration", path: "/identitypools/\(input.identityPoolId)/configuration", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CognitoSyncResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Gets usage information for an identity, including number of datasets and data usage. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.
    public func describeIdentityUsage(_ input: DescribeIdentityUsageRequest) throws -> DescribeIdentityUsageResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeIdentityUsage", path: "/identitypools/\(input.identityPoolId)/identities/\(input.identityId)", httpMethod: "GET", httpHeaders: [:], input: input)
        return try CognitoSyncResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Gets a list of identity pools registered with Cognito. ListIdentityPoolUsage can only be called with developer credentials. You cannot make this API call with the temporary user credentials provided by Cognito Identity.
    public func listIdentityPoolUsage(_ input: ListIdentityPoolUsageRequest) throws -> ListIdentityPoolUsageResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListIdentityPoolUsage", path: "/identitypools?nextToken=\(input.nextToken?.description ?? "")&maxResults=\(input.maxResults?.description ?? "")", httpMethod: "GET", httpHeaders: [:], input: input)
        return try CognitoSyncResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Initiates a bulk publish of all existing datasets for an Identity Pool to the configured stream. Customers are limited to one successful bulk publish per 24 hours. Bulk publish is an asynchronous request, customers can see the status of the request via the GetBulkPublishDetails operation. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    public func bulkPublish(_ input: BulkPublishRequest) throws -> BulkPublishResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "BulkPublish", path: "/identitypools/\(input.identityPoolId)/bulkpublish", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CognitoSyncResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Lists datasets for an identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. ListDatasets can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use the Cognito Identity credentials to make this API call.
    public func listDatasets(_ input: ListDatasetsRequest) throws -> ListDatasetsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListDatasets", path: "/identitypools/\(input.identityPoolId)/identities/\(input.identityId)/datasets?nextToken=\(input.nextToken?.description ?? "")&maxResults=\(input.maxResults?.description ?? "")", httpMethod: "GET", httpHeaders: [:], input: input)
        return try CognitoSyncResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Unsubscribes from receiving notifications when a dataset is modified by another device. This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.
    public func unsubscribeFromDataset(_ input: UnsubscribeFromDatasetRequest) throws -> UnsubscribeFromDatasetResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "UnsubscribeFromDataset", path: "/identitypools/\(input.identityPoolId)/identities/\(input.identityId)/datasets/\(input.datasetName)/subscriptions/\(input.deviceId)", httpMethod: "DELETE", httpHeaders: [:], input: input)
        return try CognitoSyncResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Gets meta data about a dataset by identity and dataset name. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.
    public func describeDataset(_ input: DescribeDatasetRequest) throws -> DescribeDatasetResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeDataset", path: "/identitypools/\(input.identityPoolId)/identities/\(input.identityId)/datasets/\(input.datasetName)", httpMethod: "GET", httpHeaders: [:], input: input)
        return try CognitoSyncResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Gets the events and the corresponding Lambda functions associated with an identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    public func getCognitoEvents(_ input: GetCognitoEventsRequest) throws -> GetCognitoEventsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetCognitoEvents", path: "/identitypools/\(input.identityPoolId)/events", httpMethod: "GET", httpHeaders: [:], input: input)
        return try CognitoSyncResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Posts updates to records and adds and deletes records for a dataset and user. The sync count in the record patch is your last known sync count for that record. The server will reject an UpdateRecords request with a ResourceConflictException if you try to patch a record with a new value but a stale sync count. For example, if the sync count on the server is 5 for a key called highScore and you try and submit a new highScore with sync count of 4, the request will be rejected. To obtain the current sync count for a record, call ListRecords. On a successful update of the record, the response returns the new sync count for that record. You should present that sync count the next time you try to update that same record. When the record does not exist, specify the sync count as 0. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.
    public func updateRecords(_ input: UpdateRecordsRequest) throws -> UpdateRecordsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "UpdateRecords", path: "/identitypools/\(input.identityPoolId)/identities/\(input.identityId)/datasets/\(input.datasetName)", httpMethod: "POST", httpHeaders: ["x-amz-Client-Context": input.clientContext], input: input)
        return try CognitoSyncResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Registers a device to receive push sync notifications. This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.
    public func registerDevice(_ input: RegisterDeviceRequest) throws -> RegisterDeviceResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "RegisterDevice", path: "/identitypools/\(input.identityPoolId)/identity/\(input.identityId)/device", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CognitoSyncResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Gets the configuration settings of an identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    public func getIdentityPoolConfiguration(_ input: GetIdentityPoolConfigurationRequest) throws -> GetIdentityPoolConfigurationResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetIdentityPoolConfiguration", path: "/identitypools/\(input.identityPoolId)/configuration", httpMethod: "GET", httpHeaders: [:], input: input)
        return try CognitoSyncResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }


}