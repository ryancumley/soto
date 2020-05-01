//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension Synthetics {

    ///  This operation returns a list of the canaries in your account, along with full details about each canary. This operation does not have resource-level authorization, so if a user is able to use DescribeCanaries, the user can see all of the canaries in the account. A deny policy can only be used to restrict access to all canaries. It cannot be used on specific resources. 
    public func describeCanariesPaginator(
        _ input: DescribeCanariesRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeCanariesResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeCanaries, tokenKey: \DescribeCanariesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Use this operation to see information from the most recent run of each canary that you have created.
    public func describeCanariesLastRunPaginator(
        _ input: DescribeCanariesLastRunRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeCanariesLastRunResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeCanariesLastRun, tokenKey: \DescribeCanariesLastRunResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of Synthetics canary runtime versions. For more information, see  Canary Runtime Versions.
    public func describeRuntimeVersionsPaginator(
        _ input: DescribeRuntimeVersionsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeRuntimeVersionsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeRuntimeVersions, tokenKey: \DescribeRuntimeVersionsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Retrieves a list of runs for a specified canary.
    public func getCanaryRunsPaginator(
        _ input: GetCanaryRunsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetCanaryRunsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getCanaryRuns, tokenKey: \GetCanaryRunsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension Synthetics.DescribeCanariesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Synthetics.DescribeCanariesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Synthetics.DescribeCanariesLastRunRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Synthetics.DescribeCanariesLastRunRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Synthetics.DescribeRuntimeVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Synthetics.DescribeRuntimeVersionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Synthetics.GetCanaryRunsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Synthetics.GetCanaryRunsRequest {
        return .init(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )

    }
}


