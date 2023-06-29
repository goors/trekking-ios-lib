//
// GeoAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GeoAPI {

    /**

     - parameter city: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func geoFind(city: String? = nil, apiResponseQueue: DispatchQueue = TrekkingApiAPI.apiResponseQueue, completion: @escaping ((_ data: [NominatimResponse]?, _ error: Error?) -> Void)) -> RequestTask {
        return geoFindWithRequestBuilder(city: city).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /api/v2.0/Geo/Query
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: JWT
     - parameter city: (query)  (optional)
     - returns: RequestBuilder<[NominatimResponse]> 
     */
    open class func geoFindWithRequestBuilder(city: String? = nil) -> RequestBuilder<[NominatimResponse]> {
        let localVariablePath = "/api/v2.0/Geo/Query"
        let localVariableURLString = TrekkingApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "city": (wrappedValue: city?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[NominatimResponse]>.Type = TrekkingApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
    
    /**

     - parameter id: (path)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func geoGetCountries(id: String, apiResponseQueue: DispatchQueue = TrekkingApiAPI.apiResponseQueue, completion: @escaping ((_ data: CountryModel?, _ error: Error?) -> Void)) -> RequestTask {
        return geoGetCountriesWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /api/v2.0/Geo/Countries/{id}
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: JWT
     - parameter id: (path)
     - returns: RequestBuilder<CountryModel>
     */
    open class func geoGetCountriesWithRequestBuilder(id: String) -> RequestBuilder<CountryModel> {
        var localVariablePath = "/api/v2.0/Geo/Countries/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = TrekkingApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CountryModel>.Type = TrekkingApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func geoGetCountriesAll(apiResponseQueue: DispatchQueue = TrekkingApiAPI.apiResponseQueue, completion: @escaping ((_ data: [CountryModel]?, _ error: Error?) -> Void)) -> RequestTask {
        return geoGetCountriesAllWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /api/v2.0/Geo/Countries/All
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: JWT
     - returns: RequestBuilder<[CountryModel]>
     */
    open class func geoGetCountriesAllWithRequestBuilder() -> RequestBuilder<[CountryModel]> {
        let localVariablePath = "/api/v2.0/Geo/Countries/All"
        let localVariableURLString = TrekkingApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[CountryModel]>.Type = TrekkingApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
