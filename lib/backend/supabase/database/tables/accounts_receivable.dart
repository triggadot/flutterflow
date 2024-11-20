import '../database.dart';

class AccountsReceivableTable extends SupabaseTable<AccountsReceivableRow> {
  @override
  String get tableName => 'accounts_receivable';

  @override
  AccountsReceivableRow createRow(Map<String, dynamic> data) =>
      AccountsReceivableRow(data);
}

class AccountsReceivableRow extends SupabaseDataRow {
  AccountsReceivableRow(super.data);

  @override
  SupabaseTable get table => AccountsReceivableTable();

  String? get invUid => getField<String>('inv_uid');
  set invUid(String? value) => setField<String>('inv_uid', value);

  DateTime? get invoiceDate => getField<DateTime>('invoice_date');
  set invoiceDate(DateTime? value) => setField<DateTime>('invoice_date', value);

  String? get accountUid => getField<String>('account_uid');
  set accountUid(String? value) => setField<String>('account_uid', value);

  double? get totalAmount => getField<double>('total_amount');
  set totalAmount(double? value) => setField<double>('total_amount', value);

  String? get paymentStatus => getField<String>('payment_status');
  set paymentStatus(String? value) => setField<String>('payment_status', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);

  String? get accountName => getField<String>('account_name');
  set accountName(String? value) => setField<String>('account_name', value);

  double? get paidAmount => getField<double>('paid_amount');
  set paidAmount(double? value) => setField<double>('paid_amount', value);

  double? get balanceDue => getField<double>('balance_due');
  set balanceDue(double? value) => setField<double>('balance_due', value);
}
