import 'dart:convert';
import 'dart:async';
import 'package:libreria/models/book_model.dart';
import 'package:http/http.dart' as http;

class BookProvider {
  String _url = 'jsonplaceholder.typicode.com';

  Future<List<Book>> _procesarRespuesta(Uri url) async {
    final resp = await http.get(url);
    final decodeData = jsonDecode(resp.body);
    final book = Books.fromJsonList(decodeData);
    print(decodeData);
    return book.items;
  }

  final _booksStreamController = new StreamController<
      List<
          Book>>.broadcast(); // Stream sirve para manejar flujo de datos, broadcast sirve como si fuera un atributo publico

  Function(List<Book>) get booksSink => _booksStreamController.sink.add;

  Stream<List<Book>> get booksStream => _booksStreamController.stream;
  void disposeStreams() {
    _booksStreamController?.close();
  }

  Future<List<Book>> getBook() async {
    final url = Uri.https(_url, 'todos/');

    return await _procesarRespuesta(url);
  }
}
