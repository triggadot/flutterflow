import '../database.dart';

class ProductsTable extends SupabaseTable<ProductsRow> {
  @override
  String get tableName => 'products';

  @override
  ProductsRow createRow(Map<String, dynamic> data) => ProductsRow(data);
}

class ProductsRow extends SupabaseDataRow {
  ProductsRow(super.data);

  @override
  SupabaseTable get table => ProductsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get purchaseOrderUid => getField<String>('purchase_order_uid')!;
  set purchaseOrderUid(String value) =>
      setField<String>('purchase_order_uid', value);

  String get vendorUid => getField<String>('vendor_uid')!;
  set vendorUid(String value) => setField<String>('vendor_uid', value);

  String get productName => getField<String>('product_name')!;
  set productName(String value) => setField<String>('product_name', value);

  DateTime get purchaseDate => getField<DateTime>('purchase_date')!;
  set purchaseDate(DateTime value) =>
      setField<DateTime>('purchase_date', value);

  double get cost => getField<double>('cost')!;
  set cost(double value) => setField<double>('cost', value);

  int get totalQtyPurchased => getField<int>('total_qty_purchased')!;
  set totalQtyPurchased(int value) =>
      setField<int>('total_qty_purchased', value);

  bool? get samplesOrFronted => getField<bool>('samples_or_fronted');
  set samplesOrFronted(bool? value) =>
      setField<bool>('samples_or_fronted', value);

  String? get miscellaneousItem => getField<String>('miscellaneous_item');
  set miscellaneousItem(String? value) =>
      setField<String>('miscellaneous_item', value);

  bool? get fronted => getField<bool>('fronted');
  set fronted(bool? value) => setField<bool>('fronted', value);

  bool? get samples => getField<bool>('samples');
  set samples(bool? value) => setField<bool>('samples', value);

  bool? get miscellaneousItems => getField<bool>('miscellaneous_items');
  set miscellaneousItems(bool? value) =>
      setField<bool>('miscellaneous_items', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  int? get totalUnitsBehindSample => getField<int>('total_units_behind_sample');
  set totalUnitsBehindSample(int? value) =>
      setField<int>('total_units_behind_sample', value);

  int? get currentStock => getField<int>('current_stock');
  set currentStock(int? value) => setField<int>('current_stock', value);

  int? get reorderPoint => getField<int>('reorder_point');
  set reorderPoint(int? value) => setField<int>('reorder_point', value);

  DateTime? get lastRestockDate => getField<DateTime>('last_restock_date');
  set lastRestockDate(DateTime? value) =>
      setField<DateTime>('last_restock_date', value);

  double? get averageCost => getField<double>('average_cost');
  set averageCost(double? value) => setField<double>('average_cost', value);

  String? get productNameTsv => getField<String>('product_name_tsv');
  set productNameTsv(String? value) =>
      setField<String>('product_name_tsv', value);
}
