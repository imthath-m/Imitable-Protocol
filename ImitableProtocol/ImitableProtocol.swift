//
//  JsonString.swift
//  ImitableProtocol
//
//  Created by Imthath M on 03/01/19.
//  No Copyright.
//

import Foundation

extension Encodable {
    var jsonString: String {
        guard let jsonData = try? JSONEncoder().encode(self) else { return "" }
        if jsonData.count <= 2 { return "" }
        return String(decoding: jsonData, as: UTF8.self)
    }
}

extension Decodable {
    init?(from jsonString: String) {
        let data = Data(jsonString.utf8)
        guard let object = try? JSONDecoder().decode(Self.self, from: data) else { return nil }
        self = object
    }
}

protocol Imitable: Codable {
    
}

extension Imitable {
    func copy() -> Self {
        let jsonString = self.jsonString
        return Self(from: jsonString)!
    }
}
