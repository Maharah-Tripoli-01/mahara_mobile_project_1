import 'package:bloc/bloc.dart';
import 'package:maharah_project/application/cart_state.dart';

class CartBloc extends Cubit<CartState> {
  CartBloc(super.initialState);

  void addItem(Item item) {
    final List<Item> updateItem = [...state.cartItems, item];
    emit(
      state.copyWith(
        cartItems: updateItem,
        showSnackBar: true,
      ),
    );
  }

  void removeItem(int index) {
    final List<Item> updateItem = [...state.cartItems];

    updateItem.removeAt(index);
    emit(state.copyWith(cartItems: updateItem, showSnackBar: false));
  }
}
