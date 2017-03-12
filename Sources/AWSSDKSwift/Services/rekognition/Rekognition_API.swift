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
This is the Amazon Rekognition API reference.
*/
public struct Rekognition {

    let request: AWSRequest

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil) {
        self.request = AWSRequest(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "RekognitionService",
            service: "rekognition",
            endpoint: endpoint
        )
    }

    ///  Detects faces in the input image and adds them to the specified collection.   Amazon Rekognition does not save the actual faces detected. Instead, the underlying detection algorithm first detects the faces in the input image, and for each face extracts facial features into a feature vector, and stores it in the back-end database. Amazon Rekognition uses feature vectors when performing face match and search operations using the and operations.  If you provide the optional externalImageID for the input image you provided, Amazon Rekognition associates this ID with all faces that it detects. When you call the operation, the response returns the external ID. You can use this external image ID to create a client-side index to associate the faces with each image. You can then use the index to find all faces in an image.  In response, the operation returns an array of metadata for all detected faces. This includes, the bounding box of the detected face, confidence value (indicating the bounding box contains a face), a face ID assigned by the service for each face that is detected and stored, and an image ID assigned by the service for the input image If you request all facial attributes (using the detectionAttributes parameter, Amazon Rekognition returns detailed facial attributes such as facial landmarks (for example, location of eye and mount) and other facial attributes such gender. If you provide the same image, specify the same collection, and use the same external ID in the IndexFaces operation, Amazon Rekognition doesn't save duplicate face metadata.  For an example, see example2. This operation requires permissions to perform the rekognition:IndexFaces action.
    public func indexFaces(_ input: IndexFacesRequest) throws -> IndexFacesResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "IndexFaces", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try RekognitionResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  For a given input image, first detects the largest face in the image, and then searches the specified collection for matching faces. The operation compares the features of the input face with faces in the specified collection.    To search for all faces in an input image, you might first call the operation, and then use the face IDs returned in subsequent calls to the operation.   You can also call the DetectFaces operation and use the bounding boxes in the response to make face crops, which then you can pass in to the SearchFacesByImage operation.    The response returns an array of faces that match, ordered by similarity score with the highest similarity first. More specifically, it is an array of metadata for each face match found. Along with the metadata, the response also includes a similarity indicating how similar the face is to the input face. In the response, the operation also returns the bounding box (and a confidence level that the bounding box contains a face) of the face that Amazon Rekognition used for the input image.  For an example, see example3. This operation requires permissions to perform the rekognition:SearchFacesByImage action.
    public func searchFacesByImage(_ input: SearchFacesByImageRequest) throws -> SearchFacesByImageResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "SearchFacesByImage", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try RekognitionResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Detects faces within an image (JPEG or PNG) that is provided as input.  For each face detected, the operation returns face details including a bounding box of the face, a confidence value (that the bounding box contains a face), and a fixed set of attributes such as facial landmarks (for example, coordinates of eye and mouth), gender, presence of beard, sunglasses, etc.  The face-detection algorithm is most effective on frontal faces. For non-frontal or obscured faces, the algorithm may not detect the faces or might detect faces with lower confidence.   This is a stateless API operation. That is, the operation does not persist any data.  For an example, see get-started-exercise-detect-faces. This operation requires permissions to perform the rekognition:DetectFaces action. 
    public func detectFaces(_ input: DetectFacesRequest) throws -> DetectFacesResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DetectFaces", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try RekognitionResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  For a given input face ID, searches for matching faces in the collection the face belongs to. You get a face ID when you add a face to the collection using the IndexFaces operation. The operation compares the features of the input face with faces in the specified collection.   You can also search faces without indexing faces by using the SearchFacesByImage operation.   The operation response returns an array of faces that match, ordered by similarity score with the highest similarity first. More specifically, it is an array of metadata for each face match that is found. Along with the metadata, the response also includes a confidence value for each face match, indicating the confidence that the specific face matches the input face.  For an example, see example3. This operation requires permissions to perform the rekognition:SearchFaces action.
    public func searchFaces(_ input: SearchFacesRequest) throws -> SearchFacesResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "SearchFaces", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try RekognitionResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns list of collection IDs in your account. If the result is truncated, the response also provides a NextToken that you can use in the subsequent request to fetch the next set of collection IDs. For an example, see example1. This operation requires permissions to perform the rekognition:ListCollections action.
    public func listCollections(_ input: ListCollectionsRequest) throws -> ListCollectionsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListCollections", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try RekognitionResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes the specified collection. Note that this operation removes all faces in the collection. For an example, see example1. This operation requires permissions to perform the rekognition:DeleteCollection action.
    public func deleteCollection(_ input: DeleteCollectionRequest) throws -> DeleteCollectionResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteCollection", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try RekognitionResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates a collection in an AWS Region. You can add faces to the collection using the operation.  For example, you might create collections, one for each of your application users. A user can then index faces using the IndexFaces operation and persist results in a specific collection. Then, a user can search the collection for faces in the user-specific container.  For an example, see example1.  This operation requires permissions to perform the rekognition:CreateCollection action.
    public func createCollection(_ input: CreateCollectionRequest) throws -> CreateCollectionResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateCollection", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try RekognitionResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Detects instances of real-world labels within an image (JPEG or PNG) provided as input. This includes objects like flower, tree, and table; events like wedding, graduation, and birthday party; and concepts like landscape, evening, and nature. For an example, see get-started-exercise-detect-labels.  For each object, scene, and concept the API returns one or more labels. Each label provides the object name, and the level of confidence that the image contains the object. For example, suppose the input image has a lighthouse, the sea, and a rock. The response will include all three labels, one for each object.   {Name: lighthouse, Confidence: 98.4629}   {Name: rock,Confidence: 79.2097}    {Name: sea,Confidence: 75.061}   In the preceding example, the operation returns one label for each of the three objects. The operation can also return multiple labels for the same object in the image. For example, if the input image shows a flower (for example, a tulip), the operation might return the following three labels.   {Name: flower,Confidence: 99.0562}   {Name: plant,Confidence: 99.0562}   {Name: tulip,Confidence: 99.0562}  In this example, the detection algorithm more precisely identifies the flower as a tulip. You can provide the input image as an S3 object or as base64-encoded bytes. In response, the API returns an array of labels. In addition, the response also includes the orientation correction. Optionally, you can specify MinConfidence to control the confidence threshold for the labels returned. The default is 50%. You can also add the MaxLabels parameter to limit the number of labels returned.   If the object detected is a person, the operation doesn't provide the same facial details that the DetectFaces operation provides.  This is a stateless API operation. That is, the operation does not persist any data. This operation requires permissions to perform the rekognition:DetectLabels action. 
    public func detectLabels(_ input: DetectLabelsRequest) throws -> DetectLabelsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DetectLabels", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try RekognitionResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns metadata for faces in the specified collection. This metadata includes information such as the bounding box coordinates, the confidence (that the bounding box contains a face), and face ID. For an example, see example3.  This operation requires permissions to perform the rekognition:ListFaces action.
    public func listFaces(_ input: ListFacesRequest) throws -> ListFacesResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListFaces", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try RekognitionResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Compares a face in the source input image with each face detected in the target input image.    If the source image contains multiple faces, the service detects the largest face and uses it to compare with each face detected in the target image.   In response, the operation returns an array of face matches ordered by similarity score with the highest similarity scores first. For each face match, the response provides a bounding box of the face and confidence value (indicating the level of confidence that the bounding box contains a face). The response also provides a similarity score, which indicates how closely the faces match.   By default, only faces with the similarity score of greater than or equal to 80% are returned in the response. You can change this value.  In addition to the face matches, the response returns information about the face in the source image, including the bounding box of the face and confidence value.   This is a stateless API operation. That is, the operation does not persist any data.  For an example, see get-started-exercise-compare-faces  This operation requires permissions to perform the rekognition:CompareFaces action.
    public func compareFaces(_ input: CompareFacesRequest) throws -> CompareFacesResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "CompareFaces", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try RekognitionResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes faces from a collection. You specify a collection ID and an array of face IDs to remove from the collection. This operation requires permissions to perform the rekognition:DeleteFaces action.
    public func deleteFaces(_ input: DeleteFacesRequest) throws -> DeleteFacesResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteFaces", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try RekognitionResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }


}