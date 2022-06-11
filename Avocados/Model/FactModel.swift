//
//  FactModel.swift
//  Avocados
//
//  Created by Tin Tran on 11/06/2022.
//

import Foundation

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
