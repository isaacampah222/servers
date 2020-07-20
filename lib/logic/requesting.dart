import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

Future<OrderRequestList> fetchData() async {
  final response =
      await http.get('https://almaweb.herokuapp.com/viewset/order/');

  if (response.statusCode == 200) {
    OrderRequestList.fromJson(json.decode(response.body));
  } else {
    throw Exception('could not fetch data');
  }
}

class OrderRequestList {
  // ignore: non_constant_identifier_names
  final String customer_id;
  // ignore: non_constant_identifier_names
  final String customer_name;
  // ignore: non_constant_identifier_names
  final String single_value_order;

  // ignore: non_constant_identifier_names
  OrderRequestList(
      {this.customer_id, this.customer_name, this.single_value_order});

  factory OrderRequestList.fromJson(Map<String, dynamic> json) {
    return OrderRequestList(
        customer_id: json['customer_id'],
        customer_name: json['customer_name'],
        single_value_order: json['single_order_value']);
  }
}
