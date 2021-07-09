# Annotation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Path** | **string** | The path of the file on which this annotation should be placed. This is the path of the file relative to the git repository  | 
**Line** | **int32** | The line number that the annotation should belong to. For file-level annotations, the line number should be 0  | 
**Message** | **string** | The message to display to users. The maximum length accepted is 2000 characters, however the user interface may truncate this value for display purposes. We recommend that the message is short and succinct, with further details available to the user if needed on the page linked to by the the annotation link.  | 
**Severity** | **string** | The severity of the annotation | 
**Link** | Pointer to **string** | An http or https URL representing the location of the annotation in the external tool | [optional] 
**Type** | Pointer to **string** | The type of annotation posted | [optional] 
**ExternalId** | Pointer to **string** | If the caller requires a link to get or modify this annotation, then an ID must be provided. It is not used or required by Bitbucket, but only by the annotation creator for updating or deleting this specific annotation.  | [optional] 

## Methods

### NewAnnotation

`func NewAnnotation(path string, line int32, message string, severity string, ) *Annotation`

NewAnnotation instantiates a new Annotation object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAnnotationWithDefaults

`func NewAnnotationWithDefaults() *Annotation`

NewAnnotationWithDefaults instantiates a new Annotation object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPath

`func (o *Annotation) GetPath() string`

GetPath returns the Path field if non-nil, zero value otherwise.

### GetPathOk

`func (o *Annotation) GetPathOk() (*string, bool)`

GetPathOk returns a tuple with the Path field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPath

`func (o *Annotation) SetPath(v string)`

SetPath sets Path field to given value.


### GetLine

`func (o *Annotation) GetLine() int32`

GetLine returns the Line field if non-nil, zero value otherwise.

### GetLineOk

`func (o *Annotation) GetLineOk() (*int32, bool)`

GetLineOk returns a tuple with the Line field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLine

`func (o *Annotation) SetLine(v int32)`

SetLine sets Line field to given value.


### GetMessage

`func (o *Annotation) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *Annotation) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *Annotation) SetMessage(v string)`

SetMessage sets Message field to given value.


### GetSeverity

`func (o *Annotation) GetSeverity() string`

GetSeverity returns the Severity field if non-nil, zero value otherwise.

### GetSeverityOk

`func (o *Annotation) GetSeverityOk() (*string, bool)`

GetSeverityOk returns a tuple with the Severity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSeverity

`func (o *Annotation) SetSeverity(v string)`

SetSeverity sets Severity field to given value.


### GetLink

`func (o *Annotation) GetLink() string`

GetLink returns the Link field if non-nil, zero value otherwise.

### GetLinkOk

`func (o *Annotation) GetLinkOk() (*string, bool)`

GetLinkOk returns a tuple with the Link field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLink

`func (o *Annotation) SetLink(v string)`

SetLink sets Link field to given value.

### HasLink

`func (o *Annotation) HasLink() bool`

HasLink returns a boolean if a field has been set.

### GetType

`func (o *Annotation) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *Annotation) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *Annotation) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *Annotation) HasType() bool`

HasType returns a boolean if a field has been set.

### GetExternalId

`func (o *Annotation) GetExternalId() string`

GetExternalId returns the ExternalId field if non-nil, zero value otherwise.

### GetExternalIdOk

`func (o *Annotation) GetExternalIdOk() (*string, bool)`

GetExternalIdOk returns a tuple with the ExternalId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExternalId

`func (o *Annotation) SetExternalId(v string)`

SetExternalId sets ExternalId field to given value.

### HasExternalId

`func (o *Annotation) HasExternalId() bool`

HasExternalId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


