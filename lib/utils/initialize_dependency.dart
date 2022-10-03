import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '/service/network_service.dart';
import '../repository/repository.dart';

GetIt injector = GetIt.instance;

void initializeDependency() {
  injector.registerSingleton<Dio>(Dio());

  injector
      .registerSingleton<INetworkService>(NetworkService(injector.get<Dio>()));
  injector.registerSingleton<IRepository>(
      Repository(injector.get<INetworkService>()));
}
