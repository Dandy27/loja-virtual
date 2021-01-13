import 'package:flutter/material.dart';
import 'package:loja_virtual_app/tabs/home_tab.dart';
import 'package:loja_virtual_app/tabs/products_tab.dart';
import 'package:loja_virtual_app/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('Produtos'),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: ProductsTab(

          ),
        ),
      ],
    );
  }
}
