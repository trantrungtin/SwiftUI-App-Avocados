//
//  RipeningModel.swift
//  Avocados
//
//  Created by Tin Tran on 16/06/2022.
//

import Foundation

struct Ripening: Identifiable {
    let id = UUID()
    let image, stage, title, description: String
    let ripeness, instruction: String
}
