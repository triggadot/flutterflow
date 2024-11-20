import '../database.dart';

class EstimateLineItemsTable extends SupabaseTable<EstimateLineItemsRow> {
  @override
  String get tableName => 'estimate_line_items';

  @override
  EstimateLineItemsRow createRow(Map<String, dynamic> data) =>
      EstimateLineItemsRow(data);
}

class EstimateLineItemsRow extends SupabaseDataRow {
  EstimateLineItemsRow(super.data);

  @override
  SupabaseTable get table => EstimateLineItemsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get rowId => getField<String>('row_id')!;
  set rowId(String value) => setField<String>('row_id', value);

  String? get originalProductName => getField<String>('original_product_name');
  set originalProductName(String? value) =>
      setField<String>('original_product_name', value);

  DateTime? get dateOfSale => getField<DateTime>('date_of_sale');
  set dateOfSale(DateTime? value) => setField<DateTime>('date_of_sale', value);

  String get saleProductName => getField<String>('sale_product_name')!;
  set saleProductName(String value) =>
      setField<String>('sale_product_name', value);

  double get sellingPrice => getField<double>('selling_price')!;
  set sellingPrice(double value) => setField<double>('selling_price', value);

  String? get vendorUidOfProduct => getField<String>('vendor_uid_of_product');
  set vendorUidOfProduct(String? value) =>
      setField<String>('vendor_uid_of_product', value);

  int? get totalStockAfterSell => getField<int>('total_stock_after_sell');
  set totalStockAfterSell(int? value) =>
      setField<int>('total_stock_after_sell', value);

  String? get customerAccountUid => getField<String>('customer_account_uid');
  set customerAccountUid(String? value) =>
      setField<String>('customer_account_uid', value);

  int get qtySold => getField<int>('qty_sold')!;
  set qtySold(int value) => setField<int>('qty_sold', value);

  String get productSku => getField<String>('product_sku')!;
  set productSku(String value) => setField<String>('product_sku', value);

  DateTime get estimateDate => getField<DateTime>('estimate_date')!;
  set estimateDate(DateTime value) =>
      setField<DateTime>('estimate_date', value);
}
