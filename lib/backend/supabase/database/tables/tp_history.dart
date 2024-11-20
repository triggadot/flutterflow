import '../database.dart';

class TpHistoryTable extends SupabaseTable<TpHistoryRow> {
  @override
  String get tableName => 'tp_history';

  @override
  TpHistoryRow createRow(Map<String, dynamic> data) => TpHistoryRow(data);
}

class TpHistoryRow extends SupabaseDataRow {
  TpHistoryRow(super.data);

  @override
  SupabaseTable get table => TpHistoryTable();

  String get rowId => getField<String>('row_id')!;
  set rowId(String value) => setField<String>('row_id', value);

  DateTime? get dateOfShipment => getField<DateTime>('date_of_shipment');
  set dateOfShipment(DateTime? value) =>
      setField<DateTime>('date_of_shipment', value);

  String? get dropOffLocation => getField<String>('drop_off_location');
  set dropOffLocation(String? value) =>
      setField<String>('drop_off_location', value);

  String? get receiverName => getField<String>('receiver_name');
  set receiverName(String? value) => setField<String>('receiver_name', value);

  String? get receiverAddress => getField<String>('receiver_address');
  set receiverAddress(String? value) =>
      setField<String>('receiver_address', value);

  String? get senderNameOrCompany => getField<String>('sender_name_or_company');
  set senderNameOrCompany(String? value) =>
      setField<String>('sender_name_or_company', value);

  String? get boxSize => getField<String>('box_size');
  set boxSize(String? value) => setField<String>('box_size', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get dateFormatted => getField<String>('date_formatted');
  set dateFormatted(String? value) => setField<String>('date_formatted', value);

  String? get tpid => getField<String>('tpid');
  set tpid(String? value) => setField<String>('tpid', value);

  String? get accountUid => getField<String>('account_uid');
  set accountUid(String? value) => setField<String>('account_uid', value);

  String? get shippingServiceUsed => getField<String>('shipping_service_used');
  set shippingServiceUsed(String? value) =>
      setField<String>('shipping_service_used', value);

  String? get stateAbbreviation => getField<String>('state_abbreviation');
  set stateAbbreviation(String? value) =>
      setField<String>('state_abbreviation', value);

  DateTime? get shipDate => getField<DateTime>('ship_date');
  set shipDate(DateTime? value) => setField<DateTime>('ship_date', value);

  int? get numberOfUnits => getField<int>('number_of_units');
  set numberOfUnits(int? value) => setField<int>('number_of_units', value);

  String? get tpId => getField<String>('tp_id');
  set tpId(String? value) => setField<String>('tp_id', value);
}
