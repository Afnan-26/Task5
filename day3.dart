// task 1
/* *******1*******
 Class ==> Blueprint for creating objects (instances).

 class Person {
   String name = 'Afnan';
 }

 Object ==> An Instance of a class.

 void main() {
   var person = Person();
   print(person.name);
 }


 *******2*******
Constructor ==> Special method to initialize objects.
Default Constructor
Parameterized Constructor
Named Constructor 
Constant Constructor


 *******3*******

No Dart does not have public, private, or protected keywords like Java.
Dart By default, everything is public.
To make something private, prefix its name with an underscore _ ==>it becomes private to the library (not just the class).


 *************4**********
Encapsulation ==> Protect data using private fields and public methods.
 Getter and Setter ==> Control how properties are accessed and changed.

*************5****************
Use setter instead of public variable because it allows validation,
security,and encapsulation,while public variables expose data with no control.
 */

// task2
class BankAccount {
  double _balance = 0;
  double get balance => _balance;
  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }
}

// task 3
class User {
  String _username = "";
  set username(String name) {
    if (name.isNotEmpty) {
      _username = name;
    }
  }

  String get username => _username;
}

// task 4
class Product {
  int _id;
  String _name;
  double _price;
  Product(this._id, this._name, this._price);
  int get id => _id;
  String get name => _name;
  double get price => _price;
  set price(double value) {
    if (value > 0) {
      _price = value;
    }
  }
}

class Cart {
  List<Product> products = [];
  void addProduct(Product p) {
    products.add(p);
  }

  void removeProduct(Product p) {
    products.remove(p);
  }
  
  void showCart() {
    double total = 0;
    print("Cart Contents:");
    for (var p in products) {
      print("- ${p.name} : \$${p.price}");
      total += p.price;
    }
    print("Total Price: \$${total}");
  }
}

void main() {
  // task 2
  var account = BankAccount();
  account.deposit = 100;
  print(account.balance);
  account.deposit = -5;
  print(account.balance);

  // task 3
  var user = User();
  user.username = "Afnan";
  print(user.username);

  user.username = "";
  print(user.username);

  // task 4
  var p1 = Product(1, "Laptop", 1500);
  var p2 = Product(2, "Phone", 3000);
  var p3 = Product(3, "Headphones", 100);
  var cart = Cart();
  cart.addProduct(p1);
  cart.addProduct(p3);
  cart.showCart();
}
