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

    func testdecryptSHA1A() throws {
        let shaHash = "ebf46618066c3b6fca4dd4d020f99849da52b8de"
        let crackStationInstance = CrackStation()
        let answer = try crackStationInstance.decrypt(shaHash: shaHash)

        //print(shaHash, answer)

        XCTAssertEqual(answer, "kJ")
    }

    func testdecryptSHA1B() throws {
        let shaHash = "41f8fc99dc7f46f151d746638620059170c45a03"
        let crackStationInstance = CrackStation()
        let answer = try crackStationInstance.decrypt(shaHash: shaHash)

        //print(shaHash, answer)

        XCTAssertEqual(answer, "zgf")
    }


    func testdecryptSHA2A() throws {
        let shaHash = "6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b"
        let crackStationInstance = CrackStation()
        let answer = try crackStationInstance.decrypt(shaHash: shaHash)

        //print(shaHash, answer)

        XCTAssertEqual(answer, "1")
    }

    func testdecryptSHA2B() throws {
        let shaHash = "46874106f9ac7f3b68a422895aa223e1ea5ed0db860f179f6362cb166c65f8ca"
        let crackStationInstance = CrackStation()
        let answer = try crackStationInstance.decrypt(shaHash: shaHash)

        //print(shaHash, answer)

        XCTAssertEqual(answer, "kj")
    }

    func testdecryptSHA2C() throws {
        let shaHash = "6dd7239dfad7763ca7310efdf6c0459c5a8169b80ef3f6ee772a269062a96775"
        let crackStationInstance = CrackStation()
        let answer = try crackStationInstance.decrypt(shaHash: shaHash)

        //print(shaHash, answer)

        XCTAssertEqual(answer, "zgf")
    }
}
