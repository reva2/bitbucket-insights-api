# \InsightsApi

All URIs are relative to *http://localhost/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateAnnotations**](InsightsApi.md#CreateAnnotations) | **Post** /insights/1.0/projects/{projectKey}/repos/{repositorySlug}/commits/{commitId}/reports/{reportKey}/annotations | Add annotations to the given report.
[**DeleteAnnotations**](InsightsApi.md#DeleteAnnotations) | **Delete** /insights/1.0/projects/{projectKey}/repos/{repositorySlug}/commits/{commitId}/reports/{reportKey}/annotations | Delete annotations
[**DeleteReport**](InsightsApi.md#DeleteReport) | **Delete** /insights/1.0/projects/{projectKey}/repos/{repositorySlug}/commits/{commitId}/reports/{reportKey} | Delete a report for the given commit. Also deletes any annotations associated with this report.
[**GetAnnotations**](InsightsApi.md#GetAnnotations) | **Get** /insights/1.0/projects/{projectKey}/repos/{repositorySlug}/commits/{commitId}/annotations | Retrieve the specified commit&#39;s annotations.
[**GetReport**](InsightsApi.md#GetReport) | **Get** /insights/1.0/projects/{projectKey}/repos/{repositorySlug}/commits/{commitId}/reports/{reportKey} | Retrieve the specified report.
[**GetReportAnnotations**](InsightsApi.md#GetReportAnnotations) | **Get** /insights/1.0/projects/{projectKey}/repos/{repositorySlug}/commits/{commitId}/reports/{reportKey}/annotations | Retrieve the specified report&#39;s annotations.
[**GetReports**](InsightsApi.md#GetReports) | **Get** /insights/1.0/projects/{projectKey}/repos/{repositorySlug}/commits/{commitId}/reposts | Get reports list for specified commit
[**UpdateAnnotation**](InsightsApi.md#UpdateAnnotation) | **Put** /insights/1.0/projects/{projectKey}/repos/{repositorySlug}/commits/{commitId}/reports/{reportKey}/annotations/{externalId} | Create an annotation with the given external ID, or replace it if it already exists.
[**UpdateReport**](InsightsApi.md#UpdateReport) | **Put** /insights/1.0/projects/{projectKey}/repos/{repositorySlug}/commits/{commitId}/reports/{reportKey} | Create a new insight report, or replace the existing one.



## CreateAnnotations

> CreateAnnotations(ctx, projectKey, repositorySlug, commitId, reportKey).AnnotationsList(annotationsList).Execute()

Add annotations to the given report.



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    projectKey := "projectKey_example" // string | The project key
    repositorySlug := "repositorySlug_example" // string | The repository slug
    commitId := "commitId_example" // string | The commit ID. This must be a full 40 character commit hash
    reportKey := "reportKey_example" // string | A unique string representing the report as chosen by the reporter. This should be unique enough to not clash with other report's keys. To do this, we recommend namespacing the key using reverse DNS. 
    annotationsList := *openapiclient.NewAnnotationsList([]openapiclient.Annotation{*openapiclient.NewAnnotation("Path_example", int32(123), "Message_example", "Severity_example")}) // AnnotationsList | 

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.InsightsApi.CreateAnnotations(context.Background(), projectKey, repositorySlug, commitId, reportKey).AnnotationsList(annotationsList).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `InsightsApi.CreateAnnotations``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**projectKey** | **string** | The project key | 
**repositorySlug** | **string** | The repository slug | 
**commitId** | **string** | The commit ID. This must be a full 40 character commit hash | 
**reportKey** | **string** | A unique string representing the report as chosen by the reporter. This should be unique enough to not clash with other report&#39;s keys. To do this, we recommend namespacing the key using reverse DNS.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiCreateAnnotationsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




 **annotationsList** | [**AnnotationsList**](AnnotationsList.md) |  | 

### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteAnnotations

> DeleteAnnotations(ctx, projectKey, repositorySlug, commitId, reportKey).ExternalId(externalId).Execute()

Delete annotations



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    projectKey := "projectKey_example" // string | The project key
    repositorySlug := "repositorySlug_example" // string | The repository slug
    commitId := "commitId_example" // string | The commit ID. This must be a full 40 character commit hash
    reportKey := "reportKey_example" // string | A unique string representing the report as chosen by the reporter. This should be unique enough to not clash with other report's keys. To do this, we recommend namespacing the key using reverse DNS. 
    externalId := "externalId_example" // string | The external IDs for the annotations that are to be deleted. Can be specified more than once to delete by more than one external ID, or can be unspecified to delete all annotations  (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.InsightsApi.DeleteAnnotations(context.Background(), projectKey, repositorySlug, commitId, reportKey).ExternalId(externalId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `InsightsApi.DeleteAnnotations``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**projectKey** | **string** | The project key | 
**repositorySlug** | **string** | The repository slug | 
**commitId** | **string** | The commit ID. This must be a full 40 character commit hash | 
**reportKey** | **string** | A unique string representing the report as chosen by the reporter. This should be unique enough to not clash with other report&#39;s keys. To do this, we recommend namespacing the key using reverse DNS.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteAnnotationsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




 **externalId** | **string** | The external IDs for the annotations that are to be deleted. Can be specified more than once to delete by more than one external ID, or can be unspecified to delete all annotations  | 

### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteReport

> DeleteReport(ctx, projectKey, repositorySlug, commitId, reportKey).Execute()

Delete a report for the given commit. Also deletes any annotations associated with this report.

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    projectKey := "projectKey_example" // string | The project key
    repositorySlug := "repositorySlug_example" // string | The repository slug
    commitId := "commitId_example" // string | The commit ID. This must be a full 40 character commit hash
    reportKey := "reportKey_example" // string | A unique string representing the report as chosen by the reporter. This should be unique enough to not clash with other report's keys. To do this, we recommend namespacing the key using reverse DNS. 

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.InsightsApi.DeleteReport(context.Background(), projectKey, repositorySlug, commitId, reportKey).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `InsightsApi.DeleteReport``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**projectKey** | **string** | The project key | 
**repositorySlug** | **string** | The repository slug | 
**commitId** | **string** | The commit ID. This must be a full 40 character commit hash | 
**reportKey** | **string** | A unique string representing the report as chosen by the reporter. This should be unique enough to not clash with other report&#39;s keys. To do this, we recommend namespacing the key using reverse DNS.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteReportRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------





### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAnnotations

> AnnotationsList GetAnnotations(ctx, projectKey, repositorySlug, commitId).ExternalId(externalId).Key(key).Path(path).Severity(severity).Type_(type_).Execute()

Retrieve the specified commit's annotations.

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    projectKey := "projectKey_example" // string | The project key
    repositorySlug := "repositorySlug_example" // string | The repository slug
    commitId := "commitId_example" // string | The commit ID. This must be a full 40 character commit hash
    externalId := "externalId_example" // string |  (optional)
    key := "key_example" // string | The report key (optional)
    path := "path_example" // string |  (optional)
    severity := "severity_example" // string |  (optional)
    type_ := "type__example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.InsightsApi.GetAnnotations(context.Background(), projectKey, repositorySlug, commitId).ExternalId(externalId).Key(key).Path(path).Severity(severity).Type_(type_).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `InsightsApi.GetAnnotations``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetAnnotations`: AnnotationsList
    fmt.Fprintf(os.Stdout, "Response from `InsightsApi.GetAnnotations`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**projectKey** | **string** | The project key | 
**repositorySlug** | **string** | The repository slug | 
**commitId** | **string** | The commit ID. This must be a full 40 character commit hash | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetAnnotationsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **externalId** | **string** |  | 
 **key** | **string** | The report key | 
 **path** | **string** |  | 
 **severity** | **string** |  | 
 **type_** | **string** |  | 

### Return type

[**AnnotationsList**](AnnotationsList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetReport

> Report GetReport(ctx, projectKey, repositorySlug, commitId, reportKey).Execute()

Retrieve the specified report.

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    projectKey := "projectKey_example" // string | The project key
    repositorySlug := "repositorySlug_example" // string | The repository slug
    commitId := "commitId_example" // string | The commit ID. This must be a full 40 character commit hash
    reportKey := "reportKey_example" // string | A unique string representing the report as chosen by the reporter. This should be unique enough to not clash with other report's keys. To do this, we recommend namespacing the key using reverse DNS. 

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.InsightsApi.GetReport(context.Background(), projectKey, repositorySlug, commitId, reportKey).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `InsightsApi.GetReport``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetReport`: Report
    fmt.Fprintf(os.Stdout, "Response from `InsightsApi.GetReport`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**projectKey** | **string** | The project key | 
**repositorySlug** | **string** | The repository slug | 
**commitId** | **string** | The commit ID. This must be a full 40 character commit hash | 
**reportKey** | **string** | A unique string representing the report as chosen by the reporter. This should be unique enough to not clash with other report&#39;s keys. To do this, we recommend namespacing the key using reverse DNS.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetReportRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------





### Return type

[**Report**](Report.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetReportAnnotations

> AnnotationsList GetReportAnnotations(ctx, projectKey, repositorySlug, commitId, reportKey).Execute()

Retrieve the specified report's annotations.

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    projectKey := "projectKey_example" // string | The project key
    repositorySlug := "repositorySlug_example" // string | The repository slug
    commitId := "commitId_example" // string | The commit ID. This must be a full 40 character commit hash
    reportKey := "reportKey_example" // string | A unique string representing the report as chosen by the reporter. This should be unique enough to not clash with other report's keys. To do this, we recommend namespacing the key using reverse DNS. 

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.InsightsApi.GetReportAnnotations(context.Background(), projectKey, repositorySlug, commitId, reportKey).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `InsightsApi.GetReportAnnotations``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetReportAnnotations`: AnnotationsList
    fmt.Fprintf(os.Stdout, "Response from `InsightsApi.GetReportAnnotations`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**projectKey** | **string** | The project key | 
**repositorySlug** | **string** | The repository slug | 
**commitId** | **string** | The commit ID. This must be a full 40 character commit hash | 
**reportKey** | **string** | A unique string representing the report as chosen by the reporter. This should be unique enough to not clash with other report&#39;s keys. To do this, we recommend namespacing the key using reverse DNS.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetReportAnnotationsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------





### Return type

[**AnnotationsList**](AnnotationsList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetReports

> ReportsListResponse GetReports(ctx, projectKey, repositorySlug, commitId).Start(start).Limit(limit).Execute()

Get reports list for specified commit



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    projectKey := "projectKey_example" // string | The project key
    repositorySlug := "repositorySlug_example" // string | The repository slug
    commitId := "commitId_example" // string | The commit ID. This must be a full 40 character commit hash
    start := int32(56) // int32 | The start parameter indicates which item should be used as the first item in the page of results. (optional)
    limit := int32(56) // int32 | The limit parameter indicates how many results to return per page. (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.InsightsApi.GetReports(context.Background(), projectKey, repositorySlug, commitId).Start(start).Limit(limit).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `InsightsApi.GetReports``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetReports`: ReportsListResponse
    fmt.Fprintf(os.Stdout, "Response from `InsightsApi.GetReports`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**projectKey** | **string** | The project key | 
**repositorySlug** | **string** | The repository slug | 
**commitId** | **string** | The commit ID. This must be a full 40 character commit hash | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetReportsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **start** | **int32** | The start parameter indicates which item should be used as the first item in the page of results. | 
 **limit** | **int32** | The limit parameter indicates how many results to return per page. | 

### Return type

[**ReportsListResponse**](ReportsListResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateAnnotation

> UpdateAnnotation(ctx, projectKey, repositorySlug, commitId, reportKey, externalId).Annotation(annotation).Execute()

Create an annotation with the given external ID, or replace it if it already exists.



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    projectKey := "projectKey_example" // string | The project key
    repositorySlug := "repositorySlug_example" // string | The repository slug
    commitId := "commitId_example" // string | The commit ID. This must be a full 40 character commit hash
    reportKey := "reportKey_example" // string | A unique string representing the report as chosen by the reporter. This should be unique enough to not clash with other report's keys. To do this, we recommend namespacing the key using reverse DNS. 
    externalId := "externalId_example" // string | The external ID of the annotation that is to be updated or created
    annotation := *openapiclient.NewAnnotation("Path_example", int32(123), "Message_example", "Severity_example") // Annotation |  (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.InsightsApi.UpdateAnnotation(context.Background(), projectKey, repositorySlug, commitId, reportKey, externalId).Annotation(annotation).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `InsightsApi.UpdateAnnotation``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**projectKey** | **string** | The project key | 
**repositorySlug** | **string** | The repository slug | 
**commitId** | **string** | The commit ID. This must be a full 40 character commit hash | 
**reportKey** | **string** | A unique string representing the report as chosen by the reporter. This should be unique enough to not clash with other report&#39;s keys. To do this, we recommend namespacing the key using reverse DNS.  | 
**externalId** | **string** | The external ID of the annotation that is to be updated or created | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpdateAnnotationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------





 **annotation** | [**Annotation**](Annotation.md) |  | 

### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateReport

> Report UpdateReport(ctx, projectKey, repositorySlug, commitId, reportKey).Report(report).Execute()

Create a new insight report, or replace the existing one.



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    projectKey := "projectKey_example" // string | The project key
    repositorySlug := "repositorySlug_example" // string | The repository slug
    commitId := "commitId_example" // string | The commit ID. This must be a full 40 character commit hash
    reportKey := "reportKey_example" // string | A unique string representing the report as chosen by the reporter. This should be unique enough to not clash with other report's keys. To do this, we recommend namespacing the key using reverse DNS. 
    report := *openapiclient.NewReport("Title_example") // Report | 

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.InsightsApi.UpdateReport(context.Background(), projectKey, repositorySlug, commitId, reportKey).Report(report).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `InsightsApi.UpdateReport``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UpdateReport`: Report
    fmt.Fprintf(os.Stdout, "Response from `InsightsApi.UpdateReport`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**projectKey** | **string** | The project key | 
**repositorySlug** | **string** | The repository slug | 
**commitId** | **string** | The commit ID. This must be a full 40 character commit hash | 
**reportKey** | **string** | A unique string representing the report as chosen by the reporter. This should be unique enough to not clash with other report&#39;s keys. To do this, we recommend namespacing the key using reverse DNS.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpdateReportRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




 **report** | [**Report**](Report.md) |  | 

### Return type

[**Report**](Report.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

