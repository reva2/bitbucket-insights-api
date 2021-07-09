# Report

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **string** | A short string representing the name of the report | 
**Details** | Pointer to **string** | A string to describe the purpose of the report. This string may contain escaped newlines and if it does it will display the content accordingly.  | [optional] 
**Result** | Pointer to **string** | Indicates whether the report is in a passed or failed state | [optional] 
**Reporter** | Pointer to **string** | A string to describe the tool or company who created the report | [optional] 
**Link** | Pointer to **string** | A URL linking to the results of the report in an external tool. Must be a valid http or https URL  | [optional] 
**LogoUrl** | Pointer to **string** | A URL to the report logo. If none is provided, the default insights logo will be used. Must be a valid http or https URL  | [optional] 

## Methods

### NewReport

`func NewReport(title string, ) *Report`

NewReport instantiates a new Report object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewReportWithDefaults

`func NewReportWithDefaults() *Report`

NewReportWithDefaults instantiates a new Report object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTitle

`func (o *Report) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *Report) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *Report) SetTitle(v string)`

SetTitle sets Title field to given value.


### GetDetails

`func (o *Report) GetDetails() string`

GetDetails returns the Details field if non-nil, zero value otherwise.

### GetDetailsOk

`func (o *Report) GetDetailsOk() (*string, bool)`

GetDetailsOk returns a tuple with the Details field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDetails

`func (o *Report) SetDetails(v string)`

SetDetails sets Details field to given value.

### HasDetails

`func (o *Report) HasDetails() bool`

HasDetails returns a boolean if a field has been set.

### GetResult

`func (o *Report) GetResult() string`

GetResult returns the Result field if non-nil, zero value otherwise.

### GetResultOk

`func (o *Report) GetResultOk() (*string, bool)`

GetResultOk returns a tuple with the Result field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResult

`func (o *Report) SetResult(v string)`

SetResult sets Result field to given value.

### HasResult

`func (o *Report) HasResult() bool`

HasResult returns a boolean if a field has been set.

### GetReporter

`func (o *Report) GetReporter() string`

GetReporter returns the Reporter field if non-nil, zero value otherwise.

### GetReporterOk

`func (o *Report) GetReporterOk() (*string, bool)`

GetReporterOk returns a tuple with the Reporter field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReporter

`func (o *Report) SetReporter(v string)`

SetReporter sets Reporter field to given value.

### HasReporter

`func (o *Report) HasReporter() bool`

HasReporter returns a boolean if a field has been set.

### GetLink

`func (o *Report) GetLink() string`

GetLink returns the Link field if non-nil, zero value otherwise.

### GetLinkOk

`func (o *Report) GetLinkOk() (*string, bool)`

GetLinkOk returns a tuple with the Link field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLink

`func (o *Report) SetLink(v string)`

SetLink sets Link field to given value.

### HasLink

`func (o *Report) HasLink() bool`

HasLink returns a boolean if a field has been set.

### GetLogoUrl

`func (o *Report) GetLogoUrl() string`

GetLogoUrl returns the LogoUrl field if non-nil, zero value otherwise.

### GetLogoUrlOk

`func (o *Report) GetLogoUrlOk() (*string, bool)`

GetLogoUrlOk returns a tuple with the LogoUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLogoUrl

`func (o *Report) SetLogoUrl(v string)`

SetLogoUrl sets LogoUrl field to given value.

### HasLogoUrl

`func (o *Report) HasLogoUrl() bool`

HasLogoUrl returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


