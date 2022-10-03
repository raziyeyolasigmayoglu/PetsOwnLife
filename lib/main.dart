import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_own_life/app/bloc/crypto_asset_cubit.dart';
import 'package:pets_own_life/app/bloc/live_prices_cubit.dart';
import 'package:pets_own_life/app/ui/home_page.dart';
import 'package:pets_own_life/repository/repository.dart';
import 'package:pets_own_life/utils/app_routes.dart';
import 'package:pets_own_life/utils/initialize_dependency.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDependency();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: MultiBlocProvider(providers: [
        BlocProvider(
          create: (BuildContext context) =>
              CryptoAssetCubit(injector.get<IRepository>()),
        ),
        BlocProvider(create: (BuildContext context) => LivePricesCubit())
      ], child: const HomePage()),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
