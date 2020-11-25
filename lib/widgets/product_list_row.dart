import 'package:flutter/material.dart';
import 'package:http_demo/models/product.dart';

class ProductListRowWidget extends StatelessWidget {
  Product product;

  ProductListRowWidget(this.product);
  @override
  Widget build(BuildContext context) {
    return buildProductItemCard(context);
  }

  Widget buildProductItemCard(BuildContext context) {
    //card oluşturma
    return InkWell(
      child: Card(
        child: Column(
          children: [
            Container(
              child: Image.network(
                  "https://0.academia-photos.com/82514768/19870705/19688089/s200_do_ukan.padel.jpg"),
              height: 130,
              width: MediaQuery.of(context).size.width /
                  2, //telefonun genişliğini almaya yarıyor
            ),
            Text(
              product.productName,
              style: TextStyle(fontSize: 12, color: Colors.blueGrey),
            ),
            Text(
              product.unitPrice.toString() + " TL",
              style: TextStyle(fontSize: 20, color: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}
