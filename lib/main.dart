import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:dio/dio.dart';




void main(){
  // base64('187233');
  postFind('dart');
  // getFind('book');
  // get('我');
}

base64(String str1) {
  var bytes = utf8.encode(str1);
  var encoded1 = base64Encode(bytes);
  // print(encoded1);  // 返回编码列表
  // print(base64Decode(encoded1));  // 返回编码ac列表
  // print(String.fromCharCodes(base64Decode(encoded1)));  // 返回解码
  return encoded1;
}

postFind(book) async{
  Dio dio = new Dio();
  FormData formData = new FormData.from({"username": book});
  var response = await dio.post("http://139.199.169.159:90/signin", data: formData);
  print(response);
}

getFind(book) async{
  Dio dio = new Dio();
  var response = await dio.get("http://139.199.169.159:90/$book");
  print(response);
}