import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:marketeasy/views/Products/stores/products.store.dart';
import 'package:provider/provider.dart';

class ListProducts extends StatefulWidget {
  @override
  _ListProductsState createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {

  @override
  Widget build(BuildContext context) {
    final productsStore = Provider.of<ProductsStore>(context);


    return Observer(builder: (_){
      return productsStore.listProducts != null
          ?
          Expanded(
              child:
          ListView.builder(
            itemCount: productsStore.listProducts.length,
              itemBuilder: (BuildContext context, int index){
            return Container(
              height: 50,
              child: Column(
                children: [
                  Text(productsStore.listProducts[index].descricao),
                  Text('${productsStore.listProducts[index].preco}'),
                ],
              ),
            );
          }))
          : CircularProgressIndicator();
    });
  }
}
