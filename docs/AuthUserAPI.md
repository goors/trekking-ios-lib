# AuthUserAPI

All URIs are relative to *https://localhost:5001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authUserChangePassword**](AuthUserAPI.md#authuserchangepassword) | **PUT** /api/v2.0/AuthUser/Password | 
[**authUserDeleteProfile**](AuthUserAPI.md#authuserdeleteprofile) | **DELETE** /api/v2.0/AuthUser | 
[**authUserGetAdventureIds**](AuthUserAPI.md#authusergetadventureids) | **GET** /api/v2.0/AuthUser/Adventures/Ids | 
[**authUserGetContext**](AuthUserAPI.md#authusergetcontext) | **GET** /api/v2.0/AuthUser/Context | 
[**authUserGetProfile**](AuthUserAPI.md#authusergetprofile) | **GET** /api/v2.0/AuthUser/Profile | 
[**authUserUpdateDeviceId**](AuthUserAPI.md#authuserupdatedeviceid) | **PUT** /api/v2.0/AuthUser/DeviceId | 
[**authUserUpdatePhoto**](AuthUserAPI.md#authuserupdatephoto) | **POST** /api/v2.0/AuthUser/Photo | 
[**authUserUpdateProfile**](AuthUserAPI.md#authuserupdateprofile) | **PUT** /api/v2.0/AuthUser/Profile | 
[**authUserUpdateWantsNews**](AuthUserAPI.md#authuserupdatewantsnews) | **PUT** /api/v2.0/AuthUser/News | 


# **authUserChangePassword**
```swift
    open class func authUserChangePassword(body: String, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let body = "body_example" // String | 

AuthUserAPI.authUserChangePassword(body: body) { (response, error) in
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

**Bool**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUserDeleteProfile**
```swift
    open class func authUserDeleteProfile(completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi


AuthUserAPI.authUserDeleteProfile() { (response, error) in
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

**Bool**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUserGetAdventureIds**
```swift
    open class func authUserGetAdventureIds(completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi


AuthUserAPI.authUserGetAdventureIds() { (response, error) in
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

**[String]**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUserGetContext**
```swift
    open class func authUserGetContext(completion: @escaping (_ data: UserContextModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi


AuthUserAPI.authUserGetContext() { (response, error) in
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

[**UserContextModel**](UserContextModel.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUserGetProfile**
```swift
    open class func authUserGetProfile(completion: @escaping (_ data: UserModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi


AuthUserAPI.authUserGetProfile() { (response, error) in
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

[**UserModel**](UserModel.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUserUpdateDeviceId**
```swift
    open class func authUserUpdateDeviceId(userUpdateDeviceId: UserUpdateDeviceId, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let userUpdateDeviceId = UserUpdateDeviceId(deviceId: "deviceId_example", deviceType: UserDeviceType()) // UserUpdateDeviceId | 

AuthUserAPI.authUserUpdateDeviceId(userUpdateDeviceId: userUpdateDeviceId) { (response, error) in
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

**Bool**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUserUpdatePhoto**
```swift
    open class func authUserUpdatePhoto(photo: URL? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let photo = URL(string: "https://example.com")! // URL |  (optional)

AuthUserAPI.authUserUpdatePhoto(photo: photo) { (response, error) in
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
 **photo** | **URL** |  | [optional] 

### Return type

**String**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUserUpdateProfile**
```swift
    open class func authUserUpdateProfile(userModel: UserModel, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let userModel = UserModel(id: "id_example", createdAt: Date(), updatedAt: Date(), role: UserRole(), password: "password_example", photo: URL(string: "https://example.com")!, email: "email_example", firstName: "firstName_example", lastname: "lastname_example", news: false, title: "title_example", deviceId: "deviceId_example", deviceType: UserDeviceType(), photoId: "photoId_example", shareProfile: false, shareActivities: false, syncStatus: false) // UserModel | 

AuthUserAPI.authUserUpdateProfile(userModel: userModel) { (response, error) in
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
 **userModel** | [**UserModel**](UserModel.md) |  | 

### Return type

**Bool**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUserUpdateWantsNews**
```swift
    open class func authUserUpdateWantsNews(body: Bool, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let body = true // Bool | 

AuthUserAPI.authUserUpdateWantsNews(body: body) { (response, error) in
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
 **body** | **Bool** |  | 

### Return type

**Bool**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

