import '../database.dart';

class CustomerPaymentsTable extends SupabaseTable<CustomerPaymentsRow> {
  @override
  String get tableName => 'customer_payments';

  @override
  CustomerPaymentsRow createRow(Map<String, dynamic> data) =>
      CustomerPaymentsRow(data);
}

class CustomerPaymentsRow extends SupabaseDataRow {
  CustomerPaymentsRow(super.data);

  @override
  SupabaseTable get table => CustomerPaymentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get rowId => getField<String>('row_id')!;
  set rowId(String value) => setField<String>('row_id', value);

  String get paymentUniqueId => getField<String>('payment_unique_id')!;
  set paymentUniqueId(String value) =>
      setField<String>('payment_unique_id', value);

  DateTime get paymentDate => getField<DateTime>('payment_date')!;
  set paymentDate(DateTime value) => setField<DateTime>('payment_date', value);

  double get paymentAmount => getField<double>('payment_amount')!;
  set paymentAmount(double value) => setField<double>('payment_amount', value);

  String get customerUid => getField<String>('customer_uid')!;
  set customerUid(String value) => setField<String>('customer_uid', value);

  String? get paymentMethod => getField<String>('payment_method');
  set paymentMethod(String? value) => setField<String>('payment_method', value);
}
