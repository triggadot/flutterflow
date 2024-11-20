import '../database.dart';

class AccountsPayableTable extends SupabaseTable<AccountsPayableRow> {
  @override
  String get tableName => 'accounts_payable';

  @override
  AccountsPayableRow createRow(Map<String, dynamic> data) =>
      AccountsPayableRow(data);
}

class AccountsPayableRow extends SupabaseDataRow {
  AccountsPayableRow(super.data);

  @override
  SupabaseTable get table => AccountsPayableTable();

  String? get poTemplate => getField<String>('po_template');
  set poTemplate(String? value) => setField<String>('po_template', value);

  DateTime? get dateOfPurchase => getField<DateTime>('date_of_purchase');
  set dateOfPurchase(DateTime? value) =>
      setField<DateTime>('date_of_purchase', value);

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
