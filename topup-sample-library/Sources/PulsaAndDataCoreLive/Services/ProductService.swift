//
//  ProductService.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 20/05/25.
//

import Foundation
import PulsaAndDataCore

final public class ProductService: ProductServiceProtocol {
    public func fetchProducts() async throws -> [Product] {
        let jsonString = """
        {
          "status": "OK",
          "message": "OK",
          "products": [
            {
              "product_code": "Fw22lyO0",
              "bill_type": "mobile",
              "label": "XL Rp 10.000",
              "operator": "xl",
              "nominal": "10000",
              "description": "",
              "sequence": 1,
              "price": 1.2735e+25
            },
            {
              "product_code": "Oq0ckhPY",
              "bill_type": "mobile",
              "label": "XL 15,000",
              "operator": "xl",
              "nominal": "15000",
              "description": "",
              "price": 16000
            },
            {
              "product_code": "Oq0ckhPY",
              "bill_type": "mobile",
              "label": "XL 25,000",
              "operator": "xl",
              "nominal": "25000",
              "description": "",
              "price": 16000
            },
            {
              "product_code": "Oq0ckhPY",
              "bill_type": "mobile",
              "label": "XL 50,000",
              "operator": "xl",
              "nominal": "50000",
              "description": "",
              "price": 16000
            },
            {
              "product_code": "Oq0ckhPY",
              "bill_type": "mobile",
              "label": "XL 100,000",
              "operator": "xl",
              "nominal": "100000",
              "description": "",
              "price": 16000
            }
          ]
        }
        """
        let data = Data(jsonString.utf8)
        let response = try JSONDecoder().decode(ProductResponse.self, from: data)
        return response.products
    }
}
