//
//  StorageManager.swift
//  TaskList&Realm
//
//  Created by Дарья Кобелева on 02.04.2024.
//

import Foundation
import RealmSwift

final class StorageManager {
    static let shared = StorageManager()
    
    //Место входа в базу данных
    private let realm = try! Realm()
    
    private init() {}
    
    //Работа с списками
    //MARK: - Task List
    func fetchTaskList() -> [TaskList] {
        []
    }
    
    // Для внутреннего использования
    func save(_ taskLists: [TaskList]) {
        try! realm.write {
            realm.add(taskLists)
        }
    }
    
    
    func save(_ taskList: String, completion: (TaskList) -> Void) {
        
    }
    
    func delete(_ taskList: TaskList) {
        
    }
    
    func edit(_ taskList: TaskList, newValue: String) {
        
    }
    
    func done(_ taskList: TaskList) {
        
    }
    
    //Работа с задачами
    // MARK: - Tasks
    func save(_ task: String, withNote note: String, to taskList: TaskList, completion: (Task) -> Void) {
        
    }
}
