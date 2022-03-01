//
//  StringMask.swift
//  RZDPass
//
//  Created by tambanco 🥳 on 01.03.2022.
//

import Foundation
extension StringProtocol {
    var masked: String {
        return String(repeating: "*", count: Swift.max(0, count-4)) + suffix(4)
    }
}
