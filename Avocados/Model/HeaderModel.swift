//
//  HeaderModel.swift
//  Avocados
//
//  Created by Tin Tran on 11/06/2022.
//

import Foundation

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
