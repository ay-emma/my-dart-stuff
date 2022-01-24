import 'dart:io';

import '../../dart-course-materials/projects/simple_ecommerce/lib/cart.dart';
import '../../dart-course-materials/projects/simple_ecommerce/lib/product.dart';

const allProducts = [
  Product(id: 1, name: 'grape', price: 100.0),
  Product(id: 2, name: 'orange', price: 150.0),
  Product(id: 3, name: 'bannana', price: 50.0),
  Product(id: 4, name: 'corn', price: 80.0),
  Product(id: 5, name: 'groundnut', price: 60.0),
];

// loop
//   prompt: view cart / add item / checkout
//   if selection == add item
//     choose a product
//     add it to the cart
//     print cart
//   else if selection == view cart
//     print cart
//   else if selection == checkout
//     do checkout
//     exit
//   end
Product? chooseProduct() {
  final productList =
      allProducts.map((product) => product.displayName).join('\n');
  stdout.write('Available products: \n $productList \n  your choice:  ');

  //! debunk the breaking out of loop stuff
  final line = stdin.readLineSync();
  for (var product in allProducts) {
    if (line == product.initial) {
      return product;
    }
  }
  print('Not found');
  return null;
}

bool checkout(Cart cart) {
  if (cart.isEmpty) {
    print('Cart is empty');
    return false;
  }
  final total = cart.total();
  print('Total: $total');
  stdout.write('Payment in cash: ');
  final line = stdin.readLineSync();
  if (line == null || line.isEmpty) {
    return false;
  }
  final paid = double.tryParse(line);
  if (paid == null) {
    return false;
  }
  if (paid >= total) {
    final change = paid - total;
    print('Change: \$${change.toStringAsFixed(2)}');
    return true;
  } else {
    print("Not enough cash");
    return false;
  }
}

void main() {
  final cart = Cart();
  while (true) {
    stdout.write(
        "what do you want to do? (v)iew items, (a) add items, (c)heckout : ");

    final line = stdin.readLineSync();
    if (line?.toLowerCase() == 'a') {
      final product = chooseProduct();
      if (product != null) {
        cart.addProduct(product);
        print(cart);
      }
    } else if (line?.toLowerCase() == 'v') {
      print(cart);
    } else if (line?.toLowerCase() == 'c') {
      if (checkout(cart)) {
        break;
      }
    }
  }
}
