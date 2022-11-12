import 'package:ecommerceproject/binding.dart';
import 'package:ecommerceproject/core/locolaization/changelocal.dart';
import 'package:ecommerceproject/core/locolaization/translation.dart';
import 'package:ecommerceproject/core/services/services.dart';
import 'package:ecommerceproject/routes.dart';
import 'package:ecommerceproject/view/screen/auth/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: controller.appTheme,
      initialBinding: MyBinding(),
      // home: ,
          // const Test(),
          // const Language(),
      // routes: routes,
      getPages: routes,
    );
  }
}
