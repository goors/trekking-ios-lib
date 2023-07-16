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
}
