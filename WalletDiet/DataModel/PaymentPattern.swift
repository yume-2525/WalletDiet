//
//  PaymentPattern.swift
//  WalletDiet
//
//  Created by 浦山秀斗 on 2024/09/13.
//

import Foundation

struct PaymentPattern : Identifiable {
    let id: UUID = UUID()
    let payment: Int
    let change: Int
}
