import '../database.dart';

class FinancialReportsTable extends SupabaseTable<FinancialReportsRow> {
  @override
  String get tableName => 'financial_reports';

  @override
  FinancialReportsRow createRow(Map<String, dynamic> data) =>
      FinancialReportsRow(data);
}

class FinancialReportsRow extends SupabaseDataRow {
  FinancialReportsRow(super.data);

  @override
  SupabaseTable get table => FinancialReportsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get reportType => getField<String>('report_type')!;
  set reportType(String value) => setField<String>('report_type', value);

  DateTime get reportDate => getField<DateTime>('report_date')!;
  set reportDate(DateTime value) => setField<DateTime>('report_date', value);

  dynamic get reportData => getField<dynamic>('report_data')!;
  set reportData(dynamic value) => setField<dynamic>('report_data', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get createdBy => getField<int>('created_by');
  set createdBy(int? value) => setField<int>('created_by', value);
}
