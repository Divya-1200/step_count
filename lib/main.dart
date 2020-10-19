import 'package:flutter/material.dart';
import 'package:step_count/task_data.dart';
import 'display_page.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox<int>('steps');
  runApp(CountU());
}

class CountU extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        theme: ThemeData.light().copyWith(
          primaryColor: Color(0xffC400C6),
          scaffoldBackgroundColor: Color(0xffEFC8E6),
        ),
        home: Displaypage(),
      ),
    );
  }
}
