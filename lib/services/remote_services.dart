import 'package:http/http.dart' as http;
import 'package:statemanagement_api/models/product_model.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<ProductModel>> fatchproducts() async {
    var response = await client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      var jasonString = response.body;
      return welcomeFromJson(jasonString);
    } else {
      return [];
    }
  }
}
