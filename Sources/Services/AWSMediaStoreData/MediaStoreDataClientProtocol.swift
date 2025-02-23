// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// An AWS Elemental MediaStore asset is an object, similar to an object in the Amazon S3 service. Objects are the fundamental entities that are stored in AWS Elemental MediaStore.
public protocol MediaStoreDataClientProtocol {
    /// Performs the `DeleteObject` operation on the `MediaStoreObject_20170901` service.
    ///
    /// Deletes an object at the specified path.
    ///
    /// - Parameter DeleteObjectInput : [no documentation found]
    ///
    /// - Returns: `DeleteObjectOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ContainerNotFoundException` : The specified container was not found for the specified account.
    /// - `InternalServerError` : The service is temporarily unavailable.
    /// - `ObjectNotFoundException` : Could not perform an operation on an object that does not exist.
    func deleteObject(input: DeleteObjectInput) async throws -> DeleteObjectOutput
    /// Performs the `DescribeObject` operation on the `MediaStoreObject_20170901` service.
    ///
    /// Gets the headers for an object at the specified path.
    ///
    /// - Parameter DescribeObjectInput : [no documentation found]
    ///
    /// - Returns: `DescribeObjectOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ContainerNotFoundException` : The specified container was not found for the specified account.
    /// - `InternalServerError` : The service is temporarily unavailable.
    /// - `ObjectNotFoundException` : Could not perform an operation on an object that does not exist.
    func describeObject(input: DescribeObjectInput) async throws -> DescribeObjectOutput
    /// Performs the `GetObject` operation on the `MediaStoreObject_20170901` service.
    ///
    /// Downloads the object at the specified path. If the object’s upload availability is set to streaming, AWS Elemental MediaStore downloads the object even if it’s still uploading the object.
    ///
    /// - Parameter GetObjectInput : [no documentation found]
    ///
    /// - Returns: `GetObjectOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ContainerNotFoundException` : The specified container was not found for the specified account.
    /// - `InternalServerError` : The service is temporarily unavailable.
    /// - `ObjectNotFoundException` : Could not perform an operation on an object that does not exist.
    /// - `RequestedRangeNotSatisfiableException` : The requested content range is not valid.
    func getObject(input: GetObjectInput) async throws -> GetObjectOutput
    /// Performs the `ListItems` operation on the `MediaStoreObject_20170901` service.
    ///
    /// Provides a list of metadata entries about folders and objects in the specified folder.
    ///
    /// - Parameter ListItemsInput : [no documentation found]
    ///
    /// - Returns: `ListItemsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ContainerNotFoundException` : The specified container was not found for the specified account.
    /// - `InternalServerError` : The service is temporarily unavailable.
    func listItems(input: ListItemsInput) async throws -> ListItemsOutput
    /// Performs the `PutObject` operation on the `MediaStoreObject_20170901` service.
    ///
    /// Uploads an object to the specified path. Object sizes are limited to 25 MB for standard upload availability and 10 MB for streaming upload availability.
    ///
    /// - Parameter PutObjectInput : [no documentation found]
    ///
    /// - Returns: `PutObjectOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ContainerNotFoundException` : The specified container was not found for the specified account.
    /// - `InternalServerError` : The service is temporarily unavailable.
    func putObject(input: PutObjectInput) async throws -> PutObjectOutput
}

public enum MediaStoreDataClientTypes {}
