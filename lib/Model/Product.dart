class Product {
  late final int id_categories;
  late final String cate_name;
  Product({required this.id_categories, required this.cate_name});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id_categories: json['id'],
      cate_name: json['name'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id_categories,
    'Cate': cate_name,
  };
}