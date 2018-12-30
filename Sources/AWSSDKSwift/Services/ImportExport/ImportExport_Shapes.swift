// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension ImportExport {

    public struct ListJobsInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "APIVersion", required: false, type: .string), 
            AWSShapeMember(label: "MaxJobs", required: false, type: .integer), 
            AWSShapeMember(label: "Marker", required: false, type: .string)
        ]
        public let aPIVersion: String?
        public let maxJobs: Int32?
        public let marker: String?

        public init(aPIVersion: String? = nil, maxJobs: Int32? = nil, marker: String? = nil) {
            self.aPIVersion = aPIVersion
            self.maxJobs = maxJobs
            self.marker = marker
        }

        private enum CodingKeys: String, CodingKey {
            case aPIVersion = "APIVersion"
            case maxJobs = "MaxJobs"
            case marker = "Marker"
        }
    }

    public struct CancelJobInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "APIVersion", required: false, type: .string), 
            AWSShapeMember(label: "JobId", required: true, type: .string)
        ]
        public let aPIVersion: String?
        public let jobId: String

        public init(aPIVersion: String? = nil, jobId: String) {
            self.aPIVersion = aPIVersion
            self.jobId = jobId
        }

        private enum CodingKeys: String, CodingKey {
            case aPIVersion = "APIVersion"
            case jobId = "JobId"
        }
    }

    public struct GetStatusInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "APIVersion", required: false, type: .string), 
            AWSShapeMember(label: "JobId", required: true, type: .string)
        ]
        public let aPIVersion: String?
        public let jobId: String

        public init(aPIVersion: String? = nil, jobId: String) {
            self.aPIVersion = aPIVersion
            self.jobId = jobId
        }

        private enum CodingKeys: String, CodingKey {
            case aPIVersion = "APIVersion"
            case jobId = "JobId"
        }
    }

    public enum JobType: String, CustomStringConvertible, Codable {
        case `import` = "Import"
        case export = "Export"
        public var description: String { return self.rawValue }
    }

    public struct UpdateJobInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Manifest", required: true, type: .string), 
            AWSShapeMember(label: "APIVersion", required: false, type: .string), 
            AWSShapeMember(label: "ValidateOnly", required: true, type: .boolean), 
            AWSShapeMember(label: "JobType", required: true, type: .enum), 
            AWSShapeMember(label: "JobId", required: true, type: .string)
        ]
        public let manifest: String
        public let aPIVersion: String?
        public let validateOnly: Bool
        public let jobType: JobType
        public let jobId: String

        public init(manifest: String, aPIVersion: String? = nil, validateOnly: Bool, jobType: JobType, jobId: String) {
            self.manifest = manifest
            self.aPIVersion = aPIVersion
            self.validateOnly = validateOnly
            self.jobType = jobType
            self.jobId = jobId
        }

        private enum CodingKeys: String, CodingKey {
            case manifest = "Manifest"
            case aPIVersion = "APIVersion"
            case validateOnly = "ValidateOnly"
            case jobType = "JobType"
            case jobId = "JobId"
        }
    }

    public struct GetStatusOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProgressMessage", required: false, type: .string), 
            AWSShapeMember(label: "LocationMessage", required: false, type: .string), 
            AWSShapeMember(label: "SignatureFileContents", required: false, type: .string), 
            AWSShapeMember(label: "ArtifactList", required: false, type: .list), 
            AWSShapeMember(label: "Signature", required: false, type: .string), 
            AWSShapeMember(label: "LogKey", required: false, type: .string), 
            AWSShapeMember(label: "Carrier", required: false, type: .string), 
            AWSShapeMember(label: "TrackingNumber", required: false, type: .string), 
            AWSShapeMember(label: "JobId", required: false, type: .string), 
            AWSShapeMember(label: "ErrorCount", required: false, type: .integer), 
            AWSShapeMember(label: "LogBucket", required: false, type: .string), 
            AWSShapeMember(label: "CreationDate", required: false, type: .timestamp), 
            AWSShapeMember(label: "LocationCode", required: false, type: .string), 
            AWSShapeMember(label: "JobType", required: false, type: .enum), 
            AWSShapeMember(label: "ProgressCode", required: false, type: .string), 
            AWSShapeMember(label: "CurrentManifest", required: false, type: .string)
        ]
        public let progressMessage: String?
        public let locationMessage: String?
        public let signatureFileContents: String?
        public let artifactList: [Artifact]?
        public let signature: String?
        public let logKey: String?
        public let carrier: String?
        public let trackingNumber: String?
        public let jobId: String?
        public let errorCount: Int32?
        public let logBucket: String?
        public let creationDate: TimeStamp?
        public let locationCode: String?
        public let jobType: JobType?
        public let progressCode: String?
        public let currentManifest: String?

        public init(progressMessage: String? = nil, locationMessage: String? = nil, signatureFileContents: String? = nil, artifactList: [Artifact]? = nil, signature: String? = nil, logKey: String? = nil, carrier: String? = nil, trackingNumber: String? = nil, jobId: String? = nil, errorCount: Int32? = nil, logBucket: String? = nil, creationDate: TimeStamp? = nil, locationCode: String? = nil, jobType: JobType? = nil, progressCode: String? = nil, currentManifest: String? = nil) {
            self.progressMessage = progressMessage
            self.locationMessage = locationMessage
            self.signatureFileContents = signatureFileContents
            self.artifactList = artifactList
            self.signature = signature
            self.logKey = logKey
            self.carrier = carrier
            self.trackingNumber = trackingNumber
            self.jobId = jobId
            self.errorCount = errorCount
            self.logBucket = logBucket
            self.creationDate = creationDate
            self.locationCode = locationCode
            self.jobType = jobType
            self.progressCode = progressCode
            self.currentManifest = currentManifest
        }

        private enum CodingKeys: String, CodingKey {
            case progressMessage = "ProgressMessage"
            case locationMessage = "LocationMessage"
            case signatureFileContents = "SignatureFileContents"
            case artifactList = "ArtifactList"
            case signature = "Signature"
            case logKey = "LogKey"
            case carrier = "Carrier"
            case trackingNumber = "TrackingNumber"
            case jobId = "JobId"
            case errorCount = "ErrorCount"
            case logBucket = "LogBucket"
            case creationDate = "CreationDate"
            case locationCode = "LocationCode"
            case jobType = "JobType"
            case progressCode = "ProgressCode"
            case currentManifest = "CurrentManifest"
        }
    }

    public struct CreateJobOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "WarningMessage", required: false, type: .string), 
            AWSShapeMember(label: "SignatureFileContents", required: false, type: .string), 
            AWSShapeMember(label: "ArtifactList", required: false, type: .list), 
            AWSShapeMember(label: "Signature", required: false, type: .string), 
            AWSShapeMember(label: "JobType", required: false, type: .enum), 
            AWSShapeMember(label: "JobId", required: false, type: .string)
        ]
        public let warningMessage: String?
        public let signatureFileContents: String?
        public let artifactList: [Artifact]?
        public let signature: String?
        public let jobType: JobType?
        public let jobId: String?

        public init(warningMessage: String? = nil, signatureFileContents: String? = nil, artifactList: [Artifact]? = nil, signature: String? = nil, jobType: JobType? = nil, jobId: String? = nil) {
            self.warningMessage = warningMessage
            self.signatureFileContents = signatureFileContents
            self.artifactList = artifactList
            self.signature = signature
            self.jobType = jobType
            self.jobId = jobId
        }

        private enum CodingKeys: String, CodingKey {
            case warningMessage = "WarningMessage"
            case signatureFileContents = "SignatureFileContents"
            case artifactList = "ArtifactList"
            case signature = "Signature"
            case jobType = "JobType"
            case jobId = "JobId"
        }
    }

    public struct GetShippingLabelInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "jobIds", required: true, type: .list), 
            AWSShapeMember(label: "street2", required: false, type: .string), 
            AWSShapeMember(label: "street3", required: false, type: .string), 
            AWSShapeMember(label: "postalCode", required: false, type: .string), 
            AWSShapeMember(label: "company", required: false, type: .string), 
            AWSShapeMember(label: "country", required: false, type: .string), 
            AWSShapeMember(label: "stateOrProvince", required: false, type: .string), 
            AWSShapeMember(label: "name", required: false, type: .string), 
            AWSShapeMember(label: "city", required: false, type: .string), 
            AWSShapeMember(label: "APIVersion", required: false, type: .string), 
            AWSShapeMember(label: "street1", required: false, type: .string), 
            AWSShapeMember(label: "phoneNumber", required: false, type: .string)
        ]
        public let jobIds: [String]
        public let street2: String?
        public let street3: String?
        public let postalCode: String?
        public let company: String?
        public let country: String?
        public let stateOrProvince: String?
        public let name: String?
        public let city: String?
        public let aPIVersion: String?
        public let street1: String?
        public let phoneNumber: String?

        public init(jobIds: [String], street2: String? = nil, street3: String? = nil, postalCode: String? = nil, company: String? = nil, country: String? = nil, stateOrProvince: String? = nil, name: String? = nil, city: String? = nil, aPIVersion: String? = nil, street1: String? = nil, phoneNumber: String? = nil) {
            self.jobIds = jobIds
            self.street2 = street2
            self.street3 = street3
            self.postalCode = postalCode
            self.company = company
            self.country = country
            self.stateOrProvince = stateOrProvince
            self.name = name
            self.city = city
            self.aPIVersion = aPIVersion
            self.street1 = street1
            self.phoneNumber = phoneNumber
        }

        private enum CodingKeys: String, CodingKey {
            case jobIds = "jobIds"
            case street2 = "street2"
            case street3 = "street3"
            case postalCode = "postalCode"
            case company = "company"
            case country = "country"
            case stateOrProvince = "stateOrProvince"
            case name = "name"
            case city = "city"
            case aPIVersion = "APIVersion"
            case street1 = "street1"
            case phoneNumber = "phoneNumber"
        }
    }

    public struct GetShippingLabelOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ShippingLabelURL", required: false, type: .string), 
            AWSShapeMember(label: "Warning", required: false, type: .string)
        ]
        public let shippingLabelURL: String?
        public let warning: String?

        public init(shippingLabelURL: String? = nil, warning: String? = nil) {
            self.shippingLabelURL = shippingLabelURL
            self.warning = warning
        }

        private enum CodingKeys: String, CodingKey {
            case shippingLabelURL = "ShippingLabelURL"
            case warning = "Warning"
        }
    }

    public struct CancelJobOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Success", required: false, type: .boolean)
        ]
        public let success: Bool?

        public init(success: Bool? = nil) {
            self.success = success
        }

        private enum CodingKeys: String, CodingKey {
            case success = "Success"
        }
    }

    public struct UpdateJobOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Success", required: false, type: .boolean), 
            AWSShapeMember(label: "WarningMessage", required: false, type: .string), 
            AWSShapeMember(label: "ArtifactList", required: false, type: .list)
        ]
        public let success: Bool?
        public let warningMessage: String?
        public let artifactList: [Artifact]?

        public init(success: Bool? = nil, warningMessage: String? = nil, artifactList: [Artifact]? = nil) {
            self.success = success
            self.warningMessage = warningMessage
            self.artifactList = artifactList
        }

        private enum CodingKeys: String, CodingKey {
            case success = "Success"
            case warningMessage = "WarningMessage"
            case artifactList = "ArtifactList"
        }
    }

    public struct ListJobsOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Jobs", required: false, type: .list), 
            AWSShapeMember(label: "IsTruncated", required: false, type: .boolean)
        ]
        public let jobs: [Job]?
        public let isTruncated: Bool?

        public init(jobs: [Job]? = nil, isTruncated: Bool? = nil) {
            self.jobs = jobs
            self.isTruncated = isTruncated
        }

        private enum CodingKeys: String, CodingKey {
            case jobs = "Jobs"
            case isTruncated = "IsTruncated"
        }
    }

    public struct Job: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "IsCanceled", required: false, type: .boolean), 
            AWSShapeMember(label: "CreationDate", required: false, type: .timestamp), 
            AWSShapeMember(label: "JobId", required: false, type: .string), 
            AWSShapeMember(label: "JobType", required: false, type: .enum)
        ]
        public let isCanceled: Bool?
        public let creationDate: TimeStamp?
        public let jobId: String?
        public let jobType: JobType?

        public init(isCanceled: Bool? = nil, creationDate: TimeStamp? = nil, jobId: String? = nil, jobType: JobType? = nil) {
            self.isCanceled = isCanceled
            self.creationDate = creationDate
            self.jobId = jobId
            self.jobType = jobType
        }

        private enum CodingKeys: String, CodingKey {
            case isCanceled = "IsCanceled"
            case creationDate = "CreationDate"
            case jobId = "JobId"
            case jobType = "JobType"
        }
    }

    public struct Artifact: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "URL", required: false, type: .string), 
            AWSShapeMember(label: "Description", required: false, type: .string)
        ]
        public let url: String?
        public let description: String?

        public init(url: String? = nil, description: String? = nil) {
            self.url = url
            self.description = description
        }

        private enum CodingKeys: String, CodingKey {
            case url = "URL"
            case description = "Description"
        }
    }

    public struct CreateJobInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Manifest", required: true, type: .string), 
            AWSShapeMember(label: "APIVersion", required: false, type: .string), 
            AWSShapeMember(label: "ValidateOnly", required: true, type: .boolean), 
            AWSShapeMember(label: "JobType", required: true, type: .enum), 
            AWSShapeMember(label: "ManifestAddendum", required: false, type: .string)
        ]
        public let manifest: String
        public let aPIVersion: String?
        public let validateOnly: Bool
        public let jobType: JobType
        public let manifestAddendum: String?

        public init(manifest: String, aPIVersion: String? = nil, validateOnly: Bool, jobType: JobType, manifestAddendum: String? = nil) {
            self.manifest = manifest
            self.aPIVersion = aPIVersion
            self.validateOnly = validateOnly
            self.jobType = jobType
            self.manifestAddendum = manifestAddendum
        }

        private enum CodingKeys: String, CodingKey {
            case manifest = "Manifest"
            case aPIVersion = "APIVersion"
            case validateOnly = "ValidateOnly"
            case jobType = "JobType"
            case manifestAddendum = "ManifestAddendum"
        }
    }

}