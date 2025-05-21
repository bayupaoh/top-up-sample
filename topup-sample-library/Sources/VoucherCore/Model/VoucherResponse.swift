//
//  VoucherResponse.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 21/05/25.
//

import Foundation

public struct VoucherResponse: Codable {
    public let data: [Voucher]
    public let status: String
}

public struct Voucher: Codable {
    public let name: String
    public let number: Int
    public let percentage: Int
    public let iterator: Int
    public let imageURL: String
    public let minTransactionAmount: Int
    public let endDate: String
    public let id: Int
    public let termsAndCondition: String
    public let howToUse: String
    public let usageCount: Int
    public let startDate: String
    public let maxDiscount: Int
    public let voucherCode: String

    enum CodingKeys: String, CodingKey {
        case name, number, percentage, iterator
        case imageURL = "image_url"
        case minTransactionAmount = "min_transaction_amount"
        case endDate = "end_date"
        case id
        case termsAndCondition = "terms_and_condition"
        case howToUse = "how_to_use"
        case usageCount = "usage_count"
        case startDate = "start_date"
        case maxDiscount = "max_discount"
        case voucherCode = "voucher_code"
    }
}
