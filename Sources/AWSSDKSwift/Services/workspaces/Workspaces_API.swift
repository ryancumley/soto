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
Amazon WorkSpaces Service This reference provides detailed information about the Amazon WorkSpaces operations.
*/
public struct Workspaces {

    let request: AWSRequest

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil) {
        self.request = AWSRequest(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "WorkspacesService",
            service: "workspaces",
            endpoint: endpoint
        )
    }

    ///   Stops the specified WorkSpaces. The API only works with WorkSpaces that have RunningMode configured as AutoStop and the State set to AVAILABLE, IMPAIRED, UNHEALTHY, or ERROR.
    public func stopWorkspaces(_ input: StopWorkspacesRequest) throws -> StopWorkspacesResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "StopWorkspaces", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try WorkspacesResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates tags for a WorkSpace.
    public func createTags(_ input: CreateTagsRequest) throws -> CreateTagsResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateTags", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try WorkspacesResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Modifies the WorkSpace properties, including the RunningMode and AutoStop time.
    public func modifyWorkspaceProperties(_ input: ModifyWorkspacePropertiesRequest) throws -> ModifyWorkspacePropertiesResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "ModifyWorkspaceProperties", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try WorkspacesResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Starts the specified WorkSpaces. The API only works with WorkSpaces that have RunningMode configured as AutoStop and the State set to “STOPPED.”
    public func startWorkspaces(_ input: StartWorkspacesRequest) throws -> StartWorkspacesResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "StartWorkspaces", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try WorkspacesResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Obtains information about the WorkSpace bundles that are available to your account in the specified region. You can filter the results with either the BundleIds parameter, or the Owner parameter, but not both. This operation supports pagination with the use of the NextToken request and response parameters. If more results are available, the NextToken response member contains a token that you pass in the next call to this operation to retrieve the next set of items.
    public func describeWorkspaceBundles(_ input: DescribeWorkspaceBundlesRequest) throws -> DescribeWorkspaceBundlesResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeWorkspaceBundles", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try WorkspacesResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Rebuilds the specified WorkSpaces. Rebuilding a WorkSpace is a potentially destructive action that can result in the loss of data. Rebuilding a WorkSpace causes the following to occur:   The system is restored to the image of the bundle that the WorkSpace is created from. Any applications that have been installed, or system settings that have been made since the WorkSpace was created will be lost.   The data drive (D drive) is re-created from the last automatic snapshot taken of the data drive. The current contents of the data drive are overwritten. Automatic snapshots of the data drive are taken every 12 hours, so the snapshot can be as much as 12 hours old.   To be able to rebuild a WorkSpace, the WorkSpace must have a State of AVAILABLE or ERROR.  This operation is asynchronous and returns before the WorkSpaces have been completely rebuilt. 
    public func rebuildWorkspaces(_ input: RebuildWorkspacesRequest) throws -> RebuildWorkspacesResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "RebuildWorkspaces", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try WorkspacesResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Describes the connection status of a specified WorkSpace.
    public func describeWorkspacesConnectionStatus(_ input: DescribeWorkspacesConnectionStatusRequest) throws -> DescribeWorkspacesConnectionStatusResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeWorkspacesConnectionStatus", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try WorkspacesResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Obtains information about the specified WorkSpaces. Only one of the filter parameters, such as BundleId, DirectoryId, or WorkspaceIds, can be specified at a time. This operation supports pagination with the use of the NextToken request and response parameters. If more results are available, the NextToken response member contains a token that you pass in the next call to this operation to retrieve the next set of items.
    public func describeWorkspaces(_ input: DescribeWorkspacesRequest) throws -> DescribeWorkspacesResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeWorkspaces", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try WorkspacesResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates one or more WorkSpaces.  This operation is asynchronous and returns before the WorkSpaces are created. 
    public func createWorkspaces(_ input: CreateWorkspacesRequest) throws -> CreateWorkspacesResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateWorkspaces", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try WorkspacesResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Describes tags for a WorkSpace.
    public func describeTags(_ input: DescribeTagsRequest) throws -> DescribeTagsResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeTags", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try WorkspacesResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Reboots the specified WorkSpaces. To be able to reboot a WorkSpace, the WorkSpace must have a State of AVAILABLE, IMPAIRED, or INOPERABLE.  This operation is asynchronous and returns before the WorkSpaces have rebooted. 
    public func rebootWorkspaces(_ input: RebootWorkspacesRequest) throws -> RebootWorkspacesResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "RebootWorkspaces", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try WorkspacesResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes tags from a WorkSpace.
    public func deleteTags(_ input: DeleteTagsRequest) throws -> DeleteTagsResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteTags", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try WorkspacesResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Retrieves information about the AWS Directory Service directories in the region that are registered with Amazon WorkSpaces and are available to your account. This operation supports pagination with the use of the NextToken request and response parameters. If more results are available, the NextToken response member contains a token that you pass in the next call to this operation to retrieve the next set of items.
    public func describeWorkspaceDirectories(_ input: DescribeWorkspaceDirectoriesRequest) throws -> DescribeWorkspaceDirectoriesResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeWorkspaceDirectories", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try WorkspacesResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Terminates the specified WorkSpaces. Terminating a WorkSpace is a permanent action and cannot be undone. The user's data is not maintained and will be destroyed. If you need to archive any user data, contact Amazon Web Services before terminating the WorkSpace. You can terminate a WorkSpace that is in any state except SUSPENDED.  This operation is asynchronous and returns before the WorkSpaces have been completely terminated. 
    public func terminateWorkspaces(_ input: TerminateWorkspacesRequest) throws -> TerminateWorkspacesResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "TerminateWorkspaces", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try WorkspacesResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }


}