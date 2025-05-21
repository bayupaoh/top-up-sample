//
//  TopUpCustomNavigationViewController.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 17/05/25.
//

import Foundation
import UIKit

final public class CustomNavigationViewController: UINavigationController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearance()
    }

    public override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        guard let lastViewController = viewControllers.last else { return .portrait }
        return lastViewController.supportedInterfaceOrientations
    }

    public override var preferredStatusBarStyle : UIStatusBarStyle {
        topViewController?.preferredStatusBarStyle ?? .default
    }

    private func setupAppearance() {
        navigationBar.tintColor = UIColor.bgBrandBoldDefault()
        navigationBar.barTintColor = UIColor.textInverse()
        navigationBar.titleTextAttributes = [
            NSAttributedString.Key.font: UIFont.bodyMdReguler(),
            NSAttributedString.Key.foregroundColor: UIColor.textInverse()
        ]
        navigationBar.largeTitleTextAttributes = [
            NSAttributedString.Key.font: UIFont.heading2Xl(),
            NSAttributedString.Key.foregroundColor: UIColor.textInverse()
        ]
        navigationBar.prefersLargeTitles = false
    }

}
