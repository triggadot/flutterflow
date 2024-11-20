import '../database.dart';

class VendorPaymentsTable extends SupabaseTable<VendorPaymentsRow> {
  @override
  String get tableName => 'vendor_payments';

  @override
  VendorPaymentsRow createRow(Map<String, dynamic> data) =>
      VendorPaymentsRow(data);
}

class VendorPaymentsRow extends SupabaseDataRow {
  VendorPaymentsRow(super.data);

  @override
  SupabaseTable get table => VendorPaymentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get vendorPaymentId => getField<String>('vendor_payment_id')!;
  set vendorPaymentId(String value) =>
      setField<String>('vendor_payment_id', value);

  double get paymentAmount => getField<double>('payment_amount')!;
  set paymentAmount(double value) => setField<double>('payment_amount', value);

  DateTime get dateOfPurchase => getField<DateTime>('date_of_purchase')!;
  set dateOfPurchase(DateTime value) =>
      setField<DateTime>('date_of_purchase', value);

  String get vendorUid => getField<String>('vendor_uid')!;
  set vendorUid(String value) => setField<String>('vendor_uid', value);

  String get purchaseOrderUid => getField<String>('purchase_order_uid')!;
  set purchaseOrderUid(String value) =>
      setField<String>('purchase_order_uid', value);

  DateTime get paymentDate => getField<DateTime>('payment_date')!;
  set paymentDate(DateTime value) => setField<DateTime>('payment_date', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get paymentMethod => getField<String>('payment_method');
  set paymentMethod(String? value) => setField<String>('payment_method', value);
}
