//
//  AppDependencyContainerType.swift
//  TopUp-Sample
//
//  Created by Bayu Firmawan Paoh on 18/05/25.
//

import DepedencyContainer
import UIKit
import PulsaAndData

final class AppDependencyContainer: AppDependencyContainerType {
    let pulsaAndData: PulsaAndDataDependencyContainerType
    let payment: PaymentDependencyContainerType
    let vouncher: VoucherContainerType
    
    init() {
        self.pulsaAndData = PulsaAndDataDependencyContainer()
        self.payment = PaymentDependencyContainer()
        self.vouncher = VoucherContainer()
    }
}

final class PulsaAndDataDependencyContainer: PulsaAndDataDependencyContainerType {
    func makeHomePageViewController() -> UIViewController {
        HomeViewController()
    }
}

final class PaymentDependencyContainer: PaymentDependencyContainerType {
    
}

final class VoucherContainer: VoucherContainerType {
    
}
