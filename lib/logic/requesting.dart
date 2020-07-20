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
  final List<OrderValue> ordervalues;
  // ignore: non_constant_identifier_names
  OrderRequestList(
      // ignore: non_constant_identifier_names
      {this.ordervalues});

  factory OrderRequestList.fromJson(List<dynamic> json) {
    List<OrderValue> order = new List<OrderValue>();
    order = json.map((e) => OrderValue.fromJson(e)).toList();
    return new OrderRequestList(ordervalues: order);
  }
}

class OrderValue {
  final String customer_id;
  final String customer_name;
  final String single_order_value;

  OrderValue({this.customer_id, this.customer_name, this.single_order_value});

  factory OrderValue.fromJson(Map<String, dynamic> json) {
    return new OrderValue(
        customer_id: json['customer_id'],
        customer_name: json['customer_name'],
        single_order_value: json['single_order_value']);
  }
}
