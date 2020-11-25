import 'package:flutter/material.dart';
import 'package:http_demo/models/product.dart';
import 'package:http_demo/widgets/product_list_row.dart';

class ProductListWidget extends StatefulWidget {
  List<Product> products = new List<Product>();
  ProductListWidget(List<Product> products) {
    this.products = products;
  }

  @override
  State<StatefulWidget> createState() {
    return ProductListWidgetState();
  }
}

class ProductListWidgetState extends State<ProductListWidget> {
  //<ProductListWidget> eklememizdeki amaç aşağıdaki listview da product a erişebilmek
  @override
  Widget build(BuildContext context) {
    return buildProductList(context);
  }

  Widget buildProductList(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 500,
          child: GridView.count(
            crossAxisCount: 2, //her satırda 2 eleman
            children: List.generate(widget.products.length, (index) {
              return ProductListRowWidget(widget.products[index]);
            }),
          ),
        ),
      ],
    );
  }
}
