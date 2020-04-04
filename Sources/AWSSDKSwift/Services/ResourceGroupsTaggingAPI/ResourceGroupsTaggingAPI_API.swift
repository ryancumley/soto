// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS ResourceGroupsTaggingAPI service.

Resource Groups Tagging API This guide describes the API operations for the resource groups tagging. A tag is a label that you assign to an AWS resource. A tag consists of a key and a value, both of which you define. For example, if you have two Amazon EC2 instances, you might assign both a tag key of "Stack." But the value of "Stack" might be "Testing" for one and "Production" for the other. Tagging can help you organize your resources and enables you to simplify resource management, access management and cost allocation.  You can use the resource groups tagging API operations to complete the following tasks:   Tag and untag supported resources located in the specified Region for the AWS account.   Use tag-based filters to search for resources located in the specified Region for the AWS account.   List all existing tag keys in the specified Region for the AWS account.   List all existing values for the specified key in the specified Region for the AWS account.   To use resource groups tagging API operations, you must add the following permissions to your IAM policy:    tag:GetResources     tag:TagResources     tag:UntagResources     tag:GetTagKeys     tag:GetTagValues    You'll also need permissions to access the resources of individual services so that you can tag and untag those resources. For more information on IAM policies, see Managing IAM Policies in the IAM User Guide. You can use the Resource Groups Tagging API to tag resources for the following AWS services.   Alexa for Business (a4b)   API Gateway   Amazon AppStream   AWS AppSync   AWS App Mesh   Amazon Athena   Amazon Aurora   AWS Backup   AWS Certificate Manager   AWS Certificate Manager Private CA   Amazon Cloud Directory   AWS CloudFormation   Amazon CloudFront   AWS CloudHSM   AWS CloudTrail   Amazon CloudWatch (alarms only)   Amazon CloudWatch Events   Amazon CloudWatch Logs   AWS CodeBuild   AWS CodeCommit   AWS CodePipeline   AWS CodeStar   Amazon Cognito Identity   Amazon Cognito User Pools   Amazon Comprehend   AWS Config   AWS Data Exchange   AWS Data Pipeline   AWS Database Migration Service   AWS DataSync   AWS Device Farm   AWS Direct Connect   AWS Directory Service   Amazon DynamoDB   Amazon EBS   Amazon EC2   Amazon ECR   Amazon ECS   Amazon EKS   AWS Elastic Beanstalk   Amazon Elastic File System   Elastic Load Balancing   Amazon ElastiCache   Amazon Elasticsearch Service   AWS Elemental MediaLive   AWS Elemental MediaPackage   AWS Elemental MediaTailor   Amazon EMR   Amazon FSx   Amazon S3 Glacier   AWS Glue   Amazon GuardDuty   Amazon Inspector   AWS IoT Analytics   AWS IoT Core   AWS IoT Device Defender   AWS IoT Device Management   AWS IoT Events   AWS IoT Greengrass   AWS IoT 1-Click   AWS Key Management Service   Amazon Kinesis   Amazon Kinesis Data Analytics   Amazon Kinesis Data Firehose   AWS Lambda   AWS License Manager   Amazon Machine Learning   Amazon MQ   Amazon MSK   Amazon Neptune   AWS OpsWorks   AWS Organizations   Amazon Quantum Ledger Database (QLDB)   Amazon RDS   Amazon Redshift   AWS Resource Access Manager   AWS Resource Groups   AWS RoboMaker   Amazon Route 53   Amazon Route 53 Resolver   Amazon S3 (buckets only)   Amazon SageMaker   AWS Secrets Manager   AWS Security Hub   AWS Service Catalog   Amazon Simple Notification Service (SNS)   Amazon Simple Queue Service (SQS)   Amazon Simple Workflow Service   AWS Step Functions   AWS Storage Gateway   AWS Systems Manager   AWS Transfer for SFTP   Amazon VPC   Amazon WorkSpaces  
*/
public struct ResourceGroupsTaggingAPI {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ResourceGroupsTaggingAPI client
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
            amzTarget: "ResourceGroupsTaggingAPI_20170126",
            service: "tagging",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-01-26",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ResourceGroupsTaggingAPIErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Describes the status of the StartReportCreation operation.  You can call this operation only from the organization's master account and from the us-east-1 Region.
    public func describeReportCreation(_ input: DescribeReportCreationInput) -> EventLoopFuture<DescribeReportCreationOutput> {
        return client.send(operation: "DescribeReportCreation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a table that shows counts of resources that are noncompliant with their tag policies. For more information on tag policies, see Tag Policies in the AWS Organizations User Guide.  You can call this operation only from the organization's master account and from the us-east-1 Region.
    public func getComplianceSummary(_ input: GetComplianceSummaryInput) -> EventLoopFuture<GetComplianceSummaryOutput> {
        return client.send(operation: "GetComplianceSummary", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns all the tagged or previously tagged resources that are located in the specified Region for the AWS account. Depending on what information you want returned, you can also specify the following:    Filters that specify what tags and resource types you want returned. The response includes all tags that are associated with the requested resources.   Information about compliance with the account's effective tag policy. For more information on tag policies, see Tag Policies in the AWS Organizations User Guide.     You can check the PaginationToken response parameter to determine if a query is complete. Queries occasionally return fewer results on a page than allowed. The PaginationToken response parameter value is null only when there are no more results to display.  
    public func getResources(_ input: GetResourcesInput) -> EventLoopFuture<GetResourcesOutput> {
        return client.send(operation: "GetResources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns all tag keys in the specified Region for the AWS account.
    public func getTagKeys(_ input: GetTagKeysInput) -> EventLoopFuture<GetTagKeysOutput> {
        return client.send(operation: "GetTagKeys", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns all tag values for the specified key in the specified Region for the AWS account.
    public func getTagValues(_ input: GetTagValuesInput) -> EventLoopFuture<GetTagValuesOutput> {
        return client.send(operation: "GetTagValues", path: "/", httpMethod: "POST", input: input)
    }

    ///  Generates a report that lists all tagged resources in accounts across your organization and tells whether each resource is compliant with the effective tag policy. Compliance data is refreshed daily.  The generated report is saved to the following location:  s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv  You can call this operation only from the organization's master account and from the us-east-1 Region.
    public func startReportCreation(_ input: StartReportCreationInput) -> EventLoopFuture<StartReportCreationOutput> {
        return client.send(operation: "StartReportCreation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Applies one or more tags to the specified resources. Note the following:   Not all resources can have tags. For a list of services that support tagging, see this list.   Each resource can have up to 50 tags. For other limits, see Tag Naming and Usage Conventions in the AWS General Reference.    You can only tag resources that are located in the specified Region for the AWS account.   To add tags to a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for adding tags. For more information, see this list.  
    public func tagResources(_ input: TagResourcesInput) -> EventLoopFuture<TagResourcesOutput> {
        return client.send(operation: "TagResources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the specified tags from the specified resources. When you specify a tag key, the action removes both that key and its associated value. The operation succeeds even if you attempt to remove tags from a resource that were already removed. Note the following:   To remove tags from a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for removing tags. For more information, see this list.   You can only tag resources that are located in the specified Region for the AWS account.  
    public func untagResources(_ input: UntagResourcesInput) -> EventLoopFuture<UntagResourcesOutput> {
        return client.send(operation: "UntagResources", path: "/", httpMethod: "POST", input: input)
    }
}
