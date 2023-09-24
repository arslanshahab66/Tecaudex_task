import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tecaudex_task/provider/task_provider.dart';
import 'package:tecaudex_task/screens/home_screens.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => TaskProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Task App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomeScreen(),
        ),
      ),
    );
