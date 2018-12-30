// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS IoT Jobs is a service that allows you to define a set of jobs — remote operations that are sent to and executed on one or more devices connected to AWS IoT. For example, you can define a job that instructs a set of devices to download and install application or firmware updates, reboot, rotate certificates, or perform remote troubleshooting operations.  To create a job, you make a job document which is a description of the remote operations to be performed, and you specify a list of targets that should perform the operations. The targets can be individual things, thing groups or both.  AWS IoT Jobs sends a message to inform the targets that a job is available. The target starts the execution of the job by downloading the job document, performing the operations it specifies, and reporting its progress to AWS IoT. The Jobs service provides commands to track the progress of a job on a specific target and for all the targets of the job
*/
public struct IoTJobsDataPlane {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "data.jobs.iot",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2017-09-29",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [IoTJobsDataPlaneErrorType.self]
        )
    }

    ///  Gets details of a job execution.
    public func describeJobExecution(_ input: DescribeJobExecutionRequest) throws -> Future<DescribeJobExecutionResponse> {
        return try client.send(operation: "DescribeJobExecution", path: "/things/{thingName}/jobs/{jobId}", httpMethod: "GET", input: input)
    }

    ///  Gets the list of all jobs for a thing that are not in a terminal status.
    public func getPendingJobExecutions(_ input: GetPendingJobExecutionsRequest) throws -> Future<GetPendingJobExecutionsResponse> {
        return try client.send(operation: "GetPendingJobExecutions", path: "/things/{thingName}/jobs", httpMethod: "GET", input: input)
    }

    ///  Updates the status of a job execution.
    public func updateJobExecution(_ input: UpdateJobExecutionRequest) throws -> Future<UpdateJobExecutionResponse> {
        return try client.send(operation: "UpdateJobExecution", path: "/things/{thingName}/jobs/{jobId}", httpMethod: "POST", input: input)
    }

    ///  Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.
    public func startNextPendingJobExecution(_ input: StartNextPendingJobExecutionRequest) throws -> Future<StartNextPendingJobExecutionResponse> {
        return try client.send(operation: "StartNextPendingJobExecution", path: "/things/{thingName}/jobs/$next", httpMethod: "PUT", input: input)
    }


}