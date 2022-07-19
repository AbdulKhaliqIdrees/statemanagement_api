import 'package:get/get.dart';
import 'package:statemanagement_api/models/product_model.dart';
import 'package:statemanagement_api/services/remote_services.dart';

class ProductController extends GetxController {
  var loading = true.obs;
  var productlist = List<ProductModel>.empty().obs;

  @override
  void onInit() {
    fatchdata();
    super.onInit();
  }

  void fatchdata() async {
    try {
      loading(true);
      var products = await RemoteServices.fatchproducts();
      if (products != null) {
        productlist.value = products;
      }
    } finally {
      loading(false);
    }
  }
}
