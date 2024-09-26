 
import UIKit
import Realm
import RealmSwift

public class XYZRealmJSONConverter {

    // 将 Realm 对象转换为 JSON 字符串
    public static func realmObjectToJson<T: Object & Codable>(object: T) -> String? {
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601  // 设置日期格式
        do {
            let data = try encoder.encode(object)
            return String(data: data, encoding: .utf8)
        } catch {
            print("Error encoding Realm object to JSON: \(error)")
            return nil
        }
    }

    // 将 JSON 字符串转换为 Realm 对象
    public static func jsonToRealmObject<T: Object & Codable>(json: String, type: T.Type) -> T? {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601  // 设置日期解码格式
        do {
            guard let data = json.data(using: .utf8) else { return nil }
            let object = try decoder.decode(type, from: data)
            return object
        } catch {
            print("Error decoding JSON to Realm object: \(error)")
            return nil
        }
    }

    // 保存 JSON 转换的对象到 Realm
    public static func saveJsonToRealm<T: Object & Codable>(json: String, type: T.Type, realm: Realm = try! Realm()) {
        if let object = jsonToRealmObject(json: json, type: type) {
            do {
                try realm.write {
                    realm.add(object, update: .modified)
                }
                print("Object saved to Realm.")
            } catch {
                print("Error saving object to Realm: \(error)")
            }
        }
    }
}
