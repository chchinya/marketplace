import 'package:flutter/material.dart';
import 'package:marketplace/list.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({super.key, required this.numb});

  final int numb;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(product_name[numb]),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(children: <Widget>[
              Expanded(
                  flex: 5, child: Image.network('${images_product[numb]}')),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 150),
                    child: Row(
                      children: <Widget>[
                        const Text(
                          'Цена:  ',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${product_price[numb]}',
                          style: const TextStyle(
                              color: Color.fromARGB(255, 246, 3, 3),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: ListView(children: <Widget>[
                  Text(
                    '${product_info[numb]}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    softWrap: true,
                  ),
                ]),
              ),
            ]),
          ),
        ));
  }
}
