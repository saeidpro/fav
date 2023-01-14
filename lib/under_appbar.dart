import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:new_favin/destination_item.dart';
import './destination_provider.dart';

class UnderAppBar extends StatelessWidget {
  const UnderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final des = Provider.of<DestinationProvider>(context);
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                'Travel \nAround The World',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                color: Theme.of(context).primaryColorLight,
                child: Row(
                  children: const [
                    Icon(Icons.pin_drop, color: Colors.white),
                    SizedBox(width: 5),
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Search your destinations...',
                          hintStyle: TextStyle(color: Colors.white),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 500,
              child: ListView(
                children: [
                  //des.destinations,
                  DestinationItem('The Grand Canyon', 4, 60, 'History, Cultural',
                      '2 tours in Asia', 3, 'assets/images/grand_canyon.jpg', 'a'),
                  DestinationItem('Bali Tourism', 4, 145, 'Sea Beach, Natural',
                      '1 tour', 5, 'assets/images/bali.jpg', 'b'),
                  DestinationItem('Costa Rica Tourism', 4, 85, 'Jungle, Natural',
                      '1 tour', 2, 'assets/images/costa_rica.jpg', 'c'),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
