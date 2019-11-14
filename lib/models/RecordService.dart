import 'dart:convert';

import 'package:contactly/models/RecordsList.dart';
import 'package:flutter/services.dart';

class RecordService {

  Future<String> _loadRecordsAsset() async {
    return await rootBundle.loadString('assets/data/records.json');
  }

  Future<RecordList> loadRecords() async {
    String jsonString =  await _loadRecordsAsset();
    final jsonResponse = json.decode(jsonString);
    RecordList records = new RecordList.fromJson(jsonResponse);
    return records;
  }
}