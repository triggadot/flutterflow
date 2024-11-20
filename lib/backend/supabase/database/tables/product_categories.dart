import '../database.dart';

class ProductCategoriesTable extends SupabaseTable<ProductCategoriesRow> {
  @override
  String get tableName => 'product_categories';

  @override
  ProductCategoriesRow createRow(Map<String, dynamic> data) =>
      ProductCategoriesRow(data);
}

class ProductCategoriesRow extends SupabaseDataRow {
  ProductCategoriesRow(super.data);

  @override
  SupabaseTable get table => ProductCategoriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get category => getField<String>('category')!;
  set category(String value) => setField<String>('category', value);

  String? get categoryImage => getField<String>('category_image');
  set categoryImage(String? value) => setField<String>('category_image', value);

  String? get categoryDisplayForFlower =>
      getField<String>('category_display_for_flower');
  set categoryDisplayForFlower(String? value) =>
      setField<String>('category_display_for_flower', value);

  String? get choiceVendorOrCustomerView =>
      getField<String>('choice_vendor_or_customer_view');
  set choiceVendorOrCustomerView(String? value) =>
      setField<String>('choice_vendor_or_customer_view', value);
}
