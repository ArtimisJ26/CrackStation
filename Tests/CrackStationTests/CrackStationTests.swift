import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    func testLoadingLookupTableFromDisk() throws {
        //When
        let lookupTable = try CrackStation.loadDictionaryFromDisk()
        let answer = lookupTable["ebf46618066c3b6fca4dd4d020f99849da52b8de"]
        //print(lookupTable)
        //print(answer)

        //Then
        XCTAssertEqual(answer, "kJ")
        
    }

    func testdecrypt() throws {
        let shaHash = "ebf46618066c3b6fca4dd4d020f99849da52b8de"
        let crackStationInstance = CrackStation()
        let answer = try crackStationInstance.decrypt(shaHash: shaHash)

        XCTAssertEqual(answer, "kJ")
    }
}
