import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

Future<OrderRequestList> fetchData() async {
  final response = await http.get('http://192.168.8.126:8000/order/');

  if (response.statusCode == 200) {
    return OrderRequestList.fromJson(json.decode(response.body));
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
  final int id;
  final String customer_id;
  final String order_id;
  final String order_string;

  OrderValue({this.id, this.customer_id, this.order_id, this.order_string});

  factory OrderValue.fromJson(Map<String, dynamic> json) {
    return new OrderValue(
        id: json['id'],
        customer_id: json['customer_id'],
        order_id: json['order_id'],
        order_string: json['order_string']);
  }
}

makePost(String body) async {
  String url = 'http://192.168.8.126:8000/order/';
  Map<String, String> headers = {"content-type": "application/json"};
  String json = body;

  http.Response resp = await http.post(url, headers: headers, body: json);
  int statuscode = resp.statusCode;
  print(statuscode.toString());
  String bd = resp.body;
  print(bd);
}

makeDelete(int id) async{
  String url = 'http://192.168.8.126:8000/order/$id/';

  http.Response response = await http.delete(url);

  String body = response.body;
  print(body);

}
