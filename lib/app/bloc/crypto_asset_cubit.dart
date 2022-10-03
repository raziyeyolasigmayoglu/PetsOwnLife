import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../repository/repository.dart';

part 'crypto_asset_state.dart';

class CryptoAssetCubit extends Cubit<CryptoAssetState> {
  final IRepository _repository;

  CryptoAssetCubit(this._repository) : super(CryptoInitial());
}
