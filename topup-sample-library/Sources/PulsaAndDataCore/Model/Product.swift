//
//  Product.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 20/05/25.
//

import Foundation

public struct ProductResponse: Codable {
    public let status: String
    public let message: String
    public let products: [Product]

    public init(status: String, message: String, products: [Product]) {
        self.status = status
        self.message = message
        self.products = products
    }
}

public struct Product: Codable {
    public let productCode: String
    public let billType: String
    public let label: String
    public let `operator`: String
    public let nominal: String
    public let description: String
    public let sequence: Int?
    public let price: Decimal

    public init(
        productCode: String,
        billType: String,
        label: String,
        operator: String,
        nominal: String,
        description: String,
        sequence: Int?,
        price: Decimal
    ) {
        self.productCode = productCode
        self.billType = billType
        self.label = label
        self.operator = `operator`
        self.nominal = nominal
        self.description = description
        self.sequence = sequence
        self.price = price
    }

    enum CodingKeys: String, CodingKey {
        case productCode = "product_code"
        case billType = "bill_type"
        case label
        case `operator`
        case nominal
        case description
        case sequence
        case price
    }
}
