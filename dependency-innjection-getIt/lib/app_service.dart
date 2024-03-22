import 'package:flutter/foundation.dart';

// 依存性の注入 (直接 AppServceの メソットをstatic的に使える)
class AppService {

  AppService() {
    debugPrint("AppService singleton instance is being created.");
  }

  // 関数内の  データに 依存を変えてアクセス
  String execute() {
    DateTime now = DateTime.now();
    DateTime date =  DateTime(now.year, now.month, now.day);
    return date.toString();
  }

  // 依存2
  String izonFunc() {
    return "依存性の注入";
  }
}