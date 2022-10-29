import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    func testLoadingLookupTableFromDisk() throws {
        //When
        //let crackStation = CrackStation.CrackStation()
        let lookupTable = try CrackStation.loadDictionaryFromDisk()
        let answer = lookupTable["kJ"]
        //print(lookupTable)
        //print(answer)
        //Then
        XCTAssertEqual(answer, "ebf46618066c3b6fca4dd4d020f99849da52b8de")
        
    }
}
