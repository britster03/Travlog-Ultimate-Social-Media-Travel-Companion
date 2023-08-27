import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:travlog/cubit/app_cubit_logics.dart';
import 'package:travlog/cubit/app_cubits.dart';
import 'package:travlog/login.dart';
import 'package:travlog/main_page.dart';
import 'package:travlog/pilgrimage_page.dart';
import 'package:travlog/services/data_services.dart';
import 'package:travlog/signup.dart';
import 'package:travlog/icons.dart';
import 'package:lottie/lottie.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(),
    home: BlocProvider<AppCubits>(
      create: (context) => AppCubits(
        data: DataServices(),
      ),
      child: AppCubitLogics(),
    ),
  ));
}
