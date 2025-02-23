// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CodestarnotificationsClient {
    /// Paginate over `[ListEventTypesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEventTypesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEventTypesOutput`
    public func listEventTypesPaginated(input: ListEventTypesInput) -> ClientRuntime.PaginatorSequence<ListEventTypesInput, ListEventTypesOutput> {
        return ClientRuntime.PaginatorSequence<ListEventTypesInput, ListEventTypesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listEventTypes(input:))
    }
}

extension ListEventTypesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEventTypesInput {
        return ListEventTypesInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListEventTypesInput, OperationStackOutput == ListEventTypesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listEventTypesPaginated`
    /// to access the nested member `[CodestarnotificationsClientTypes.EventTypeSummary]`
    /// - Returns: `[CodestarnotificationsClientTypes.EventTypeSummary]`
    public func eventTypes() async throws -> [CodestarnotificationsClientTypes.EventTypeSummary] {
        return try await self.asyncCompactMap { item in item.eventTypes }
    }
}
extension CodestarnotificationsClient {
    /// Paginate over `[ListNotificationRulesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListNotificationRulesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListNotificationRulesOutput`
    public func listNotificationRulesPaginated(input: ListNotificationRulesInput) -> ClientRuntime.PaginatorSequence<ListNotificationRulesInput, ListNotificationRulesOutput> {
        return ClientRuntime.PaginatorSequence<ListNotificationRulesInput, ListNotificationRulesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listNotificationRules(input:))
    }
}

extension ListNotificationRulesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListNotificationRulesInput {
        return ListNotificationRulesInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListNotificationRulesInput, OperationStackOutput == ListNotificationRulesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listNotificationRulesPaginated`
    /// to access the nested member `[CodestarnotificationsClientTypes.NotificationRuleSummary]`
    /// - Returns: `[CodestarnotificationsClientTypes.NotificationRuleSummary]`
    public func notificationRules() async throws -> [CodestarnotificationsClientTypes.NotificationRuleSummary] {
        return try await self.asyncCompactMap { item in item.notificationRules }
    }
}
extension CodestarnotificationsClient {
    /// Paginate over `[ListTargetsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTargetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTargetsOutput`
    public func listTargetsPaginated(input: ListTargetsInput) -> ClientRuntime.PaginatorSequence<ListTargetsInput, ListTargetsOutput> {
        return ClientRuntime.PaginatorSequence<ListTargetsInput, ListTargetsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listTargets(input:))
    }
}

extension ListTargetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTargetsInput {
        return ListTargetsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListTargetsInput, OperationStackOutput == ListTargetsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listTargetsPaginated`
    /// to access the nested member `[CodestarnotificationsClientTypes.TargetSummary]`
    /// - Returns: `[CodestarnotificationsClientTypes.TargetSummary]`
    public func targets() async throws -> [CodestarnotificationsClientTypes.TargetSummary] {
        return try await self.asyncCompactMap { item in item.targets }
    }
}
