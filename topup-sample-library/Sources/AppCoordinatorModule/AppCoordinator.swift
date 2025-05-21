//
//  Sample.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 20/05/25.
//

import AppInterfaces
import UIKit
import AppScreenModule

public final class AppCoordinator: AppCoordinatorProtocol {
    private let window: UIWindow
    private let appScreenViewModel: AppScreenViewModelProtocol
    private let dependencyContainer: AppDependencyContainerType
    public init(
        window: UIWindow
    ) {
        self.window = window
        self.appScreenViewModel = AppScreenViewModel()
        self.dependencyContainer = AppDependencyContainer()
    }
    
    public func start() {
        let viewController = dependencyContainer.pulsaAndData.makeHomePageViewController()
        window.rootViewController = viewController
        window.makeKeyAndVisible()
    }
}
