// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS Signer is a fully managed code-signing service to help you ensure the trust and integrity of your code. Signer supports the following applications: With code signing for AWS Lambda, you can sign [AWS Lambda](http://docs.aws.amazon.com/lambda/latest/dg/) deployment packages. Integrated support is provided for [Amazon S3](http://docs.aws.amazon.com/AmazonS3/latest/gsg/), [Amazon CloudWatch](http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/), and [AWS CloudTrail](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/). In order to sign code, you create a signing profile and then use Signer to sign Lambda zip files in S3. With code signing for IoT, you can sign code for any IoT device that is supported by AWS. IoT code signing is available for [Amazon FreeRTOS](http://docs.aws.amazon.com/freertos/latest/userguide/) and [AWS IoT Device Management](http://docs.aws.amazon.com/iot/latest/developerguide/), and is integrated with [AWS Certificate Manager (ACM)](http://docs.aws.amazon.com/acm/latest/userguide/). In order to sign code, you import a third-party code-signing certificate using ACM, and use that to sign updates in Amazon FreeRTOS and AWS IoT Device Management. With Signer and the Notation CLI from the [Notary  Project](https://notaryproject.dev/), you can sign container images stored in a container registry such as Amazon Elastic Container Registry (ECR). The signatures are stored in the registry alongside the images, where they are available for verifying image authenticity and integrity. For more information about Signer, see the [AWS Signer Developer Guide](https://docs.aws.amazon.com/signer/latest/developerguide/Welcome.html).
public protocol SignerClientProtocol {
    /// Performs the `AddProfilePermission` operation on the `WallabyService` service.
    ///
    /// Adds cross-account permissions to a signing profile.
    ///
    /// - Parameter AddProfilePermissionInput : [no documentation found]
    ///
    /// - Returns: `AddProfilePermissionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The resource encountered a conflicting state.
    /// - `InternalServiceErrorException` : An internal error occurred.
    /// - `ResourceNotFoundException` : A specified resource could not be found.
    /// - `ServiceLimitExceededException` : The client is making a request that exceeds service limits.
    /// - `TooManyRequestsException` : The allowed number of job-signing requests has been exceeded. This error supersedes the error ThrottlingException.
    /// - `ValidationException` : You signing certificate could not be validated.
    func addProfilePermission(input: AddProfilePermissionInput) async throws -> AddProfilePermissionOutput
    /// Performs the `CancelSigningProfile` operation on the `WallabyService` service.
    ///
    /// Changes the state of an ACTIVE signing profile to CANCELED. A canceled profile is still viewable with the ListSigningProfiles operation, but it cannot perform new signing jobs, and is deleted two years after cancelation.
    ///
    /// - Parameter CancelSigningProfileInput : [no documentation found]
    ///
    /// - Returns: `CancelSigningProfileOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceErrorException` : An internal error occurred.
    /// - `ResourceNotFoundException` : A specified resource could not be found.
    /// - `TooManyRequestsException` : The allowed number of job-signing requests has been exceeded. This error supersedes the error ThrottlingException.
    func cancelSigningProfile(input: CancelSigningProfileInput) async throws -> CancelSigningProfileOutput
    /// Performs the `DescribeSigningJob` operation on the `WallabyService` service.
    ///
    /// Returns information about a specific code signing job. You specify the job by using the jobId value that is returned by the [StartSigningJob] operation.
    ///
    /// - Parameter DescribeSigningJobInput : [no documentation found]
    ///
    /// - Returns: `DescribeSigningJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceErrorException` : An internal error occurred.
    /// - `ResourceNotFoundException` : A specified resource could not be found.
    /// - `TooManyRequestsException` : The allowed number of job-signing requests has been exceeded. This error supersedes the error ThrottlingException.
    func describeSigningJob(input: DescribeSigningJobInput) async throws -> DescribeSigningJobOutput
    /// Performs the `GetRevocationStatus` operation on the `WallabyService` service.
    ///
    /// Retrieves the revocation status of one or more of the signing profile, signing job, and signing certificate.
    ///
    /// - Parameter GetRevocationStatusInput : [no documentation found]
    ///
    /// - Returns: `GetRevocationStatusOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceErrorException` : An internal error occurred.
    /// - `TooManyRequestsException` : The allowed number of job-signing requests has been exceeded. This error supersedes the error ThrottlingException.
    /// - `ValidationException` : You signing certificate could not be validated.
    func getRevocationStatus(input: GetRevocationStatusInput) async throws -> GetRevocationStatusOutput
    /// Performs the `GetSigningPlatform` operation on the `WallabyService` service.
    ///
    /// Returns information on a specific signing platform.
    ///
    /// - Parameter GetSigningPlatformInput : [no documentation found]
    ///
    /// - Returns: `GetSigningPlatformOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceErrorException` : An internal error occurred.
    /// - `ResourceNotFoundException` : A specified resource could not be found.
    /// - `TooManyRequestsException` : The allowed number of job-signing requests has been exceeded. This error supersedes the error ThrottlingException.
    func getSigningPlatform(input: GetSigningPlatformInput) async throws -> GetSigningPlatformOutput
    /// Performs the `GetSigningProfile` operation on the `WallabyService` service.
    ///
    /// Returns information on a specific signing profile.
    ///
    /// - Parameter GetSigningProfileInput : [no documentation found]
    ///
    /// - Returns: `GetSigningProfileOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceErrorException` : An internal error occurred.
    /// - `ResourceNotFoundException` : A specified resource could not be found.
    /// - `TooManyRequestsException` : The allowed number of job-signing requests has been exceeded. This error supersedes the error ThrottlingException.
    func getSigningProfile(input: GetSigningProfileInput) async throws -> GetSigningProfileOutput
    /// Performs the `ListProfilePermissions` operation on the `WallabyService` service.
    ///
    /// Lists the cross-account permissions associated with a signing profile.
    ///
    /// - Parameter ListProfilePermissionsInput : [no documentation found]
    ///
    /// - Returns: `ListProfilePermissionsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceErrorException` : An internal error occurred.
    /// - `ResourceNotFoundException` : A specified resource could not be found.
    /// - `TooManyRequestsException` : The allowed number of job-signing requests has been exceeded. This error supersedes the error ThrottlingException.
    /// - `ValidationException` : You signing certificate could not be validated.
    func listProfilePermissions(input: ListProfilePermissionsInput) async throws -> ListProfilePermissionsOutput
    /// Performs the `ListSigningJobs` operation on the `WallabyService` service.
    ///
    /// Lists all your signing jobs. You can use the maxResults parameter to limit the number of signing jobs that are returned in the response. If additional jobs remain to be listed, AWS Signer returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that Signer returns in the nextToken parameter until all of your signing jobs have been returned.
    ///
    /// - Parameter ListSigningJobsInput : [no documentation found]
    ///
    /// - Returns: `ListSigningJobsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceErrorException` : An internal error occurred.
    /// - `TooManyRequestsException` : The allowed number of job-signing requests has been exceeded. This error supersedes the error ThrottlingException.
    /// - `ValidationException` : You signing certificate could not be validated.
    func listSigningJobs(input: ListSigningJobsInput) async throws -> ListSigningJobsOutput
    /// Performs the `ListSigningPlatforms` operation on the `WallabyService` service.
    ///
    /// Lists all signing platforms available in AWS Signer that match the request parameters. If additional jobs remain to be listed, Signer returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that Signer returns in the nextToken parameter until all of your signing jobs have been returned.
    ///
    /// - Parameter ListSigningPlatformsInput : [no documentation found]
    ///
    /// - Returns: `ListSigningPlatformsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceErrorException` : An internal error occurred.
    /// - `TooManyRequestsException` : The allowed number of job-signing requests has been exceeded. This error supersedes the error ThrottlingException.
    /// - `ValidationException` : You signing certificate could not be validated.
    func listSigningPlatforms(input: ListSigningPlatformsInput) async throws -> ListSigningPlatformsOutput
    /// Performs the `ListSigningProfiles` operation on the `WallabyService` service.
    ///
    /// Lists all available signing profiles in your AWS account. Returns only profiles with an ACTIVE status unless the includeCanceled request field is set to true. If additional jobs remain to be listed, AWS Signer returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that Signer returns in the nextToken parameter until all of your signing jobs have been returned.
    ///
    /// - Parameter ListSigningProfilesInput : [no documentation found]
    ///
    /// - Returns: `ListSigningProfilesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceErrorException` : An internal error occurred.
    /// - `TooManyRequestsException` : The allowed number of job-signing requests has been exceeded. This error supersedes the error ThrottlingException.
    func listSigningProfiles(input: ListSigningProfilesInput) async throws -> ListSigningProfilesOutput
    /// Performs the `ListTagsForResource` operation on the `WallabyService` service.
    ///
    /// Returns a list of the tags associated with a signing profile resource.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The request contains invalid parameters for the ARN or tags. This exception also occurs when you call a tagging API on a cancelled signing profile.
    /// - `InternalServiceErrorException` : An internal error occurred.
    /// - `NotFoundException` : The signing profile was not found.
    /// - `TooManyRequestsException` : The allowed number of job-signing requests has been exceeded. This error supersedes the error ThrottlingException.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Performs the `PutSigningProfile` operation on the `WallabyService` service.
    ///
    /// Creates a signing profile. A signing profile is a code-signing template that can be used to carry out a pre-defined signing job.
    ///
    /// - Parameter PutSigningProfileInput : [no documentation found]
    ///
    /// - Returns: `PutSigningProfileOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceErrorException` : An internal error occurred.
    /// - `ResourceNotFoundException` : A specified resource could not be found.
    /// - `TooManyRequestsException` : The allowed number of job-signing requests has been exceeded. This error supersedes the error ThrottlingException.
    /// - `ValidationException` : You signing certificate could not be validated.
    func putSigningProfile(input: PutSigningProfileInput) async throws -> PutSigningProfileOutput
    /// Performs the `RemoveProfilePermission` operation on the `WallabyService` service.
    ///
    /// Removes cross-account permissions from a signing profile.
    ///
    /// - Parameter RemoveProfilePermissionInput : [no documentation found]
    ///
    /// - Returns: `RemoveProfilePermissionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The resource encountered a conflicting state.
    /// - `InternalServiceErrorException` : An internal error occurred.
    /// - `ResourceNotFoundException` : A specified resource could not be found.
    /// - `TooManyRequestsException` : The allowed number of job-signing requests has been exceeded. This error supersedes the error ThrottlingException.
    /// - `ValidationException` : You signing certificate could not be validated.
    func removeProfilePermission(input: RemoveProfilePermissionInput) async throws -> RemoveProfilePermissionOutput
    /// Performs the `RevokeSignature` operation on the `WallabyService` service.
    ///
    /// Changes the state of a signing job to REVOKED. This indicates that the signature is no longer valid.
    ///
    /// - Parameter RevokeSignatureInput : [no documentation found]
    ///
    /// - Returns: `RevokeSignatureOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceErrorException` : An internal error occurred.
    /// - `ResourceNotFoundException` : A specified resource could not be found.
    /// - `TooManyRequestsException` : The allowed number of job-signing requests has been exceeded. This error supersedes the error ThrottlingException.
    /// - `ValidationException` : You signing certificate could not be validated.
    func revokeSignature(input: RevokeSignatureInput) async throws -> RevokeSignatureOutput
    /// Performs the `RevokeSigningProfile` operation on the `WallabyService` service.
    ///
    /// Changes the state of a signing profile to REVOKED. This indicates that signatures generated using the signing profile after an effective start date are no longer valid.
    ///
    /// - Parameter RevokeSigningProfileInput : [no documentation found]
    ///
    /// - Returns: `RevokeSigningProfileOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceErrorException` : An internal error occurred.
    /// - `ResourceNotFoundException` : A specified resource could not be found.
    /// - `TooManyRequestsException` : The allowed number of job-signing requests has been exceeded. This error supersedes the error ThrottlingException.
    /// - `ValidationException` : You signing certificate could not be validated.
    func revokeSigningProfile(input: RevokeSigningProfileInput) async throws -> RevokeSigningProfileOutput
    /// Performs the `SignPayload` operation on the `WallabyService` service.
    ///
    /// Signs a binary payload and returns a signature envelope.
    ///
    /// - Parameter SignPayloadInput : [no documentation found]
    ///
    /// - Returns: `SignPayloadOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceErrorException` : An internal error occurred.
    /// - `ResourceNotFoundException` : A specified resource could not be found.
    /// - `TooManyRequestsException` : The allowed number of job-signing requests has been exceeded. This error supersedes the error ThrottlingException.
    /// - `ValidationException` : You signing certificate could not be validated.
    func signPayload(input: SignPayloadInput) async throws -> SignPayloadOutput
    /// Performs the `StartSigningJob` operation on the `WallabyService` service.
    ///
    /// Initiates a signing job to be performed on the code provided. Signing jobs are viewable by the ListSigningJobs operation for two years after they are performed. Note the following requirements:
    ///
    /// * You must create an Amazon S3 source bucket. For more information, see [Creating a Bucket](http://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html) in the Amazon S3 Getting Started Guide.
    ///
    /// * Your S3 source bucket must be version enabled.
    ///
    /// * You must create an S3 destination bucket. AWS Signer uses your S3 destination bucket to write your signed code.
    ///
    /// * You specify the name of the source and destination buckets when calling the StartSigningJob operation.
    ///
    /// * You must also specify a request token that identifies your request to Signer.
    ///
    ///
    /// You can call the [DescribeSigningJob] and the [ListSigningJobs] actions after you call StartSigningJob. For a Java example that shows how to use this action, see [StartSigningJob](https://docs.aws.amazon.com/signer/latest/developerguide/api-startsigningjob.html).
    ///
    /// - Parameter StartSigningJobInput : [no documentation found]
    ///
    /// - Returns: `StartSigningJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceErrorException` : An internal error occurred.
    /// - `ResourceNotFoundException` : A specified resource could not be found.
    /// - `ThrottlingException` : The request was denied due to request throttling. Instead of this error, TooManyRequestsException should be used.
    /// - `TooManyRequestsException` : The allowed number of job-signing requests has been exceeded. This error supersedes the error ThrottlingException.
    /// - `ValidationException` : You signing certificate could not be validated.
    func startSigningJob(input: StartSigningJobInput) async throws -> StartSigningJobOutput
    /// Performs the `TagResource` operation on the `WallabyService` service.
    ///
    /// Adds one or more tags to a signing profile. Tags are labels that you can use to identify and organize your AWS resources. Each tag consists of a key and an optional value. To specify the signing profile, use its Amazon Resource Name (ARN). To specify the tag, use a key-value pair.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The request contains invalid parameters for the ARN or tags. This exception also occurs when you call a tagging API on a cancelled signing profile.
    /// - `InternalServiceErrorException` : An internal error occurred.
    /// - `NotFoundException` : The signing profile was not found.
    /// - `TooManyRequestsException` : The allowed number of job-signing requests has been exceeded. This error supersedes the error ThrottlingException.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Performs the `UntagResource` operation on the `WallabyService` service.
    ///
    /// Removes one or more tags from a signing profile. To remove the tags, specify a list of tag keys.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The request contains invalid parameters for the ARN or tags. This exception also occurs when you call a tagging API on a cancelled signing profile.
    /// - `InternalServiceErrorException` : An internal error occurred.
    /// - `NotFoundException` : The signing profile was not found.
    /// - `TooManyRequestsException` : The allowed number of job-signing requests has been exceeded. This error supersedes the error ThrottlingException.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
}

public enum SignerClientTypes {}
