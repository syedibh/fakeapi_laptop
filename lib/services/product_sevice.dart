import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductService {

  Future getproduct() async {
    final productUrl=Uri.parse('https://fakestoreapi.com/products');
    final response=await http.get(productUrl);
    // print(response.statusCode);
    // print(response.body);

    return json.decode(response.body);

  }

  Future getSingleproduct(int id) async {
    final productUrl=Uri.parse('https://fakestoreapi.com/products/$id');
    final response=await http.get(productUrl);
    // print(response.statusCode);
    // print(response.body);

    return json.decode(response.body);

  }
}