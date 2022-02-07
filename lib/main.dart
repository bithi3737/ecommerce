
import 'package:eapp/ui/startpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(350, 800),
      builder: () {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'E-Commerce',
          home: Startwidget(),
        );
      },
    );
  }
}
