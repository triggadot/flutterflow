import '../database.dart';

class AccountsTable extends SupabaseTable<AccountsRow> {
  @override
  String get tableName => 'accounts';

  @override
  AccountsRow createRow(Map<String, dynamic> data) => AccountsRow(data);
}

class AccountsRow extends SupabaseDataRow {
  AccountsRow(super.data);

  @override
  SupabaseTable get table => AccountsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get accountsUid => getField<String>('accounts_uid')!;
  set accountsUid(String value) => setField<String>('accounts_uid', value);

  String get clientType => getField<String>('client_type')!;
  set clientType(String value) => setField<String>('client_type', value);

  String get accountName => getField<String>('account_name')!;
  set accountName(String value) => setField<String>('account_name', value);

  String? get photo => getField<String>('photo');
  set photo(String? value) => setField<String>('photo', value);

  DateTime? get dateAddedClient => getField<DateTime>('date_added_client');
  set dateAddedClient(DateTime? value) =>
      setField<DateTime>('date_added_client', value);

  double? get creditLimit => getField<double>('credit_limit');
  set creditLimit(double? value) => setField<double>('credit_limit', value);

  double? get currentBalance => getField<double>('current_balance');
  set currentBalance(double? value) =>
      setField<double>('current_balance', value);

  DateTime? get lastTransactionDate =>
      getField<DateTime>('last_transaction_date');
  set lastTransactionDate(DateTime? value) =>
      setField<DateTime>('last_transaction_date', value);
}
