# Error

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Context** | **NullableString** | The context attribute indicates which parameter or request entity attribute failed validation. Note that the context may be null.  | 
**Message** | **string** | Error description | 
**ExceptionName** | **NullableString** |  | 

## Methods

### NewError

`func NewError(context NullableString, message string, exceptionName NullableString, ) *Error`

NewError instantiates a new Error object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewErrorWithDefaults

`func NewErrorWithDefaults() *Error`

NewErrorWithDefaults instantiates a new Error object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetContext

`func (o *Error) GetContext() string`

GetContext returns the Context field if non-nil, zero value otherwise.

### GetContextOk

`func (o *Error) GetContextOk() (*string, bool)`

GetContextOk returns a tuple with the Context field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContext

`func (o *Error) SetContext(v string)`

SetContext sets Context field to given value.


### SetContextNil

`func (o *Error) SetContextNil(b bool)`

 SetContextNil sets the value for Context to be an explicit nil

### UnsetContext
`func (o *Error) UnsetContext()`

UnsetContext ensures that no value is present for Context, not even an explicit nil
### GetMessage

`func (o *Error) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *Error) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *Error) SetMessage(v string)`

SetMessage sets Message field to given value.


### GetExceptionName

`func (o *Error) GetExceptionName() string`

GetExceptionName returns the ExceptionName field if non-nil, zero value otherwise.

### GetExceptionNameOk

`func (o *Error) GetExceptionNameOk() (*string, bool)`

GetExceptionNameOk returns a tuple with the ExceptionName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExceptionName

`func (o *Error) SetExceptionName(v string)`

SetExceptionName sets ExceptionName field to given value.


### SetExceptionNameNil

`func (o *Error) SetExceptionNameNil(b bool)`

 SetExceptionNameNil sets the value for ExceptionName to be an explicit nil

### UnsetExceptionName
`func (o *Error) UnsetExceptionName()`

UnsetExceptionName ensures that no value is present for ExceptionName, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


