import '../database.dart';

class ActivityHelpersTable extends SupabaseTable<ActivityHelpersRow> {
  @override
  String get tableName => 'activity_helpers';

  @override
  ActivityHelpersRow createRow(Map<String, dynamic> data) =>
      ActivityHelpersRow(data);
}

class ActivityHelpersRow extends SupabaseDataRow {
  ActivityHelpersRow(super.data);

  @override
  SupabaseTable get table => ActivityHelpersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get rowId => getField<String>('row_id')!;
  set rowId(String value) => setField<String>('row_id', value);

  String? get icon => getField<String>('icon');
  set icon(String? value) => setField<String>('icon', value);

  String? get iconCopy => getField<String>('icon_copy');
  set iconCopy(String? value) => setField<String>('icon_copy', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get textDescription => getField<String>('text_description');
  set textDescription(String? value) =>
      setField<String>('text_description', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
