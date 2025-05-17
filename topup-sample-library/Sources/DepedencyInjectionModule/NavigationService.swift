//
//  NavigationService.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 17/05/25.
//

import Foundation
import UIKit

public protocol NavigationService: ExternalNavigationService {
    var navigationController: UINavigationController { get set }
    var container: DIContainerService { get set }
    func popToRootViewController(animated: Bool)
}

public protocol PresentableView {
    func toPresent() -> UIViewController
}

public extension PresentableView where Self: UIViewController {
    func toPresent() -> UIViewController {
        return self
    }
}

public protocol PresentablePulsaAndDataView: PresentableView {}
public protocol PresentableVoucherView: PresentableView {}
public protocol PresentablePaymentView: PresentableView {}

public protocol ExternalNavigationService { }
