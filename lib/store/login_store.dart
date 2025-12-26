import 'package:meenmanam/openapi/api_client.swagger.dart';
import 'package:meenmanam/service/api_service.dart';
import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  ApiClient apiClient = ApiClient.create();

  @observable
  int _mobileNo = 0;
  @observable
  bool _isLoading = false;
  @observable
  Map<String, dynamic> _userData = {};

  @computed
  get mobileNo => _mobileNo;
  @computed
  get isLoading => _isLoading;
  @computed
  get userData => _userData;

  @action
  void setUserData(Map<String, dynamic> data) {
    _userData = data;
  }

  @action
  void setMobileNo(int mobileNo) {
    _mobileNo = mobileNo;
  }

  @action
  void setIsLoading(bool isLoading) {
    _isLoading = isLoading;
  }

  @action
  Future<void> login() async {
    final response = await apiClient.v1AuthSignInPost(
      body: SignInDto(mobileNo: mobileNo),
    );
    if (response.isSuccessful) {
      setUserData(response.body?.toJson() ?? {});
    }
  }
}
