//
//  TopUpViewController.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 18/05/25.
//

import UIKit
import TopUpDS
import Utils

final class ProductsViewController: BaseViewController {
    private lazy var topUpTextField: TopUpTextField = {
        let view = TopUpTextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isLeadingIconHidden = false
        view.isTrailingIconHidden = false
        view.isSecondaryTrailingIconHidden = false
        view.keyboardType = .numberPad
        view.placeholder = "Isi Nomor Handphone"
        view.titleText = "No. Handphone"
        view.leadingIcon = UIImage(named: "ic_phone_book", in: .pulsaAndData, with: nil)
        view.trailingIcon = UIImage(named: "ic_phone_book", in: .pulsaAndData, with: nil)
        view.secondaryTrailingIcon = UIImage(named: "ic_phone_book", in: .pulsaAndData, with: nil)
        return view
    }()
    
    private lazy var dividerView: TopUpDSDivider = {
        let view = TopUpDSDivider()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.type = .module
        view.dashColor = .borderDefault()
        return view
    }()
    
    private lazy var tableView: UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .bgWhite()
        setupConstraint()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    private func setupConstraint() {
        view.addSubview(topUpTextField)
        topUpTextField
            .anchorTop(to: view.topAnchor)
            .anchorLeadingTrailing(
                toLeading: view.leadingAnchor,
                toTrailing: view.trailingAnchor
            )
        view.addSubview(dividerView)
        dividerView
            .anchorTop(to: topUpTextField.bottomAnchor)
            .anchorLeadingTrailing(
                toLeading: view.leadingAnchor,
                toTrailing: view.trailingAnchor
            )
            .anchorHeightSize(constant: .spaceMd(), type: .constant)
        view.addSubview(tableView)
        tableView
            .anchorAll(
                top: dividerView.bottomAnchor,
                bottom: view.bottomAnchor,
                leading: view.leadingAnchor,
                trailing: view.trailingAnchor
            )
    }
}
