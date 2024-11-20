import '../database.dart';

class PurchaseOrdersTable extends SupabaseTable<PurchaseOrdersRow> {
  @override
  String get tableName => 'purchase_orders';

  @override
  PurchaseOrdersRow createRow(Map<String, dynamic> data) =>
      PurchaseOrdersRow(data);
}

class PurchaseOrdersRow extends SupabaseDataRow {
  PurchaseOrdersRow(super.data);

  @override
  SupabaseTable get table => PurchaseOrdersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dateOfPurchase => getField<DateTime>('date_of_purchase')!;
  set dateOfPurchase(DateTime value) =>
      setField<DateTime>('date_of_purchase', value);

  String get poTemplate => getField<String>('po_template')!;
  set poTemplate(String value) => setField<String>('po_template', value);

  String get accountUid => getField<String>('account_uid')!;
  set accountUid(String value) => setField<String>('account_uid', value);

  int get dateFormattedPaymentDate =>
      getField<int>('date_formatted_payment_date')!;
  set dateFormattedPaymentDate(int value) =>
      setField<int>('date_formatted_payment_date', value);

  double? get totalAmount => getField<double>('total_amount');
  set totalAmount(double? value) => setField<double>('total_amount', value);

  String? get paymentStatus => getField<String>('payment_status');
  set paymentStatus(String? value) => setField<String>('payment_status', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);
}
