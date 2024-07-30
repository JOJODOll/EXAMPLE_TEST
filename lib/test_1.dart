import 'dart:convert';

import 'package:intl/intl.dart';
import 'package:test22/data.dart';

void search(String orderDate, String status) {
  List<String> parts = orderDate.split("-");
  Map<String, dynamic> map_data = jsonDecode(DATA_PROMT);

  String DATE_START = parts[0] + "-" + parts[1] + "-" + parts[2] + 'T00:00:00z';
  String DATE_STOP = parts[0] + "-" + parts[1] + "-" + parts[2] + 'T23:59:59z';

  int unix_statr = UNIX(DATE_START);
  int unix_stop = UNIX(DATE_STOP);

  List<Map<String, dynamic>> data_out = [];

  for (int i = 0; i < map_data['orders'].length; i++) {
    int unix_order = UNIX(map_data['orders'][i]['orderDate']);
    // print(map_data['orders'][i]['orderDate']);
    String Process = map_data['orders'][i]['status'];

    if (unix_order >= unix_statr &&
        unix_order <= unix_stop &&
        Process == status) {
      // print(map_data['orders'][i]);
      double price = 0;
      double quantity = 0;
      double TOTAL_PRICE = 0;
      for (int j = 0; j < map_data['orders'][i]['items'].length; j++) {
        price = map_data['orders'][i]['items'][j]['price']; //price ,quantity

        quantity =
            map_data['orders'][i]['items'][j]['quantity']; //price ,quantity

        TOTAL_PRICE = price * quantity;
      }
      //  print(TOTAL_PRICE);

      data_out.add({
        'orderId': map_data['orders'][i]['orderId'],
        'customerId': map_data['orders'][i]['customerId'],
        'orderDate': map_data['orders'][i]['orderDate'],
        'status': map_data['orders'][i]['status'],
        'Total Value': TOTAL_PRICE,
      });
      // print("data_out");

      // print("data_out");
    }
    // print(data_out);
  }
  Print_builtifull(data_out);

/*
   "orderId": 101,
      "customerId": 1,
      "orderDate": "2024-07-29T10:30:00Z",
      "status": "Processing",
      "items": [
*/

  // print("data_out");
}

int UNIX(String orderDate) {
  try {
    DateFormat format = DateFormat("yyyy-MM-ddTHH:mm:ssz");

    DateTime dateTime = format.parse(orderDate);
    int unixTimestamp = dateTime.toUtc().millisecondsSinceEpoch ~/ 1000;
    return unixTimestamp;
  } catch (e) {
    DateFormat format = DateFormat("yyyy-MM-dd");

    DateTime dateTime = format.parse(orderDate);
    int unixTimestamp = dateTime.toUtc().millisecondsSinceEpoch ~/ 1000;
    return unixTimestamp;
  }
}

void Print_builtifull(List<Map<String, dynamic>> DATA) {
  print(
      "----------------------------------------------------------------------------------------");
  print(
      "| Order ID | Customer ID |    Order Date             |  Status         | Total Value |");
  print(
      "----------------------------------------------------------------------------------------");
  for (int i = 0; i < DATA.length; i++) {
    String data = "|";

    data += "  " + DATA[i]['orderId'].toString() + "     |";
    data += "  " + DATA[i]['customerId'].toString() + "          |";
    data += "  " + DATA[i]['orderDate'].toString() + "     |";
    data += "  " + DATA[i]['status'].toString() + "     |";
    data += " \$" + DATA[i]['Total Value'].toString() + "      |";

    print(data);
    // print(DATA[i]['orderId']);
  }
  /* 'orderId': map_data['orders'][i]['orderId'],
        'customerId': map_data['orders'][i]['customerId'],
        'orderDate': map_data['orders'][i]['orderId'],
        'status': map_data['orders'][i]['status'],
        'Total Value': TOTAL_PRICE,*/
}

/*

| Order ID | Customer ID | Order Date         | Status      | Total Value |
|----------|-------------|---------------------|-------------|-------------|
| 101      | 1           | 2024-07-29T10:30:00Z | Processing  | $97.97       |
| 105      | 1           | 2024-07-29T15:20:00Z | Processing  | $199.99      |
| 106      | 2           | 2024-07-29T11:45:00Z | Processing  | $129.98      |

*/