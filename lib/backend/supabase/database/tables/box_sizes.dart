import '../database.dart';

class BoxSizesTable extends SupabaseTable<BoxSizesRow> {
  @override
  String get tableName => 'box_sizes';

  @override
  BoxSizesRow createRow(Map<String, dynamic> data) => BoxSizesRow(data);
}

class BoxSizesRow extends SupabaseDataRow {
  BoxSizesRow(super.data);

  @override
  SupabaseTable get table => BoxSizesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get rowId => getField<String>('row_id')!;
  set rowId(String value) => setField<String>('row_id', value);

  String? get boxImageUrl => getField<String>('box_image_url');
  set boxImageUrl(String? value) => setField<String>('box_image_url', value);

  String get boxSize => getField<String>('box_size')!;
  set boxSize(String value) => setField<String>('box_size', value);

  int get volume => getField<int>('volume')!;
  set volume(int value) => setField<int>('volume', value);

  int? get approximateItemsFit => getField<int>('approximate_items_fit');
  set approximateItemsFit(int? value) =>
      setField<int>('approximate_items_fit', value);

  double? get efficiency => getField<double>('efficiency');
  set efficiency(double? value) => setField<double>('efficiency', value);

  int get lengthInches => getField<int>('length_inches')!;
  set lengthInches(int value) => setField<int>('length_inches', value);

  int get widthInches => getField<int>('width_inches')!;
  set widthInches(int value) => setField<int>('width_inches', value);

  int get heightInches => getField<int>('height_inches')!;
  set heightInches(int value) => setField<int>('height_inches', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);
}
