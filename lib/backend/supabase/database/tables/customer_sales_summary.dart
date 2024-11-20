import '../database.dart';

class CustomerSalesSummaryTable extends SupabaseTable<CustomerSalesSummaryRow> {
  @override
  String get tableName => 'customer_sales_summary';

  @override
  CustomerSalesSummaryRow createRow(Map<String, dynamic> data) =>
      CustomerSalesSummaryRow(data);
}

class CustomerSalesSummaryRow extends SupabaseDataRow {
  CustomerSalesSummaryRow(super.data);

  @override
  SupabaseTable get table => CustomerSalesSummaryTable();

  int? get customerId => getField<int>('customer_id');
  set customerId(int? value) => setField<int>('customer_id', value);

  String? get accountName => getField<String>('account_name');
  set accountName(String? value) => setField<String>('account_name', value);

  int? get totalInvoices => getField<int>('total_invoices');
  set totalInvoices(int? value) => setField<int>('total_invoices', value);

  double? get totalSalesAmount => getField<double>('total_sales_amount');
  set totalSalesAmount(double? value) =>
      setField<double>('total_sales_amount', value);

  double? get averageInvoiceAmount =>
      getField<double>('average_invoice_amount');
  set averageInvoiceAmount(double? value) =>
      setField<double>('average_invoice_amount', value);
}
