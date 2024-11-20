import '../database.dart';

class MonthlySalesSummaryTable extends SupabaseTable<MonthlySalesSummaryRow> {
  @override
  String get tableName => 'monthly_sales_summary';

  @override
  MonthlySalesSummaryRow createRow(Map<String, dynamic> data) =>
      MonthlySalesSummaryRow(data);
}

class MonthlySalesSummaryRow extends SupabaseDataRow {
  MonthlySalesSummaryRow(super.data);

  @override
  SupabaseTable get table => MonthlySalesSummaryTable();

  DateTime? get month => getField<DateTime>('month');
  set month(DateTime? value) => setField<DateTime>('month', value);

  double? get totalSales => getField<double>('total_sales');
  set totalSales(double? value) => setField<double>('total_sales', value);

  int? get invoiceCount => getField<int>('invoice_count');
  set invoiceCount(int? value) => setField<int>('invoice_count', value);

  int? get customerCount => getField<int>('customer_count');
  set customerCount(int? value) => setField<int>('customer_count', value);
}
