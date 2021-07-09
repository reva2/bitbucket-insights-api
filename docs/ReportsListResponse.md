# ReportsListResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Size** | **int32** |  | 
**Limit** | Pointer to **int32** |  | [optional] 
**Start** | **int32** |  | 
**IsLastPage** | **bool** |  | 
**NextPageStart** | Pointer to **int32** |  | [optional] 
**Values** | [**[]Report**](Report.md) |  | 

## Methods

### NewReportsListResponse

`func NewReportsListResponse(size int32, start int32, isLastPage bool, values []Report, ) *ReportsListResponse`

NewReportsListResponse instantiates a new ReportsListResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewReportsListResponseWithDefaults

`func NewReportsListResponseWithDefaults() *ReportsListResponse`

NewReportsListResponseWithDefaults instantiates a new ReportsListResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSize

`func (o *ReportsListResponse) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *ReportsListResponse) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *ReportsListResponse) SetSize(v int32)`

SetSize sets Size field to given value.


### GetLimit

`func (o *ReportsListResponse) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *ReportsListResponse) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *ReportsListResponse) SetLimit(v int32)`

SetLimit sets Limit field to given value.

### HasLimit

`func (o *ReportsListResponse) HasLimit() bool`

HasLimit returns a boolean if a field has been set.

### GetStart

`func (o *ReportsListResponse) GetStart() int32`

GetStart returns the Start field if non-nil, zero value otherwise.

### GetStartOk

`func (o *ReportsListResponse) GetStartOk() (*int32, bool)`

GetStartOk returns a tuple with the Start field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStart

`func (o *ReportsListResponse) SetStart(v int32)`

SetStart sets Start field to given value.


### GetIsLastPage

`func (o *ReportsListResponse) GetIsLastPage() bool`

GetIsLastPage returns the IsLastPage field if non-nil, zero value otherwise.

### GetIsLastPageOk

`func (o *ReportsListResponse) GetIsLastPageOk() (*bool, bool)`

GetIsLastPageOk returns a tuple with the IsLastPage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsLastPage

`func (o *ReportsListResponse) SetIsLastPage(v bool)`

SetIsLastPage sets IsLastPage field to given value.


### GetNextPageStart

`func (o *ReportsListResponse) GetNextPageStart() int32`

GetNextPageStart returns the NextPageStart field if non-nil, zero value otherwise.

### GetNextPageStartOk

`func (o *ReportsListResponse) GetNextPageStartOk() (*int32, bool)`

GetNextPageStartOk returns a tuple with the NextPageStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNextPageStart

`func (o *ReportsListResponse) SetNextPageStart(v int32)`

SetNextPageStart sets NextPageStart field to given value.

### HasNextPageStart

`func (o *ReportsListResponse) HasNextPageStart() bool`

HasNextPageStart returns a boolean if a field has been set.

### GetValues

`func (o *ReportsListResponse) GetValues() []Report`

GetValues returns the Values field if non-nil, zero value otherwise.

### GetValuesOk

`func (o *ReportsListResponse) GetValuesOk() (*[]Report, bool)`

GetValuesOk returns a tuple with the Values field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValues

`func (o *ReportsListResponse) SetValues(v []Report)`

SetValues sets Values field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


