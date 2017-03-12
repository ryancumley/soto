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

extension Ecr {

    public struct DescribeRepositoriesRequest: Serializable, Initializable {
        /// The maximum number of repository results returned by DescribeRepositories in paginated output. When this parameter is used, DescribeRepositories only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another DescribeRepositories request with the returned nextToken value. This value can be between 1 and 100. If this parameter is not used, then DescribeRepositories returns up to 100 results and a nextToken value, if applicable.
        var maxResults: Int32? = nil
        /// A list of repositories to describe. If this parameter is omitted, then all repositories in a registry are described.
        var repositoryNames: [String]? = nil
        /// The nextToken value returned from a previous paginated DescribeRepositories request where maxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the nextToken value. This value is null when there are no more results to return.  This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes. 
        var nextToken: String? = nil
        /// The AWS account ID associated with the registry that contains the repositories to be described. If you do not specify a registry, the default registry is assumed.
        var registryId: String? = nil

        public init() {}

        public init(maxResults: Int32? = nil, repositoryNames: [String]? = nil, nextToken: String? = nil, registryId: String? = nil) {
            self.maxResults = maxResults
            self.repositoryNames = repositoryNames
            self.nextToken = nextToken
            self.registryId = registryId
        }

    }

    public struct ListImagesResponse: Serializable, Initializable {
        /// The nextToken value to include in a future ListImages request. When the results of a ListImages request exceed maxResults, this value can be used to retrieve the next page of results. This value is null when there are no more results to return.
        var nextToken: String? = nil
        /// The list of image IDs for the requested repository.
        var imageIds: [ImageIdentifier]? = nil

        public init() {}

        public init(nextToken: String? = nil, imageIds: [ImageIdentifier]? = nil) {
            self.nextToken = nextToken
            self.imageIds = imageIds
        }

    }

    public struct AuthorizationData: Serializable, Initializable {
        /// A base64-encoded string that contains authorization data for the specified Amazon ECR registry. When the string is decoded, it is presented in the format user:password for private registry authentication using docker login.
        var authorizationToken: String? = nil
        /// The Unix time in seconds and milliseconds when the authorization token expires. Authorization tokens are valid for 12 hours.
        var expiresAt: Date? = nil
        /// The registry URL to use for this authorization token in a docker login command. The Amazon ECR registry URL format is https://aws_account_id.dkr.ecr.region.amazonaws.com. For example, https://012345678910.dkr.ecr.us-east-1.amazonaws.com.. 
        var proxyEndpoint: String? = nil

        public init() {}

        public init(authorizationToken: String? = nil, expiresAt: Date? = nil, proxyEndpoint: String? = nil) {
            self.authorizationToken = authorizationToken
            self.expiresAt = expiresAt
            self.proxyEndpoint = proxyEndpoint
        }

    }

    public struct BatchDeleteImageResponse: Serializable, Initializable {
        /// Any failures associated with the call.
        var failures: [ImageFailure]? = nil
        /// The image IDs of the deleted images.
        var imageIds: [ImageIdentifier]? = nil

        public init() {}

        public init(failures: [ImageFailure]? = nil, imageIds: [ImageIdentifier]? = nil) {
            self.failures = failures
            self.imageIds = imageIds
        }

    }

    public struct DescribeImagesResponse: Serializable, Initializable {
        /// The nextToken value to include in a future DescribeImages request. When the results of a DescribeImages request exceed maxResults, this value can be used to retrieve the next page of results. This value is null when there are no more results to return.
        var nextToken: String? = nil
        /// A list of ImageDetail objects that contain data about the image.
        var imageDetails: [ImageDetail]? = nil

        public init() {}

        public init(nextToken: String? = nil, imageDetails: [ImageDetail]? = nil) {
            self.nextToken = nextToken
            self.imageDetails = imageDetails
        }

    }

    public struct DeleteRepositoryResponse: Serializable, Initializable {
        /// The repository that was deleted.
        var repository: Repository? = nil

        public init() {}

        public init(repository: Repository? = nil) {
            self.repository = repository
        }

    }

    public struct Layer: Serializable, Initializable {
        /// The size, in bytes, of the image layer.
        var layerSize: Int64? = nil
        /// The availability status of the image layer.
        var layerAvailability: String? = nil
        /// The media type of the layer, such as application/vnd.docker.image.rootfs.diff.tar.gzip or application/vnd.oci.image.layer.v1.tar+gzip.
        var mediaType: String? = nil
        /// The sha256 digest of the image layer.
        var layerDigest: String? = nil

        public init() {}

        public init(layerSize: Int64? = nil, layerAvailability: String? = nil, mediaType: String? = nil, layerDigest: String? = nil) {
            self.layerSize = layerSize
            self.layerAvailability = layerAvailability
            self.mediaType = mediaType
            self.layerDigest = layerDigest
        }

    }

    public struct DescribeImagesRequest: Serializable, Initializable {
        /// The nextToken value returned from a previous paginated DescribeImages request where maxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the nextToken value. This value is null when there are no more results to return.
        var nextToken: String? = nil
        /// The list of image IDs for the requested repository.
        var imageIds: [ImageIdentifier]? = nil
        /// The maximum number of repository results returned by DescribeImages in paginated output. When this parameter is used, DescribeImages only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another DescribeImages request with the returned nextToken value. This value can be between 1 and 100. If this parameter is not used, then DescribeImages returns up to 100 results and a nextToken value, if applicable.
        var maxResults: Int32? = nil
        /// The filter key and value with which to filter your DescribeImages results.
        var filter: DescribeImagesFilter? = nil
        /// A list of repositories to describe. If this parameter is omitted, then all repositories in a registry are described.
        var repositoryName: String = ""
        /// The AWS account ID associated with the registry that contains the repository in which to describe images. If you do not specify a registry, the default registry is assumed.
        var registryId: String? = nil

        public init() {}

        public init(nextToken: String? = nil, imageIds: [ImageIdentifier]? = nil, maxResults: Int32? = nil, filter: DescribeImagesFilter? = nil, repositoryName: String, registryId: String? = nil) {
            self.nextToken = nextToken
            self.imageIds = imageIds
            self.maxResults = maxResults
            self.filter = filter
            self.repositoryName = repositoryName
            self.registryId = registryId
        }

    }

    public struct ImageIdentifier: Serializable, Initializable {
        /// The tag used for the image.
        var imageTag: String? = nil
        /// The sha256 digest of the image manifest.
        var imageDigest: String? = nil

        public init() {}

        public init(imageTag: String? = nil, imageDigest: String? = nil) {
            self.imageTag = imageTag
            self.imageDigest = imageDigest
        }

    }

    public struct DeleteRepositoryPolicyResponse: Serializable, Initializable {
        /// The JSON repository policy that was deleted from the repository.
        var policyText: String? = nil
        /// The registry ID associated with the request.
        var registryId: String? = nil
        /// The repository name associated with the request.
        var repositoryName: String? = nil

        public init() {}

        public init(policyText: String? = nil, registryId: String? = nil, repositoryName: String? = nil) {
            self.policyText = policyText
            self.registryId = registryId
            self.repositoryName = repositoryName
        }

    }

    public struct LayerFailure: Serializable, Initializable {
        /// The layer digest associated with the failure.
        var layerDigest: String? = nil
        /// The failure code associated with the failure.
        var failureCode: String? = nil
        /// The reason for the failure.
        var failureReason: String? = nil

        public init() {}

        public init(layerDigest: String? = nil, failureCode: String? = nil, failureReason: String? = nil) {
            self.layerDigest = layerDigest
            self.failureCode = failureCode
            self.failureReason = failureReason
        }

    }

    public struct ImageFailure: Serializable, Initializable {
        /// The image ID associated with the failure.
        var imageId: ImageIdentifier? = nil
        /// The code associated with the failure.
        var failureCode: String? = nil
        /// The reason for the failure.
        var failureReason: String? = nil

        public init() {}

        public init(imageId: ImageIdentifier? = nil, failureCode: String? = nil, failureReason: String? = nil) {
            self.imageId = imageId
            self.failureCode = failureCode
            self.failureReason = failureReason
        }

    }

    public struct BatchGetImageResponse: Serializable, Initializable {
        /// Any failures associated with the call.
        var failures: [ImageFailure]? = nil
        /// A list of image objects corresponding to the image references in the request.
        var images: [Image]? = nil

        public init() {}

        public init(failures: [ImageFailure]? = nil, images: [Image]? = nil) {
            self.failures = failures
            self.images = images
        }

    }

    public struct SetRepositoryPolicyResponse: Serializable, Initializable {
        /// The JSON repository policy text applied to the repository.
        var policyText: String? = nil
        /// The registry ID associated with the request.
        var registryId: String? = nil
        /// The repository name associated with the request.
        var repositoryName: String? = nil

        public init() {}

        public init(policyText: String? = nil, registryId: String? = nil, repositoryName: String? = nil) {
            self.policyText = policyText
            self.registryId = registryId
            self.repositoryName = repositoryName
        }

    }

    public struct GetAuthorizationTokenRequest: Serializable, Initializable {
        /// A list of AWS account IDs that are associated with the registries for which to get authorization tokens. If you do not specify a registry, the default registry is assumed.
        var registryIds: [String]? = nil

        public init() {}

        public init(registryIds: [String]? = nil) {
            self.registryIds = registryIds
        }

    }

    public struct ImageDetail: Serializable, Initializable {
        /// The size, in bytes, of the image in the repository.  Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the docker images command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by DescribeImages. 
        var imageSizeInBytes: Int64? = nil
        /// The name of the repository to which this image belongs.
        var repositoryName: String? = nil
        /// The sha256 digest of the image manifest.
        var imageDigest: String? = nil
        /// The list of tags associated with this image.
        var imageTags: [String]? = nil
        /// The date and time, expressed in standard JavaScript date format, at which the current image was pushed to the repository. 
        var imagePushedAt: Date? = nil
        /// The AWS account ID associated with the registry to which this image belongs.
        var registryId: String? = nil

        public init() {}

        public init(imageSizeInBytes: Int64? = nil, repositoryName: String? = nil, imageDigest: String? = nil, imageTags: [String]? = nil, imagePushedAt: Date? = nil, registryId: String? = nil) {
            self.imageSizeInBytes = imageSizeInBytes
            self.repositoryName = repositoryName
            self.imageDigest = imageDigest
            self.imageTags = imageTags
            self.imagePushedAt = imagePushedAt
            self.registryId = registryId
        }

    }

    public struct GetAuthorizationTokenResponse: Serializable, Initializable {
        /// A list of authorization token data objects that correspond to the registryIds values in the request.
        var authorizationData: [AuthorizationData]? = nil

        public init() {}

        public init(authorizationData: [AuthorizationData]? = nil) {
            self.authorizationData = authorizationData
        }

    }

    public struct InitiateLayerUploadResponse: Serializable, Initializable {
        /// The upload ID for the layer upload. This parameter is passed to further UploadLayerPart and CompleteLayerUpload operations.
        var uploadId: String? = nil
        /// The size, in bytes, that Amazon ECR expects future layer part uploads to be.
        var partSize: Int64? = nil

        public init() {}

        public init(uploadId: String? = nil, partSize: Int64? = nil) {
            self.uploadId = uploadId
            self.partSize = partSize
        }

    }

    public struct BatchGetImageRequest: Serializable, Initializable {
        /// The accepted media types for the request. Valid values: application/vnd.docker.distribution.manifest.v1+json | application/vnd.docker.distribution.manifest.v2+json | application/vnd.oci.image.manifest.v1+json 
        var acceptedMediaTypes: [String]? = nil
        /// A list of image ID references that correspond to images to describe. The format of the imageIds reference is imageTag=tag or imageDigest=digest.
        var imageIds: [ImageIdentifier] = []
        /// The repository that contains the images to describe.
        var repositoryName: String = ""
        /// The AWS account ID associated with the registry that contains the images to describe. If you do not specify a registry, the default registry is assumed.
        var registryId: String? = nil

        public init() {}

        public init(acceptedMediaTypes: [String]? = nil, imageIds: [ImageIdentifier], repositoryName: String, registryId: String? = nil) {
            self.acceptedMediaTypes = acceptedMediaTypes
            self.imageIds = imageIds
            self.repositoryName = repositoryName
            self.registryId = registryId
        }

    }

    public struct DeleteRepositoryPolicyRequest: Serializable, Initializable {
        /// The AWS account ID associated with the registry that contains the repository policy to delete. If you do not specify a registry, the default registry is assumed.
        var registryId: String? = nil
        /// The name of the repository that is associated with the repository policy to delete.
        var repositoryName: String = ""

        public init() {}

        public init(registryId: String? = nil, repositoryName: String) {
            self.registryId = registryId
            self.repositoryName = repositoryName
        }

    }

    public struct GetDownloadUrlForLayerResponse: Serializable, Initializable {
        /// The digest of the image layer to download.
        var layerDigest: String? = nil
        /// The pre-signed Amazon S3 download URL for the requested layer.
        var downloadUrl: String? = nil

        public init() {}

        public init(layerDigest: String? = nil, downloadUrl: String? = nil) {
            self.layerDigest = layerDigest
            self.downloadUrl = downloadUrl
        }

    }

    public struct Image: Serializable, Initializable {
        /// The image manifest associated with the image.
        var imageManifest: String? = nil
        /// An object containing the image tag and image digest associated with an image.
        var imageId: ImageIdentifier? = nil
        /// The name of the repository associated with the image.
        var repositoryName: String? = nil
        /// The AWS account ID associated with the registry containing the image.
        var registryId: String? = nil

        public init() {}

        public init(imageManifest: String? = nil, imageId: ImageIdentifier? = nil, repositoryName: String? = nil, registryId: String? = nil) {
            self.imageManifest = imageManifest
            self.imageId = imageId
            self.repositoryName = repositoryName
            self.registryId = registryId
        }

    }

    public struct CreateRepositoryRequest: Serializable, Initializable {
        /// The name to use for the repository. The repository name may be specified on its own (such as nginx-web-app) or it can be prepended with a namespace to group the repository into a category (such as project-a/nginx-web-app).
        var repositoryName: String = ""

        public init() {}

        public init(repositoryName: String) {
            self.repositoryName = repositoryName
        }

    }

    public struct GetRepositoryPolicyResponse: Serializable, Initializable {
        /// The JSON repository policy text associated with the repository.
        var policyText: String? = nil
        /// The registry ID associated with the request.
        var registryId: String? = nil
        /// The repository name associated with the request.
        var repositoryName: String? = nil

        public init() {}

        public init(policyText: String? = nil, registryId: String? = nil, repositoryName: String? = nil) {
            self.policyText = policyText
            self.registryId = registryId
            self.repositoryName = repositoryName
        }

    }

    public struct GetDownloadUrlForLayerRequest: Serializable, Initializable {
        /// The digest of the image layer to download.
        var layerDigest: String = ""
        /// The AWS account ID associated with the registry that contains the image layer to download. If you do not specify a registry, the default registry is assumed.
        var registryId: String? = nil
        /// The name of the repository that is associated with the image layer to download.
        var repositoryName: String = ""

        public init() {}

        public init(layerDigest: String, registryId: String? = nil, repositoryName: String) {
            self.layerDigest = layerDigest
            self.registryId = registryId
            self.repositoryName = repositoryName
        }

    }

    public struct ListImagesFilter: Serializable, Initializable {
        /// The tag status with which to filter your ListImages results. You can filter results based on whether they are TAGGED or UNTAGGED.
        var tagStatus: String? = nil

        public init() {}

        public init(tagStatus: String? = nil) {
            self.tagStatus = tagStatus
        }

    }

    public struct SetRepositoryPolicyRequest: Serializable, Initializable {
        /// If the policy you are attempting to set on a repository policy would prevent you from setting another policy in the future, you must force the SetRepositoryPolicy operation. This is intended to prevent accidental repository lock outs.
        var force: Bool? = nil
        /// The JSON repository policy text to apply to the repository.
        var policyText: String = ""
        /// The name of the repository to receive the policy.
        var repositoryName: String = ""
        /// The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
        var registryId: String? = nil

        public init() {}

        public init(force: Bool? = nil, policyText: String, repositoryName: String, registryId: String? = nil) {
            self.force = force
            self.policyText = policyText
            self.repositoryName = repositoryName
            self.registryId = registryId
        }

    }

    public struct CreateRepositoryResponse: Serializable, Initializable {
        /// The repository that was created.
        var repository: Repository? = nil

        public init() {}

        public init(repository: Repository? = nil) {
            self.repository = repository
        }

    }

    public struct BatchCheckLayerAvailabilityRequest: Serializable, Initializable {
        /// The digests of the image layers to check.
        var layerDigests: [String] = []
        /// The AWS account ID associated with the registry that contains the image layers to check. If you do not specify a registry, the default registry is assumed.
        var registryId: String? = nil
        /// The name of the repository that is associated with the image layers to check.
        var repositoryName: String = ""

        public init() {}

        public init(layerDigests: [String], registryId: String? = nil, repositoryName: String) {
            self.layerDigests = layerDigests
            self.registryId = registryId
            self.repositoryName = repositoryName
        }

    }

    public struct GetRepositoryPolicyRequest: Serializable, Initializable {
        /// The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
        var registryId: String? = nil
        /// The name of the repository whose policy you want to retrieve.
        var repositoryName: String = ""

        public init() {}

        public init(registryId: String? = nil, repositoryName: String) {
            self.registryId = registryId
            self.repositoryName = repositoryName
        }

    }

    public struct UploadLayerPartResponse: Serializable, Initializable {
        /// The upload ID associated with the request.
        var uploadId: String? = nil
        /// The repository name associated with the request.
        var repositoryName: String? = nil
        /// The registry ID associated with the request.
        var registryId: String? = nil
        /// The integer value of the last byte received in the request.
        var lastByteReceived: Int64? = nil

        public init() {}

        public init(uploadId: String? = nil, repositoryName: String? = nil, registryId: String? = nil, lastByteReceived: Int64? = nil) {
            self.uploadId = uploadId
            self.repositoryName = repositoryName
            self.registryId = registryId
            self.lastByteReceived = lastByteReceived
        }

    }

    public struct BatchCheckLayerAvailabilityResponse: Serializable, Initializable {
        /// Any failures associated with the call.
        var failures: [LayerFailure]? = nil
        /// A list of image layer objects corresponding to the image layer references in the request.
        var layers: [Layer]? = nil

        public init() {}

        public init(failures: [LayerFailure]? = nil, layers: [Layer]? = nil) {
            self.failures = failures
            self.layers = layers
        }

    }

    public struct PutImageRequest: Serializable, Initializable {
        /// The tag to associate with the image. This parameter is required for images that use the Docker Image Manifest V2 Schema 2 or OCI formats.
        var imageTag: String? = nil
        /// The image manifest corresponding to the image to be uploaded.
        var imageManifest: String = ""
        /// The name of the repository in which to put the image.
        var repositoryName: String = ""
        /// The AWS account ID associated with the registry that contains the repository in which to put the image. If you do not specify a registry, the default registry is assumed.
        var registryId: String? = nil

        public init() {}

        public init(imageTag: String? = nil, imageManifest: String, repositoryName: String, registryId: String? = nil) {
            self.imageTag = imageTag
            self.imageManifest = imageManifest
            self.repositoryName = repositoryName
            self.registryId = registryId
        }

    }

    public struct DescribeRepositoriesResponse: Serializable, Initializable {
        /// A list of repository objects corresponding to valid repositories.
        var repositories: [Repository]? = nil
        /// The nextToken value to include in a future DescribeRepositories request. When the results of a DescribeRepositories request exceed maxResults, this value can be used to retrieve the next page of results. This value is null when there are no more results to return.
        var nextToken: String? = nil

        public init() {}

        public init(repositories: [Repository]? = nil, nextToken: String? = nil) {
            self.repositories = repositories
            self.nextToken = nextToken
        }

    }

    public struct InitiateLayerUploadRequest: Serializable, Initializable {
        /// The AWS account ID associated with the registry that you intend to upload layers to. If you do not specify a registry, the default registry is assumed.
        var registryId: String? = nil
        /// The name of the repository that you intend to upload layers to.
        var repositoryName: String = ""

        public init() {}

        public init(registryId: String? = nil, repositoryName: String) {
            self.registryId = registryId
            self.repositoryName = repositoryName
        }

    }

    public struct DeleteRepositoryRequest: Serializable, Initializable {
        /// Force the deletion of the repository if it contains images.
        var force: Bool? = nil
        /// The AWS account ID associated with the registry that contains the repository to delete. If you do not specify a registry, the default registry is assumed.
        var registryId: String? = nil
        /// The name of the repository to delete.
        var repositoryName: String = ""

        public init() {}

        public init(force: Bool? = nil, registryId: String? = nil, repositoryName: String) {
            self.force = force
            self.registryId = registryId
            self.repositoryName = repositoryName
        }

    }

    public struct PutImageResponse: Serializable, Initializable {
        /// Details of the image uploaded.
        var image: Image? = nil

        public init() {}

        public init(image: Image? = nil) {
            self.image = image
        }

    }

    public struct Repository: Serializable, Initializable {
        /// The URI for the repository. You can use this URI for Docker push and pull operations.
        var repositoryUri: String? = nil
        /// The name of the repository.
        var repositoryName: String? = nil
        /// The AWS account ID associated with the registry that contains the repository.
        var registryId: String? = nil
        /// The date and time, in JavaScript date/time format, when the repository was created.
        var createdAt: Date? = nil
        /// The Amazon Resource Name (ARN) that identifies the repository. The ARN contains the arn:aws:ecr namespace, followed by the region of the repository, the AWS account ID of the repository owner, the repository namespace, and then the repository name. For example, arn:aws:ecr:region:012345678910:repository/test.
        var repositoryArn: String? = nil

        public init() {}

        public init(repositoryUri: String? = nil, repositoryName: String? = nil, registryId: String? = nil, createdAt: Date? = nil, repositoryArn: String? = nil) {
            self.repositoryUri = repositoryUri
            self.repositoryName = repositoryName
            self.registryId = registryId
            self.createdAt = createdAt
            self.repositoryArn = repositoryArn
        }

    }

    public struct BatchDeleteImageRequest: Serializable, Initializable {
        /// The AWS account ID associated with the registry that contains the image to delete. If you do not specify a registry, the default registry is assumed.
        var registryId: String? = nil
        /// A list of image ID references that correspond to images to delete. The format of the imageIds reference is imageTag=tag or imageDigest=digest.
        var imageIds: [ImageIdentifier] = []
        /// The repository that contains the image to delete.
        var repositoryName: String = ""

        public init() {}

        public init(registryId: String? = nil, imageIds: [ImageIdentifier], repositoryName: String) {
            self.registryId = registryId
            self.imageIds = imageIds
            self.repositoryName = repositoryName
        }

    }

    public struct CompleteLayerUploadResponse: Serializable, Initializable {
        /// The upload ID associated with the layer.
        var uploadId: String? = nil
        /// The repository name associated with the request.
        var repositoryName: String? = nil
        /// The registry ID associated with the request.
        var registryId: String? = nil
        /// The sha256 digest of the image layer.
        var layerDigest: String? = nil

        public init() {}

        public init(uploadId: String? = nil, repositoryName: String? = nil, registryId: String? = nil, layerDigest: String? = nil) {
            self.uploadId = uploadId
            self.repositoryName = repositoryName
            self.registryId = registryId
            self.layerDigest = layerDigest
        }

    }

    public struct UploadLayerPartRequest: Serializable, Initializable {
        /// The upload ID from a previous InitiateLayerUpload operation to associate with the layer part upload.
        var uploadId: String = ""
        /// The base64-encoded layer part payload.
        var layerPartBlob: Data = Data()
        /// The name of the repository that you are uploading layer parts to.
        var repositoryName: String = ""
        /// The integer value of the last byte of the layer part.
        var partLastByte: Int64 = 0
        /// The AWS account ID associated with the registry that you are uploading layer parts to. If you do not specify a registry, the default registry is assumed.
        var registryId: String? = nil
        /// The integer value of the first byte of the layer part.
        var partFirstByte: Int64 = 0

        public init() {}

        public init(uploadId: String, layerPartBlob: Data, repositoryName: String, partLastByte: Int64, registryId: String? = nil, partFirstByte: Int64) {
            self.uploadId = uploadId
            self.layerPartBlob = layerPartBlob
            self.repositoryName = repositoryName
            self.partLastByte = partLastByte
            self.registryId = registryId
            self.partFirstByte = partFirstByte
        }

    }

    public struct CompleteLayerUploadRequest: Serializable, Initializable {
        /// The upload ID from a previous InitiateLayerUpload operation to associate with the image layer.
        var uploadId: String = ""
        /// The name of the repository to associate with the image layer.
        var repositoryName: String = ""
        /// The AWS account ID associated with the registry to which to upload layers. If you do not specify a registry, the default registry is assumed.
        var registryId: String? = nil
        /// The sha256 digest of the image layer.
        var layerDigests: [String] = []

        public init() {}

        public init(uploadId: String, repositoryName: String, registryId: String? = nil, layerDigests: [String]) {
            self.uploadId = uploadId
            self.repositoryName = repositoryName
            self.registryId = registryId
            self.layerDigests = layerDigests
        }

    }

    public struct DescribeImagesFilter: Serializable, Initializable {
        /// The tag status with which to filter your DescribeImages results. You can filter results based on whether they are TAGGED or UNTAGGED.
        var tagStatus: String? = nil

        public init() {}

        public init(tagStatus: String? = nil) {
            self.tagStatus = tagStatus
        }

    }

    public struct ListImagesRequest: Serializable, Initializable {
        /// The nextToken value returned from a previous paginated ListImages request where maxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the nextToken value. This value is null when there are no more results to return.  This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes. 
        var nextToken: String? = nil
        /// The maximum number of image results returned by ListImages in paginated output. When this parameter is used, ListImages only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another ListImages request with the returned nextToken value. This value can be between 1 and 100. If this parameter is not used, then ListImages returns up to 100 results and a nextToken value, if applicable.
        var maxResults: Int32? = nil
        /// The filter key and value with which to filter your ListImages results.
        var filter: ListImagesFilter? = nil
        /// The repository whose image IDs are to be listed.
        var repositoryName: String = ""
        /// The AWS account ID associated with the registry that contains the repository to list images in. If you do not specify a registry, the default registry is assumed.
        var registryId: String? = nil

        public init() {}

        public init(nextToken: String? = nil, maxResults: Int32? = nil, filter: ListImagesFilter? = nil, repositoryName: String, registryId: String? = nil) {
            self.nextToken = nextToken
            self.maxResults = maxResults
            self.filter = filter
            self.repositoryName = repositoryName
            self.registryId = registryId
        }

    }

}