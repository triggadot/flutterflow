import '../database.dart';

class ExpenseCategoriesTable extends SupabaseTable<ExpenseCategoriesRow> {
  @override
  String get tableName => 'expense_categories';

  @override
  ExpenseCategoriesRow createRow(Map<String, dynamic> data) =>
      ExpenseCategoriesRow(data);
}

class ExpenseCategoriesRow extends SupabaseDataRow {
  ExpenseCategoriesRow(super.data);

  @override
  SupabaseTable get table => ExpenseCategoriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get rowId => getField<String>('row_id')!;
  set rowId(String value) => setField<String>('row_id', value);

  String? get cover => getField<String>('cover');
  set cover(String? value) => setField<String>('cover', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
