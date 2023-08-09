import XCTest


@testable import TrekkingApi

final class TrekkingIosLibTests: XCTestCase {
    
    
    // Advevnture tests
    func testFindAdventures() {
        
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        AdventuresAPI.adventuresFind(
            adventuresQuery: AdventuresQuery(
                maxItemCount: 1,
                fields: Int(AdventuresQueryFieldsBitwise.BaseInfo.bitmask() | AdventuresQueryFieldsBitwise.UserInfo.bitmask() | AdventuresQueryFieldsBitwise.CategoryInfo.bitmask() | AdventuresQueryFieldsBitwise.GeoInfo.bitmask())
                
            ), lang: AdventureLanguageEnum.German) { data, error in
                
                guard error == nil else {
                    
                    XCTFail(error.debugDescription)
                   
                    return
                }

                expectation.fulfill()
                
                res = (data!.items!.count == 1)
            
        }
        
        waitForExpectations(timeout: 10.0, handler: nil)

        XCTAssertEqual(res, true)
        
        
    }
    
    func testFind() {
        
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        GeoAPI.geoFind(city: "zlatibor", completion: { data, error in
            guard error == nil else {
                
                XCTFail(error.debugDescription)
               
                return
            }

            expectation.fulfill()
            
            res = (data!.count == 2)
        })
        
        waitForExpectations(timeout: 10.0, handler: nil)

        XCTAssertEqual(res, true)
        
        
    }
    
    // profile tests
    func testUpdateUserPhoto() {
        
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        let image = URL(fileURLWithPath: "/Users/nikola/projects/shinyflake/shinyflake.ios.lib/Tests/1517252093703.jpeg")
        
        AuthAPI.authenticate(userCredentials: UserCredentials(email: "nikola@pregmatch.org", password: "")) { data, error in
            
            let jsonData = data?.data(using: .utf8)!
            let blogPost: String = try! JSONDecoder().decode(String.self, from: jsonData!)
            
            TrekkingApiAPI.customHeaders["Authorization"] = "Bearer " + blogPost
            
            AuthUserAPI.authUserUpdatePhoto(photo: image, completion: { data, error in
                guard error == nil else {
                    
                    XCTFail(error.debugDescription)
                    
                    return
                }
                
                expectation.fulfill()
                
                res = (data != nil)
            })
            
            
            
        }
        
        waitForExpectations(timeout: 10.0, handler: nil)
        
        XCTAssertEqual(res, true)
        
        
    }
    
    // profile tests
    func testFollowUser() {
        
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        
        AuthAPI.authenticate(userCredentials: UserCredentials(email: "nikola@pregmatch.org", password: "")) { data, error in
            
            let jsonData = data?.data(using: .utf8)!
            let blogPost: String = try! JSONDecoder().decode(String.self, from: jsonData!)
            
            TrekkingApiAPI.customHeaders["Authorization"] = "Bearer " + blogPost
            
            AuthUserAPI.authUserFollowUser(userId: "396d5f5c-3f69-4afd-ad8b-d2f5c5c66387", action: true, completion: { data, error in
                
                guard error == nil else {
                    
                    XCTFail(error.debugDescription)
                    
                    return
                }
                
                expectation.fulfill()
                
                res = (data != nil)
                
            })
            
            
        }
        
        waitForExpectations(timeout: 10.0, handler: nil)
        
        XCTAssertEqual(res, true)
        
        
    }
    
    func testGetUserFollowers() {
        
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        
        AdventuresAPI.adventuresGetUserFollowers(userId: "396d5f5c-3f69-4afd-ad8b-d2f5c5c66387", completion: { data, error in
            
            guard error == nil else {
                
                XCTFail(error.debugDescription)
                
                return
            }
            
            expectation.fulfill()
            
            res = (data!.count > 0)
            
        })
        
        waitForExpectations(timeout: 10.0, handler: nil)
        
        XCTAssertEqual(res, true)
        
        
    }
    
    func testFindSugesstions() {
        
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        let q = FindQuery(text: "nik", suggestionType: SearchSuggestionType.User, lang: AdventureLanguageEnum.English)
        
        GeoAPI.geoFindGlobal(query: q, completion: { data, error in
            
            guard error == nil else {
                
                XCTFail(error.debugDescription)
                
                return
            }
            
            expectation.fulfill()
            
            res = (data!.users.count > 0)
            
        })
        
        waitForExpectations(timeout: 10.0, handler: nil)
        
        XCTAssertEqual(res, true)
        
        
    }
    
    func testGetUserFollowing() {
        
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        
        AdventuresAPI.adventuresGetUserFollowing(userId: "fb6e595a-e577-43bf-bac8-4ca6321d41ff", completion: { data, error in
            
            guard error == nil else {
                
                XCTFail(error.debugDescription)
                
                return
            }
            
            expectation.fulfill()
            
            res = (data!.count > 0)
            
        })
        
        waitForExpectations(timeout: 10.0, handler: nil)
        
        XCTAssertEqual(res, true)
        
        
    }
    
    func testGetUserAdventureProfile() {
        
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        
        AdventuresAPI.adventuresGetUser(id: "fd05a6f0-0b77-4503-85e3-7c6dbdd2122d", lang: AdventureLanguageEnum.English, completion: { data, error in
            
            guard error == nil else {
                
                XCTFail(error.debugDescription)
                
                return
            }
            
            expectation.fulfill()
            
            res = (data!.adventures.count > 0)
            
        })
        
        waitForExpectations(timeout: 10.0, handler: nil)
        
        XCTAssertEqual(res, true)
        
        
    }
    
    // register test
    func testRegister() {
        
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        let image = URL(fileURLWithPath: "/Users/nikola/projects/shinyflake/shinyflake.ios.lib/Tests/1517252093703.jpeg")
        
       
        let model = UserModel(
            role: UserRole.RegularUser,
            password: "",
            photo: image,
            email: "nina@shinyflake.me",
            firstName: "Nikolina",
            lastname: "Curic",
            title: "Dosada nevidjena!",
            deviceType: UserDeviceType.Iphone,
            shareProfile: false,
            shareActivities: false,
            syncStatus: true
            
        )
        AuthAPI.register(
            role: model.role,
            password: model.password,
            photo: model.photo,
            email: model.email,
            firstName: model.firstName,
            lastname: model.lastname,
            title: model.title,
            deviceType: model.deviceType,
            shareProfile: model.shareProfile,
            shareActivities: model.shareActivities,
            syncStatus: model.syncStatus,
            
            completion: { data, error in
            guard error == nil else {
                
                XCTFail(error.debugDescription)
                
                return
            }
            
            expectation.fulfill()
            
            res = (data != nil)
        })
        
        waitForExpectations(timeout: 10.0, handler: nil)
        
        XCTAssertEqual(res, true)
        
        
    }
    
    // profile tests
    func testGetUserBookmarks() {
        
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        
        AuthAPI.authenticate(userCredentials: UserCredentials(email: "nikola@pregmatch.org", password: "")) { data, error in
            
            let jsonData = data?.data(using: .utf8)!
            let blogPost: String = try! JSONDecoder().decode(String.self, from: jsonData!)
            
            TrekkingApiAPI.customHeaders["Authorization"] = "Bearer " + blogPost
            AuthUserAPI.authUserBookmarks { data, error in
                guard error == nil else {
                    
                    XCTFail(error.debugDescription)
                    
                    return
                }
                
                expectation.fulfill()
                
                res = (data != nil)
            }
            
            
            
        }
        
        waitForExpectations(timeout: 10.0, handler: nil)
        
        XCTAssertEqual(res, true)
        
        
    }
    
    func testGetUserDowloads() {
        
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        
        AuthAPI.authenticate(userCredentials: UserCredentials(email: "nikola@pregmatch.org", password: "")) { data, error in
            
            let jsonData = data?.data(using: .utf8)!
            let blogPost: String = try! JSONDecoder().decode(String.self, from: jsonData!)
            
            TrekkingApiAPI.customHeaders["Authorization"] = "Bearer " + blogPost
            AuthUserAPI.authUserDownloads { data, error in
                guard error == nil else {
                    
                    XCTFail(error.debugDescription)
                    
                    return
                }
                
                expectation.fulfill()
                
                res = (data!.count == 0)
            }
            
            
            
        }
        
        waitForExpectations(timeout: 10.0, handler: nil)
        
        XCTAssertEqual(res, true)
        
        
    }
    
    func testUserDowload() {
        
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        
        AuthAPI.authenticate(userCredentials: UserCredentials(email: "nikola@pregmatch.org", password: "")) { data, error in
            
            let jsonData = data?.data(using: .utf8)!
            let blogPost: String = try! JSONDecoder().decode(String.self, from: jsonData!)
            
            TrekkingApiAPI.customHeaders["Authorization"] = "Bearer " + blogPost
            AuthUserAPI.authUserDownload(id: "7e786b8d-e55d-47b0-9572-2ca704fecd57") { data, error in
                guard error == nil else {
                    
                    XCTFail(error.debugDescription)
                    
                    return
                }
                
                expectation.fulfill()
                
                res = (data! == true)
            }
            
            
            
        }
        
        waitForExpectations(timeout: 10.0, handler: nil)
        
        XCTAssertEqual(res, true)
        
        
    }
}
