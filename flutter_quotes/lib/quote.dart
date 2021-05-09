class Quote {
  String id;
  String text;
  String author;

  Quote({this.text, this.author});
  Quote.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    text = parsedJson['text'];
    author = parsedJson['author'];
  }
}
