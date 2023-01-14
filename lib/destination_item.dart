import 'package:flutter/material.dart';
import 'package:new_favin/cart_provider.dart';
import 'package:provider/provider.dart';

import 'package:new_favin/destination_provider.dart';

//import './destination_model.dart';

class DestinationItem extends StatelessWidget {
  //const DestinationItem({super.key});

  final String title;
  final int stars;
  final double price;
  //final int amount;
  //final double totalPrice;
  final String type;
  final String tours;
  final int people;
  final String id;
  final String image;

  DestinationItem(
    this.title,
    this.stars,
    this.price,
    this.type,
    this.tours,
    this.people,
    this.image,
    this.id,
  );

  @override
  Widget build(BuildContext context) {
    final destin = Provider.of<DestinationProvider>(context);
    final cart = Provider.of<CartProvider>(context, listen: false);
    return InkWell(
      onTap: () {
        final newD = destin.destinations.firstWhere((element) => element.dId == id);
        cart.addItem(newD.dId, newD.price, newD.title);
      },
      // ignore: sort_child_properties_last
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 300,
        height: 210,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      //dest.destinations.map((e) => null);
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    // for(var i = 0; i < 5; i++) {
                    //   Icon(Icons.star, color: Colors.orange,);
                    // },
                    Icon(Icons.star, color: Colors.orange,),
                    SizedBox(height: 20),
                    Text('Start From'),
                    SizedBox(height: 10),
                    //Spacer(),
                    Row(
                      children: [
                        Text(
                          '\$$price',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Text('/person'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(5),
              height: 30,
              width: 350,
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Text('\u2022 $type'),
                SizedBox(width: 15),
                Text('\u2022 $tours'),
                SizedBox(width: 15),
                Text('\u2022 $people Person'),
              ],),
            ),
          ],
        ),
      ),
    );
  }
}
