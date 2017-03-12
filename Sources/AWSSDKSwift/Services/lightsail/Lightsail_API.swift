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
Amazon Lightsail is the easiest way to get started with AWS for developers who just need virtual private servers. Lightsail includes everything you need to launch your project quickly - a virtual machine, SSD-based storage, data transfer, DNS management, and a static IP - for a low, predictable price. You manage those Lightsail servers through the Lightsail console or by using the API or command-line interface (CLI). For more information about Lightsail concepts and tasks, see the Lightsail Dev Guide. To use the Lightsail API or the CLI, you will need to use AWS Identity and Access Management (IAM) to generate access keys. For details about how to set this up, see the Lightsail Dev Guide.
*/
public struct Lightsail {

    let request: AWSRequest

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil) {
        self.request = AWSRequest(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "Lightsail_20161128",
            service: "lightsail",
            endpoint: endpoint
        )
    }

    ///  Returns information about a specific domain recordset.
    public func getDomain(_ input: GetDomainRequest) throws -> GetDomainResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetDomain", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns information about all operations. Results are returned from oldest to newest, up to a maximum of 200. Results can be paged by making each subsequent call to GetOperations use the maximum (last) statusChangedAt value from the previous request.
    public func getOperations(_ input: GetOperationsRequest) throws -> GetOperationsResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetOperations", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Restarts a specific instance. When your Amazon Lightsail instance is finished rebooting, Lightsail assigns a new public IP address. To use the same IP address after restarting, create a static IP address and attach it to the instance.
    public func rebootInstance(_ input: RebootInstanceRequest) throws -> RebootInstanceResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "RebootInstance", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes a specific static IP from your account.
    public func releaseStaticIp(_ input: ReleaseStaticIpRequest) throws -> ReleaseStaticIpResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "ReleaseStaticIp", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Attempts to unpeer the Lightsail VPC from the user's default VPC.
    public func unpeerVpc(_ input: UnpeerVpcRequest) throws -> UnpeerVpcResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "UnpeerVpc", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes a specific domain entry.
    public func deleteDomainEntry(_ input: DeleteDomainEntryRequest) throws -> DeleteDomainEntryResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteDomainEntry", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns the state of a specific instance. Works on one instance at a time.
    public func getInstanceState(_ input: GetInstanceStateRequest) throws -> GetInstanceStateResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetInstanceState", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns information about a specific Amazon Lightsail instance, which is a virtual private server.
    public func getInstance(_ input: GetInstanceRequest) throws -> GetInstanceResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetInstance", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns the names of all active (not deleted) resources.
    public func getActiveNames(_ input: GetActiveNamesRequest) throws -> GetActiveNamesResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetActiveNames", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns information about all key pairs in the user's account.
    public func getKeyPairs(_ input: GetKeyPairsRequest) throws -> GetKeyPairsResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetKeyPairs", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates a snapshot of a specific virtual private server, or instance. You can use a snapshot to create a new instance that is based on that snapshot.
    public func createInstanceSnapshot(_ input: CreateInstanceSnapshotRequest) throws -> CreateInstanceSnapshotResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateInstanceSnapshot", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns a list of all valid regions for Amazon Lightsail.
    public func getRegions(_ input: GetRegionsRequest) throws -> GetRegionsResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetRegions", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns a Boolean value indicating whether your Lightsail VPC is peered.
    public func isVpcPeered(_ input: IsVpcPeeredRequest) throws -> IsVpcPeeredResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "IsVpcPeered", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns information about a specific key pair.
    public func getKeyPair(_ input: GetKeyPairRequest) throws -> GetKeyPairResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetKeyPair", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Updates a domain recordset after it is created.
    public func updateDomainEntry(_ input: UpdateDomainEntryRequest) throws -> UpdateDomainEntryResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "UpdateDomainEntry", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Attaches a static IP address to a specific Amazon Lightsail instance.
    public func attachStaticIp(_ input: AttachStaticIpRequest) throws -> AttachStaticIpResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "AttachStaticIp", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns the list of available instance images, or blueprints. You can use a blueprint to create a new virtual private server already running a specific operating system, as well as a preinstalled app or development stack. The software each instance is running depends on the blueprint image you choose.
    public func getBlueprints(_ input: GetBlueprintsRequest) throws -> GetBlueprintsResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetBlueprints", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns all instance snapshots for the user's account.
    public func getInstanceSnapshots(_ input: GetInstanceSnapshotsRequest) throws -> GetInstanceSnapshotsResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetInstanceSnapshots", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns temporary SSH keys you can use to connect to a specific virtual private server, or instance.
    public func getInstanceAccessDetails(_ input: GetInstanceAccessDetailsRequest) throws -> GetInstanceAccessDetailsResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetInstanceAccessDetails", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes the specified domain recordset and all of its domain records.
    public func deleteDomain(_ input: DeleteDomainRequest) throws -> DeleteDomainResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteDomain", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates one of the following entry records associated with the domain: A record, CNAME record, TXT record, or MX record.
    public func createDomainEntry(_ input: CreateDomainEntryRequest) throws -> CreateDomainEntryResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateDomainEntry", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Imports a public SSH key from a specific key pair.
    public func importKeyPair(_ input: ImportKeyPairRequest) throws -> ImportKeyPairResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "ImportKeyPair", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns the data points for the specified Amazon Lightsail instance metric, given an instance name.
    public func getInstanceMetricData(_ input: GetInstanceMetricDataRequest) throws -> GetInstanceMetricDataResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetInstanceMetricData", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates sn SSH key pair.
    public func createKeyPair(_ input: CreateKeyPairRequest) throws -> CreateKeyPairResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateKeyPair", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Starts a specific Amazon Lightsail instance from a stopped state. To restart an instance, use the reboot instance operation.
    public func startInstance(_ input: StartInstanceRequest) throws -> StartInstanceResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "StartInstance", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Detaches a static IP from the Amazon Lightsail instance to which it is attached.
    public func detachStaticIp(_ input: DetachStaticIpRequest) throws -> DetachStaticIpResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "DetachStaticIp", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns a list of all domains in the user's account.
    public func getDomains(_ input: GetDomainsRequest) throws -> GetDomainsResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetDomains", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Allocates a static IP address.
    public func allocateStaticIp(_ input: AllocateStaticIpRequest) throws -> AllocateStaticIpResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "AllocateStaticIp", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates a domain resource for the specified domain (e.g., example.com).
    public func createDomain(_ input: CreateDomainRequest) throws -> CreateDomainResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateDomain", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns information about all static IPs in the user's account.
    public func getStaticIps(_ input: GetStaticIpsRequest) throws -> GetStaticIpsResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetStaticIps", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Closes the public ports on a specific Amazon Lightsail instance.
    public func closeInstancePublicPorts(_ input: CloseInstancePublicPortsRequest) throws -> CloseInstancePublicPortsResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "CloseInstancePublicPorts", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Stops a specific Amazon Lightsail instance that is currently running.
    public func stopInstance(_ input: StopInstanceRequest) throws -> StopInstanceResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "StopInstance", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Downloads the default SSH key pair from the user's account.
    public func downloadDefaultKeyPair(_ input: DownloadDefaultKeyPairRequest) throws -> DownloadDefaultKeyPairResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "DownloadDefaultKeyPair", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Uses a specific snapshot as a blueprint for creating one or more new instances that are based on that identical configuration.
    public func createInstancesFromSnapshot(_ input: CreateInstancesFromSnapshotRequest) throws -> CreateInstancesFromSnapshotResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateInstancesFromSnapshot", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates one or more Amazon Lightsail virtual private servers, or instances.
    public func createInstances(_ input: CreateInstancesRequest) throws -> CreateInstancesResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateInstances", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns information about all Amazon Lightsail virtual private servers, or instances.
    public func getInstances(_ input: GetInstancesRequest) throws -> GetInstancesResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetInstances", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns information about a specific operation. Operations include events such as when you create an instance, allocate a static IP, attach a static IP, and so on.
    public func getOperation(_ input: GetOperationRequest) throws -> GetOperationResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetOperation", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes a specific snapshot of a virtual private server (or instance).
    public func deleteInstanceSnapshot(_ input: DeleteInstanceSnapshotRequest) throws -> DeleteInstanceSnapshotResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteInstanceSnapshot", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns the list of bundles that are available for purchase. A bundle describes the specs for your virtual private server (or instance).
    public func getBundles(_ input: GetBundlesRequest) throws -> GetBundlesResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetBundles", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns the port states for a specific virtual private server, or instance.
    public func getInstancePortStates(_ input: GetInstancePortStatesRequest) throws -> GetInstancePortStatesResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetInstancePortStates", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Tries to peer the Lightsail VPC with the user's default VPC.
    public func peerVpc(_ input: PeerVpcRequest) throws -> PeerVpcResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "PeerVpc", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Adds public ports to an Amazon Lightsail instance.
    public func openInstancePublicPorts(_ input: OpenInstancePublicPortsRequest) throws -> OpenInstancePublicPortsResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "OpenInstancePublicPorts", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Gets operations for a specific resource (e.g., an instance or a static IP).
    public func getOperationsForResource(_ input: GetOperationsForResourceRequest) throws -> GetOperationsForResourceResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetOperationsForResource", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes a specific SSH key pair.
    public func deleteKeyPair(_ input: DeleteKeyPairRequest) throws -> DeleteKeyPairResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteKeyPair", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns information about a specific instance snapshot.
    public func getInstanceSnapshot(_ input: GetInstanceSnapshotRequest) throws -> GetInstanceSnapshotResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetInstanceSnapshot", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes a specific Amazon Lightsail virtual private server, or instance.
    public func deleteInstance(_ input: DeleteInstanceRequest) throws -> DeleteInstanceResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteInstance", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns information about a specific static IP.
    public func getStaticIp(_ input: GetStaticIpRequest) throws -> GetStaticIpResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetStaticIp", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try LightsailResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }


}