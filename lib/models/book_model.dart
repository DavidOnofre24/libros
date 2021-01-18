import 'dart:convert';

Book bookFromJson(String str) => Book.fromJson(json.decode(str));

String bookToJson(Book data) => json.encode(data.toJson());

class Books {
  List<Book> items = new List();
  Books();

  Books.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final libro = new Book.fromJson(item);
      items.add(libro);
    }
  }
}

class Book {
  Book({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  int userId;
  int id;
  String title;
  bool completed;

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
      };
}
