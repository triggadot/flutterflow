import '../database.dart';

class CompanyTasksTable extends SupabaseTable<CompanyTasksRow> {
  @override
  String get tableName => 'company_tasks';

  @override
  CompanyTasksRow createRow(Map<String, dynamic> data) => CompanyTasksRow(data);
}

class CompanyTasksRow extends SupabaseDataRow {
  CompanyTasksRow(super.data);

  @override
  SupabaseTable get table => CompanyTasksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get rowId => getField<String>('row_id')!;
  set rowId(String value) => setField<String>('row_id', value);

  String? get userIdAssignedTo => getField<String>('user_id_assigned_to');
  set userIdAssignedTo(String? value) =>
      setField<String>('user_id_assigned_to', value);

  String get taskTitle => getField<String>('task_title')!;
  set taskTitle(String value) => setField<String>('task_title', value);

  DateTime? get startTimeScheduled =>
      getField<DateTime>('start_time_scheduled');
  set startTimeScheduled(DateTime? value) =>
      setField<DateTime>('start_time_scheduled', value);

  DateTime? get completionDate => getField<DateTime>('completion_date');
  set completionDate(DateTime? value) =>
      setField<DateTime>('completion_date', value);

  String? get accountIdCompany => getField<String>('account_id_company');
  set accountIdCompany(String? value) =>
      setField<String>('account_id_company', value);

  bool? get completed => getField<bool>('completed');
  set completed(bool? value) => setField<bool>('completed', value);

  String? get taskDetails => getField<String>('task_details');
  set taskDetails(String? value) => setField<String>('task_details', value);
}
