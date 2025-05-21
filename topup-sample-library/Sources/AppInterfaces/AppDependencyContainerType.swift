//
//  AppDependencyContainerType.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 18/05/25.
//

import UIKit

public protocol AppDependencyContainerType {    
    var pulsaAndData: PulsaAndDataDependencyContainerType { get }
    var payment: PaymentDependencyContainerType { get }
    var vouncher: VoucherContainerType { get }
}

public protocol PulsaAndDataDependencyContainerType: AnyObject {
    func makeHomePageViewController() -> UIViewController
}

public protocol PaymentDependencyContainerType: AnyObject { }
public protocol VoucherContainerType: AnyObject { }
