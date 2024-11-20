import '../database.dart';

class ShipmentTrackingTable extends SupabaseTable<ShipmentTrackingRow> {
  @override
  String get tableName => 'shipment_tracking';

  @override
  ShipmentTrackingRow createRow(Map<String, dynamic> data) =>
      ShipmentTrackingRow(data);
}

class ShipmentTrackingRow extends SupabaseDataRow {
  ShipmentTrackingRow(super.data);

  @override
  SupabaseTable get table => ShipmentTrackingTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get eventId => getField<String>('event_id')!;
  set eventId(String value) => setField<String>('event_id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get startTime => getField<DateTime>('start_time');
  set startTime(DateTime? value) => setField<DateTime>('start_time', value);

  DateTime? get endTime => getField<DateTime>('end_time');
  set endTime(DateTime? value) => setField<DateTime>('end_time', value);

  DateTime? get lastUpdated => getField<DateTime>('last_updated');
  set lastUpdated(DateTime? value) => setField<DateTime>('last_updated', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get trackingNumber => getField<String>('tracking_number');
  set trackingNumber(String? value) =>
      setField<String>('tracking_number', value);

  String? get trackingLink => getField<String>('tracking_link');
  set trackingLink(String? value) => setField<String>('tracking_link', value);
}
