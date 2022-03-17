import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bloc/dictionary_cubit.dart';
import 'repo/word_repo.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return ScreenUtilInit(
  //     designSize: const Size(1080,2280),
  //     minTextAdapt: true,
  //     splitScreenMode: true,
  //     builder: () => MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       theme: ThemeData(
  //         primarySwatch: Colors.blue,
  //       ),
  //       builder: (context,  widget) {
  //         ScreenUtil.setContext(context);
  //         return MediaQuery(
  //           //Setting font does not change with system font size
  //           data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
  //           child: widget!,
  //         );
  //       },
  //       // home: MainPage(),
  //     ),
  //
  //   );
  // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        child: HomeScreen(),
        create: (context) => DictionaryCubit(WordRepository()),
      ),
    );
  }
}
