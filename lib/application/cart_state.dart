class CartState {
  CartState({
    required this.cartItems,
    required this.showSnackBar,
  });

  final List<Item> cartItems;
  final bool showSnackBar;

  CartState copyWith({
    List<Item>? cartItems,
    bool? showSnackBar,
  }) {
    return CartState(
      cartItems: cartItems ?? this.cartItems,
      showSnackBar: showSnackBar ?? this.showSnackBar,
    );
  }
}

class Item {
  Item({
    required this.name,
    required this.id,
    required this.quantity,
    required this.price,
  });

  final int id;
  final String name;
  final int quantity;
  final double price;

  Item copyWith({
    int? id,
    String? name,
    int? quantity,
    double? price,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
    );
  }
}
