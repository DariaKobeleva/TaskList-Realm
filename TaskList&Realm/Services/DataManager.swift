//
//  DataManager.swift
//  TaskList&Realm
//
//  Created by Дарья Кобелева on 02.04.2024.
//

import Foundation
//Класс для тестового набора данных

final class DataManager {
    static let shared = DataManager()
    private let storageManager = StorageManager.shared
    
    private init() {}
    
    func createTempData(completion: @escaping () -> Void) {
        let shoppingList = TaskList()
        shoppingList.title = "Shopping List"
        
        let moviesList = TaskList(
            value: [
                "Movies List",
                Date(),
                [
                    ["Best film ever"],
                    ["The best of the best", "Must have", Date(), true]
                ]
            ]
        )
        
        let milk = Task()
        milk.title = "Milk"
        milk.note = "2L"
        
        let apples = Task(value: ["Apples", "1Kg"])
        let bread = Task(value: ["Bread", "", Date(), true])
        let sugar = Task(value: ["title": "Sugar", "isComplete": true])
        
        shoppingList.tasks.append(milk)
        shoppingList.tasks.insert(contentsOf: [apples,bread, sugar], at: 1)
        
        DispatchQueue.main.async { [unowned self] in
            storageManager.save([shoppingList, moviesList])
            completion()
        }
    }
}
