# GeoAPI

All URIs are relative to *https://localhost:5001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geoFind**](GeoAPI.md#geofind) | **GET** /api/v2.0/Geo/Query | 


# **geoFind**
```swift
    open class func geoFind(city: String? = nil, completion: @escaping (_ data: [NominatimResponse]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrekkingApi

let city = "city_example" // String |  (optional)

GeoAPI.geoFind(city: city) { (response, error) in
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
 **city** | **String** |  | [optional] 

### Return type

[**[NominatimResponse]**](NominatimResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

