
import '../source_response/Source.dart';

/// source : {"id":null,"name":"Gizmodo.com"}
/// author : "Matthew Gault"
/// title : "Musk and Trump’s Fort Knox Trip Is About Bitcoin"
/// description : "More than a stunt, the Fort Knox visit might be a chance for the President to change the price of gold and dump the price hike into cryptocurrency."
/// url : "https://gizmodo.com/musk-and-trumps-fort-knox-trip-is-about-bitcoin-2000569420"
/// urlToImage : "https://gizmodo.com/app/uploads/2024/10/sec-bitcoin-hack-arrest.jpg"
/// publishedAt : "2025-02-27T19:05:24Z"
/// content : "Can a President make money out of thin air? On paper, yes.\r\nDonald Trump and Elon Musk have been talking a lot about Fort Knox lately, the place where America keeps its official gold reserves. Both h… [+3792 chars]"

class NewsArticle {
  NewsArticle({
      this.source, 
      this.author, 
      this.title, 
      this.description, 
      this.url, 
      this.urlToImage, 
      this.publishedAt, 
      this.content,});

  NewsArticle.fromJson(dynamic json) {
    source = json['source'] != null ? Source.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (source != null) {
      map['source'] = source?.toJson();
    }
    map['author'] = author;
    map['title'] = title;
    map['description'] = description;
    map['url'] = url;
    map['urlToImage'] = urlToImage;
    map['publishedAt'] = publishedAt;
    map['content'] = content;
    return map;
  }

}