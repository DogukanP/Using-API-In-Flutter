import 'package:http/http.dart' as http;

class ProductApi {
  static Future getProducts() {
    return http.get("http://10.0.2.2:3000/products");
    //normalde http://localhost:3000/products budur ancak emülatörün localhostunu yazıyoruz o da 10.0.2.2
  }

  static Future getProductsByCategoryId(int categoryId) {
    return http.get("http://10.0.2.2:3000/products?categoryId=$categoryId");
  }
}
