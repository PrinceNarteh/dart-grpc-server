import 'package:grpc/grpc.dart';
import 'package:dart_grpc_server/dart_grpc_server.dart';

class GroceriesService extends GroceriesServiceBase {
  @override
  Future<Category> createCategory(ServiceCall call, Category category) async =>
      categoriesServices.createCategory(category)!;

  @override
  Future<Item> createItem(ServiceCall call, Item request) {
    // TODO: implement createItem
    throw UnimplementedError();
  }

  @override
  Future<Empty> deleleCategory(ServiceCall call, Category request) {
    // TODO: implement deleleCategory
    throw UnimplementedError();
  }

  @override
  Future<Empty> deleteItem(ServiceCall call, Item request) {
    // TODO: implement deleteItem
    throw UnimplementedError();
  }

  @override
  Future<Category> editCategory(ServiceCall call, Category request) {
    // TODO: implement editCategory
    throw UnimplementedError();
  }

  @override
  Future<Item> editItem(ServiceCall call, Item request) {
    // TODO: implement editItem
    throw UnimplementedError();
  }

  @override
  Future<Categories> getAllCategories(ServiceCall call, Empty request) {
    // TODO: implement getAllCategories
    throw UnimplementedError();
  }

  @override
  Future<Items> getAllItems(ServiceCall call, Empty request) {
    // TODO: implement getAllItemss
    throw UnimplementedError();
  }

  @override
  Future<Category> getCategory(ServiceCall call, Category request) {
    // TODO: implement getCategory
    throw UnimplementedError();
  }

  @override
  Future<Item> getItem(ServiceCall call, Item request) {
    // TODO: implement getItem
    throw UnimplementedError();
  }

  @override
  Future<AllItemsofCategory> getItemsByCategory(
      ServiceCall call, Category request) {
    // TODO: implement getItemsByCategory
    throw UnimplementedError();
  }
}

Future<void> main(List<String> args) async {
  final server = Server(
    [GroceriesService()],
    const <Interceptor>[],
    CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );
  await server.serve(port: 5000);
  print('✅ Server listening on port ${server.port}...');
}
