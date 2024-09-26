
import UIKit
import Realm
import RealmSwift
import XYZPathKit
import XYZVCX
import Disk

public class XYZRealmManager {

   public static var shared = XYZRealmManager()
   
   // 当前选择的账本名称，默认为 "default2"
   public var currentLedgerName: String = "default"
   
   // 配置账本的 schema 版本
   public func updateRealmDatabase(for ledgerName: String? = nil) {
       // 如果传入了新的账本名称，则更新当前账本名称
       if let ledgerName = ledgerName {
           currentLedgerName = ledgerName
       }
       
       // 获取当前账本文件路径
       let realmURL = getRealmFileURL(for: currentLedgerName)
       
       // 配置 Realm 的 schema 版本和文件路径
       let config = Realm.Configuration(
           fileURL: realmURL,
           schemaVersion: 6)
       
       // 使用此配置打开 Realm
       Realm.Configuration.defaultConfiguration = config
       do {
           let realm = try Realm()
           print("Realm opened: \(realm)")
       } catch {
           print("Error opening Realm: \(error)")
       }
   }
   
   // 获取当前 Realm 文件路径
   var realmPath: Path? {
       guard let url = Realm.Configuration.defaultConfiguration.fileURL else { return nil }
       return Path(url: url)
   }
   
   // 获取当前 Realm 文件 URL
   var realmURL: URL? {
       return realmPath?.url
   }
   
   // 获取特定账本文件路径
     func getRealmFileURL(for ledgerName: String) -> URL {
       let fileName = "\(ledgerName).realm"
       let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
       return documentsURL.appendingPathComponent(fileName)
   }
   
   // 选择账本的功能：传入账本名称，切换到该账本
   public func selectLedger(_ ledgerName: String) {
       updateRealmDatabase(for: ledgerName)
   }
   
   // 展示分享 Realm 数据的功能
   public func presentRealmDataShareVC(vc: UIViewController) {
       guard let realmURL = realmURL else { return } // 如果没有找到当前文件路径，无法分享
       vc.PresentShareView(URLs: [realmURL])
   }
   
   // 导入账本
   public func importLedger(from url: URL) {
       let ledgerName = url.deletingPathExtension().lastPathComponent
       let destinationURL = getRealmFileURL(for: ledgerName)
       do {
           if FileManager.default.fileExists(atPath: destinationURL.path) {
               try FileManager.default.removeItem(at: destinationURL)
           }
           try FileManager.default.copyItem(at: url, to: destinationURL)
           print("Ledger imported: \(ledgerName)")
       } catch {
           print("Error importing ledger: \(error)")
       }
   }
   
   // 获取当前账本名称
   public func getCurrentLedgerName() -> String {
       return currentLedgerName
   }
}
