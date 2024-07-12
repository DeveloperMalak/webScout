import 'dart:convert';

import 'package:http/http.dart'as http;

import 'homescreen.dart';
var data;
  Future<String> getwebData()async {
    final response = await http.get(Uri.parse(tcontroller.text.toString()),
        headers:{
         'Content-Type':'text/html'
        }
    );
     print(response.body);
     data=response;
     return 'noor';
  }