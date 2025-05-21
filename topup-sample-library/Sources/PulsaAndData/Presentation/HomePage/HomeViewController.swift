//
//  HomeViewController.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 17/05/25.
//

import UIKit
import TopUpDS
import Utils

public class HomeViewController: BaseViewController {
    private lazy var containerStackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.alignment = .fill
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = CGFloat.space0()
        return view
    }()
    
    private lazy var pulsaTabView: TopUpTabView = {
        let view = TopUpTabView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isSelected = true
        view.title = "home_page_tab_pulsa".localized
        return view
    }()
    
    private lazy var dataPackageTabView: TopUpTabView = {
        let view = TopUpTabView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isSelected = false
        view.title = "home_page_tab_data".localized
        return view
    }()
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var barView: UIView = {
        let view = UIView()
        view.backgroundColor = .bgBrandBoldDefault()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        title = "home_page_title".localized
        view.backgroundColor = .bgWhite()
        setupConstraint()
//        let childVC = TopUpViewController()
//        addChild(childVC)
//        childVC.view.frame = containerView.bounds
//        childVC.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        containerView.addSubview(childVC.view)
//        childVC.didMove(toParent: self)
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    private func setupConstraint() {
        view.addSubview(containerStackView)
        containerStackView
            .anchorLeadingTrailing(
                toLeading: view.leadingAnchor,
                toTrailing: view.trailingAnchor
            )
            .anchorTop(to: view.safeAreaLayoutGuide.topAnchor)
            .anchorHeightSize(
                constant: .space4Xl(),
                type: .constant
            )
        containerStackView.addArrangedSubview(pulsaTabView)
        containerStackView.addArrangedSubview(dataPackageTabView)
        view.addSubview(containerView)
        containerView
            .anchorLeadingTrailing(
                toLeading: view.leadingAnchor,
                toTrailing: view.trailingAnchor
            )
            .anchorTopBottom(
                toTop: containerStackView.bottomAnchor,
                toBottom: view.bottomAnchor
            )

    }
}
