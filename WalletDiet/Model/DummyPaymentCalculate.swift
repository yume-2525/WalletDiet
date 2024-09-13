//
//  DummyPaymentCalculate.swift
//  WalletDiet
//
//  Created by 浦山秀斗 on 2024/09/13.
//

import Foundation


class DummyPaymentCalculate : PaymentCaculateProtocol {
    func calculateCharge(from payment: Int) -> [PaymentPattern] {
        let paymentPattern: [PaymentPattern] = [
            PaymentPattern(payment: 1, change: 1),
            PaymentPattern(payment: 2, change: 2),
            PaymentPattern(payment: 3, change: 3)
        ]
        return paymentPattern
    }
}
