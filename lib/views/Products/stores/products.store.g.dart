// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductsStore on _ProductsStore, Store {
  final _$listProductsAtom = Atom(name: '_ProductsStore.listProducts');

  @override
  ObservableList<Produtos> get listProducts {
    _$listProductsAtom.reportRead();
    return super.listProducts;
  }

  @override
  set listProducts(ObservableList<Produtos> value) {
    _$listProductsAtom.reportWrite(value, super.listProducts, () {
      super.listProducts = value;
    });
  }

  final _$getProductsAsyncAction = AsyncAction('_ProductsStore.getProducts');

  @override
  Future getProducts() {
    return _$getProductsAsyncAction.run(() => super.getProducts());
  }

  @override
  String toString() {
    return '''
listProducts: ${listProducts}
    ''';
  }
}
