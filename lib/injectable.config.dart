// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i8;
import 'application/keranjang/keranjang_cubit.dart' as _i6;
import 'application/stock/stock_cubit.dart' as _i7;
import 'domain/auth/auth_repo.dart' as _i3;
import 'domain/keranjang/keranjang_repo.dart' as _i4;
import 'domain/stock/stock_repo.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IAuth>(() => _i3.AuthRepo());
    gh.lazySingleton<_i4.IKeranjang>(() => _i4.Stockrepo());
    gh.lazySingleton<_i5.IStock>(() => _i5.Stockrepo());
    gh.factory<_i6.KeranjangCubit>(
        () => _i6.KeranjangCubit(gh<_i4.IKeranjang>()));
    gh.factory<_i7.StockCubit>(() => _i7.StockCubit(gh<_i5.IStock>()));
    gh.factory<_i8.AuthCubit>(() => _i8.AuthCubit(gh<_i3.IAuth>()));
    return this;
  }
}
