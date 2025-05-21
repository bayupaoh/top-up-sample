//
//  BaseViewController.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 17/05/25.
//

import Foundation
import UIKit

open class BaseViewController: UIViewController, UIGestureRecognizerDelegate {

    private lazy var leftBarButtonItem: UIBarButtonItem = {
        let leftBarButtonImage: UIImage? = UIImage(named: isShowBackButtonAsClose ? "chevron.left" : "xmark")?.withRenderingMode(.alwaysTemplate)
        leftBarButtonImage?.withTintColor(.iconInverse())
        let leftBarButtonItem: UIBarButtonItem = UIBarButtonItem(
            image: leftBarButtonImage,
            style: .plain,
            target: self,
            action: #selector(onLeftBarButtonDidTapped))
        return leftBarButtonItem
    }()

    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    open var isShowBackButtonAsClose: Bool {
        false
    }

    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupPopGesture()
    }

    open override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationItems()
        navigationController?.setupNavigation()
    }

    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if navigationController?.viewControllers.first == self {
            navigationItem.leftBarButtonItem = nil
        } else {
            navigationItem.leftBarButtonItem = leftBarButtonItem
        }
    }

    open func addRightButtons(item1: UIBarButtonItem?, item2: UIBarButtonItem? = nil) {
        var rightBarButtonItems: [UIBarButtonItem] = []
        if let item1 {
            rightBarButtonItems.append(item1)
        }

        if let item2 {
            rightBarButtonItems.append(item2)
        }
        navigationItem.rightBarButtonItems = rightBarButtonItems
    }

    private func setupNavigationItems() {
        navigationItem.backButtonTitle = ""
        navigationItem.leftBarButtonItem = leftBarButtonItem
        navigationItem.largeTitleDisplayMode = .never
    }

    private func setupPopGesture() {
        navigationController?.interactivePopGestureRecognizer?.delegate = self
        navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }

    @objc private func onLeftBarButtonDidTapped() {
        if isShowBackButtonAsClose {
            dismiss(animated: true)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
}

extension UINavigationController {
    func setupNavigation() {
        UIView.animate(withDuration: 0.25) { [weak self] in
            guard let self else { return }
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = .bgBrandBoldDefault()
            appearance.shadowImage = UIImage()
            appearance.shadowColor = nil
            isNavigationBarHidden = false
            navigationBar.tintColor = .textInverse()
            let titleAttributes = [
                NSAttributedString.Key.font: UIFont.bodyMdReguler(),
                NSAttributedString.Key.foregroundColor: UIColor.textInverse()
            ]
            appearance.titleTextAttributes = titleAttributes
            appearance.largeTitleTextAttributes = titleAttributes
            navigationBar.scrollEdgeAppearance = appearance
            navigationBar.standardAppearance = appearance
            navigationItem.largeTitleDisplayMode = .never
            navigationBar.layoutIfNeeded()
        }
    }
}
