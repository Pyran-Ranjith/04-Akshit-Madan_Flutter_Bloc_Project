// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:fc_04_akshit_madan_bloc_project/features/home/ui/cart.dart';
import 'package:fc_04_akshit_madan_bloc_project/features/home/ui/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_bloc.dart';

class Home extends StatefulWidget {
  // const Home({super.key});
  const Home({super.key, required this.title});
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeNavigateToCartPageActionState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Cart()));
        } else if (state is HomeNavigateToWishlistPageActionState) {
          Navigator.push(
              // context, MaterialPageRoute(builder: (context) => Wishlist()));
                    context, MaterialPageRoute(builder: (context) => Cart()));
  }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // title: const Text("1st Page"),
        title: Text(widget.title),
      // ),
      // appBar: AppBar(
      //       title: Text('Ranjith Grocery App'),
            actions: [
              IconButton(
                  onPressed: () {
                    homeBloc.add(HomeWishlistButtonNavigateEvent());
                  },
                  icon: Icon(Icons.favorite_border)),
              IconButton(
                  onPressed: () {
                    homeBloc.add(HomeProductCartButtonClickedEvent());
                  },
                  icon: Icon(Icons.shopping_basket_outlined)),
            ],
          ),
        );
      },
    );
  }
}
