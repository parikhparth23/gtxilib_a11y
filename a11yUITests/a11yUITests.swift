//
//  a11yUITests.swift
//  a11yUITests
//
//  Created by Parth Parikh on 5/5/23.
//

import GTXiLib
import XCTest

final class a11yUITests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    let checksToBeInstalled: [GTXChecking] = GTXChecksCollection.allGTXChecks()
    let tmp = GTXTestSuite.init(allTestsIn: a11yUITests.self)
    GTXiLib.install(on: tmp ?? GTXTestSuite(), checks: checksToBeInstalled, elementExcludeLists: [])
    // In UI tests it is usually best to stop immediately when a failure occurs.
    //        continueAfterFailure = false
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testExample() throws {
    // UI tests must launch the application that they test.
    let app = XCUIApplication()
    app.launch()
    XCTAssertTrue(app.staticTexts["Hello, world!"].exists)
    app.staticTexts["Hello, world!"].accessibilityElementIsFocused()
    // Use XCTAssert and related functions to verify your tests produce the correct results.
  }
  
//  func testLaunchPerformance() throws {
//    if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//      // This measures how long it takes to launch your application.
//      measure(metrics: [XCTApplicationLaunchMetric()]) {
//        XCUIApplication().launch()
//      }
//    }
//  }
}
