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

extension Xray {

    public struct BatchGetTracesResult: Serializable, Initializable {
        /// Pagination token. Not used.
        var nextToken: String? = nil
        /// Full traces for the specified requests.
        var traces: [Trace]? = nil
        /// Trace IDs of requests that haven't been processed.
        var unprocessedTraceIds: [String]? = nil

        public init() {}

        public init(nextToken: String? = nil, traces: [Trace]? = nil, unprocessedTraceIds: [String]? = nil) {
            self.nextToken = nextToken
            self.traces = traces
            self.unprocessedTraceIds = unprocessedTraceIds
        }

    }

    public struct EdgeStatistics: Serializable, Initializable {
        /// The aggregate response time of completed requests.
        var totalResponseTime: Double? = nil
        /// Information about requests that failed with a 5xx Server Error status code.
        var faultStatistics: FaultStatistics? = nil
        /// The number of requests that completed with a 2xx Success status code.
        var okCount: Int64? = nil
        /// Information about requests that failed with a 4xx Client Error status code.
        var errorStatistics: ErrorStatistics? = nil
        /// The total number of completed requests.
        var totalCount: Int64? = nil

        public init() {}

        public init(totalResponseTime: Double? = nil, faultStatistics: FaultStatistics? = nil, okCount: Int64? = nil, errorStatistics: ErrorStatistics? = nil, totalCount: Int64? = nil) {
            self.totalResponseTime = totalResponseTime
            self.faultStatistics = faultStatistics
            self.okCount = okCount
            self.errorStatistics = errorStatistics
            self.totalCount = totalCount
        }

    }

    public struct Segment: Serializable, Initializable {
        /// The segment document.
        var document: String? = nil
        /// The segment's ID.
        var id: String? = nil

        public init() {}

        public init(document: String? = nil, id: String? = nil) {
            self.document = document
            self.id = id
        }

    }

    public struct Alias: Serializable, Initializable {
        /// The type of the alias.
        var type: String? = nil
        /// The canonical name of the alias.
        var name: String? = nil
        /// A list of names for the alias, including the canonical name.
        var names: [String]? = nil

        public init() {}

        public init(type: String? = nil, name: String? = nil, names: [String]? = nil) {
            self.type = type
            self.name = name
            self.names = names
        }

    }

    public struct ValueWithServiceIds: Serializable, Initializable {
        /// Services to which the annotation applies.
        var serviceIds: [ServiceId]? = nil
        /// Values of the annotation.
        var annotationValue: AnnotationValue? = nil

        public init() {}

        public init(serviceIds: [ServiceId]? = nil, annotationValue: AnnotationValue? = nil) {
            self.serviceIds = serviceIds
            self.annotationValue = annotationValue
        }

    }

    public struct HistogramEntry: Serializable, Initializable {
        /// The value of the entry.
        var value: Double? = nil
        /// The prevalence of the entry.
        var count: Int32? = nil

        public init() {}

        public init(value: Double? = nil, count: Int32? = nil) {
            self.value = value
            self.count = count
        }

    }

    public struct UnprocessedTraceSegment: Serializable, Initializable {
        /// The segment's ID.
        var id: String? = nil
        /// The error that caused processing to fail.
        var errorCode: String? = nil
        /// The error message.
        var message: String? = nil

        public init() {}

        public init(id: String? = nil, errorCode: String? = nil, message: String? = nil) {
            self.id = id
            self.errorCode = errorCode
            self.message = message
        }

    }

    public struct GetTraceSummariesResult: Serializable, Initializable {
        /// The number of traces that were processed to get this set of summaries.
        var tracesProcessedCount: Int64? = nil
        /// Trace IDs and metadata for traces that were found in the specified time frame.
        var traceSummaries: [TraceSummary]? = nil
        /// If the requested time frame contained more than one page of results, you can use this token to retrieve the next page. The first page contains the most most recent results, closest to the end of the time frame.
        var nextToken: String? = nil
        /// The start time of this page of results.
        var approximateTime: Date? = nil

        public init() {}

        public init(tracesProcessedCount: Int64? = nil, traceSummaries: [TraceSummary]? = nil, nextToken: String? = nil, approximateTime: Date? = nil) {
            self.tracesProcessedCount = tracesProcessedCount
            self.traceSummaries = traceSummaries
            self.nextToken = nextToken
            self.approximateTime = approximateTime
        }

    }

    public struct Edge: Serializable, Initializable {
        /// The start time of the first segment on the edge.
        var startTime: Date? = nil
        /// Response statistics for segments on the edge.
        var summaryStatistics: EdgeStatistics? = nil
        /// The end time of the last segment on the edge.
        var endTime: Date? = nil
        /// Identifier of the edge. Unique within a service map.
        var referenceId: Int32? = nil
        /// Aliases for the edge.
        var aliases: [Alias]? = nil
        /// Histogram describing the prominence of response times on the edge.
        var responseTimeHistogram: [HistogramEntry]? = nil

        public init() {}

        public init(startTime: Date? = nil, summaryStatistics: EdgeStatistics? = nil, endTime: Date? = nil, referenceId: Int32? = nil, aliases: [Alias]? = nil, responseTimeHistogram: [HistogramEntry]? = nil) {
            self.startTime = startTime
            self.summaryStatistics = summaryStatistics
            self.endTime = endTime
            self.referenceId = referenceId
            self.aliases = aliases
            self.responseTimeHistogram = responseTimeHistogram
        }

    }

    public struct ErrorStatistics: Serializable, Initializable {
        /// The total number of requests that failed with a 4xx Client Error status code.
        var totalCount: Int64? = nil
        /// The number of requests that failed with untracked 4xx Client Error status codes.
        var otherCount: Int64? = nil
        /// The number of requests that failed with a 419 throttling status code.
        var throttleCount: Int64? = nil

        public init() {}

        public init(totalCount: Int64? = nil, otherCount: Int64? = nil, throttleCount: Int64? = nil) {
            self.totalCount = totalCount
            self.otherCount = otherCount
            self.throttleCount = throttleCount
        }

    }

    public struct GetServiceGraphRequest: Serializable, Initializable {
        /// The end of the time frame for which to generate a graph.
        var endTime: Date = Date()
        /// Pagination token. Not used.
        var nextToken: String? = nil
        /// The start of the time frame for which to generate a graph.
        var startTime: Date = Date()

        public init() {}

        public init(endTime: Date, nextToken: String? = nil, startTime: Date) {
            self.endTime = endTime
            self.nextToken = nextToken
            self.startTime = startTime
        }

    }

    public struct PutTraceSegmentsResult: Serializable, Initializable {
        /// Segments that failed processing.
        var unprocessedTraceSegments: [UnprocessedTraceSegment]? = nil

        public init() {}

        public init(unprocessedTraceSegments: [UnprocessedTraceSegment]? = nil) {
            self.unprocessedTraceSegments = unprocessedTraceSegments
        }

    }

    public struct AnnotationValue: Serializable, Initializable {
        /// Value for a Boolean annotation.
        var booleanValue: Bool? = nil
        /// Value for a String annotation.
        var stringValue: String? = nil
        /// Value for a Number annotation.
        var numberValue: Double? = nil

        public init() {}

        public init(booleanValue: Bool? = nil, stringValue: String? = nil, numberValue: Double? = nil) {
            self.booleanValue = booleanValue
            self.stringValue = stringValue
            self.numberValue = numberValue
        }

    }

    public struct ServiceStatistics: Serializable, Initializable {
        /// The aggregate response time of completed requests.
        var totalResponseTime: Double? = nil
        /// Information about requests that failed with a 5xx Server Error status code.
        var faultStatistics: FaultStatistics? = nil
        /// The number of requests that completed with a 2xx Success status code.
        var okCount: Int64? = nil
        /// Information about requests that failed with a 4xx Client Error status code.
        var errorStatistics: ErrorStatistics? = nil
        /// The total number of completed requests.
        var totalCount: Int64? = nil

        public init() {}

        public init(totalResponseTime: Double? = nil, faultStatistics: FaultStatistics? = nil, okCount: Int64? = nil, errorStatistics: ErrorStatistics? = nil, totalCount: Int64? = nil) {
            self.totalResponseTime = totalResponseTime
            self.faultStatistics = faultStatistics
            self.okCount = okCount
            self.errorStatistics = errorStatistics
            self.totalCount = totalCount
        }

    }

    public struct GetServiceGraphResult: Serializable, Initializable {
        /// The start of the time frame for which the graph was generated.
        var startTime: Date? = nil
        /// The end of the time frame for which the graph was generated.
        var endTime: Date? = nil
        /// The services that have processed a traced request during the specified time frame.
        var services: [Service]? = nil
        /// Pagination token. Not used.
        var nextToken: String? = nil

        public init() {}

        public init(startTime: Date? = nil, endTime: Date? = nil, services: [Service]? = nil, nextToken: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.services = services
            self.nextToken = nextToken
        }

    }

    public struct FaultStatistics: Serializable, Initializable {
        /// The total number of requests that failed with a 5xx Server Error status code.
        var totalCount: Int64? = nil
        /// The number of requests that failed with untracked 5xx Server Error status codes.
        var otherCount: Int64? = nil

        public init() {}

        public init(totalCount: Int64? = nil, otherCount: Int64? = nil) {
            self.totalCount = totalCount
            self.otherCount = otherCount
        }

    }

    public struct Http: Serializable, Initializable {
        /// The IP address of the requestor.
        var clientIp: String? = nil
        /// The request URL.
        var httpURL: String? = nil
        /// The request method.
        var httpMethod: String? = nil
        /// The response status.
        var httpStatus: Int32? = nil
        /// The request's user agent string.
        var userAgent: String? = nil

        public init() {}

        public init(clientIp: String? = nil, httpURL: String? = nil, httpMethod: String? = nil, httpStatus: Int32? = nil, userAgent: String? = nil) {
            self.clientIp = clientIp
            self.httpURL = httpURL
            self.httpMethod = httpMethod
            self.httpStatus = httpStatus
            self.userAgent = userAgent
        }

    }

    public struct TraceUser: Serializable, Initializable {
        /// Services that the user's request hit.
        var serviceIds: [ServiceId]? = nil
        /// The user's name.
        var userName: String? = nil

        public init() {}

        public init(serviceIds: [ServiceId]? = nil, userName: String? = nil) {
            self.serviceIds = serviceIds
            self.userName = userName
        }

    }

    public struct GetTraceGraphRequest: Serializable, Initializable {
        /// Trace IDs of requests for which to generate a service graph.
        var traceIds: [String] = []
        /// Pagination token. Not used.
        var nextToken: String? = nil

        public init() {}

        public init(traceIds: [String], nextToken: String? = nil) {
            self.traceIds = traceIds
            self.nextToken = nextToken
        }

    }

    public struct GetTraceGraphResult: Serializable, Initializable {
        /// The services that have processed one of the specified requests.
        var services: [Service]? = nil
        /// Pagination token. Not used.
        var nextToken: String? = nil

        public init() {}

        public init(services: [Service]? = nil, nextToken: String? = nil) {
            self.services = services
            self.nextToken = nextToken
        }

    }

    public struct Trace: Serializable, Initializable {
        /// Segment documents for the segments and subsegments that comprise the trace.
        var segments: [Segment]? = nil
        /// The length of time in seconds between the start time of the root segment and the end time of the last segment that completed.
        var duration: Double? = nil
        /// The unique identifier for the request that generated the trace's segments and subsegments.
        var id: String? = nil

        public init() {}

        public init(segments: [Segment]? = nil, duration: Double? = nil, id: String? = nil) {
            self.segments = segments
            self.duration = duration
            self.id = id
        }

    }

    public struct PutTraceSegmentsRequest: Serializable, Initializable {
        /// A JSON document defining one or more segments or subsegments. Segments must include the following fields.  Required Segment Document Fields     name - The name of the service that handled the request.    id - A 64-bit identifier for the segment, unique among segments in the same trace, in 16 hexadecimal digits.    trace_id - A unique identifier that connects all segments and subsegments originating from a single client request.    start_time - Time the segment or subsegment was created, in floating point seconds in epoch time, accurate to milliseconds. For example, 1480615200.010 or 1.480615200010E9.    end_time - Time the segment or subsegment was closed. For example, 1480615200.090 or 1.480615200090E9. Specify either an end_time or in_progress.    in_progress - Set to true instead of specifying an end_time to record that a segment has been started, but is not complete. Send an in progress segment when your application receives a request that will take a long time to serve, to trace the fact that the request was received. When the response is sent, send the complete segment to overwrite the in-progress segment.   A trace_id consists of three numbers separated by hyphens. For example, 1-58406520-a006649127e371903a2de979. This includes:  Trace ID Format    The version number, i.e. 1.   The time of the original request, in Unix epoch time, in 8 hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in epoch time is 1480615200 seconds, or 58406520 in hexadecimal.   A 96-bit identifier for the trace, globally unique, in 24 hexadecimal digits.  
        var traceSegmentDocuments: [String] = []

        public init() {}

        public init(traceSegmentDocuments: [String]) {
            self.traceSegmentDocuments = traceSegmentDocuments
        }

    }

    public struct GetTraceSummariesRequest: Serializable, Initializable {
        /// The start of the time frame for which to retrieve traces.
        var startTime: Date = Date()
        /// The end of the time frame for which to retrieve traces.
        var endTime: Date = Date()
        /// Specify a filter expression to retrieve trace summaries for services or requests that meet certain requirements.
        var filterExpression: String? = nil
        /// Set to true to get summaries for only a subset of available traces.
        var sampling: Bool? = nil
        /// Specify the pagination token returned by a previous request to retrieve the next page of results.
        var nextToken: String? = nil

        public init() {}

        public init(startTime: Date, endTime: Date, filterExpression: String? = nil, sampling: Bool? = nil, nextToken: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.filterExpression = filterExpression
            self.sampling = sampling
            self.nextToken = nextToken
        }

    }

    public struct PutTelemetryRecordsResult: Serializable, Initializable {

        public init() {}

    }

    public struct PutTelemetryRecordsRequest: Serializable, Initializable {
        var eC2InstanceId: String? = nil
        var hostname: String? = nil
        var telemetryRecords: [TelemetryRecord] = []
        var resourceARN: String? = nil

        public init() {}

        public init(eC2InstanceId: String? = nil, hostname: String? = nil, telemetryRecords: [TelemetryRecord], resourceARN: String? = nil) {
            self.eC2InstanceId = eC2InstanceId
            self.hostname = hostname
            self.telemetryRecords = telemetryRecords
            self.resourceARN = resourceARN
        }

    }

    public struct Service: Serializable, Initializable {
        /// The start time of the first segment that the service generated.
        var startTime: Date? = nil
        /// Aggregated statistics for the service.
        var summaryStatistics: ServiceStatistics? = nil
        /// Histogram mapping the spread of trace durations
        var durationHistogram: [HistogramEntry]? = nil
        /// Identifier of the AWS account in which the service runs.
        var accountId: String? = nil
        /// Indicates that the service was the first service to process a request.
        var root: Bool? = nil
        /// The canonical name of the service.
        var name: String? = nil
        /// The service's state.
        var state: String? = nil
        /// The end time of the last segment that the service generated.
        var endTime: Date? = nil
        /// Identifier for the service. Unique within the service map.
        var referenceId: Int32? = nil
        /// A list of names for the service, including the canonical name.
        var names: [String]? = nil
        /// Connections to downstream services.
        var edges: [Edge]? = nil
        /// The type of service.   AWS Resource - The type of an AWS resource. For example, AWS::EC2::Instance for a application running on Amazon EC2 or AWS::DynamoDB::Table for an Amazon DynamoDB table that the application used.   AWS Service - The type of an AWS service. For example, AWS::DynamoDB for downstream calls to Amazon DynamoDB that didn't target a specific table.    client - Represents the clients that sent requests to a root service.    remote - A downstream service of indeterminate type.  
        var type: String? = nil

        public init() {}

        public init(startTime: Date? = nil, summaryStatistics: ServiceStatistics? = nil, durationHistogram: [HistogramEntry]? = nil, accountId: String? = nil, root: Bool? = nil, name: String? = nil, state: String? = nil, endTime: Date? = nil, referenceId: Int32? = nil, names: [String]? = nil, edges: [Edge]? = nil, type: String? = nil) {
            self.startTime = startTime
            self.summaryStatistics = summaryStatistics
            self.durationHistogram = durationHistogram
            self.accountId = accountId
            self.root = root
            self.name = name
            self.state = state
            self.endTime = endTime
            self.referenceId = referenceId
            self.names = names
            self.edges = edges
            self.type = type
        }

    }

    public struct ServiceId: Serializable, Initializable {
        var accountId: String? = nil
        var names: [String]? = nil
        var type: String? = nil
        var name: String? = nil

        public init() {}

        public init(accountId: String? = nil, names: [String]? = nil, type: String? = nil, name: String? = nil) {
            self.accountId = accountId
            self.names = names
            self.type = type
            self.name = name
        }

    }

    public struct BackendConnectionErrors: Serializable, Initializable {
        var connectionRefusedCount: Int32? = nil
        var timeoutCount: Int32? = nil
        var unknownHostCount: Int32? = nil
        var hTTPCode5XXCount: Int32? = nil
        var otherCount: Int32? = nil
        var hTTPCode4XXCount: Int32? = nil

        public init() {}

        public init(connectionRefusedCount: Int32? = nil, timeoutCount: Int32? = nil, unknownHostCount: Int32? = nil, hTTPCode5XXCount: Int32? = nil, otherCount: Int32? = nil, hTTPCode4XXCount: Int32? = nil) {
            self.connectionRefusedCount = connectionRefusedCount
            self.timeoutCount = timeoutCount
            self.unknownHostCount = unknownHostCount
            self.hTTPCode5XXCount = hTTPCode5XXCount
            self.otherCount = otherCount
            self.hTTPCode4XXCount = hTTPCode4XXCount
        }

    }

    public struct TelemetryRecord: Serializable, Initializable {
        var segmentsRejectedCount: Int32? = nil
        var timestamp: Date? = nil
        var segmentsReceivedCount: Int32? = nil
        var segmentsSentCount: Int32? = nil
        var segmentsSpilloverCount: Int32? = nil
        var backendConnectionErrors: BackendConnectionErrors? = nil

        public init() {}

        public init(segmentsRejectedCount: Int32? = nil, timestamp: Date? = nil, segmentsReceivedCount: Int32? = nil, segmentsSentCount: Int32? = nil, segmentsSpilloverCount: Int32? = nil, backendConnectionErrors: BackendConnectionErrors? = nil) {
            self.segmentsRejectedCount = segmentsRejectedCount
            self.timestamp = timestamp
            self.segmentsReceivedCount = segmentsReceivedCount
            self.segmentsSentCount = segmentsSentCount
            self.segmentsSpilloverCount = segmentsSpilloverCount
            self.backendConnectionErrors = backendConnectionErrors
        }

    }

    public struct BatchGetTracesRequest: Serializable, Initializable {
        /// Specify the trace IDs of requests for which to retrieve segments.
        var traceIds: [String] = []
        /// Pagination token. Not used.
        var nextToken: String? = nil

        public init() {}

        public init(traceIds: [String], nextToken: String? = nil) {
            self.traceIds = traceIds
            self.nextToken = nextToken
        }

    }

    public struct TraceSummary: Serializable, Initializable {
        /// One or more of the segment documents is in progress.
        var isPartial: Bool? = nil
        /// Service IDs from the trace's segment documents.
        var serviceIds: [ServiceId]? = nil
        /// Information about the HTTP request served by the trace.
        var http: Http? = nil
        /// One or more of the segment documents has a 400 series error.
        var hasError: Bool? = nil
        /// The unique identifier for the request that generated the trace's segments and subsegments.
        var id: String? = nil
        /// One or more of the segment documents has a 429 throttling error.
        var hasThrottle: Bool? = nil
        /// Users from the trace's segment documents.
        var users: [TraceUser]? = nil
        /// Annotations from the trace's segment documents.
        var annotations: [String: [ValueWithServiceIds]]? = nil
        /// The length of time in seconds between the start time of the root segment and the end time of the last segment that completed.
        var duration: Double? = nil
        /// One or more of the segment documents has a 500 series error.
        var hasFault: Bool? = nil
        /// The length of time in seconds between the start and end times of the root segment. If the service performs work asynchronously, the response time measures the time before the response is sent to the user, while the duration measures the amount of time before the last traced activity completes.
        var responseTime: Double? = nil

        public init() {}

        public init(isPartial: Bool? = nil, serviceIds: [ServiceId]? = nil, http: Http? = nil, hasError: Bool? = nil, id: String? = nil, hasThrottle: Bool? = nil, users: [TraceUser]? = nil, annotations: [String: [ValueWithServiceIds]]? = nil, duration: Double? = nil, hasFault: Bool? = nil, responseTime: Double? = nil) {
            self.isPartial = isPartial
            self.serviceIds = serviceIds
            self.http = http
            self.hasError = hasError
            self.id = id
            self.hasThrottle = hasThrottle
            self.users = users
            self.annotations = annotations
            self.duration = duration
            self.hasFault = hasFault
            self.responseTime = responseTime
        }

    }

}