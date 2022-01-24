import '../../../dart-course-materials/projects/simple_ecommerce/lib/item.dart';
import '../../../dart-course-materials/projects/simple_ecommerce/lib/product.dart';

class Cart {
  final Map<int, Item> _item = {};

  bool get isEmpty => _item.isEmpty;

  void addProduct(Product product) {
    final item = _item[product.id];
    if (item == null) {
      _item[product.id] = Item(product: product);
    } else {
      _item[product.id] = Item(product: product, quantity: item.quantity + 1);
    }
  }

  double total() => _item.values
      .map((item) => item.price)
      .reduce((value, element) => value + element);

  @override
  String toString() {
    if (_item.isEmpty) {
      return "Cart is empty";
    }
    final itemizedList = _item.values.map((Item) => Item.toString()).join("\n");
    return '------\n$itemizedList \n Total: \$${total()}\n-------';
  }
  // double get total => items.reduce((value, element) => value.price + element.price  )
}
