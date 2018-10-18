// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension ResourceGroups {

    public struct UpdateGroupInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Description", required: false, type: .string), 
            AWSShapeMember(label: "GroupName", location: .uri(locationName: "GroupName"), required: true, type: .string)
        ]
        /// The description of the resource group. Descriptions can have a maximum of 511 characters, including letters, numbers, hyphens, underscores, punctuation, and spaces.
        public let description: String?
        /// The name of the resource group for which you want to update its description.
        public let groupName: String

        public init(description: String? = nil, groupName: String) {
            self.description = description
            self.groupName = groupName
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case groupName = "GroupName"
        }
    }

    public struct ListGroupsOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "Groups", required: false, type: .list)
        ]
        /// The NextToken value to include in a subsequent ListGroups request, to get more results.
        public let nextToken: String?
        /// A list of resource groups.
        public let groups: [Group]?

        public init(nextToken: String? = nil, groups: [Group]? = nil) {
            self.nextToken = nextToken
            self.groups = groups
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case groups = "Groups"
        }
    }

    public struct ResourceIdentifier: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceType", required: false, type: .string), 
            AWSShapeMember(label: "ResourceArn", required: false, type: .string)
        ]
        /// The resource type of a resource, such as AWS::EC2::Instance.
        public let resourceType: String?
        /// The ARN of a resource.
        public let resourceArn: String?

        public init(resourceType: String? = nil, resourceArn: String? = nil) {
            self.resourceType = resourceType
            self.resourceArn = resourceArn
        }

        private enum CodingKeys: String, CodingKey {
            case resourceType = "ResourceType"
            case resourceArn = "ResourceArn"
        }
    }

    public struct DeleteGroupInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "GroupName", location: .uri(locationName: "GroupName"), required: true, type: .string)
        ]
        /// The name of the resource group to delete.
        public let groupName: String

        public init(groupName: String) {
            self.groupName = groupName
        }

        private enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
        }
    }

    public struct GetGroupQueryOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "GroupQuery", required: false, type: .structure)
        ]
        /// The resource query associated with the specified group.
        public let groupQuery: GroupQuery?

        public init(groupQuery: GroupQuery? = nil) {
            self.groupQuery = groupQuery
        }

        private enum CodingKeys: String, CodingKey {
            case groupQuery = "GroupQuery"
        }
    }

    public struct GetTagsOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Arn", required: false, type: .string), 
            AWSShapeMember(label: "Tags", required: false, type: .map)
        ]
        /// The ARN of the tagged resource.
        public let arn: String?
        /// The tags associated with the specified resource.
        public let tags: [String: String]?

        public init(arn: String? = nil, tags: [String: String]? = nil) {
            self.arn = arn
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case tags = "Tags"
        }
    }

    public struct GroupQuery: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceQuery", required: true, type: .structure), 
            AWSShapeMember(label: "GroupName", required: true, type: .string)
        ]
        /// The resource query which determines which AWS resources are members of the associated resource group.
        public let resourceQuery: ResourceQuery
        /// The name of a resource group that is associated with a specific resource query.
        public let groupName: String

        public init(resourceQuery: ResourceQuery, groupName: String) {
            self.resourceQuery = resourceQuery
            self.groupName = groupName
        }

        private enum CodingKeys: String, CodingKey {
            case resourceQuery = "ResourceQuery"
            case groupName = "GroupName"
        }
    }

    public enum QueryType: String, CustomStringConvertible, Codable {
        case tagFilters10 = "TAG_FILTERS_1_0"
        public var description: String { return self.rawValue }
    }

    public struct UpdateGroupOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Group", required: false, type: .structure)
        ]
        /// The full description of the resource group after it has been updated.
        public let group: Group?

        public init(group: Group? = nil) {
            self.group = group
        }

        private enum CodingKeys: String, CodingKey {
            case group = "Group"
        }
    }

    public struct SearchResourcesOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceIdentifiers", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// The ARNs and resource types of resources that are members of the group that you specified.
        public let resourceIdentifiers: [ResourceIdentifier]?
        /// The NextToken value to include in a subsequent SearchResources request, to get more results.
        public let nextToken: String?

        public init(resourceIdentifiers: [ResourceIdentifier]? = nil, nextToken: String? = nil) {
            self.resourceIdentifiers = resourceIdentifiers
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case resourceIdentifiers = "ResourceIdentifiers"
            case nextToken = "NextToken"
        }
    }

    public struct TagInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Arn", location: .uri(locationName: "Arn"), required: true, type: .string), 
            AWSShapeMember(label: "Tags", required: true, type: .map)
        ]
        /// The ARN of the resource to which to add tags.
        public let arn: String
        /// The tags to add to the specified resource. A tag is a string-to-string map of key-value pairs. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
        public let tags: [String: String]

        public init(arn: String, tags: [String: String]) {
            self.arn = arn
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case tags = "Tags"
        }
    }

    public struct UpdateGroupQueryInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceQuery", required: true, type: .structure), 
            AWSShapeMember(label: "GroupName", location: .uri(locationName: "GroupName"), required: true, type: .string)
        ]
        /// The resource query that determines which AWS resources are members of the resource group.
        public let resourceQuery: ResourceQuery
        /// The name of the resource group for which you want to edit the query.
        public let groupName: String

        public init(resourceQuery: ResourceQuery, groupName: String) {
            self.resourceQuery = resourceQuery
            self.groupName = groupName
        }

        private enum CodingKeys: String, CodingKey {
            case resourceQuery = "ResourceQuery"
            case groupName = "GroupName"
        }
    }

    public struct UpdateGroupQueryOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "GroupQuery", required: false, type: .structure)
        ]
        /// The resource query associated with the resource group after the update.
        public let groupQuery: GroupQuery?

        public init(groupQuery: GroupQuery? = nil) {
            self.groupQuery = groupQuery
        }

        private enum CodingKeys: String, CodingKey {
            case groupQuery = "GroupQuery"
        }
    }

    public struct TagOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Arn", required: false, type: .string), 
            AWSShapeMember(label: "Tags", required: false, type: .map)
        ]
        /// The ARN of the tagged resource.
        public let arn: String?
        /// The tags that have been added to the specified resource.
        public let tags: [String: String]?

        public init(arn: String? = nil, tags: [String: String]? = nil) {
            self.arn = arn
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case tags = "Tags"
        }
    }

    public struct GetTagsInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Arn", location: .uri(locationName: "Arn"), required: true, type: .string)
        ]
        /// The ARN of the resource for which you want a list of tags. The resource must exist within the account you are using.
        public let arn: String

        public init(arn: String) {
            self.arn = arn
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
        }
    }

    public struct ListGroupResourcesOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceIdentifiers", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// The ARNs and resource types of resources that are members of the group that you specified.
        public let resourceIdentifiers: [ResourceIdentifier]?
        /// The NextToken value to include in a subsequent ListGroupResources request, to get more results.
        public let nextToken: String?

        public init(resourceIdentifiers: [ResourceIdentifier]? = nil, nextToken: String? = nil) {
            self.resourceIdentifiers = resourceIdentifiers
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case resourceIdentifiers = "ResourceIdentifiers"
            case nextToken = "NextToken"
        }
    }

    public struct Group: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Description", required: false, type: .string), 
            AWSShapeMember(label: "GroupArn", required: true, type: .string), 
            AWSShapeMember(label: "Name", required: true, type: .string)
        ]
        /// The description of the resource group.
        public let description: String?
        /// The ARN of a resource group.
        public let groupArn: String
        /// The name of a resource group.
        public let name: String

        public init(description: String? = nil, groupArn: String, name: String) {
            self.description = description
            self.groupArn = groupArn
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case groupArn = "GroupArn"
            case name = "Name"
        }
    }

    public struct SearchResourcesInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "ResourceQuery", required: true, type: .structure)
        ]
        /// The NextToken value that is returned in a paginated SearchResources request. To get the next page of results, run the call again, add the NextToken parameter, and specify the NextToken value.
        public let nextToken: String?
        /// The maximum number of group member ARNs returned by SearchResources in paginated output. By default, this number is 50.
        public let maxResults: Int32?
        /// The search query, using the same formats that are supported for resource group definition.
        public let resourceQuery: ResourceQuery

        public init(nextToken: String? = nil, maxResults: Int32? = nil, resourceQuery: ResourceQuery) {
            self.nextToken = nextToken
            self.maxResults = maxResults
            self.resourceQuery = resourceQuery
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case maxResults = "MaxResults"
            case resourceQuery = "ResourceQuery"
        }
    }

    public struct ResourceFilter: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Values", required: true, type: .list), 
            AWSShapeMember(label: "Name", required: true, type: .enum)
        ]
        /// One or more filter values. Allowed filter values vary by resource filter name, and are case-sensitive.
        public let values: [String]
        /// The name of the filter. Filter names are case-sensitive.
        public let name: ResourceFilterName

        public init(values: [String], name: ResourceFilterName) {
            self.values = values
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case values = "Values"
            case name = "Name"
        }
    }

    public struct GetGroupInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "GroupName", location: .uri(locationName: "GroupName"), required: true, type: .string)
        ]
        /// The name of the resource group.
        public let groupName: String

        public init(groupName: String) {
            self.groupName = groupName
        }

        private enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
        }
    }

    public struct ListGroupsInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer)
        ]
        /// The NextToken value that is returned in a paginated ListGroups request. To get the next page of results, run the call again, add the NextToken parameter, and specify the NextToken value.
        public let nextToken: String?
        /// The maximum number of resource group results that are returned by ListGroups in paginated output. By default, this number is 50.
        public let maxResults: Int32?

        public init(nextToken: String? = nil, maxResults: Int32? = nil) {
            self.nextToken = nextToken
            self.maxResults = maxResults
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case maxResults = "maxResults"
        }
    }

    public struct GetGroupOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Group", required: false, type: .structure)
        ]
        /// A full description of the resource group.
        public let group: Group?

        public init(group: Group? = nil) {
            self.group = group
        }

        private enum CodingKeys: String, CodingKey {
            case group = "Group"
        }
    }

    public struct ResourceQuery: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Type", required: true, type: .enum), 
            AWSShapeMember(label: "Query", required: true, type: .string)
        ]
        /// The type of the query. The valid value in this release is TAG_FILTERS_1_0.   TAG_FILTERS_1_0:  A JSON syntax that lets you specify a collection of simple tag filters for resource types and tags, as supported by the AWS Tagging API GetResources operation. When more than one element is present, only resources that match all filters are part of the result. If a filter specifies more than one value for a key, a resource matches the filter if its tag value matches any of the specified values.
        public let `type`: QueryType
        /// The query that defines a group or a search.
        public let query: String

        public init(type: QueryType, query: String) {
            self.`type` = `type`
            self.query = query
        }

        private enum CodingKeys: String, CodingKey {
            case `type` = "Type"
            case query = "Query"
        }
    }

    public struct ListGroupResourcesInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string), 
            AWSShapeMember(label: "Filters", required: false, type: .list), 
            AWSShapeMember(label: "GroupName", location: .uri(locationName: "GroupName"), required: true, type: .string), 
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer)
        ]
        /// The NextToken value that is returned in a paginated ListGroupResources request. To get the next page of results, run the call again, add the NextToken parameter, and specify the NextToken value.
        public let nextToken: String?
        /// Filters, formatted as ResourceFilter objects, that you want to apply to a ListGroupResources operation.    resource-type - Filter resources by their type. Specify up to five resource types in the format AWS::ServiceCode::ResourceType. For example, AWS::EC2::Instance, or AWS::S3::Bucket.  
        public let filters: [ResourceFilter]?
        /// The name of the resource group.
        public let groupName: String
        /// The maximum number of group member ARNs that are returned in a single call by ListGroupResources, in paginated output. By default, this number is 50.
        public let maxResults: Int32?

        public init(nextToken: String? = nil, filters: [ResourceFilter]? = nil, groupName: String, maxResults: Int32? = nil) {
            self.nextToken = nextToken
            self.filters = filters
            self.groupName = groupName
            self.maxResults = maxResults
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case filters = "Filters"
            case groupName = "GroupName"
            case maxResults = "maxResults"
        }
    }

    public struct CreateGroupOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Group", required: false, type: .structure), 
            AWSShapeMember(label: "ResourceQuery", required: false, type: .structure), 
            AWSShapeMember(label: "Tags", required: false, type: .map)
        ]
        /// A full description of the resource group after it is created.
        public let group: Group?
        /// The resource query associated with the group.
        public let resourceQuery: ResourceQuery?
        /// The tags associated with the group.
        public let tags: [String: String]?

        public init(group: Group? = nil, resourceQuery: ResourceQuery? = nil, tags: [String: String]? = nil) {
            self.group = group
            self.resourceQuery = resourceQuery
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case group = "Group"
            case resourceQuery = "ResourceQuery"
            case tags = "Tags"
        }
    }

    public struct UntagInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Keys", required: true, type: .list), 
            AWSShapeMember(label: "Arn", location: .uri(locationName: "Arn"), required: true, type: .string)
        ]
        /// The keys of the tags to be removed.
        public let keys: [String]
        /// The ARN of the resource from which to remove tags.
        public let arn: String

        public init(keys: [String], arn: String) {
            self.keys = keys
            self.arn = arn
        }

        private enum CodingKeys: String, CodingKey {
            case keys = "Keys"
            case arn = "Arn"
        }
    }

    public struct GetGroupQueryInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "GroupName", location: .uri(locationName: "GroupName"), required: true, type: .string)
        ]
        /// The name of the resource group.
        public let groupName: String

        public init(groupName: String) {
            self.groupName = groupName
        }

        private enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
        }
    }

    public struct CreateGroupInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: true, type: .string), 
            AWSShapeMember(label: "ResourceQuery", required: true, type: .structure), 
            AWSShapeMember(label: "Tags", required: false, type: .map), 
            AWSShapeMember(label: "Description", required: false, type: .string)
        ]
        /// The name of the group, which is the identifier of the group in other operations. A resource group name cannot be updated after it is created. A resource group name can have a maximum of 128 characters, including letters, numbers, hyphens, dots, and underscores. The name cannot start with AWS or aws; these are reserved. A resource group name must be unique within your account.
        public let name: String
        /// The resource query that determines which AWS resources are members of this group.
        public let resourceQuery: ResourceQuery
        /// The tags to add to the group. A tag is a string-to-string map of key-value pairs. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
        public let tags: [String: String]?
        /// The description of the resource group. Descriptions can have a maximum of 511 characters, including letters, numbers, hyphens, underscores, punctuation, and spaces.
        public let description: String?

        public init(name: String, resourceQuery: ResourceQuery, tags: [String: String]? = nil, description: String? = nil) {
            self.name = name
            self.resourceQuery = resourceQuery
            self.tags = tags
            self.description = description
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case resourceQuery = "ResourceQuery"
            case tags = "Tags"
            case description = "Description"
        }
    }

    public struct UntagOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Keys", required: false, type: .list), 
            AWSShapeMember(label: "Arn", required: false, type: .string)
        ]
        /// The keys of tags that have been removed.
        public let keys: [String]?
        /// The ARN of the resource from which tags have been removed.
        public let arn: String?

        public init(keys: [String]? = nil, arn: String? = nil) {
            self.keys = keys
            self.arn = arn
        }

        private enum CodingKeys: String, CodingKey {
            case keys = "Keys"
            case arn = "Arn"
        }
    }

    public struct DeleteGroupOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Group", required: false, type: .structure)
        ]
        /// A full description of the deleted resource group.
        public let group: Group?

        public init(group: Group? = nil) {
            self.group = group
        }

        private enum CodingKeys: String, CodingKey {
            case group = "Group"
        }
    }

    public enum ResourceFilterName: String, CustomStringConvertible, Codable {
        case resourceType = "resource-type"
        public var description: String { return self.rawValue }
    }

}