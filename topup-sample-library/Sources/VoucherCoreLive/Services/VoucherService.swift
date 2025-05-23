//
//  VoucherService.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 21/05/25.
//

import Foundation
import VoucherCore
import Core

final public class VoucherService: VoucherServiceProtocol {
    public func fetchVouchers() async throws -> [Voucher] {
        let jsonString = """
        {
          "data": [
            {
              "name": "VOUCHERPROMO",
              "number": 4,
              "percentage": 10,
              "iterator": 0,
              "image_url": "https://placehold.co/1000x400/239CEC/FFFFFF/png",
              "min_transaction_amount": 50000,
              "end_date": "1682787599",
              "id": 4111,
              "terms_and_condition": "text",
              "how_to_use": "text",
              "usage_count": 2,
              "start_date": "1680282000",
              "Max_discount": 20000,
              "voucher_code": "ACBDED88"
            },
            {
              "name": "VOUCHERZEROPERCENT",
              "number": 4,
              "percentage": 0,
              "iterator": 1,
              "image_url": "https://placehold.co/1000x400/239CEC/FFFFFF/png",
              "min_transaction_amount": 0,
              "end_date": "1682096399",
              "id": 4112,
              "terms_and_condition": "text",
              "how_to_use": "text",
              "usage_count": 0,
              "start_date": "1680195600",
              "max_discount": 0,
              "voucher_code": "ACBDED89"
            }
          ],
          "status": "OK"
        }
        """
        let data = Data(jsonString.utf8)
        let response = try JSONDecoder().decode(VoucherResponse.self, from: data)
        return response.data
    }
}
