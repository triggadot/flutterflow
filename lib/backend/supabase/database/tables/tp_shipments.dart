import '../database.dart';

class TpShipmentsTable extends SupabaseTable<TpShipmentsRow> {
  @override
  String get tableName => 'tp_shipments';

  @override
  TpShipmentsRow createRow(Map<String, dynamic> data) => TpShipmentsRow(data);
}

class TpShipmentsRow extends SupabaseDataRow {
  TpShipmentsRow(super.data);

  @override
  SupabaseTable get table => TpShipmentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get tpId => getField<String>('tp_id')!;
  set tpId(String value) => setField<String>('tp_id', value);

  DateTime? get expectedDeliveryDate =>
      getField<DateTime>('expected_delivery_date');
  set expectedDeliveryDate(DateTime? value) =>
      setField<DateTime>('expected_delivery_date', value);

  DateTime? get shipDate => getField<DateTime>('ship_date');
  set shipDate(DateTime? value) => setField<DateTime>('ship_date', value);

  String? get trackingNumber => getField<String>('tracking_number');
  set trackingNumber(String? value) =>
      setField<String>('tracking_number', value);

  String? get client => getField<String>('client');
  set client(String? value) => setField<String>('client', value);

  DateTime? get expectedLatestDeliveryDate =>
      getField<DateTime>('expected_latest_delivery_date');
  set expectedLatestDeliveryDate(DateTime? value) =>
      setField<DateTime>('expected_latest_delivery_date', value);

  String? get shippingService => getField<String>('shipping_service');
  set shippingService(String? value) =>
      setField<String>('shipping_service', value);

  String? get trackingUrl => getField<String>('tracking_url');
  set trackingUrl(String? value) => setField<String>('tracking_url', value);

  DateTime? get tpDate => getField<DateTime>('tp_date');
  set tpDate(DateTime? value) => setField<DateTime>('tp_date', value);

  DateTime? get lastUpdated => getField<DateTime>('last_updated');
  set lastUpdated(DateTime? value) => setField<DateTime>('last_updated', value);
}
