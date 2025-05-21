//
//  AppDependencyContainerType.swift
//  TopUp-Sample
//
//  Created by Bayu Firmawan Paoh on 18/05/25.
//

import AppInterfaces
import UIKit
import PulsaAndData

final public class AppDependencyContainer: AppDependencyContainerType {
    public let pulsaAndData: PulsaAndDataDependencyContainerType
    public let payment: PaymentDependencyContainerType
    public let vouncher: VoucherContainerType
    
    public init() {
        self.pulsaAndData = PulsaAndDataDependencyContainer()
        self.payment = PaymentDependencyContainer()
        self.vouncher = VoucherContainer()
    }
}

final public class PulsaAndDataDependencyContainer: PulsaAndDataDependencyContainerType {
    public func makeHomePageViewController() -> UIViewController {
        HomeViewController()
    }
}

final public class PaymentDependencyContainer: PaymentDependencyContainerType {
    
}

final class VoucherContainer: VoucherContainerType {
    
}
