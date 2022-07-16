import 'package:get/get.dart';
import 'package:statemanagement_api/models/product_model.dart';
import 'package:statemanagement_api/services/remote_services.dart';

class ProductController extends GetxController {
  var productlist = List<ProductModel>.empty().obs;

  @override
  void onInit() {
    fatchdata();
    super.onInit();
  }

  void fatchdata() async {
    var products = await RemoteServices.fatchproducts();
    if (products != null) {
      productlist.value = products;
    }
  }
}
