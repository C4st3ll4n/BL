import 'package:marketeasy/models/product.dart';
import 'package:marketeasy/repositories/products_repository.dart';
import 'package:mobx/mobx.dart';



part 'products.store.g.dart';

class ProductsStore = _ProductsStore with _$ProductsStore;
abstract class _ProductsStore with Store {
 ProductsRepository _productsRepository = ProductsRepository();

  @observable
  ObservableList<Produtos> listProducts = ObservableList();


  @action
  getProducts() async {
    listProducts =
        ObservableList.of(await _productsRepository.getProducts());
    print(listProducts);
  }

}