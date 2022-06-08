//
//  FileManager-DocumentsDirectory.swift
//  ShoppingListApp
//
//  Created by Dmitryi Velko on 07.06.2022.
//

import Foundation

extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
