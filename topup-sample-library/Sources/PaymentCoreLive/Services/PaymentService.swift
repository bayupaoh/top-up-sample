//
//  TransactionService.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 21/05/25.
//

import Foundation
import PaymentCore

final public class PaymentService: PaymentServiceProtocol {
    public func fetchTransactionStatus() async throws -> TransactionContext {
        let jsonString = """
        {
          "message": "Pastikan pembayaranmu tidak terlambat guna menghindari denda tambahan 1 bulan cicilan. Cek syarat & ketentuan voucher untuk keterangan lebih lengkap.",
          "status": "OK",
          "transaction_context": {
            "transaction_status": 4,
            "merchant_details": {
              "logo_url": "https://placehold.co/1000x400/239CEC/FFFFFF/png",
              "name": "Kredivo Biller"
            },
            "applied_payment_type": "30_days",
            "checkout_amount": "9.000",
            "order_id": "KB-asdqwe123",
            "item_list": [
              {
                "aggregated_price": "7.500",
                "quantity": 1,
                "status": "SETTLED",
                "unit_price": "7.500",
                "total_amount": "7.500",
                "p_id": 127579536,
                "sku_type": 0,
                "name": "Pulsa TELKOMSEL Rp 5000 (+62-08128318238123)",
                "category": "mobile",
                "sku": "dasdqwe2"
              },
              {
                "total_amount": "3.090",
                "quantity": 1,
                "sku_type": 1,
                "name": "Admin Fee",
                "sku": "adminfee"
              },
              {
                "total_amount": "1.500",
                "quantity": 1,
                "sku_type": 2,
                "name": "Diskon Tambahan",
                "sku": "discount"
              }
            ],
            "expiration_time": "1680508832",
            "amount": "9.090",
            "transaction_token": "asd13d23-6035-4a22-be35-nuiasdnianisud3"
          }
        }
        """
        let data = Data(jsonString.utf8)
        let response = try JSONDecoder().decode(TransactionStatusResponse.self, from: data)
        return response.transactionContext
    }
}
