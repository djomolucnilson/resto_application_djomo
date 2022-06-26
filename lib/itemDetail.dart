import 'package:flutter/material.dart';

import 'package:resto_application/add.dart';

import 'item.dart';

class ItemDetail extends StatelessWidget {
  final ItemMenu item;
  const ItemDetail({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.placeName),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Image.asset(
                                 item.placeImage,
                                 width: 600,
                                 height: 400,
                                fit: BoxFit.cover,
                              ),
              SizedBox(height: 90,),
              Container(
                padding: const EdgeInsets.all(32),
                child: Row(
                  children: [
                    Expanded(
                      /*1*/
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /*2*/
                          Container(
                            padding: EdgeInsets.only(bottom: 8),

                            child: Text(
                              item.placeName,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            item.items,
                            style: TextStyle(
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ),
                    /*3*/
                    Icon(
                      Icons.star,
                      color: Colors.black,
                    ),
                    Text('${item.prix} fcfa'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
