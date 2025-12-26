// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on _LoginStore, Store {
  Computed<dynamic>? _$mobileNoComputed;

  @override
  dynamic get mobileNo =>
      (_$mobileNoComputed ??= Computed<dynamic>(
            () => super.mobileNo,
            name: '_LoginStore.mobileNo',
          ))
          .value;
  Computed<dynamic>? _$isLoadingComputed;

  @override
  dynamic get isLoading =>
      (_$isLoadingComputed ??= Computed<dynamic>(
            () => super.isLoading,
            name: '_LoginStore.isLoading',
          ))
          .value;
  Computed<dynamic>? _$userDataComputed;

  @override
  dynamic get userData =>
      (_$userDataComputed ??= Computed<dynamic>(
            () => super.userData,
            name: '_LoginStore.userData',
          ))
          .value;

  late final _$_mobileNoAtom = Atom(
    name: '_LoginStore._mobileNo',
    context: context,
  );

  @override
  int get _mobileNo {
    _$_mobileNoAtom.reportRead();
    return super._mobileNo;
  }

  @override
  set _mobileNo(int value) {
    _$_mobileNoAtom.reportWrite(value, super._mobileNo, () {
      super._mobileNo = value;
    });
  }

  late final _$_isLoadingAtom = Atom(
    name: '_LoginStore._isLoading',
    context: context,
  );

  @override
  bool get _isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  late final _$_userDataAtom = Atom(
    name: '_LoginStore._userData',
    context: context,
  );

  @override
  Map<String, dynamic> get _userData {
    _$_userDataAtom.reportRead();
    return super._userData;
  }

  @override
  set _userData(Map<String, dynamic> value) {
    _$_userDataAtom.reportWrite(value, super._userData, () {
      super._userData = value;
    });
  }

  late final _$loginAsyncAction = AsyncAction(
    '_LoginStore.login',
    context: context,
  );

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  late final _$_LoginStoreActionController = ActionController(
    name: '_LoginStore',
    context: context,
  );

  @override
  void setUserData(Map<String, dynamic> data) {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
      name: '_LoginStore.setUserData',
    );
    try {
      return super.setUserData(data);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMobileNo(int mobileNo) {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
      name: '_LoginStore.setMobileNo',
    );
    try {
      return super.setMobileNo(mobileNo);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoading(bool isLoading) {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
      name: '_LoginStore.setIsLoading',
    );
    try {
      return super.setIsLoading(isLoading);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
mobileNo: ${mobileNo},
isLoading: ${isLoading},
userData: ${userData}
    ''';
  }
}
