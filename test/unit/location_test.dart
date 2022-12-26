import 'dart:convert';
import 'package:test/test.dart';

void main() {
  test("test location deserialisation", () {
    const locationJSON =
        '{"name":"Arashiyama Bamboo Grove","url":"https://cdn-images-1.medium.com/max/2000/1*vdJuSUKW1_SA9Lp-32ebnA.jpeg", "facts" : [{"title":"Summary","text":"This bamboo grove is on the outskrits of Kyoto."}]}';
    final locationMap = json.decode(locationJSON) as Map<String, dynamic>;

    expect("Arashiyama Bamboo Grove", locationMap['name']);
  });
}
