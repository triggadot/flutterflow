import '../database.dart';

class ExpensesTable extends SupabaseTable<ExpensesRow> {
  @override
  String get tableName => 'expenses';

  @override
  ExpensesRow createRow(Map<String, dynamic> data) => ExpensesRow(data);
}

class ExpensesRow extends SupabaseDataRow {
  ExpensesRow(super.data);

  @override
  SupabaseTable get table => ExpensesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get notesOfExpense => getField<String>('notes_of_expense');
  set notesOfExpense(String? value) =>
      setField<String>('notes_of_expense', value);

  String get category => getField<String>('category')!;
  set category(String value) => setField<String>('category', value);

  double get amount => getField<double>('amount')!;
  set amount(double value) => setField<double>('amount', value);

  String get descriptionOfExpense =>
      getField<String>('description_of_expense')!;
  set descriptionOfExpense(String value) =>
      setField<String>('description_of_expense', value);

  String? get receipt => getField<String>('receipt');
  set receipt(String? value) => setField<String>('receipt', value);

  String? get paymentMethod => getField<String>('payment_method');
  set paymentMethod(String? value) => setField<String>('payment_method', value);

  DateTime? get expenseDate => getField<DateTime>('expense_date');
  set expenseDate(DateTime? value) => setField<DateTime>('expense_date', value);
}
