import 'package:dart_grpc_server/dart_grpc_server.dart';

abstract class ICategoriesService {
  factory ICategoriesService() => CategoriesServices();

  Category? getCategoryByName(String name) {}
  Category? getCategoryById(int id) {}
  Category? createCategory(Category category) {}
  Category? editCategory(Category category) {}
  Empty? deleteCategory(Category category) {}
  List<Category>? getCategories() {}
}

final categoriesServices = ICategoriesService();
