import 'package:http/http.dart' as http;
import 'package:shopify/models/product.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<Product>> fetchProducts() async {
    var response =
        await client.get(Uri.parse('https://fakestoreapi.com/products#'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return welcomeFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}
