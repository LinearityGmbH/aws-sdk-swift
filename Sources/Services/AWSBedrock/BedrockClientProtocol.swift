// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Describes the API operations for creating and managing Amazon Bedrock models.
public protocol BedrockClientProtocol {
    /// Performs the `CreateModelCustomizationJob` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// Creates a fine-tuning job to customize a base model. You specify the base foundation model and the location of the training data. After the model-customization job completes successfully, your custom model resource will be ready to use. Training data contains input and output text for each record in a JSONL format. Optionally, you can specify validation data in the same format as the training data. Amazon Bedrock returns validation loss metrics and output generations after the job completes. Model-customization jobs are asynchronous and the completion time depends on the base model and the training/validation data size. To monitor a job, use the GetModelCustomizationJob operation to retrieve the job status. For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html) in the Bedrock User Guide.
    ///
    /// - Parameter CreateModelCustomizationJobInput : [no documentation found]
    ///
    /// - Returns: `CreateModelCustomizationJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `ConflictException` : Error occurred because of a conflict while performing an operation.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ResourceNotFoundException` : The specified resource ARN was not found. Check the ARN and try your request again.
    /// - `ServiceQuotaExceededException` : The number of requests exceeds the service quota. Resubmit your request later.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `TooManyTagsException` : The request contains more tags than can be associated with a resource (50 tags per resource). The maximum number of tags includes both existing tags and those included in your current request.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func createModelCustomizationJob(input: CreateModelCustomizationJobInput) async throws -> CreateModelCustomizationJobOutput
    /// Performs the `CreateProvisionedModelThroughput` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// Creates a provisioned throughput with dedicated capacity for a foundation model or a fine-tuned model. For more information, see [Provisioned throughput](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html) in the Bedrock User Guide.
    ///
    /// - Parameter CreateProvisionedModelThroughputInput : [no documentation found]
    ///
    /// - Returns: `CreateProvisionedModelThroughputOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ResourceNotFoundException` : The specified resource ARN was not found. Check the ARN and try your request again.
    /// - `ServiceQuotaExceededException` : The number of requests exceeds the service quota. Resubmit your request later.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `TooManyTagsException` : The request contains more tags than can be associated with a resource (50 tags per resource). The maximum number of tags includes both existing tags and those included in your current request.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func createProvisionedModelThroughput(input: CreateProvisionedModelThroughputInput) async throws -> CreateProvisionedModelThroughputOutput
    /// Performs the `DeleteCustomModel` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// Deletes a custom model that you created earlier. For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html) in the Bedrock User Guide.
    ///
    /// - Parameter DeleteCustomModelInput : [no documentation found]
    ///
    /// - Returns: `DeleteCustomModelOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `ConflictException` : Error occurred because of a conflict while performing an operation.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ResourceNotFoundException` : The specified resource ARN was not found. Check the ARN and try your request again.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func deleteCustomModel(input: DeleteCustomModelInput) async throws -> DeleteCustomModelOutput
    /// Performs the `DeleteModelInvocationLoggingConfiguration` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// Delete the invocation logging.
    ///
    /// - Parameter DeleteModelInvocationLoggingConfigurationInput : [no documentation found]
    ///
    /// - Returns: `DeleteModelInvocationLoggingConfigurationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    func deleteModelInvocationLoggingConfiguration(input: DeleteModelInvocationLoggingConfigurationInput) async throws -> DeleteModelInvocationLoggingConfigurationOutput
    /// Performs the `DeleteProvisionedModelThroughput` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// Deletes a provisioned throughput. For more information, see [Provisioned throughput](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html) in the Bedrock User Guide.
    ///
    /// - Parameter DeleteProvisionedModelThroughputInput : [no documentation found]
    ///
    /// - Returns: `DeleteProvisionedModelThroughputOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `ConflictException` : Error occurred because of a conflict while performing an operation.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ResourceNotFoundException` : The specified resource ARN was not found. Check the ARN and try your request again.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func deleteProvisionedModelThroughput(input: DeleteProvisionedModelThroughputInput) async throws -> DeleteProvisionedModelThroughputOutput
    /// Performs the `GetCustomModel` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// Get the properties associated with a Amazon Bedrock custom model that you have created.For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html) in the Bedrock User Guide.
    ///
    /// - Parameter GetCustomModelInput : [no documentation found]
    ///
    /// - Returns: `GetCustomModelOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ResourceNotFoundException` : The specified resource ARN was not found. Check the ARN and try your request again.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func getCustomModel(input: GetCustomModelInput) async throws -> GetCustomModelOutput
    /// Performs the `GetFoundationModel` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// Get details about a Amazon Bedrock foundation model.
    ///
    /// - Parameter GetFoundationModelInput : [no documentation found]
    ///
    /// - Returns: `GetFoundationModelOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ResourceNotFoundException` : The specified resource ARN was not found. Check the ARN and try your request again.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func getFoundationModel(input: GetFoundationModelInput) async throws -> GetFoundationModelOutput
    /// Performs the `GetModelCustomizationJob` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// Retrieves the properties associated with a model-customization job, including the status of the job. For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html) in the Bedrock User Guide.
    ///
    /// - Parameter GetModelCustomizationJobInput : [no documentation found]
    ///
    /// - Returns: `GetModelCustomizationJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ResourceNotFoundException` : The specified resource ARN was not found. Check the ARN and try your request again.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func getModelCustomizationJob(input: GetModelCustomizationJobInput) async throws -> GetModelCustomizationJobOutput
    /// Performs the `GetModelInvocationLoggingConfiguration` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// Get the current configuration values for model invocation logging.
    ///
    /// - Parameter GetModelInvocationLoggingConfigurationInput : [no documentation found]
    ///
    /// - Returns: `GetModelInvocationLoggingConfigurationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    func getModelInvocationLoggingConfiguration(input: GetModelInvocationLoggingConfigurationInput) async throws -> GetModelInvocationLoggingConfigurationOutput
    /// Performs the `GetProvisionedModelThroughput` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// Get details for a provisioned throughput. For more information, see [Provisioned throughput](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html) in the Bedrock User Guide.
    ///
    /// - Parameter GetProvisionedModelThroughputInput : [no documentation found]
    ///
    /// - Returns: `GetProvisionedModelThroughputOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ResourceNotFoundException` : The specified resource ARN was not found. Check the ARN and try your request again.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func getProvisionedModelThroughput(input: GetProvisionedModelThroughputInput) async throws -> GetProvisionedModelThroughputOutput
    /// Performs the `ListCustomModels` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// Returns a list of the custom models that you have created with the CreateModelCustomizationJob operation. For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html) in the Bedrock User Guide.
    ///
    /// - Parameter ListCustomModelsInput : [no documentation found]
    ///
    /// - Returns: `ListCustomModelsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func listCustomModels(input: ListCustomModelsInput) async throws -> ListCustomModelsOutput
    /// Performs the `ListFoundationModels` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// List of Amazon Bedrock foundation models that you can use. For more information, see [Foundation models](https://docs.aws.amazon.com/bedrock/latest/userguide/foundation-models.html) in the Bedrock User Guide.
    ///
    /// - Parameter ListFoundationModelsInput : [no documentation found]
    ///
    /// - Returns: `ListFoundationModelsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func listFoundationModels(input: ListFoundationModelsInput) async throws -> ListFoundationModelsOutput
    /// Performs the `ListModelCustomizationJobs` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// Returns a list of model customization jobs that you have submitted. You can filter the jobs to return based on one or more criteria. For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html) in the Bedrock User Guide.
    ///
    /// - Parameter ListModelCustomizationJobsInput : [no documentation found]
    ///
    /// - Returns: `ListModelCustomizationJobsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func listModelCustomizationJobs(input: ListModelCustomizationJobsInput) async throws -> ListModelCustomizationJobsOutput
    /// Performs the `ListProvisionedModelThroughputs` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// List the provisioned capacities. For more information, see [Provisioned throughput](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html) in the Bedrock User Guide.
    ///
    /// - Parameter ListProvisionedModelThroughputsInput : [no documentation found]
    ///
    /// - Returns: `ListProvisionedModelThroughputsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func listProvisionedModelThroughputs(input: ListProvisionedModelThroughputsInput) async throws -> ListProvisionedModelThroughputsOutput
    /// Performs the `ListTagsForResource` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// List the tags associated with the specified resource. For more information, see [Tagging resources](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html) in the Bedrock User Guide.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ResourceNotFoundException` : The specified resource ARN was not found. Check the ARN and try your request again.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Performs the `PutModelInvocationLoggingConfiguration` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// Set the configuration values for model invocation logging.
    ///
    /// - Parameter PutModelInvocationLoggingConfigurationInput : [no documentation found]
    ///
    /// - Returns: `PutModelInvocationLoggingConfigurationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func putModelInvocationLoggingConfiguration(input: PutModelInvocationLoggingConfigurationInput) async throws -> PutModelInvocationLoggingConfigurationOutput
    /// Performs the `StopModelCustomizationJob` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// Stops an active model customization job. For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html) in the Bedrock User Guide.
    ///
    /// - Parameter StopModelCustomizationJobInput : [no documentation found]
    ///
    /// - Returns: `StopModelCustomizationJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `ConflictException` : Error occurred because of a conflict while performing an operation.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ResourceNotFoundException` : The specified resource ARN was not found. Check the ARN and try your request again.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func stopModelCustomizationJob(input: StopModelCustomizationJobInput) async throws -> StopModelCustomizationJobOutput
    /// Performs the `TagResource` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// Associate tags with a resource. For more information, see [Tagging resources](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html) in the Bedrock User Guide.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ResourceNotFoundException` : The specified resource ARN was not found. Check the ARN and try your request again.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `TooManyTagsException` : The request contains more tags than can be associated with a resource (50 tags per resource). The maximum number of tags includes both existing tags and those included in your current request.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Performs the `UntagResource` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// Remove one or more tags from a resource. For more information, see [Tagging resources](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html) in the Bedrock User Guide.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ResourceNotFoundException` : The specified resource ARN was not found. Check the ARN and try your request again.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Performs the `UpdateProvisionedModelThroughput` operation on the `AmazonBedrockControlPlaneService` service.
    ///
    /// Update a provisioned throughput. For more information, see [Provisioned throughput](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html) in the Bedrock User Guide.
    ///
    /// - Parameter UpdateProvisionedModelThroughputInput : [no documentation found]
    ///
    /// - Returns: `UpdateProvisionedModelThroughputOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ResourceNotFoundException` : The specified resource ARN was not found. Check the ARN and try your request again.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func updateProvisionedModelThroughput(input: UpdateProvisionedModelThroughputInput) async throws -> UpdateProvisionedModelThroughputOutput
}

public enum BedrockClientTypes {}
