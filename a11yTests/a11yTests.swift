//
//  a11yTests.swift
//  a11yTests
//
//  Created by Parth Parikh on 5/5/23.
//

//import GTXiLib
@testable import a11y
import GTXiLib
import SwiftUI
import ViewInspector
import XCTest


final class a11yTests: XCTestCase {
  
  var game: ContentView!
  override func setUpWithError() throws  {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    let checksToBeInstalled: [GTXChecking] = GTXChecksCollection.allGTXChecks()
    let tmp = GTXTestSuite.init(allTestsIn: a11yTests.self)
    GTXiLib.install(on: tmp ?? GTXTestSuite(), checks: checksToBeInstalled, elementExcludeLists: [])
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testExample() throws {
    //      let contentView = ContentView()
    
    let subject = ContentView()
    let text = try subject.inspect().vStack().text(1).string()
    let image = try subject.inspect().vStack().image(0).actualImage()
    let circle = try subject.inspect().vStack().accessibilityLabel()
    XCTAssertEqual(image, Image(systemName: "globe"))
    XCTAssertEqual(text, "Hello, world!")
    XCTAssertTrue(Circle().accessibilityElement() as! Bool)
    //      let matcher = grey_accessibilityID("signInWithEmailButton")
    //      let action = grey_typeText("Sample Swift Test")
    //      let assertionMatcher = grey_text("Sample Swift Test")
    //      EarlGrey.selectElement(with: matcher)
    //        .perform(action)
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    // Any test you write for XCTest can be annotated as throws and async.
    // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
    // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
  }
}
