import 'package:flutter/material.dart';

// EX 3 – The products (handout page: EX 3)
// Part 1: build ONE product card (images are in assets/ex3/).
// Part 2: create the Product enum (follow the UML in the handout).
// Part 3: extract the card into a StatelessWidget called ProductCard.
const String ImageDart = 'assets/ex3/dart.png';
const String ImageFirebase = 'assets/ex3/firebase.png';
const String ImageFlutter = 'assets/ex3/flutter.png';

enum Product {
  dart(
    title: 'Dart',
    description:'The best object language',
    images: ImageDart,
  ),
  flutter(
    title: 'Flutter',
    description: 'the best mobile widget library',
    images: ImageFlutter,
  ),
  firebase(
    title: 'Firebase',
    description: 'the best cloud database',
    images: ImageFirebase,
  );

   final String title;
   final String description;
   final String images;

  const Product({
    required this.title,
    required this.description,
    required this.images,
  });
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
        backgroundColor: Colors.blue,
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ProductCard(product: Product.dart),
              ProductCard(product: Product.flutter),
              ProductCard(product: Product.firebase),
            ],
          ),
        ), // YOUR CODE
      ),
    ),
  );
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                product.images,
                height: 50,
                width: 50,
              ),
              Text(
                product.title,
                style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                ),
              ),
              Text(
                product.description,
                style: const TextStyle(
                color: Colors.black,
                fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }