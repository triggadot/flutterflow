import '../database.dart';

class InvoicesTable extends SupabaseTable<InvoicesRow> {
  @override
  String get tableName => 'invoices';

  @override
  InvoicesRow createRow(Map<String, dynamic> data) => InvoicesRow(data);
}

class InvoicesRow extends SupabaseDataRow {
  InvoicesRow(super.data);

  @override
  SupabaseTable get table => InvoicesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get invUid => getField<String>('inv_uid')!;
  set invUid(String value) => setField<String>('inv_uid', value);

  DateTime get invoiceDate => getField<DateTime>('invoice_date')!;
  set invoiceDate(DateTime value) => setField<DateTime>('invoice_date', value);

  String get accountName => getField<String>('account_name')!;
  set accountName(String value) => setField<String>('account_name', value);

  String get accountUid => getField<String>('account_uid')!;
  set accountUid(String value) => setField<String>('account_uid', value);

  double? get totalAmount => getField<double>('total_amount');
  set totalAmount(double? value) => setField<double>('total_amount', value);

  String? get paymentStatus => getField<String>('payment_status');
  set paymentStatus(String? value) => setField<String>('payment_status', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);
}
