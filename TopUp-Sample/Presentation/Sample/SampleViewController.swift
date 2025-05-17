//
//  SampleViewController.swift
//  TopUp-Sample
//
//  Created by Bayu Firmawan Paoh on 16/05/25.
//

import UIKit
import TopUpDS

final class SampleViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Test 1"
        view.backgroundColor = .red
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("View Frame: \(view.frame)")
    }
}
