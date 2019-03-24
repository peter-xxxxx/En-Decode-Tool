//
//  En_Decode_ToolTests.swift
//  En-Decode ToolTests
//
//  Created by Peter XU on 3/23/19.
//  Copyright © 2019 Peter XU. All rights reserved.
//

import XCTest
@testable import En_Decode_Tool

class En_Decode_ToolTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        print(MyEncode("fffsdfez拉链拉不上"))
        print(MyDecode("即即即河生即知典供狂末入提边供狂末祇行严祇行今"))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
