# AuthAPI

All URIs are relative to *https://localhost:5001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDevice**](AuthAPI.md#adddevice) | **POST** /api/v2.0/Auth/Device | 
[**authenticate**](AuthAPI.md#authenticate) | **POST** /api/v2.0/Auth/Authentication | 
[**checkIfEmailExist**](AuthAPI.md#checkifemailexist) | **POST** /api/v2.0/Auth/EmailCheck | 
[**confirmEmail**](AuthAPI.md#confirmemail) | **PUT** /api/v2.0/Auth/EmailConfirm | 
[**getUserPhoto**](AuthAPI.md#getuserphoto) | **GET** /api/v2.0/Auth/Photo/{photoId} | 
[**getUserPhotoByEmail**](AuthAPI.md#getuserphotobyemail) | **POST** /api/v2.0/Auth/Photo | 
[**register**](AuthAPI.md#register) | **POST** /api/v2.0/Auth/Registration | 


# **addDevice**
```swift
    open class func addDevice(userUpdateDeviceId: UserUpdateDeviceId, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let userUpdateDeviceId = UserUpdateDeviceId(deviceId: "deviceId_example", deviceType: UserDeviceType()) // UserUpdateDeviceId | 

AuthAPI.addDevice(userUpdateDeviceId: userUpdateDeviceId) { (response, error) in
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
 **userUpdateDeviceId** | [**UserUpdateDeviceId**](UserUpdateDeviceId.md) |  | 

### Return type

**String**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticate**
```swift
    open class func authenticate(userCredentials: UserCredentials, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let userCredentials = UserCredentials(persistent: false, email: "email_example", password: "password_example") // UserCredentials | 

AuthAPI.authenticate(userCredentials: userCredentials) { (response, error) in
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
 **userCredentials** | [**UserCredentials**](UserCredentials.md) |  | 

### Return type

**String**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkIfEmailExist**
```swift
    open class func checkIfEmailExist(body: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let body = "body_example" // String | 

AuthAPI.checkIfEmailExist(body: body) { (response, error) in
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
 **body** | **String** |  | 

### Return type

**String**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **confirmEmail**
```swift
    open class func confirmEmail(email: String? = nil, token: String? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let email = "email_example" // String |  (optional)
let token = "token_example" // String |  (optional)

AuthAPI.confirmEmail(email: email, token: token) { (response, error) in
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
 **email** | **String** |  | [optional] 
 **token** | **String** |  | [optional] 

### Return type

**Bool**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserPhoto**
```swift
    open class func getUserPhoto(photoId: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let photoId = "photoId_example" // String | 

AuthAPI.getUserPhoto(photoId: photoId) { (response, error) in
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
 **photoId** | **String** |  | 

### Return type

**String**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserPhotoByEmail**
```swift
    open class func getUserPhotoByEmail(body: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let body = "body_example" // String | 

AuthAPI.getUserPhotoByEmail(body: body) { (response, error) in
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
 **body** | **String** |  | 

### Return type

**String**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register**
```swift
    open class func register(role: UserRole? = nil, password: String? = nil, photo: URL? = nil, email: String? = nil, firstName: String? = nil, lastname: String? = nil, news: Bool? = nil, title: String? = nil, deviceId: String? = nil, deviceType: UserDeviceType? = nil, photoId: String? = nil, shareProfile: Bool? = nil, shareActivities: Bool? = nil, syncStatus: Bool? = nil, id: String? = nil, internalDbId: Int64? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let role = UserRole() // UserRole |  (optional)
let password = "password_example" // String |  (optional)
let photo = URL(string: "https://example.com")! // URL |  (optional)
let email = "email_example" // String |  (optional)
let firstName = "firstName_example" // String |  (optional)
let lastname = "lastname_example" // String |  (optional)
let news = true // Bool |  (optional)
let title = "title_example" // String |  (optional)
let deviceId = "deviceId_example" // String |  (optional)
let deviceType = UserDeviceType() // UserDeviceType |  (optional)
let photoId = "photoId_example" // String |  (optional)
let shareProfile = true // Bool |  (optional)
let shareActivities = true // Bool |  (optional)
let syncStatus = true // Bool |  (optional)
let id = "id_example" // String |  (optional)
let internalDbId = 987 // Int64 |  (optional)
let createdAt = Date() // Date |  (optional)
let updatedAt = Date() // Date |  (optional)

AuthAPI.register(role: role, password: password, photo: photo, email: email, firstName: firstName, lastname: lastname, news: news, title: title, deviceId: deviceId, deviceType: deviceType, photoId: photoId, shareProfile: shareProfile, shareActivities: shareActivities, syncStatus: syncStatus, id: id, internalDbId: internalDbId, createdAt: createdAt, updatedAt: updatedAt) { (response, error) in
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
 **role** | [**UserRole**](UserRole.md) |  | [optional] 
 **password** | **String** |  | [optional] 
 **photo** | **URL** |  | [optional] 
 **email** | **String** |  | [optional] 
 **firstName** | **String** |  | [optional] 
 **lastname** | **String** |  | [optional] 
 **news** | **Bool** |  | [optional] 
 **title** | **String** |  | [optional] 
 **deviceId** | **String** |  | [optional] 
 **deviceType** | [**UserDeviceType**](UserDeviceType.md) |  | [optional] 
 **photoId** | **String** |  | [optional] 
 **shareProfile** | **Bool** |  | [optional] 
 **shareActivities** | **Bool** |  | [optional] 
 **syncStatus** | **Bool** |  | [optional] 
 **id** | **String** |  | [optional] 
 **internalDbId** | **Int64** |  | [optional] 
 **createdAt** | **Date** |  | [optional] 
 **updatedAt** | **Date** |  | [optional] 

### Return type

**String**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

