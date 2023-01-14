import 'package:flutter/material.dart';
import 'package:new_favin/cart_provider.dart';
import 'package:new_favin/cart_screen.dart';
import 'package:new_favin/destination_provider.dart';
import 'package:provider/provider.dart';

import 'package:new_favin/under_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => CartProvider(),),
        ChangeNotifierProvider(
          create: (ctx) => DestinationProvider(),),
      ],
      child: MaterialApp(
          title: 'Favin',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(title: 'Favin Home Page'),
          routes: {
            CartScreen.routeName:(context) => CartScreen(),
          },
        ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context, listen: false);
    final destin = Provider.of<DestinationProvider>(context, listen: false);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: kToolbarHeight + 2,
          actions: [
            IconButton(onPressed: () {
              Navigator.of(context).pushNamed(CartScreen.routeName);
            }, icon: Icon(Icons.shopping_cart))
          ],
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(45),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  tabs: [
                    Tab(text: 'Trending'),
                    Tab(text: 'Featured'),
                    Tab(text: 'New'),
                  ],
                  isScrollable: true,
                  
                ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            UnderAppBar(),
            Center(child: Text('test')),
            Center(child: Text('test')),
          ],
        ),
      ),
    );
  }
}
