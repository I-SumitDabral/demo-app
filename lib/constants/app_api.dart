class AppApi {
  AppApi._();
  static const String baseUrl = 'https://hub.dummyapis.com';
  static const String employee = '/employee?noofRecords=10&idStarts=1001';
  static const String product =
      '/products?noofRecords=10&idStarts=1001&currency=usd';
  static const String imageList =
      '/ImagesList?text=Test&noofimages=10&height=120&width=120';
  static const String singledataWithoutId =
      '/singlelist?text=Test&noofRecords=10';
  static const String singledataWithId =
      '/singlelistwithid?text=Test&noofRecords=10';
}
