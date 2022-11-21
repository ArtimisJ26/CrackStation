import Foundation

public class CrackStation: Decrypter {

    private let lookupTable: [String : String]

    public required init() { 
        
        do {
            lookupTable = try CrackStation.loadDictionaryFromDisk()
        }
        catch{ lookupTable = ["":""]}
        
     }
    static func loadDictionaryFromDisk() throws -> [String : String] {
        guard let path = Bundle.module.url(forResource: "hash_dictionary", withExtension: "json") else { return [:] }

        let data = try Data(contentsOf: path)
        let jsonResult = try JSONSerialization.jsonObject(with: data)

        if let lookupTable: Dictionary = jsonResult as? Dictionary<String, String> {
            return lookupTable
        } else {
            return [:]
        }
    }

    public func decrypt(shaHash: String) -> String? {
        //let lookupTable = try? CrackStation.loadDictionaryFromDisk()
        let password = lookupTable[shaHash]

        return password
    }

}