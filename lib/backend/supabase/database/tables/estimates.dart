import '../database.dart';

class EstimatesTable extends SupabaseTable<EstimatesRow> {
  @override
  String get tableName => 'estimates';

  @override
  EstimatesRow createRow(Map<String, dynamic> data) => EstimatesRow(data);
}

class EstimatesRow extends SupabaseDataRow {
  EstimatesRow(super.data);

  @override
  SupabaseTable get table => EstimatesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get estUid => getField<String>('est_uid')!;
  set estUid(String value) => setField<String>('est_uid', value);

  DateTime? get estimateDate => getField<DateTime>('estimate_date');
  set estimateDate(DateTime? value) =>
      setField<DateTime>('estimate_date', value);

  String? get accountUid => getField<String>('account_uid');
  set accountUid(String? value) => setField<String>('account_uid', value);

  bool? get isASample => getField<bool>('is_a_sample');
  set isASample(bool? value) => setField<bool>('is_a_sample', value);

  double? get totalAmount => getField<double>('total_amount');
  set totalAmount(double? value) => setField<double>('total_amount', value);

  int? get validityPeriod => getField<int>('validity_period');
  set validityPeriod(int? value) => setField<int>('validity_period', value);
}
