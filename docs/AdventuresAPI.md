# AdventuresAPI

All URIs are relative to *https://localhost:5001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adventuresCreate**](AdventuresAPI.md#adventurescreate) | **POST** /api/v2.0/Adventures | 
[**adventuresDelete**](AdventuresAPI.md#adventuresdelete) | **DELETE** /api/v2.0/Adventures/{id} | 
[**adventuresFind**](AdventuresAPI.md#adventuresfind) | **PUT** /api/v2.0/Adventures/Query | 
[**adventuresFindUsers**](AdventuresAPI.md#adventuresfindusers) | **PUT** /api/v2.0/Adventures/Query/Users | 
[**adventuresGet**](AdventuresAPI.md#adventuresget) | **GET** /api/v2.0/Adventures/{id} | 
[**adventuresGet2**](AdventuresAPI.md#adventuresget2) | **GET** /api/v2.0/Adventures/Photo/{id}/{photoId} | 
[**adventuresGetActivityRecords**](AdventuresAPI.md#adventuresgetactivityrecords) | **GET** /api/v2.0/Adventures/ActivityRecords/{id} | 
[**adventuresGetAltitudes**](AdventuresAPI.md#adventuresgetaltitudes) | **GET** /api/v2.0/Adventures/Altitudes/{id} | 
[**adventuresGetCategories**](AdventuresAPI.md#adventuresgetcategories) | **GET** /api/v2.0/Adventures/Options/Categories | 
[**adventuresGetIcon**](AdventuresAPI.md#adventuresgeticon) | **GET** /api/v2.0/Adventures/Options/Categories/Icon/{icon} | 
[**adventuresGetPrivate**](AdventuresAPI.md#adventuresgetprivate) | **GET** /api/v2.0/Adventures/{id}/private | 
[**adventuresGetTrekk**](AdventuresAPI.md#adventuresgettrekk) | **GET** /api/v2.0/Adventures/Trekks/{id}/{trekId} | 
[**adventuresPublish**](AdventuresAPI.md#adventurespublish) | **PUT** /api/v2.0/Adventures/Publish/{id} | 
[**adventuresUpdate**](AdventuresAPI.md#adventuresupdate) | **PUT** /api/v2.0/Adventures/{id} | 
[**adventuresUploadPhoto**](AdventuresAPI.md#adventuresuploadphoto) | **PUT** /api/v2.0/Adventures/{id}/Photos | 
[**adventuresUploadTrack**](AdventuresAPI.md#adventuresuploadtrack) | **PUT** /api/v2.0/Adventures/{id}/Trekks | 


# **adventuresCreate**
```swift
    open class func adventuresCreate(adventureModel: AdventureModel, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let adventureModel = AdventureModel(id: "id_example", createdAt: Date(), updatedAt: Date(), title: "title_example", subTitle: "subTitle_example", text: "text_example", coverPhoto: "coverPhoto_example", slug: "slug_example", commentsAllowed: false, isPublished: false, photos: [AdventurePhoto(id: "id_example", position: 123)], videos: ["videos_example"]) // AdventureModel | 

AdventuresAPI.adventuresCreate(adventureModel: adventureModel) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adventureModel** | [**AdventureModel**](AdventureModel.md) |  | 

### Return type

**String**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adventuresDelete**
```swift
    open class func adventuresDelete(id: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let id = "id_example" // String | 

AdventuresAPI.adventuresDelete(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**String**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adventuresFind**
```swift
    open class func adventuresFind(adventuresQuery: AdventuresQuery, completion: @escaping (_ data: EntitySearchResultOfAdventuresLightModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let adventuresQuery = AdventuresQuery(sort: "sort_example", page: 123, pageSize: 123, maxItemCount: 123, text: "text_example", createdTime: SearchQueryRangeOfDateTime(min: Date(), max: Date()), updatedTime: nil, all: false, recommended: false, fields: AdventuresQueryFields()) // AdventuresQuery | 

AdventuresAPI.adventuresFind(adventuresQuery: adventuresQuery) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adventuresQuery** | [**AdventuresQuery**](AdventuresQuery.md) |  | 

### Return type

[**EntitySearchResultOfAdventuresLightModel**](EntitySearchResultOfAdventuresLightModel.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adventuresFindUsers**
```swift
    open class func adventuresFindUsers(usersQuery: UsersQuery, completion: @escaping (_ data: EntitySearchResultOfUserProfileActivity?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let usersQuery = UsersQuery(sort: "sort_example", page: 123, pageSize: 123, maxItemCount: 123, text: "text_example", createdTime: SearchQueryRangeOfDateTime(min: Date(), max: Date()), updatedTime: nil) // UsersQuery | 

AdventuresAPI.adventuresFindUsers(usersQuery: usersQuery) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usersQuery** | [**UsersQuery**](UsersQuery.md) |  | 

### Return type

[**EntitySearchResultOfUserProfileActivity**](EntitySearchResultOfUserProfileActivity.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adventuresGet**
```swift
    open class func adventuresGet(id: String, completion: @escaping (_ data: AdventuresLightModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let id = "id_example" // String | 

AdventuresAPI.adventuresGet(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

[**AdventuresLightModel**](AdventuresLightModel.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adventuresGet2**
```swift
    open class func adventuresGet2(id: String, photoId: String, width: Int? = nil, height: Int? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let id = "id_example" // String | 
let photoId = "photoId_example" // String | 
let width = 987 // Int |  (optional)
let height = 987 // Int |  (optional)

AdventuresAPI.adventuresGet2(id: id, photoId: photoId, width: width, height: height) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **photoId** | **String** |  | 
 **width** | **Int** |  | [optional] 
 **height** | **Int** |  | [optional] 

### Return type

**URL**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adventuresGetActivityRecords**
```swift
    open class func adventuresGetActivityRecords(id: String, completion: @escaping (_ data: [ActivityRecord]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let id = "id_example" // String | 

AdventuresAPI.adventuresGetActivityRecords(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

[**[ActivityRecord]**](ActivityRecord.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adventuresGetAltitudes**
```swift
    open class func adventuresGetAltitudes(id: String, completion: @escaping (_ data: [Double]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let id = "id_example" // String | 

AdventuresAPI.adventuresGetAltitudes(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**[Double]**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adventuresGetCategories**
```swift
    open class func adventuresGetCategories(completion: @escaping (_ data: [AdventureCategory]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi


AdventuresAPI.adventuresGetCategories() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[AdventureCategory]**](AdventureCategory.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adventuresGetIcon**
```swift
    open class func adventuresGetIcon(icon: String, completion: @escaping (_ data: [AdventureCategory]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let icon = "icon_example" // String | 

AdventuresAPI.adventuresGetIcon(icon: icon) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **icon** | **String** |  | 

### Return type

[**[AdventureCategory]**](AdventureCategory.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adventuresGetPrivate**
```swift
    open class func adventuresGetPrivate(id: String, completion: @escaping (_ data: AdventureModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let id = "id_example" // String | 

AdventuresAPI.adventuresGetPrivate(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

[**AdventureModel**](AdventureModel.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adventuresGetTrekk**
```swift
    open class func adventuresGetTrekk(id: String, trekId: String, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let id = "id_example" // String | 
let trekId = "trekId_example" // String | 

AdventuresAPI.adventuresGetTrekk(id: id, trekId: trekId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **trekId** | **String** |  | 

### Return type

**URL**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adventuresPublish**
```swift
    open class func adventuresPublish(id: String, body: Bool, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let id = "id_example" // String | 
let body = true // Bool | 

AdventuresAPI.adventuresPublish(id: id, body: body) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **body** | **Bool** |  | 

### Return type

**Bool**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adventuresUpdate**
```swift
    open class func adventuresUpdate(id: String, adventureModel: AdventureModel, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let id = "id_example" // String | 
let adventureModel = AdventureModel(id: "id_example", createdAt: Date(), updatedAt: Date(), title: "title_example", subTitle: "subTitle_example", text: "text_example", coverPhoto: "coverPhoto_example", slug: "slug_example", commentsAllowed: false, isPublished: false, photos: [AdventurePhoto(id: "id_example", position: 123)], videos: ["videos_example"]) // AdventureModel | 

AdventuresAPI.adventuresUpdate(id: id, adventureModel: adventureModel) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **adventureModel** | [**AdventureModel**](AdventureModel.md) |  | 

### Return type

**Bool**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adventuresUploadPhoto**
```swift
    open class func adventuresUploadPhoto(id: String, photo: URL? = nil, isCover: Bool? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let id = "id_example" // String | 
let photo = URL(string: "https://example.com")! // URL |  (optional)
let isCover = true // Bool |  (optional)

AdventuresAPI.adventuresUploadPhoto(id: id, photo: photo, isCover: isCover) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **photo** | **URL** |  | [optional] 
 **isCover** | **Bool** |  | [optional] 

### Return type

**String**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adventuresUploadTrack**
```swift
    open class func adventuresUploadTrack(id: String, trekk: URL? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let id = "id_example" // String | 
let trekk = URL(string: "https://example.com")! // URL |  (optional)

AdventuresAPI.adventuresUploadTrack(id: id, trekk: trekk) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **trekk** | **URL** |  | [optional] 

### Return type

**String**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

