 
import UIKit
import Realm
import RealmSwift
import RxSwift
import RxCocoa 

// MARK:- Delete    --(删除)
public extension Object{
    
    func add(disposeBag:DisposeBag = DisposeBag())  {
        Observable
            .from([self])
            .subscribe(Realm.rx.add()).disposed(by:  disposeBag)
    }
    
    func delete(disposeBag:DisposeBag = DisposeBag())  {
        Observable
            .from([self])
            .subscribe(Realm.rx.delete()).disposed(by: disposeBag)
    }
    
    func DeleteBTN(VC:UIViewController) {
        let alert = UIAlertController(title: "删除记录", message: "", preferredStyle: .alert)
        let 按错了 = UIAlertAction(title: "按错了", style: .default) { (dingyiUIaction) in}
        let 确认删除 = UIAlertAction(title: "确认", style: .destructive) { (dingyiUIaction) in
            self.delete()
        }
        alert.addAction(确认删除)
        alert.addAction(按错了)
        VC.present(alert, animated: true, completion: nil)
    }
}
 
