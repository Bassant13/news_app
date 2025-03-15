
import 'Source.dart';

/// status : "ok"
/// sources : [{"id":"abc-news","name":"ABC News","description":"Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.","url":"https://abcnews.go.com","category":"general","language":"en","country":"us"},{"id":"abc-news-au","name":"ABC News (AU)","description":"Australia's most trusted source of local, national and world news. Comprehensive, independent, in-depth analysis, the latest business, sport, weather and more.","url":"https://www.abc.net.au/news","category":"general","language":"en","country":"au"},{"id":"aftenposten","name":"Aftenposten","description":"Norges ledende nettavis med alltid oppdaterte nyheter innenfor innenriks, utenriks, sport og kultur.","url":"https://www.aftenposten.no","category":"general","language":"no","country":"no"},{"id":"al-jazeera-english","name":"Al Jazeera English","description":"News, analysis from the Middle East and worldwide, multimedia and interactives, opinions, documentaries, podcasts, long reads and broadcast schedule.","url":"https://www.aljazeera.com","category":"general","language":"en","country":"us"},{"id":"ansa","name":"ANSA.it","description":"Agenzia ANSA: ultime notizie, foto, video e approfondimenti su: cronaca, politica, economia, regioni, mondo, sport, calcio, cultura e tecnologia.","url":"https://www.ansa.it","category":"general","language":"it","country":"it"},{"id":"argaam","name":"Argaam","description":"ارقام موقع متخصص في متابعة سوق الأسهم السعودي تداول - تاسي - مع تغطيه معمقة لشركات واسعار ومنتجات البتروكيماويات , تقارير مالية الاكتتابات الجديده ","url":"https://www.argaam.com","category":"business","language":"ar","country":"sa"}]

class SourceResponse {
  SourceResponse({
      this.status, 
      this.sources,
      this.code,
      this.message
  });

  SourceResponse.fromJson(dynamic json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    if (json['sources'] != null) {
      sources = [];
      json['sources'].forEach((v) {
        sources?.add(Source.fromJson(v));
      });
    }
  }
  String? status;
  List<Source>? sources;
  String? code;
  String? message;
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (sources != null) {
      map['sources'] = sources?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}