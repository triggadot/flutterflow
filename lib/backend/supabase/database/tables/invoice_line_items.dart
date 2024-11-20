import '../database.dart';

class InvoiceLineItemsTable extends SupabaseTable<InvoiceLineItemsRow> {
  @override
  String get tableName => 'invoice_line_items';

  @override
  InvoiceLineItemsRow createRow(Map<String, dynamic> data) =>
      InvoiceLineItemsRow(data);
}

class InvoiceLineItemsRow extends SupabaseDataRow {
  InvoiceLineItemsRow(super.data);

  @override
  SupabaseTable get table => InvoiceLineItemsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get invoiceId => getField<String>('invoice_id');
  set invoiceId(String? value) => setField<String>('invoice_id', value);

  String? get vendorUidOfProduct => getField<String>('vendor_uid_of_product');
  set vendorUidOfProduct(String? value) =>
      setField<String>('vendor_uid_of_product', value);

  String? get customerAccountUid => getField<String>('customer_account_uid');
  set customerAccountUid(String? value) =>
      setField<String>('customer_account_uid', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  int? get totalStockAfterSell => getField<int>('total_stock_after_sell');
  set totalStockAfterSell(int? value) =>
      setField<int>('total_stock_after_sell', value);

  double? get unitPrice => getField<double>('unit_price');
  set unitPrice(double? value) => setField<double>('unit_price', value);

  DateTime? get saleDate => getField<DateTime>('sale_date');
  set saleDate(DateTime? value) => setField<DateTime>('sale_date', value);

  String? get productSku => getField<String>('product_sku');
  set productSku(String? value) => setField<String>('product_sku', value);

  String? get customerUid => getField<String>('customer_uid');
  set customerUid(String? value) => setField<String>('customer_uid', value);

  String? get originalProductName => getField<String>('original_product_name');
  set originalProductName(String? value) =>
      setField<String>('original_product_name', value);

  String? get invId => getField<String>('inv_id');
  set invId(String? value) => setField<String>('inv_id', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
