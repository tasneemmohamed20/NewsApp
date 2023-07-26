import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Models/AllNewsModel/news_model.dart';

class AllNewsRepo {
  Future <NewsModel?> getAllNews() async {
    try {
      var response = await http.get(Uri.parse("https://newsapi.org/v2/everything?domains=wsj.com&apiKey=acf2ec26f0424666a4dd121ed33a456b"));
      // print(response);
      Map<String, dynamic>deCodedResponse = json.decode(response.body);
      if (response.statusCode == 200) {
        NewsModel data = NewsModel.fromJson(deCodedResponse);
        print(data.articles[0].author);
        return data;
      }
      else {
        print('Request Failed!');
        return null;

      }
    } catch (error) {
      print('Error: $error');
    }

  }
}
