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
Amazon EMR is a web service that makes it easy to process large amounts of data efficiently. Amazon EMR uses Hadoop processing combined with several AWS products to do tasks such as web indexing, data mining, log file analysis, machine learning, scientific simulation, and data warehousing.
*/
public struct Elasticmapreduce {

    let request: AWSRequest

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil) {
        self.request = AWSRequest(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "ElasticMapReduce",
            service: "elasticmapreduce",
            endpoint: endpoint
        )
    }

    ///  Sets whether all AWS Identity and Access Management (IAM) users under your account can access the specified clusters (job flows). This action works on running clusters. You can also set the visibility of a cluster when you launch it using the VisibleToAllUsers parameter of RunJobFlow. The SetVisibleToAllUsers action can be called only by an IAM user who created the cluster or the AWS account that owns the cluster.
    public func setVisibleToAllUsers(_ input: SetVisibleToAllUsersInput) throws {
        _ = try request.invoke(operation: "SetVisibleToAllUsers", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Provides all available details about the instance groups in a cluster.
    public func listInstanceGroups(_ input: ListInstanceGroupsInput) throws -> ListInstanceGroupsOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListInstanceGroups", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  AddJobFlowSteps adds new steps to a running cluster. A maximum of 256 steps are allowed in each job flow. If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using SSH to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see Add More than 256 Steps to a Cluster in the Amazon EMR Management Guide. A step specifies the location of a JAR file stored either on the master node of the cluster or in Amazon S3. Each step is performed by the main function of the main class of the JAR file. The main class can be specified either in the manifest of the JAR or by using the MainFunction parameter of the step. Amazon EMR executes each step in the order listed. For a step to be considered complete, the main function must exit with a zero exit code and all Hadoop jobs started while the step was running must have completed and run successfully. You can only add steps to a cluster that is in one of the following states: STARTING, BOOTSTRAPPING, RUNNING, or WAITING.
    public func addJobFlowSteps(_ input: AddJobFlowStepsInput) throws -> AddJobFlowStepsOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "AddJobFlowSteps", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Removes an automatic scaling policy from a specified instance group within an EMR cluster.
    public func removeAutoScalingPolicy(_ input: RemoveAutoScalingPolicyInput) throws -> RemoveAutoScalingPolicyOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "RemoveAutoScalingPolicy", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates or updates an automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric.
    public func putAutoScalingPolicy(_ input: PutAutoScalingPolicyInput) throws -> PutAutoScalingPolicyOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "PutAutoScalingPolicy", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Adds one or more instance groups to a running cluster.
    public func addInstanceGroups(_ input: AddInstanceGroupsInput) throws -> AddInstanceGroupsOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "AddInstanceGroups", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Provides cluster-level details including status, hardware and software configuration, VPC settings, and so on. For information about the cluster steps, see ListSteps.
    public func describeCluster(_ input: DescribeClusterInput) throws -> DescribeClusterOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeCluster", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Provides a list of steps for the cluster in reverse order unless you specify stepIds with the request.
    public func listSteps(_ input: ListStepsInput) throws -> ListStepsOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListSteps", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Removes tags from an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see Tagging Amazon EMR Resources.  The following example removes the stack tag with value Prod from a cluster:
    public func removeTags(_ input: RemoveTagsInput) throws -> RemoveTagsOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "RemoveTags", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  TerminateJobFlows shuts a list of clusters (job flows) down. When a job flow is shut down, any step not yet completed is canceled and the EC2 instances on which the cluster is running are stopped. Any log files not already saved are uploaded to Amazon S3 if a LogUri was specified when the cluster was created. The maximum number of clusters allowed is 10. The call to TerminateJobFlows is asynchronous. Depending on the configuration of the cluster, it may take up to 1-5 minutes for the cluster to completely terminate and release allocated resources, such as Amazon EC2 instances.
    public func terminateJobFlows(_ input: TerminateJobFlowsInput) throws {
        _ = try request.invoke(operation: "TerminateJobFlows", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Deletes a security configuration.
    public func deleteSecurityConfiguration(_ input: DeleteSecurityConfigurationInput) throws -> DeleteSecurityConfigurationOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteSecurityConfiguration", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  SetTerminationProtection locks a cluster (job flow) so the EC2 instances in the cluster cannot be terminated by user intervention, an API call, or in the event of a job-flow error. The cluster still terminates upon successful completion of the job flow. Calling SetTerminationProtection on a cluster is similar to calling the Amazon EC2 DisableAPITermination API on all EC2 instances in a cluster.  SetTerminationProtection is used to prevent accidental termination of a cluster and to ensure that in the event of an error, the instances persist so that you can recover any data stored in their ephemeral instance storage.  To terminate a cluster that has been locked by setting SetTerminationProtection to true, you must first unlock the job flow by a subsequent call to SetTerminationProtection in which you set the value to false.   For more information, seeManaging Cluster Termination in the Amazon EMR Management Guide. 
    public func setTerminationProtection(_ input: SetTerminationProtectionInput) throws {
        _ = try request.invoke(operation: "SetTerminationProtection", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Cancels a pending step or steps in a running cluster. Available only in Amazon EMR versions 4.8.0 and later, excluding version 5.0.0. A maximum of 256 steps are allowed in each CancelSteps request. CancelSteps is idempotent but asynchronous; it does not guarantee a step will be canceled, even if the request is successfully submitted. You can only cancel steps that are in a PENDING state.
    public func cancelSteps(_ input: CancelStepsInput) throws -> CancelStepsOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "CancelSteps", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Lists all the security configurations visible to this account, providing their creation dates and times, and their names. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListSecurityConfigurations calls.
    public func listSecurityConfigurations(_ input: ListSecurityConfigurationsInput) throws -> ListSecurityConfigurationsOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListSecurityConfigurations", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates a security configuration, which is stored in the service and can be specified when a cluster is created.
    public func createSecurityConfiguration(_ input: CreateSecurityConfigurationInput) throws -> CreateSecurityConfigurationOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateSecurityConfiguration", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Provides information about the cluster instances that Amazon EMR provisions on behalf of a user when it creates the cluster. For example, this operation indicates when the EC2 instances reach the Ready state, when instances become available to Amazon EMR to use for jobs, and the IP addresses for cluster instances, etc.
    public func listInstances(_ input: ListInstancesInput) throws -> ListInstancesOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListInstances", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Provides the status of all clusters visible to this AWS account. Allows you to filter the list of clusters based on certain criteria; for example, filtering by cluster creation date and time or by status. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListClusters calls.
    public func listClusters(_ input: ListClustersInput) throws -> ListClustersOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListClusters", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Provides information about the bootstrap actions associated with a cluster.
    public func listBootstrapActions(_ input: ListBootstrapActionsInput) throws -> ListBootstrapActionsOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListBootstrapActions", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Adds tags to an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see Tagging Amazon EMR Resources. 
    public func addTags(_ input: AddTagsInput) throws -> AddTagsOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "AddTags", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Modifies the target On-Demand and target Spot capacities for the instance fleet with the specified InstanceFleetID within the cluster specified using ClusterID. The call either succeeds or fails atomically.  The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. 
    public func modifyInstanceFleet(_ input: ModifyInstanceFleetInput) throws {
        _ = try request.invoke(operation: "ModifyInstanceFleet", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  This API is deprecated and will eventually be removed. We recommend you use ListClusters, DescribeCluster, ListSteps, ListInstanceGroups and ListBootstrapActions instead. DescribeJobFlows returns a list of job flows that match all of the supplied parameters. The parameters can include a list of job flow IDs, job flow states, and restrictions on job flow creation date and time. Regardless of supplied parameters, only job flows created within the last two months are returned. If no parameters are supplied, then job flows matching either of the following criteria are returned:   Job flows created and completed in the last two weeks    Job flows created within the last two months that are in one of the following states: RUNNING, WAITING, SHUTTING_DOWN, STARTING    Amazon EMR can return a maximum of 512 job flow descriptions.
    public func describeJobFlows(_ input: DescribeJobFlowsInput) throws -> DescribeJobFlowsOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeJobFlows", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  ModifyInstanceGroups modifies the number of nodes and configuration settings of an instance group. The input parameters include the new target instance count for the group and the instance group ID. The call will either succeed or fail atomically.
    public func modifyInstanceGroups(_ input: ModifyInstanceGroupsInput) throws {
        _ = try request.invoke(operation: "ModifyInstanceGroups", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Adds an instance fleet to a running cluster.  The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x. 
    public func addInstanceFleet(_ input: AddInstanceFleetInput) throws -> AddInstanceFleetOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "AddInstanceFleet", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Lists all available details about the instance fleets in a cluster.  The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. 
    public func listInstanceFleets(_ input: ListInstanceFleetsInput) throws -> ListInstanceFleetsOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListInstanceFleets", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Provides the details of a security configuration by returning the configuration JSON.
    public func describeSecurityConfiguration(_ input: DescribeSecurityConfigurationInput) throws -> DescribeSecurityConfigurationOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeSecurityConfiguration", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  RunJobFlow creates and starts running a new cluster (job flow). The cluster runs the steps specified. After the steps complete, the cluster stops and the HDFS partition is lost. To prevent loss of data, configure the last step of the job flow to store results in Amazon S3. If the JobFlowInstancesConfig KeepJobFlowAliveWhenNoSteps parameter is set to TRUE, the cluster transitions to the WAITING state rather than shutting down after the steps have completed.  For additional protection, you can set the JobFlowInstancesConfig TerminationProtected parameter to TRUE to lock the cluster and prevent it from being terminated by API call, user intervention, or in the event of a job flow error. A maximum of 256 steps are allowed in each job flow. If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using the SSH shell to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see Add More than 256 Steps to a Cluster in the Amazon EMR Management Guide. For long running clusters, we recommend that you periodically store your results.  The instance fleets configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. The RunJobFlow request can contain InstanceFleets parameters or InstanceGroups parameters, but not both. 
    public func runJobFlow(_ input: RunJobFlowInput) throws -> RunJobFlowOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "RunJobFlow", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Provides more detail about the cluster step.
    public func describeStep(_ input: DescribeStepInput) throws -> DescribeStepOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeStep", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticmapreduceResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }


}