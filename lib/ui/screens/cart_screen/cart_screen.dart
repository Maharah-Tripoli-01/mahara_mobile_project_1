import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maharah_project/application/cart_cubit.dart';
import 'package:maharah_project/application/cart_state.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cart Screen"),
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: CartItems(
              items: state.cartItems,
            ),
          );
        },
      ),
    );
  }
}

class CartItems extends StatelessWidget {
  const CartItems({super.key, required this.items});

  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return CartItem(
          quantity: items[index].quantity,
          name: items[index].name,
          index: index,
          price: items[index].price,
        );
      },
      itemCount: items.length,
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.price,
    required this.name,
    required this.index,
    required this.quantity,
  });

  final String name;

  final double price;
  final int quantity;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            quantity.toString(),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            price.toString(),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: () {
              context.read<CartBloc>().removeItem(index);
            },
            child: const Icon(
              Icons.delete,
              color: Colors.red,
              size: 24,
            ),
          )
        ],
      ),
    );
  }
}
