// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS AppConfig service.

AWS AppConfig Use AWS AppConfig, a capability of AWS Systems Manager, to create, manage, and quickly deploy application configurations. AppConfig supports controlled deployments to applications of any size and includes built-in validation checks and monitoring. You can use AppConfig with applications hosted on Amazon EC2 instances, AWS Lambda, containers, mobile applications, or IoT devices. To prevent errors when deploying application configurations, especially for production systems where a simple typo could cause an unexpected outage, AppConfig includes validators. A validator provides a syntactic or semantic check to ensure that the configuration you want to deploy works as intended. To validate your application configuration data, you provide a schema or a Lambda function that runs against the configuration. The configuration deployment or update can only proceed when the configuration data is valid. During a configuration deployment, AppConfig monitors the application to ensure that the deployment is successful. If the system encounters an error, AppConfig rolls back the change to minimize impact for your application users. You can configure a deployment strategy for each application or environment that includes deployment criteria, including velocity, bake time, and alarms to monitor. Similar to error monitoring, if a deployment triggers an alarm, AppConfig automatically rolls back to the previous version.  AppConfig supports multiple use cases. Here are some examples.    Application tuning: Use AppConfig to carefully introduce changes to your application that can only be tested with production traffic.    Feature toggle: Use AppConfig to turn on new features that require a timely deployment, such as a product launch or announcement.     User membership: Use AppConfig to allow premium subscribers to access paid content.     Operational issues: Use AppConfig to reduce stress on your application when a dependency or other external factor impacts the system.   This reference is intended to be used with the AWS AppConfig User Guide.
*/
public struct AppConfig {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the AppConfig client
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
            service: "appconfig",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2019-10-09",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [AppConfigErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  An application in AppConfig is a logical unit of code that provides capabilities for your customers. For example, an application can be a microservice that runs on Amazon EC2 instances, a mobile application installed by your users, a serverless application using Amazon API Gateway and AWS Lambda, or any system you run on behalf of others.
    public func createApplication(_ input: CreateApplicationRequest) -> EventLoopFuture<Application> {
        return client.send(operation: "CreateApplication", path: "/applications", httpMethod: "POST", input: input)
    }

    ///  Information that enables AppConfig to access the configuration source. Valid configuration sources include Systems Manager (SSM) documents, SSM Parameter Store parameters, and Amazon S3 objects. A configuration profile includes the following information.   The Uri location of the configuration data.   The AWS Identity and Access Management (IAM) role that provides access to the configuration data.   A validator for the configuration data. Available validators include either a JSON Schema or an AWS Lambda function.   For more information, see Create a Configuration and a Configuration Profile in the AWS AppConfig User Guide.
    public func createConfigurationProfile(_ input: CreateConfigurationProfileRequest) -> EventLoopFuture<ConfigurationProfile> {
        return client.send(operation: "CreateConfigurationProfile", path: "/applications/{ApplicationId}/configurationprofiles", httpMethod: "POST", input: input)
    }

    ///  A deployment strategy defines important criteria for rolling out your configuration to the designated targets. A deployment strategy includes: the overall duration required, a percentage of targets to receive the deployment during each interval, an algorithm that defines how percentage grows, and bake time.
    public func createDeploymentStrategy(_ input: CreateDeploymentStrategyRequest) -> EventLoopFuture<DeploymentStrategy> {
        return client.send(operation: "CreateDeploymentStrategy", path: "/deploymentstrategies", httpMethod: "POST", input: input)
    }

    ///  For each application, you define one or more environments. An environment is a logical deployment group of AppConfig targets, such as applications in a Beta or Production environment. You can also define environments for application subcomponents such as the Web, Mobile and Back-end components for your application. You can configure Amazon CloudWatch alarms for each environment. The system monitors alarms during a configuration deployment. If an alarm is triggered, the system rolls back the configuration.
    public func createEnvironment(_ input: CreateEnvironmentRequest) -> EventLoopFuture<Environment> {
        return client.send(operation: "CreateEnvironment", path: "/applications/{ApplicationId}/environments", httpMethod: "POST", input: input)
    }

    ///  Delete an application. Deleting an application does not delete a configuration from a host.
    @discardableResult public func deleteApplication(_ input: DeleteApplicationRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteApplication", path: "/applications/{ApplicationId}", httpMethod: "DELETE", input: input)
    }

    ///  Delete a configuration profile. Deleting a configuration profile does not delete a configuration from a host.
    @discardableResult public func deleteConfigurationProfile(_ input: DeleteConfigurationProfileRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteConfigurationProfile", path: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}", httpMethod: "DELETE", input: input)
    }

    ///  Delete a deployment strategy. Deleting a deployment strategy does not delete a configuration from a host.
    @discardableResult public func deleteDeploymentStrategy(_ input: DeleteDeploymentStrategyRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteDeploymentStrategy", path: "/deployementstrategies/{DeploymentStrategyId}", httpMethod: "DELETE", input: input)
    }

    ///  Delete an environment. Deleting an environment does not delete a configuration from a host.
    @discardableResult public func deleteEnvironment(_ input: DeleteEnvironmentRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteEnvironment", path: "/applications/{ApplicationId}/environments/{EnvironmentId}", httpMethod: "DELETE", input: input)
    }

    ///  Retrieve information about an application.
    public func getApplication(_ input: GetApplicationRequest) -> EventLoopFuture<Application> {
        return client.send(operation: "GetApplication", path: "/applications/{ApplicationId}", httpMethod: "GET", input: input)
    }

    ///  Retrieve information about a configuration.
    public func getConfiguration(_ input: GetConfigurationRequest) -> EventLoopFuture<Configuration> {
        return client.send(operation: "GetConfiguration", path: "/applications/{Application}/environments/{Environment}/configurations/{Configuration}", httpMethod: "GET", input: input)
    }

    ///  Retrieve information about a configuration profile.
    public func getConfigurationProfile(_ input: GetConfigurationProfileRequest) -> EventLoopFuture<ConfigurationProfile> {
        return client.send(operation: "GetConfigurationProfile", path: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}", httpMethod: "GET", input: input)
    }

    ///  Retrieve information about a configuration deployment.
    public func getDeployment(_ input: GetDeploymentRequest) -> EventLoopFuture<Deployment> {
        return client.send(operation: "GetDeployment", path: "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}", httpMethod: "GET", input: input)
    }

    ///  Retrieve information about a deployment strategy. A deployment strategy defines important criteria for rolling out your configuration to the designated targets. A deployment strategy includes: the overall duration required, a percentage of targets to receive the deployment during each interval, an algorithm that defines how percentage grows, and bake time.
    public func getDeploymentStrategy(_ input: GetDeploymentStrategyRequest) -> EventLoopFuture<DeploymentStrategy> {
        return client.send(operation: "GetDeploymentStrategy", path: "/deploymentstrategies/{DeploymentStrategyId}", httpMethod: "GET", input: input)
    }

    ///  Retrieve information about an environment. An environment is a logical deployment group of AppConfig applications, such as applications in a Production environment or in an EU_Region environment. Each configuration deployment targets an environment. You can enable one or more Amazon CloudWatch alarms for an environment. If an alarm is triggered during a deployment, AppConfig roles back the configuration.
    public func getEnvironment(_ input: GetEnvironmentRequest) -> EventLoopFuture<Environment> {
        return client.send(operation: "GetEnvironment", path: "/applications/{ApplicationId}/environments/{EnvironmentId}", httpMethod: "GET", input: input)
    }

    ///  List all applications in your AWS account.
    public func listApplications(_ input: ListApplicationsRequest) -> EventLoopFuture<Applications> {
        return client.send(operation: "ListApplications", path: "/applications", httpMethod: "GET", input: input)
    }

    ///  Lists the configuration profiles for an application.
    public func listConfigurationProfiles(_ input: ListConfigurationProfilesRequest) -> EventLoopFuture<ConfigurationProfiles> {
        return client.send(operation: "ListConfigurationProfiles", path: "/applications/{ApplicationId}/configurationprofiles", httpMethod: "GET", input: input)
    }

    ///  List deployment strategies.
    public func listDeploymentStrategies(_ input: ListDeploymentStrategiesRequest) -> EventLoopFuture<DeploymentStrategies> {
        return client.send(operation: "ListDeploymentStrategies", path: "/deploymentstrategies", httpMethod: "GET", input: input)
    }

    ///  Lists the deployments for an environment.
    public func listDeployments(_ input: ListDeploymentsRequest) -> EventLoopFuture<Deployments> {
        return client.send(operation: "ListDeployments", path: "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments", httpMethod: "GET", input: input)
    }

    ///  List the environments for an application.
    public func listEnvironments(_ input: ListEnvironmentsRequest) -> EventLoopFuture<Environments> {
        return client.send(operation: "ListEnvironments", path: "/applications/{ApplicationId}/environments", httpMethod: "GET", input: input)
    }

    ///  Retrieves the list of key-value tags assigned to the resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ResourceTags> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: "GET", input: input)
    }

    ///  Starts a deployment.
    public func startDeployment(_ input: StartDeploymentRequest) -> EventLoopFuture<Deployment> {
        return client.send(operation: "StartDeployment", path: "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments", httpMethod: "POST", input: input)
    }

    ///  Stops a deployment. This API action works only on deployments that have a status of DEPLOYING. This action moves the deployment to a status of ROLLED_BACK.
    public func stopDeployment(_ input: StopDeploymentRequest) -> EventLoopFuture<Deployment> {
        return client.send(operation: "StopDeployment", path: "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}", httpMethod: "DELETE", input: input)
    }

    ///  Metadata to assign to an AppConfig resource. Tags help organize and categorize your AppConfig resources. Each tag consists of a key and an optional value, both of which you define. You can specify a maximum of 50 tags for a resource.
    @discardableResult public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: "POST", input: input)
    }

    ///  Deletes a tag key and value from an AppConfig resource.
    @discardableResult public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: "DELETE", input: input)
    }

    ///  Updates an application.
    public func updateApplication(_ input: UpdateApplicationRequest) -> EventLoopFuture<Application> {
        return client.send(operation: "UpdateApplication", path: "/applications/{ApplicationId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates a configuration profile.
    public func updateConfigurationProfile(_ input: UpdateConfigurationProfileRequest) -> EventLoopFuture<ConfigurationProfile> {
        return client.send(operation: "UpdateConfigurationProfile", path: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates a deployment strategy.
    public func updateDeploymentStrategy(_ input: UpdateDeploymentStrategyRequest) -> EventLoopFuture<DeploymentStrategy> {
        return client.send(operation: "UpdateDeploymentStrategy", path: "/deploymentstrategies/{DeploymentStrategyId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates an environment.
    public func updateEnvironment(_ input: UpdateEnvironmentRequest) -> EventLoopFuture<Environment> {
        return client.send(operation: "UpdateEnvironment", path: "/applications/{ApplicationId}/environments/{EnvironmentId}", httpMethod: "PATCH", input: input)
    }

    ///  Uses the validators in a configuration profile to validate a configuration.
    @discardableResult public func validateConfiguration(_ input: ValidateConfigurationRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "ValidateConfiguration", path: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/validators", httpMethod: "POST", input: input)
    }
}
