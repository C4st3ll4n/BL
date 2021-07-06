import 'package:flutter/material.dart';
import 'package:marketeasy/views/Products/Widgets/ListProducts.dart';
import 'package:marketeasy/views/Products/stores/products.store.dart';
import 'package:provider/provider.dart';
class ProductsPage extends StatelessWidget {
  // const ProductsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsStore = Provider.of<ProductsStore>(context);


   return Scaffold(
     appBar: AppBar(
       title: Text('Produtos'),
     ),
     body: Column(
       children: [
         ListProducts(),
         ElevatedButton(onPressed: (){
           productsStore.getProducts();
         }, child: Text('Carregar produtos'))
       ],
     ),
   );
    // return Column(
    //
    //   children: [
    //   ListProducts(),
    //
    //   ],
    // );
  }
}
