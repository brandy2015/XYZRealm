/// Copyright (c) 2019 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import Foundation
import RealmSwift

struct XYZRealmProvider {
  let configuration: Realm.Configuration

  internal init(config: Realm.Configuration) {
    configuration = config
  }

  var realm: Realm {
    return try! Realm(configuration: configuration)
  }

  // MARK: - Flash Cards realm
//  private static let cardsConfig = Realm.Configuration(
//    fileURL: try! XYZRealmPath.inLibrary("cards.realm"),
//    schemaVersion: 1,
//    deleteRealmIfMigrationNeeded: true,
//    objectTypes: [FlashCardSet.self, FlashCard.self])
//
//  public static var cards: XYZRealmProvider = {
//    return XYZRealmProvider(config: cardsConfig)
//  }()
//
//  // MARK: - Bundled sets
//  private static let bundledConfig = Realm.Configuration(
//    fileURL: try! XYZRealmPath.inBundle("bundledSets.realm"),
//    readOnly: true,
//    objectTypes: [FlashCardSet.self, FlashCard.self])
//
//  public static var bundled: XYZRealmProvider = {
//    return XYZRealmProvider(config: bundledConfig)
//  }()
//
//  // MARK: - Word of today
//  private static let wordOfDayConfig = Realm.Configuration(
//    fileURL: try! XYZRealmPath.inBundle("bundledWords.realm"),
//    readOnly: true,
//    schemaVersion: 1,
//    objectTypes: [WordOfDayList.self, Entry.self])
//
//  public static var wordOfDay: XYZRealmProvider = {
//    return XYZRealmProvider(config: wordOfDayConfig)
//  }()
//
//  // MARK: - Settings realm
//  private static let settingsConfig = Realm.Configuration(
//    fileURL: try! XYZRealmPath.inSharedContainer("settings.realm"),
//    schemaVersion: 1,
//    objectTypes: [Settings.self, Entry.self])
//
//  public static var settings: XYZRealmProvider = {
//    if let realm = try? Realm(configuration: settingsConfig),
//      realm.isEmpty {
//      try! realm.write {
//        realm.add(Settings())
//      }
//    }
//    return XYZRealmProvider(config: settingsConfig)
//  }()
}
