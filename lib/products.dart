import 'package:flutter/material.dart';
import 'package:marketplace/cart.dart';

class ItemList extends StatelessWidget {
  const ItemList(
      {super.key,
      required this.images,
      required this.name,
      required this.index_number,
      required this.price});

  final String images;
  final String name;
  final int index_number;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          Expanded(flex: 2, child: Image.network('${images}')),
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: <Widget>[
                      const Text(
                        "Цена:   ",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${price}',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 246, 3, 3),
                            fontSize: 30,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    '${name}',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProductCart(number: index_number)),
                      );
                    },
                    child: Text('О товаре')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
