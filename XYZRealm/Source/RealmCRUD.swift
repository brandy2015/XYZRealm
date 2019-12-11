//
//  RealmCRUD.swift
//  XYZRealm
//
//  Created by 张子豪 on 2019/5/28.
//  Copyright © 2019 张子豪. All rights reserved.
//

import UIKit

class RealmCRUD: NSObject {

}

// MARK: - CRUD methods
//增加(Create)、读取查询(Retrieve)、更新(Update)和删除(Delete)

// MARK:- Create--(添加)





// MARK:- Create--复制方法1
//func 复制方法(){

//var setsToCopy = [FlashCardSet]() for bundledSet in bundledSetsRealm.objects(FlashCardSet.self) where cardsRealm.object( ofType: FlashCardSet.self, forPrimaryKey: bundledSet.name) == nil {
//
//    setsToCopy.append(bundledSet)
//
//}
//    guard setsToCopy.count > 0 else { return }
//
//    try! cardsRealm.write { for cardSet in setsToCopy { cardsRealm.create(FlashCardSet.self, value: cardSet, update: false) } }
//}


// MARK:- Retrieve--(读取查询) All--获取所有数据


// MARK:- Update--(更新)


// MARK:- Delete--(删除)


//删除item莫名错误原因，检查线程
//DispatchQueue.main.async {
//    realm.delete()
//}
