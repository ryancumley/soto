// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension Health {

    public struct EventType: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "category", required: false, type: .enum), 
            AWSShapeMember(label: "service", required: false, type: .string), 
            AWSShapeMember(label: "code", required: false, type: .string)
        ]
        /// A list of event type category codes (issue, scheduledChange, or accountNotification).
        public let category: EventTypeCategory?
        /// The AWS service that is affected by the event. For example, EC2, RDS.
        public let service: String?
        /// The unique identifier for the event type. The format is AWS_SERVICE_DESCRIPTION ; for example, AWS_EC2_SYSTEM_MAINTENANCE_EVENT.
        public let code: String?

        public init(category: EventTypeCategory? = nil, service: String? = nil, code: String? = nil) {
            self.category = category
            self.service = service
            self.code = code
        }

        private enum CodingKeys: String, CodingKey {
            case category = "category"
            case service = "service"
            case code = "code"
        }
    }

    public struct Event: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "eventTypeCategory", required: false, type: .enum), 
            AWSShapeMember(label: "region", required: false, type: .string), 
            AWSShapeMember(label: "arn", required: false, type: .string), 
            AWSShapeMember(label: "eventTypeCode", required: false, type: .string), 
            AWSShapeMember(label: "statusCode", required: false, type: .enum), 
            AWSShapeMember(label: "endTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "service", required: false, type: .string), 
            AWSShapeMember(label: "availabilityZone", required: false, type: .string), 
            AWSShapeMember(label: "startTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "lastUpdatedTime", required: false, type: .timestamp)
        ]
        /// The category of the event. Possible values are issue, scheduledChange, and accountNotification.
        public let eventTypeCategory: EventTypeCategory?
        /// The AWS region name of the event.
        public let region: String?
        /// The unique identifier for the event. Format: arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID . Example: Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456 
        public let arn: String?
        /// The unique identifier for the event type. The format is AWS_SERVICE_DESCRIPTION ; for example, AWS_EC2_SYSTEM_MAINTENANCE_EVENT.
        public let eventTypeCode: String?
        /// The most recent status of the event. Possible values are open, closed, and upcoming.
        public let statusCode: EventStatusCode?
        /// The date and time that the event ended.
        public let endTime: TimeStamp?
        /// The AWS service that is affected by the event. For example, EC2, RDS.
        public let service: String?
        /// The AWS Availability Zone of the event. For example, us-east-1a.
        public let availabilityZone: String?
        /// The date and time that the event began.
        public let startTime: TimeStamp?
        /// The most recent date and time that the event was updated.
        public let lastUpdatedTime: TimeStamp?

        public init(eventTypeCategory: EventTypeCategory? = nil, region: String? = nil, arn: String? = nil, eventTypeCode: String? = nil, statusCode: EventStatusCode? = nil, endTime: TimeStamp? = nil, service: String? = nil, availabilityZone: String? = nil, startTime: TimeStamp? = nil, lastUpdatedTime: TimeStamp? = nil) {
            self.eventTypeCategory = eventTypeCategory
            self.region = region
            self.arn = arn
            self.eventTypeCode = eventTypeCode
            self.statusCode = statusCode
            self.endTime = endTime
            self.service = service
            self.availabilityZone = availabilityZone
            self.startTime = startTime
            self.lastUpdatedTime = lastUpdatedTime
        }

        private enum CodingKeys: String, CodingKey {
            case eventTypeCategory = "eventTypeCategory"
            case region = "region"
            case arn = "arn"
            case eventTypeCode = "eventTypeCode"
            case statusCode = "statusCode"
            case endTime = "endTime"
            case service = "service"
            case availabilityZone = "availabilityZone"
            case startTime = "startTime"
            case lastUpdatedTime = "lastUpdatedTime"
        }
    }

    public struct DescribeEventsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "locale", required: false, type: .string), 
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "filter", required: false, type: .structure), 
            AWSShapeMember(label: "maxResults", required: false, type: .integer)
        ]
        /// The locale (language) to return information in. English (en) is the default and the only supported value at this time.
        public let locale: String?
        /// If the results of a search are large, only a portion of the results are returned, and a nextToken pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
        public let nextToken: String?
        /// Values to narrow the results returned.
        public let filter: EventFilter?
        /// The maximum number of items to return in one batch, between 10 and 100, inclusive.
        public let maxResults: Int32?

        public init(locale: String? = nil, nextToken: String? = nil, filter: EventFilter? = nil, maxResults: Int32? = nil) {
            self.locale = locale
            self.nextToken = nextToken
            self.filter = filter
            self.maxResults = maxResults
        }

        private enum CodingKeys: String, CodingKey {
            case locale = "locale"
            case nextToken = "nextToken"
            case filter = "filter"
            case maxResults = "maxResults"
        }
    }

    public struct EntityFilter: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "entityValues", required: false, type: .list), 
            AWSShapeMember(label: "eventArns", required: true, type: .list), 
            AWSShapeMember(label: "entityArns", required: false, type: .list), 
            AWSShapeMember(label: "statusCodes", required: false, type: .list), 
            AWSShapeMember(label: "lastUpdatedTimes", required: false, type: .list), 
            AWSShapeMember(label: "tags", required: false, type: .list)
        ]
        /// A list of IDs for affected entities.
        public let entityValues: [String]?
        /// A list of event ARNs (unique identifiers). For example: "arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101" 
        public let eventArns: [String]
        /// A list of entity ARNs (unique identifiers).
        public let entityArns: [String]?
        /// A list of entity status codes (IMPAIRED, UNIMPAIRED, or UNKNOWN).
        public let statusCodes: [EntityStatusCode]?
        /// A list of the most recent dates and times that the entity was updated.
        public let lastUpdatedTimes: [DateTimeRange]?
        /// A map of entity tags attached to the affected entity.
        public let tags: [[String: String]]?

        public init(entityValues: [String]? = nil, eventArns: [String], entityArns: [String]? = nil, statusCodes: [EntityStatusCode]? = nil, lastUpdatedTimes: [DateTimeRange]? = nil, tags: [[String: String]]? = nil) {
            self.entityValues = entityValues
            self.eventArns = eventArns
            self.entityArns = entityArns
            self.statusCodes = statusCodes
            self.lastUpdatedTimes = lastUpdatedTimes
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case entityValues = "entityValues"
            case eventArns = "eventArns"
            case entityArns = "entityArns"
            case statusCodes = "statusCodes"
            case lastUpdatedTimes = "lastUpdatedTimes"
            case tags = "tags"
        }
    }

    public struct DescribeEventDetailsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "failedSet", required: false, type: .list), 
            AWSShapeMember(label: "successfulSet", required: false, type: .list)
        ]
        /// Error messages for any events that could not be retrieved.
        public let failedSet: [EventDetailsErrorItem]?
        /// Information about the events that could be retrieved.
        public let successfulSet: [EventDetails]?

        public init(failedSet: [EventDetailsErrorItem]? = nil, successfulSet: [EventDetails]? = nil) {
            self.failedSet = failedSet
            self.successfulSet = successfulSet
        }

        private enum CodingKeys: String, CodingKey {
            case failedSet = "failedSet"
            case successfulSet = "successfulSet"
        }
    }

    public struct EventTypeFilter: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "eventTypeCodes", required: false, type: .list), 
            AWSShapeMember(label: "eventTypeCategories", required: false, type: .list), 
            AWSShapeMember(label: "services", required: false, type: .list)
        ]
        /// A list of event type codes.
        public let eventTypeCodes: [String]?
        /// A list of event type category codes (issue, scheduledChange, or accountNotification).
        public let eventTypeCategories: [EventTypeCategory]?
        /// The AWS services associated with the event. For example, EC2, RDS.
        public let services: [String]?

        public init(eventTypeCodes: [String]? = nil, eventTypeCategories: [EventTypeCategory]? = nil, services: [String]? = nil) {
            self.eventTypeCodes = eventTypeCodes
            self.eventTypeCategories = eventTypeCategories
            self.services = services
        }

        private enum CodingKeys: String, CodingKey {
            case eventTypeCodes = "eventTypeCodes"
            case eventTypeCategories = "eventTypeCategories"
            case services = "services"
        }
    }

    public struct DescribeAffectedEntitiesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "locale", required: false, type: .string), 
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "filter", required: true, type: .structure), 
            AWSShapeMember(label: "maxResults", required: false, type: .integer)
        ]
        /// The locale (language) to return information in. English (en) is the default and the only supported value at this time.
        public let locale: String?
        /// If the results of a search are large, only a portion of the results are returned, and a nextToken pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
        public let nextToken: String?
        /// Values to narrow the results returned. At least one event ARN is required. 
        public let filter: EntityFilter
        /// The maximum number of items to return in one batch, between 10 and 100, inclusive.
        public let maxResults: Int32?

        public init(locale: String? = nil, nextToken: String? = nil, filter: EntityFilter, maxResults: Int32? = nil) {
            self.locale = locale
            self.nextToken = nextToken
            self.filter = filter
            self.maxResults = maxResults
        }

        private enum CodingKeys: String, CodingKey {
            case locale = "locale"
            case nextToken = "nextToken"
            case filter = "filter"
            case maxResults = "maxResults"
        }
    }

    public enum EntityStatusCode: String, CustomStringConvertible, Codable {
        case impaired = "IMPAIRED"
        case unimpaired = "UNIMPAIRED"
        case unknown = "UNKNOWN"
        public var description: String { return self.rawValue }
    }

    public struct EventAggregate: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "count", required: false, type: .integer), 
            AWSShapeMember(label: "aggregateValue", required: false, type: .string)
        ]
        /// The number of events of the associated issue type.
        public let count: Int32?
        /// The issue type for the associated count.
        public let aggregateValue: String?

        public init(count: Int32? = nil, aggregateValue: String? = nil) {
            self.count = count
            self.aggregateValue = aggregateValue
        }

        private enum CodingKeys: String, CodingKey {
            case count = "count"
            case aggregateValue = "aggregateValue"
        }
    }

    public struct DescribeEventAggregatesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "aggregateField", required: true, type: .enum), 
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "filter", required: false, type: .structure), 
            AWSShapeMember(label: "maxResults", required: false, type: .integer)
        ]
        /// The only currently supported value is eventTypeCategory.
        public let aggregateField: EventAggregateField
        /// If the results of a search are large, only a portion of the results are returned, and a nextToken pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
        public let nextToken: String?
        /// Values to narrow the results returned.
        public let filter: EventFilter?
        /// The maximum number of items to return in one batch, between 10 and 100, inclusive.
        public let maxResults: Int32?

        public init(aggregateField: EventAggregateField, nextToken: String? = nil, filter: EventFilter? = nil, maxResults: Int32? = nil) {
            self.aggregateField = aggregateField
            self.nextToken = nextToken
            self.filter = filter
            self.maxResults = maxResults
        }

        private enum CodingKeys: String, CodingKey {
            case aggregateField = "aggregateField"
            case nextToken = "nextToken"
            case filter = "filter"
            case maxResults = "maxResults"
        }
    }

    public struct EntityAggregate: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "count", required: false, type: .integer), 
            AWSShapeMember(label: "eventArn", required: false, type: .string)
        ]
        /// The number entities that match the criteria for the specified events.
        public let count: Int32?
        /// The unique identifier for the event. Format: arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID . Example: Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456 
        public let eventArn: String?

        public init(count: Int32? = nil, eventArn: String? = nil) {
            self.count = count
            self.eventArn = eventArn
        }

        private enum CodingKeys: String, CodingKey {
            case count = "count"
            case eventArn = "eventArn"
        }
    }

    public struct DescribeEventTypesResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "eventTypes", required: false, type: .list)
        ]
        /// If the results of a search are large, only a portion of the results are returned, and a nextToken pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
        public let nextToken: String?
        /// A list of event types that match the filter criteria. Event types have a category (issue, accountNotification, or scheduledChange), a service (for example, EC2, RDS, DATAPIPELINE, BILLING), and a code (in the format AWS_SERVICE_DESCRIPTION ; for example, AWS_EC2_SYSTEM_MAINTENANCE_EVENT).
        public let eventTypes: [EventType]?

        public init(nextToken: String? = nil, eventTypes: [EventType]? = nil) {
            self.nextToken = nextToken
            self.eventTypes = eventTypes
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case eventTypes = "eventTypes"
        }
    }

    public struct AffectedEntity: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "entityUrl", required: false, type: .string), 
            AWSShapeMember(label: "eventArn", required: false, type: .string), 
            AWSShapeMember(label: "tags", required: false, type: .map), 
            AWSShapeMember(label: "statusCode", required: false, type: .enum), 
            AWSShapeMember(label: "entityValue", required: false, type: .string), 
            AWSShapeMember(label: "entityArn", required: false, type: .string), 
            AWSShapeMember(label: "lastUpdatedTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "awsAccountId", required: false, type: .string)
        ]
        public let entityUrl: String?
        /// The unique identifier for the event. Format: arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID . Example: Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456 
        public let eventArn: String?
        /// A map of entity tags attached to the affected entity.
        public let tags: [String: String]?
        /// The most recent status of the entity affected by the event. The possible values are IMPAIRED, UNIMPAIRED, and UNKNOWN.
        public let statusCode: EntityStatusCode?
        /// The ID of the affected entity.
        public let entityValue: String?
        /// The unique identifier for the entity. Format: arn:aws:health:entity-region:aws-account:entity/entity-id . Example: arn:aws:health:us-east-1:111222333444:entity/AVh5GGT7ul1arKr1sE1K 
        public let entityArn: String?
        /// The most recent time that the entity was updated.
        public let lastUpdatedTime: TimeStamp?
        /// The 12-digit AWS account number that contains the affected entity.
        public let awsAccountId: String?

        public init(entityUrl: String? = nil, eventArn: String? = nil, tags: [String: String]? = nil, statusCode: EntityStatusCode? = nil, entityValue: String? = nil, entityArn: String? = nil, lastUpdatedTime: TimeStamp? = nil, awsAccountId: String? = nil) {
            self.entityUrl = entityUrl
            self.eventArn = eventArn
            self.tags = tags
            self.statusCode = statusCode
            self.entityValue = entityValue
            self.entityArn = entityArn
            self.lastUpdatedTime = lastUpdatedTime
            self.awsAccountId = awsAccountId
        }

        private enum CodingKeys: String, CodingKey {
            case entityUrl = "entityUrl"
            case eventArn = "eventArn"
            case tags = "tags"
            case statusCode = "statusCode"
            case entityValue = "entityValue"
            case entityArn = "entityArn"
            case lastUpdatedTime = "lastUpdatedTime"
            case awsAccountId = "awsAccountId"
        }
    }

    public struct EventDetailsErrorItem: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "eventArn", required: false, type: .string), 
            AWSShapeMember(label: "errorName", required: false, type: .string), 
            AWSShapeMember(label: "errorMessage", required: false, type: .string)
        ]
        /// The unique identifier for the event. Format: arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID . Example: Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456 
        public let eventArn: String?
        /// The name of the error.
        public let errorName: String?
        /// A message that describes the error.
        public let errorMessage: String?

        public init(eventArn: String? = nil, errorName: String? = nil, errorMessage: String? = nil) {
            self.eventArn = eventArn
            self.errorName = errorName
            self.errorMessage = errorMessage
        }

        private enum CodingKeys: String, CodingKey {
            case eventArn = "eventArn"
            case errorName = "errorName"
            case errorMessage = "errorMessage"
        }
    }

    public struct DescribeEventTypesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "locale", required: false, type: .string), 
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "filter", required: false, type: .structure), 
            AWSShapeMember(label: "maxResults", required: false, type: .integer)
        ]
        /// The locale (language) to return information in. English (en) is the default and the only supported value at this time.
        public let locale: String?
        /// If the results of a search are large, only a portion of the results are returned, and a nextToken pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
        public let nextToken: String?
        /// Values to narrow the results returned.
        public let filter: EventTypeFilter?
        /// The maximum number of items to return in one batch, between 10 and 100, inclusive.
        public let maxResults: Int32?

        public init(locale: String? = nil, nextToken: String? = nil, filter: EventTypeFilter? = nil, maxResults: Int32? = nil) {
            self.locale = locale
            self.nextToken = nextToken
            self.filter = filter
            self.maxResults = maxResults
        }

        private enum CodingKeys: String, CodingKey {
            case locale = "locale"
            case nextToken = "nextToken"
            case filter = "filter"
            case maxResults = "maxResults"
        }
    }

    public struct DescribeEntityAggregatesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "eventArns", required: false, type: .list)
        ]
        /// A list of event ARNs (unique identifiers). For example: "arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101" 
        public let eventArns: [String]?

        public init(eventArns: [String]? = nil) {
            self.eventArns = eventArns
        }

        private enum CodingKeys: String, CodingKey {
            case eventArns = "eventArns"
        }
    }

    public enum EventAggregateField: String, CustomStringConvertible, Codable {
        case eventtypecategory = "eventTypeCategory"
        public var description: String { return self.rawValue }
    }

    public enum EventStatusCode: String, CustomStringConvertible, Codable {
        case open = "open"
        case closed = "closed"
        case upcoming = "upcoming"
        public var description: String { return self.rawValue }
    }

    public enum EventTypeCategory: String, CustomStringConvertible, Codable {
        case issue = "issue"
        case accountnotification = "accountNotification"
        case scheduledchange = "scheduledChange"
        public var description: String { return self.rawValue }
    }

    public struct DescribeAffectedEntitiesResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "entities", required: false, type: .list)
        ]
        /// If the results of a search are large, only a portion of the results are returned, and a nextToken pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
        public let nextToken: String?
        /// The entities that match the filter criteria.
        public let entities: [AffectedEntity]?

        public init(nextToken: String? = nil, entities: [AffectedEntity]? = nil) {
            self.nextToken = nextToken
            self.entities = entities
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case entities = "entities"
        }
    }

    public struct EventFilter: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "startTimes", required: false, type: .list), 
            AWSShapeMember(label: "entityArns", required: false, type: .list), 
            AWSShapeMember(label: "eventTypeCodes", required: false, type: .list), 
            AWSShapeMember(label: "lastUpdatedTimes", required: false, type: .list), 
            AWSShapeMember(label: "regions", required: false, type: .list), 
            AWSShapeMember(label: "entityValues", required: false, type: .list), 
            AWSShapeMember(label: "eventStatusCodes", required: false, type: .list), 
            AWSShapeMember(label: "availabilityZones", required: false, type: .list), 
            AWSShapeMember(label: "services", required: false, type: .list), 
            AWSShapeMember(label: "endTimes", required: false, type: .list), 
            AWSShapeMember(label: "tags", required: false, type: .list), 
            AWSShapeMember(label: "eventArns", required: false, type: .list), 
            AWSShapeMember(label: "eventTypeCategories", required: false, type: .list)
        ]
        /// A list of dates and times that the event began.
        public let startTimes: [DateTimeRange]?
        /// A list of entity ARNs (unique identifiers).
        public let entityArns: [String]?
        /// A list of unique identifiers for event types. For example, "AWS_EC2_SYSTEM_MAINTENANCE_EVENT","AWS_RDS_MAINTENANCE_SCHEDULED" 
        public let eventTypeCodes: [String]?
        /// A list of dates and times that the event was last updated.
        public let lastUpdatedTimes: [DateTimeRange]?
        /// A list of AWS regions.
        public let regions: [String]?
        /// A list of entity identifiers, such as EC2 instance IDs (i-34ab692e) or EBS volumes (vol-426ab23e).
        public let entityValues: [String]?
        /// A list of event status codes.
        public let eventStatusCodes: [EventStatusCode]?
        /// A list of AWS availability zones.
        public let availabilityZones: [String]?
        /// The AWS services associated with the event. For example, EC2, RDS.
        public let services: [String]?
        /// A list of dates and times that the event ended.
        public let endTimes: [DateTimeRange]?
        /// A map of entity tags attached to the affected entity.
        public let tags: [[String: String]]?
        /// A list of event ARNs (unique identifiers). For example: "arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101" 
        public let eventArns: [String]?
        /// A list of event type category codes (issue, scheduledChange, or accountNotification).
        public let eventTypeCategories: [EventTypeCategory]?

        public init(startTimes: [DateTimeRange]? = nil, entityArns: [String]? = nil, eventTypeCodes: [String]? = nil, lastUpdatedTimes: [DateTimeRange]? = nil, regions: [String]? = nil, entityValues: [String]? = nil, eventStatusCodes: [EventStatusCode]? = nil, availabilityZones: [String]? = nil, services: [String]? = nil, endTimes: [DateTimeRange]? = nil, tags: [[String: String]]? = nil, eventArns: [String]? = nil, eventTypeCategories: [EventTypeCategory]? = nil) {
            self.startTimes = startTimes
            self.entityArns = entityArns
            self.eventTypeCodes = eventTypeCodes
            self.lastUpdatedTimes = lastUpdatedTimes
            self.regions = regions
            self.entityValues = entityValues
            self.eventStatusCodes = eventStatusCodes
            self.availabilityZones = availabilityZones
            self.services = services
            self.endTimes = endTimes
            self.tags = tags
            self.eventArns = eventArns
            self.eventTypeCategories = eventTypeCategories
        }

        private enum CodingKeys: String, CodingKey {
            case startTimes = "startTimes"
            case entityArns = "entityArns"
            case eventTypeCodes = "eventTypeCodes"
            case lastUpdatedTimes = "lastUpdatedTimes"
            case regions = "regions"
            case entityValues = "entityValues"
            case eventStatusCodes = "eventStatusCodes"
            case availabilityZones = "availabilityZones"
            case services = "services"
            case endTimes = "endTimes"
            case tags = "tags"
            case eventArns = "eventArns"
            case eventTypeCategories = "eventTypeCategories"
        }
    }

    public struct DescribeEventsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "events", required: false, type: .list)
        ]
        /// If the results of a search are large, only a portion of the results are returned, and a nextToken pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
        public let nextToken: String?
        /// The events that match the specified filter criteria.
        public let events: [Event]?

        public init(nextToken: String? = nil, events: [Event]? = nil) {
            self.nextToken = nextToken
            self.events = events
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case events = "events"
        }
    }

    public struct DescribeEventAggregatesResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "eventAggregates", required: false, type: .list)
        ]
        /// If the results of a search are large, only a portion of the results are returned, and a nextToken pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
        public let nextToken: String?
        /// The number of events in each category that meet the optional filter criteria.
        public let eventAggregates: [EventAggregate]?

        public init(nextToken: String? = nil, eventAggregates: [EventAggregate]? = nil) {
            self.nextToken = nextToken
            self.eventAggregates = eventAggregates
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case eventAggregates = "eventAggregates"
        }
    }

    public struct DateTimeRange: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "to", required: false, type: .timestamp), 
            AWSShapeMember(label: "from", required: false, type: .timestamp)
        ]
        /// The ending date and time of a time range.
        public let to: TimeStamp?
        /// The starting date and time of a time range.
        public let from: TimeStamp?

        public init(to: TimeStamp? = nil, from: TimeStamp? = nil) {
            self.to = to
            self.from = from
        }

        private enum CodingKeys: String, CodingKey {
            case to = "to"
            case from = "from"
        }
    }

    public struct DescribeEventDetailsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "locale", required: false, type: .string), 
            AWSShapeMember(label: "eventArns", required: true, type: .list)
        ]
        /// The locale (language) to return information in. English (en) is the default and the only supported value at this time.
        public let locale: String?
        /// A list of event ARNs (unique identifiers). For example: "arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101" 
        public let eventArns: [String]

        public init(locale: String? = nil, eventArns: [String]) {
            self.locale = locale
            self.eventArns = eventArns
        }

        private enum CodingKeys: String, CodingKey {
            case locale = "locale"
            case eventArns = "eventArns"
        }
    }

    public struct DescribeEntityAggregatesResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "entityAggregates", required: false, type: .list)
        ]
        /// The number of entities that are affected by each of the specified events.
        public let entityAggregates: [EntityAggregate]?

        public init(entityAggregates: [EntityAggregate]? = nil) {
            self.entityAggregates = entityAggregates
        }

        private enum CodingKeys: String, CodingKey {
            case entityAggregates = "entityAggregates"
        }
    }

    public struct EventDetails: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "event", required: false, type: .structure), 
            AWSShapeMember(label: "eventMetadata", required: false, type: .map), 
            AWSShapeMember(label: "eventDescription", required: false, type: .structure)
        ]
        /// Summary information about the event.
        public let event: Event?
        /// Additional metadata about the event.
        public let eventMetadata: [String: String]?
        /// The most recent description of the event.
        public let eventDescription: EventDescription?

        public init(event: Event? = nil, eventMetadata: [String: String]? = nil, eventDescription: EventDescription? = nil) {
            self.event = event
            self.eventMetadata = eventMetadata
            self.eventDescription = eventDescription
        }

        private enum CodingKeys: String, CodingKey {
            case event = "event"
            case eventMetadata = "eventMetadata"
            case eventDescription = "eventDescription"
        }
    }

    public struct EventDescription: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "latestDescription", required: false, type: .string)
        ]
        /// The most recent description of the event.
        public let latestDescription: String?

        public init(latestDescription: String? = nil) {
            self.latestDescription = latestDescription
        }

        private enum CodingKeys: String, CodingKey {
            case latestDescription = "latestDescription"
        }
    }

}