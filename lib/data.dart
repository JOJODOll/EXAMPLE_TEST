String DATA_PROMT = '''{
  "customers": [
    {
      "customerId": 1,
      "name": "John Doe",
      "email": "john.doe@example.com",
      "address": {
        "street": "123 Elm Street",
        "city": "Springfield",
        "state": "IL",
        "postalCode": "62701",
        "country": "USA"
      },
      "phone": "+1-555-1234"
    },
    {
      "customerId": 2,
      "name": "Jane Smith",
      "email": "jane.smith@example.com",
      "address": {
        "street": "456 Oak Street",
        "city": "Metropolis",
        "state": "NY",
        "postalCode": "10001",
        "country": "USA"
      },
      "phone": "+1-555-5678"
    },
    {
      "customerId": 3,
      "name": "Alice Johnson",
      "email": "alice.johnson@example.com",
      "address": {
        "street": "789 Pine Street",
        "city": "Gotham",
        "state": "NJ",
        "postalCode": "07001",
        "country": "USA"
      },
      "phone": "+1-555-7890"
    }
  ],
  "orders": [
    {
      "orderId": 101,
      "customerId": 1,
      "orderDate": "2024-07-29T10:30:00Z",
      "status": "Processing",
      "items": [
        {
          "itemId": 1,
          "productName": "Wireless Mouse",
          "quantity": 2,
          "price": 25.99
        },
        {"itemId": 2, "productName": "Keyboard", "quantity": 1, "price": 45.99}
      ],
      "shippingDetails": {
        "shippingId": 1001,
        "carrier": "FedEx",
        "trackingNumber": "1234567890",
        "estimatedDeliveryDate": "2024-08-02",
        "shippingAddress": {
          "street": "123 Elm Street",
          "city": "Springfield",
          "state": "IL",
          "postalCode": "62701",
          "country": "USA"
        }
      }
    },
    {
      "orderId": 102,
      "customerId": 2,
      "orderDate": "2024-07-28T14:15:00Z",
      "status": "Shipped",
      "items": [
        {"itemId": 3, "productName": "Laptop", "quantity": 1, "price": 799.99},
        {
          "itemId": 4,
          "productName": "Laptop Sleeve",
          "quantity": 1,
          "price": 19.99
        }
      ],
      "shippingDetails": {
        "shippingId": 1002,
        "carrier": "UPS",
        "trackingNumber": "0987654321",
        "estimatedDeliveryDate": "2024-08-01",
        "shippingAddress": {
          "street": "456 Oak Street",
          "city": "Metropolis",
          "state": "NY",
          "postalCode": "10001",
          "country": "USA"
        }
      }
    },
    {
      "orderId": 103,
      "customerId": 3,
      "orderDate": "2024-07-29T08:45:00Z",
      "status": "Delivered",
      "items": [
        {
          "itemId": 5,
          "productName": "Smartphone",
          "quantity": 1,
          "price": 599.99
        }
      ],
      "shippingDetails": {
        "shippingId": 1003,
        "carrier": "FedEx",
        "trackingNumber": "1234567891",
        "estimatedDeliveryDate": "2024-07-31",
        "shippingAddress": {
          "street": "789 Pine Street",
          "city": "Gotham",
          "state": "NJ",
          "postalCode": "07001",
          "country": "USA"
        }
      }
    },
    {
      "orderId": 104,
      "customerId": 2,
      "orderDate": "2024-07-30",
      "status": "Cancelled",
      "items": [
        {"itemId": 6, "productName": "Tablet", "quantity": 1, "price": 299.99}
      ],
      "shippingDetails": {
        "shippingId": 1004,
        "carrier": "UPS",
        "trackingNumber": "1234567892",
        "estimatedDeliveryDate": "2024-08-03",
        "shippingAddress": {
          "street": "456 Oak Street",
          "city": "Metropolis",
          "state": "NY",
          "postalCode": "10001",
          "country": "USA"
        }
      }
    },
    {
      "orderId": 105,
      "customerId": 1,
      "orderDate": "2024-07-29T15:20:00Z",
      "status": "Processing",
      "items": [
        {"itemId": 7, "productName": "Monitor", "quantity": 1, "price": 199.99}
      ],
      "shippingDetails": {
        "shippingId": 1005,
        "carrier": "FedEx",
        "trackingNumber": "1234567893",
        "estimatedDeliveryDate": "2024-08-04",
        "shippingAddress": {
          "street": "123 Elm Street",
          "city": "Springfield",
          "state": "IL",
          "postalCode": "62701",
          "country": "USA"
        }
      }
    },
    {
      "orderId": 106,
      "customerId": 2,
      "orderDate": "2024-07-29T11:45:00Z",
      "status": "Processing",
      "items": [
        {
          "itemId": 8,
          "productName": "Headphones",
          "quantity": 1,
          "price": 49.99
        },
        {"itemId": 9, "productName": "Webcam", "quantity": 1, "price": 79.99}
      ],
      "shippingDetails": {
        "shippingId": 1006,
        "carrier": "UPS",
        "trackingNumber": "1234567894",
        "estimatedDeliveryDate": "2024-08-02",
        "shippingAddress": {
          "street": "456 Oak Street",
          "city": "Metropolis",
          "state": "NY",
          "postalCode": "10001",
          "country": "USA"
        }
      }
    },
    {
      "orderId": 107,
      "customerId": 3,
      "orderDate": "2024-07-28T10:00:00Z",
      "status": "Shipped",
      "items": [
        {
          "itemId": 10,
          "productName": "Smartwatch",
          "quantity": 2,
          "price": 199.99
        }
      ],
      "shippingDetails": {
        "shippingId": 1007,
        "carrier": "FedEx",
        "trackingNumber": "1234567895",
        "estimatedDeliveryDate": "2024-08-01",
        "shippingAddress": {
          "street": "789 Pine Street",
          "city": "Gotham",
          "state": "NJ",
          "postalCode": "07001",
          "country": "USA"
        }
      }
    },
    {
      "orderId": 108,
      "customerId": 1,
      "orderDate": "2024-07-28T08:30:00Z",
      "status": "Delivered",
      "items": [],
      "shippingDetails": {
        "shippingId": 1008,
        "carrier": "FedEx",
        "trackingNumber": "1234567896",
        "estimatedDeliveryDate": "2024-07-30",
        "shippingAddress": {
          "street": "123 Elm Street",
          "city": "Springfield",
          "state": "IL",
          "postalCode": "62701",
          "country": "USA"
        }
      }
    },
    {
      "orderId": 109,
      "customerId": 2,
      "orderDate": "2024-07-30T09:15:00Z",
      "status": "Processing",
      "items": [
        {"itemId": 12, "productName": "Mouse Pad", "quantity": 3, "price": 9.99}
      ],
      "shippingDetails": {
        "shippingId": 1009,
        "carrier": "UPS",
        "trackingNumber": "1234567897",
        "estimatedDeliveryDate": "2024-08-04",
        "shippingAddress": {
          "street": "456 Oak Street",
          "city": "Metropolis",
          "state": "NY",
          "postalCode": "10001",
          "country": "USA"
        }
      }
    }
  ]
}''';
