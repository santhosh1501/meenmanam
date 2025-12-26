// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

part 'api_client.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class SignInDto {
  const SignInDto({required this.mobileNo});

  factory SignInDto.fromJson(Map<String, dynamic> json) =>
      _$SignInDtoFromJson(json);

  static const toJsonFactory = _$SignInDtoToJson;
  Map<String, dynamic> toJson() => _$SignInDtoToJson(this);

  @JsonKey(name: 'mobileNo')
  final String mobileNo;
  static const fromJsonFactory = _$SignInDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SignInDto &&
            (identical(other.mobileNo, mobileNo) ||
                const DeepCollectionEquality().equals(
                  other.mobileNo,
                  mobileNo,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mobileNo) ^ runtimeType.hashCode;
}

extension $SignInDtoExtension on SignInDto {
  SignInDto copyWith({String? mobileNo}) {
    return SignInDto(mobileNo: mobileNo ?? this.mobileNo);
  }

  SignInDto copyWithWrapped({Wrapped<String>? mobileNo}) {
    return SignInDto(
      mobileNo: (mobileNo != null ? mobileNo.value : this.mobileNo),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SignInResponse {
  const SignInResponse({
    required this.accessToken,
    required this.refreshToken,
    required this.userId,
  });

  factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseFromJson(json);

  static const toJsonFactory = _$SignInResponseToJson;
  Map<String, dynamic> toJson() => _$SignInResponseToJson(this);

  @JsonKey(name: 'accessToken')
  final String accessToken;
  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  @JsonKey(name: 'userId')
  final String userId;
  static const fromJsonFactory = _$SignInResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SignInResponse &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality().equals(
                  other.accessToken,
                  accessToken,
                )) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality().equals(
                  other.refreshToken,
                  refreshToken,
                )) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(userId) ^
      runtimeType.hashCode;
}

extension $SignInResponseExtension on SignInResponse {
  SignInResponse copyWith({
    String? accessToken,
    String? refreshToken,
    String? userId,
  }) {
    return SignInResponse(
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      userId: userId ?? this.userId,
    );
  }

  SignInResponse copyWithWrapped({
    Wrapped<String>? accessToken,
    Wrapped<String>? refreshToken,
    Wrapped<String>? userId,
  }) {
    return SignInResponse(
      accessToken: (accessToken != null ? accessToken.value : this.accessToken),
      refreshToken: (refreshToken != null
          ? refreshToken.value
          : this.refreshToken),
      userId: (userId != null ? userId.value : this.userId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateUserReqDto {
  const CreateUserReqDto({
    required this.mobileNo,
    required this.fcmToken,
    required this.role,
    required this.pincode,
  });

  factory CreateUserReqDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUserReqDtoFromJson(json);

  static const toJsonFactory = _$CreateUserReqDtoToJson;
  Map<String, dynamic> toJson() => _$CreateUserReqDtoToJson(this);

  @JsonKey(name: 'mobileNo')
  final String mobileNo;
  @JsonKey(name: 'fcmToken')
  final String fcmToken;
  @JsonKey(name: 'role')
  final String role;
  @JsonKey(name: 'pincode')
  final String pincode;
  static const fromJsonFactory = _$CreateUserReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateUserReqDto &&
            (identical(other.mobileNo, mobileNo) ||
                const DeepCollectionEquality().equals(
                  other.mobileNo,
                  mobileNo,
                )) &&
            (identical(other.fcmToken, fcmToken) ||
                const DeepCollectionEquality().equals(
                  other.fcmToken,
                  fcmToken,
                )) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.pincode, pincode) ||
                const DeepCollectionEquality().equals(other.pincode, pincode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mobileNo) ^
      const DeepCollectionEquality().hash(fcmToken) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(pincode) ^
      runtimeType.hashCode;
}

extension $CreateUserReqDtoExtension on CreateUserReqDto {
  CreateUserReqDto copyWith({
    String? mobileNo,
    String? fcmToken,
    String? role,
    String? pincode,
  }) {
    return CreateUserReqDto(
      mobileNo: mobileNo ?? this.mobileNo,
      fcmToken: fcmToken ?? this.fcmToken,
      role: role ?? this.role,
      pincode: pincode ?? this.pincode,
    );
  }

  CreateUserReqDto copyWithWrapped({
    Wrapped<String>? mobileNo,
    Wrapped<String>? fcmToken,
    Wrapped<String>? role,
    Wrapped<String>? pincode,
  }) {
    return CreateUserReqDto(
      mobileNo: (mobileNo != null ? mobileNo.value : this.mobileNo),
      fcmToken: (fcmToken != null ? fcmToken.value : this.fcmToken),
      role: (role != null ? role.value : this.role),
      pincode: (pincode != null ? pincode.value : this.pincode),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DeleteUserResponseDto {
  const DeleteUserResponseDto({
    required this.userId,
    required this.userDeleted,
  });

  factory DeleteUserResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DeleteUserResponseDtoFromJson(json);

  static const toJsonFactory = _$DeleteUserResponseDtoToJson;
  Map<String, dynamic> toJson() => _$DeleteUserResponseDtoToJson(this);

  @JsonKey(name: 'userId')
  final String userId;
  @JsonKey(name: 'userDeleted')
  final String userDeleted;
  static const fromJsonFactory = _$DeleteUserResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DeleteUserResponseDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userDeleted, userDeleted) ||
                const DeepCollectionEquality().equals(
                  other.userDeleted,
                  userDeleted,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userDeleted) ^
      runtimeType.hashCode;
}

extension $DeleteUserResponseDtoExtension on DeleteUserResponseDto {
  DeleteUserResponseDto copyWith({String? userId, String? userDeleted}) {
    return DeleteUserResponseDto(
      userId: userId ?? this.userId,
      userDeleted: userDeleted ?? this.userDeleted,
    );
  }

  DeleteUserResponseDto copyWithWrapped({
    Wrapped<String>? userId,
    Wrapped<String>? userDeleted,
  }) {
    return DeleteUserResponseDto(
      userId: (userId != null ? userId.value : this.userId),
      userDeleted: (userDeleted != null ? userDeleted.value : this.userDeleted),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserListObjectDto {
  const UserListObjectDto({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.mobileNo,
    required this.role,
    required this.pinCode,
    required this.latitude,
    required this.longitude,
  });

  factory UserListObjectDto.fromJson(Map<String, dynamic> json) =>
      _$UserListObjectDtoFromJson(json);

  static const toJsonFactory = _$UserListObjectDtoToJson;
  Map<String, dynamic> toJson() => _$UserListObjectDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'mobileNo')
  final String mobileNo;
  @JsonKey(name: 'role')
  final String role;
  @JsonKey(name: 'pinCode')
  final String pinCode;
  @JsonKey(name: 'latitude')
  final double latitude;
  @JsonKey(name: 'longitude')
  final double longitude;
  static const fromJsonFactory = _$UserListObjectDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserListObjectDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality().equals(
                  other.firstName,
                  firstName,
                )) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality().equals(
                  other.lastName,
                  lastName,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.mobileNo, mobileNo) ||
                const DeepCollectionEquality().equals(
                  other.mobileNo,
                  mobileNo,
                )) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.pinCode, pinCode) ||
                const DeepCollectionEquality().equals(
                  other.pinCode,
                  pinCode,
                )) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality().equals(
                  other.latitude,
                  latitude,
                )) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality().equals(
                  other.longitude,
                  longitude,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(mobileNo) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(pinCode) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      runtimeType.hashCode;
}

extension $UserListObjectDtoExtension on UserListObjectDto {
  UserListObjectDto copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? mobileNo,
    String? role,
    String? pinCode,
    double? latitude,
    double? longitude,
  }) {
    return UserListObjectDto(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      mobileNo: mobileNo ?? this.mobileNo,
      role: role ?? this.role,
      pinCode: pinCode ?? this.pinCode,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  UserListObjectDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? firstName,
    Wrapped<String>? lastName,
    Wrapped<String>? email,
    Wrapped<String>? mobileNo,
    Wrapped<String>? role,
    Wrapped<String>? pinCode,
    Wrapped<double>? latitude,
    Wrapped<double>? longitude,
  }) {
    return UserListObjectDto(
      id: (id != null ? id.value : this.id),
      firstName: (firstName != null ? firstName.value : this.firstName),
      lastName: (lastName != null ? lastName.value : this.lastName),
      email: (email != null ? email.value : this.email),
      mobileNo: (mobileNo != null ? mobileNo.value : this.mobileNo),
      role: (role != null ? role.value : this.role),
      pinCode: (pinCode != null ? pinCode.value : this.pinCode),
      latitude: (latitude != null ? latitude.value : this.latitude),
      longitude: (longitude != null ? longitude.value : this.longitude),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserListResponseDto {
  const UserListResponseDto({required this.data, required this.total});

  factory UserListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserListResponseDtoFromJson(json);

  static const toJsonFactory = _$UserListResponseDtoToJson;
  Map<String, dynamic> toJson() => _$UserListResponseDtoToJson(this);

  @JsonKey(name: 'data', defaultValue: <UserListObjectDto>[])
  final List<UserListObjectDto> data;
  @JsonKey(name: 'total')
  final double total;
  static const fromJsonFactory = _$UserListResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserListResponseDto &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $UserListResponseDtoExtension on UserListResponseDto {
  UserListResponseDto copyWith({List<UserListObjectDto>? data, double? total}) {
    return UserListResponseDto(
      data: data ?? this.data,
      total: total ?? this.total,
    );
  }

  UserListResponseDto copyWithWrapped({
    Wrapped<List<UserListObjectDto>>? data,
    Wrapped<double>? total,
  }) {
    return UserListResponseDto(
      data: (data != null ? data.value : this.data),
      total: (total != null ? total.value : this.total),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateOtpReqDto {
  const CreateOtpReqDto({required this.userId});

  factory CreateOtpReqDto.fromJson(Map<String, dynamic> json) =>
      _$CreateOtpReqDtoFromJson(json);

  static const toJsonFactory = _$CreateOtpReqDtoToJson;
  Map<String, dynamic> toJson() => _$CreateOtpReqDtoToJson(this);

  @JsonKey(name: 'userId')
  final String userId;
  static const fromJsonFactory = _$CreateOtpReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateOtpReqDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^ runtimeType.hashCode;
}

extension $CreateOtpReqDtoExtension on CreateOtpReqDto {
  CreateOtpReqDto copyWith({String? userId}) {
    return CreateOtpReqDto(userId: userId ?? this.userId);
  }

  CreateOtpReqDto copyWithWrapped({Wrapped<String>? userId}) {
    return CreateOtpReqDto(
      userId: (userId != null ? userId.value : this.userId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateOtpResponseDto {
  const CreateOtpResponseDto({required this.id});

  factory CreateOtpResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CreateOtpResponseDtoFromJson(json);

  static const toJsonFactory = _$CreateOtpResponseDtoToJson;
  Map<String, dynamic> toJson() => _$CreateOtpResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  static const fromJsonFactory = _$CreateOtpResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateOtpResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $CreateOtpResponseDtoExtension on CreateOtpResponseDto {
  CreateOtpResponseDto copyWith({String? id}) {
    return CreateOtpResponseDto(id: id ?? this.id);
  }

  CreateOtpResponseDto copyWithWrapped({Wrapped<String>? id}) {
    return CreateOtpResponseDto(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class VerifyOtpByMobileReqDto {
  const VerifyOtpByMobileReqDto({
    required this.userId,
    required this.otp,
    required this.mobileNo,
  });

  factory VerifyOtpByMobileReqDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpByMobileReqDtoFromJson(json);

  static const toJsonFactory = _$VerifyOtpByMobileReqDtoToJson;
  Map<String, dynamic> toJson() => _$VerifyOtpByMobileReqDtoToJson(this);

  @JsonKey(name: 'userId')
  final String userId;
  @JsonKey(name: 'otp')
  final String otp;
  @JsonKey(name: 'mobileNo')
  final String mobileNo;
  static const fromJsonFactory = _$VerifyOtpByMobileReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VerifyOtpByMobileReqDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)) &&
            (identical(other.mobileNo, mobileNo) ||
                const DeepCollectionEquality().equals(
                  other.mobileNo,
                  mobileNo,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(otp) ^
      const DeepCollectionEquality().hash(mobileNo) ^
      runtimeType.hashCode;
}

extension $VerifyOtpByMobileReqDtoExtension on VerifyOtpByMobileReqDto {
  VerifyOtpByMobileReqDto copyWith({
    String? userId,
    String? otp,
    String? mobileNo,
  }) {
    return VerifyOtpByMobileReqDto(
      userId: userId ?? this.userId,
      otp: otp ?? this.otp,
      mobileNo: mobileNo ?? this.mobileNo,
    );
  }

  VerifyOtpByMobileReqDto copyWithWrapped({
    Wrapped<String>? userId,
    Wrapped<String>? otp,
    Wrapped<String>? mobileNo,
  }) {
    return VerifyOtpByMobileReqDto(
      userId: (userId != null ? userId.value : this.userId),
      otp: (otp != null ? otp.value : this.otp),
      mobileNo: (mobileNo != null ? mobileNo.value : this.mobileNo),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VerifyOtpByMobileResponseDto {
  const VerifyOtpByMobileResponseDto({required this.success});

  factory VerifyOtpByMobileResponseDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpByMobileResponseDtoFromJson(json);

  static const toJsonFactory = _$VerifyOtpByMobileResponseDtoToJson;
  Map<String, dynamic> toJson() => _$VerifyOtpByMobileResponseDtoToJson(this);

  @JsonKey(name: 'success')
  final bool success;
  static const fromJsonFactory = _$VerifyOtpByMobileResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VerifyOtpByMobileResponseDto &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^ runtimeType.hashCode;
}

extension $VerifyOtpByMobileResponseDtoExtension
    on VerifyOtpByMobileResponseDto {
  VerifyOtpByMobileResponseDto copyWith({bool? success}) {
    return VerifyOtpByMobileResponseDto(success: success ?? this.success);
  }

  VerifyOtpByMobileResponseDto copyWithWrapped({Wrapped<bool>? success}) {
    return VerifyOtpByMobileResponseDto(
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DeleteOtpReqDto {
  const DeleteOtpReqDto({required this.id});

  factory DeleteOtpReqDto.fromJson(Map<String, dynamic> json) =>
      _$DeleteOtpReqDtoFromJson(json);

  static const toJsonFactory = _$DeleteOtpReqDtoToJson;
  Map<String, dynamic> toJson() => _$DeleteOtpReqDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  static const fromJsonFactory = _$DeleteOtpReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DeleteOtpReqDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $DeleteOtpReqDtoExtension on DeleteOtpReqDto {
  DeleteOtpReqDto copyWith({String? id}) {
    return DeleteOtpReqDto(id: id ?? this.id);
  }

  DeleteOtpReqDto copyWithWrapped({Wrapped<String>? id}) {
    return DeleteOtpReqDto(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class DeleteOtpResponseDto {
  const DeleteOtpResponseDto({required this.id, required this.status});

  factory DeleteOtpResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DeleteOtpResponseDtoFromJson(json);

  static const toJsonFactory = _$DeleteOtpResponseDtoToJson;
  Map<String, dynamic> toJson() => _$DeleteOtpResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'status')
  final String status;
  static const fromJsonFactory = _$DeleteOtpResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DeleteOtpResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $DeleteOtpResponseDtoExtension on DeleteOtpResponseDto {
  DeleteOtpResponseDto copyWith({String? id, String? status}) {
    return DeleteOtpResponseDto(
      id: id ?? this.id,
      status: status ?? this.status,
    );
  }

  DeleteOtpResponseDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? status,
  }) {
    return DeleteOtpResponseDto(
      id: (id != null ? id.value : this.id),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateAddressReqDto {
  const CreateAddressReqDto({
    required this.userId,
    required this.address,
    required this.city,
    required this.state,
    required this.country,
    required this.pincode,
    required this.latitude,
    required this.longitude,
  });

  factory CreateAddressReqDto.fromJson(Map<String, dynamic> json) =>
      _$CreateAddressReqDtoFromJson(json);

  static const toJsonFactory = _$CreateAddressReqDtoToJson;
  Map<String, dynamic> toJson() => _$CreateAddressReqDtoToJson(this);

  @JsonKey(name: 'userId')
  final String userId;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'state')
  final String state;
  @JsonKey(name: 'country')
  final String country;
  @JsonKey(name: 'pincode')
  final double pincode;
  @JsonKey(name: 'latitude')
  final double latitude;
  @JsonKey(name: 'longitude')
  final double longitude;
  static const fromJsonFactory = _$CreateAddressReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateAddressReqDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(
                  other.address,
                  address,
                )) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(
                  other.country,
                  country,
                )) &&
            (identical(other.pincode, pincode) ||
                const DeepCollectionEquality().equals(
                  other.pincode,
                  pincode,
                )) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality().equals(
                  other.latitude,
                  latitude,
                )) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality().equals(
                  other.longitude,
                  longitude,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(pincode) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      runtimeType.hashCode;
}

extension $CreateAddressReqDtoExtension on CreateAddressReqDto {
  CreateAddressReqDto copyWith({
    String? userId,
    String? address,
    String? city,
    String? state,
    String? country,
    double? pincode,
    double? latitude,
    double? longitude,
  }) {
    return CreateAddressReqDto(
      userId: userId ?? this.userId,
      address: address ?? this.address,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      pincode: pincode ?? this.pincode,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  CreateAddressReqDto copyWithWrapped({
    Wrapped<String>? userId,
    Wrapped<String>? address,
    Wrapped<String>? city,
    Wrapped<String>? state,
    Wrapped<String>? country,
    Wrapped<double>? pincode,
    Wrapped<double>? latitude,
    Wrapped<double>? longitude,
  }) {
    return CreateAddressReqDto(
      userId: (userId != null ? userId.value : this.userId),
      address: (address != null ? address.value : this.address),
      city: (city != null ? city.value : this.city),
      state: (state != null ? state.value : this.state),
      country: (country != null ? country.value : this.country),
      pincode: (pincode != null ? pincode.value : this.pincode),
      latitude: (latitude != null ? latitude.value : this.latitude),
      longitude: (longitude != null ? longitude.value : this.longitude),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateAddressResponseDto {
  const CreateAddressResponseDto({required this.id});

  factory CreateAddressResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CreateAddressResponseDtoFromJson(json);

  static const toJsonFactory = _$CreateAddressResponseDtoToJson;
  Map<String, dynamic> toJson() => _$CreateAddressResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  static const fromJsonFactory = _$CreateAddressResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateAddressResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $CreateAddressResponseDtoExtension on CreateAddressResponseDto {
  CreateAddressResponseDto copyWith({String? id}) {
    return CreateAddressResponseDto(id: id ?? this.id);
  }

  CreateAddressResponseDto copyWithWrapped({Wrapped<String>? id}) {
    return CreateAddressResponseDto(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateAddressReqDto {
  const UpdateAddressReqDto({
    required this.id,
    required this.address,
    required this.city,
    required this.state,
    required this.country,
    required this.pincode,
    required this.latitude,
    required this.longitude,
  });

  factory UpdateAddressReqDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateAddressReqDtoFromJson(json);

  static const toJsonFactory = _$UpdateAddressReqDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateAddressReqDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'state')
  final String state;
  @JsonKey(name: 'country')
  final String country;
  @JsonKey(name: 'pincode')
  final double pincode;
  @JsonKey(name: 'latitude')
  final double latitude;
  @JsonKey(name: 'longitude')
  final double longitude;
  static const fromJsonFactory = _$UpdateAddressReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateAddressReqDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(
                  other.address,
                  address,
                )) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(
                  other.country,
                  country,
                )) &&
            (identical(other.pincode, pincode) ||
                const DeepCollectionEquality().equals(
                  other.pincode,
                  pincode,
                )) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality().equals(
                  other.latitude,
                  latitude,
                )) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality().equals(
                  other.longitude,
                  longitude,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(pincode) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      runtimeType.hashCode;
}

extension $UpdateAddressReqDtoExtension on UpdateAddressReqDto {
  UpdateAddressReqDto copyWith({
    String? id,
    String? address,
    String? city,
    String? state,
    String? country,
    double? pincode,
    double? latitude,
    double? longitude,
  }) {
    return UpdateAddressReqDto(
      id: id ?? this.id,
      address: address ?? this.address,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      pincode: pincode ?? this.pincode,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  UpdateAddressReqDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? address,
    Wrapped<String>? city,
    Wrapped<String>? state,
    Wrapped<String>? country,
    Wrapped<double>? pincode,
    Wrapped<double>? latitude,
    Wrapped<double>? longitude,
  }) {
    return UpdateAddressReqDto(
      id: (id != null ? id.value : this.id),
      address: (address != null ? address.value : this.address),
      city: (city != null ? city.value : this.city),
      state: (state != null ? state.value : this.state),
      country: (country != null ? country.value : this.country),
      pincode: (pincode != null ? pincode.value : this.pincode),
      latitude: (latitude != null ? latitude.value : this.latitude),
      longitude: (longitude != null ? longitude.value : this.longitude),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateAddressResponseDto {
  const UpdateAddressResponseDto({required this.id, required this.status});

  factory UpdateAddressResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateAddressResponseDtoFromJson(json);

  static const toJsonFactory = _$UpdateAddressResponseDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateAddressResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'status')
  final String status;
  static const fromJsonFactory = _$UpdateAddressResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateAddressResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $UpdateAddressResponseDtoExtension on UpdateAddressResponseDto {
  UpdateAddressResponseDto copyWith({String? id, String? status}) {
    return UpdateAddressResponseDto(
      id: id ?? this.id,
      status: status ?? this.status,
    );
  }

  UpdateAddressResponseDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? status,
  }) {
    return UpdateAddressResponseDto(
      id: (id != null ? id.value : this.id),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DeleteAddressReqDto {
  const DeleteAddressReqDto({required this.id});

  factory DeleteAddressReqDto.fromJson(Map<String, dynamic> json) =>
      _$DeleteAddressReqDtoFromJson(json);

  static const toJsonFactory = _$DeleteAddressReqDtoToJson;
  Map<String, dynamic> toJson() => _$DeleteAddressReqDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  static const fromJsonFactory = _$DeleteAddressReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DeleteAddressReqDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $DeleteAddressReqDtoExtension on DeleteAddressReqDto {
  DeleteAddressReqDto copyWith({String? id}) {
    return DeleteAddressReqDto(id: id ?? this.id);
  }

  DeleteAddressReqDto copyWithWrapped({Wrapped<String>? id}) {
    return DeleteAddressReqDto(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class DeleteAddressResponseDto {
  const DeleteAddressResponseDto({required this.id, required this.status});

  factory DeleteAddressResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DeleteAddressResponseDtoFromJson(json);

  static const toJsonFactory = _$DeleteAddressResponseDtoToJson;
  Map<String, dynamic> toJson() => _$DeleteAddressResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'status')
  final String status;
  static const fromJsonFactory = _$DeleteAddressResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DeleteAddressResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $DeleteAddressResponseDtoExtension on DeleteAddressResponseDto {
  DeleteAddressResponseDto copyWith({String? id, String? status}) {
    return DeleteAddressResponseDto(
      id: id ?? this.id,
      status: status ?? this.status,
    );
  }

  DeleteAddressResponseDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? status,
  }) {
    return DeleteAddressResponseDto(
      id: (id != null ? id.value : this.id),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GetAddressesByUserReqDto {
  const GetAddressesByUserReqDto({required this.userId});

  factory GetAddressesByUserReqDto.fromJson(Map<String, dynamic> json) =>
      _$GetAddressesByUserReqDtoFromJson(json);

  static const toJsonFactory = _$GetAddressesByUserReqDtoToJson;
  Map<String, dynamic> toJson() => _$GetAddressesByUserReqDtoToJson(this);

  @JsonKey(name: 'userId')
  final String userId;
  static const fromJsonFactory = _$GetAddressesByUserReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetAddressesByUserReqDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^ runtimeType.hashCode;
}

extension $GetAddressesByUserReqDtoExtension on GetAddressesByUserReqDto {
  GetAddressesByUserReqDto copyWith({String? userId}) {
    return GetAddressesByUserReqDto(userId: userId ?? this.userId);
  }

  GetAddressesByUserReqDto copyWithWrapped({Wrapped<String>? userId}) {
    return GetAddressesByUserReqDto(
      userId: (userId != null ? userId.value : this.userId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddressObjectDto {
  const AddressObjectDto({
    required this.id,
    required this.userId,
    required this.address,
    required this.city,
    required this.state,
    required this.country,
    required this.pincode,
    required this.latitude,
    required this.longitude,
  });

  factory AddressObjectDto.fromJson(Map<String, dynamic> json) =>
      _$AddressObjectDtoFromJson(json);

  static const toJsonFactory = _$AddressObjectDtoToJson;
  Map<String, dynamic> toJson() => _$AddressObjectDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'userId')
  final String userId;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'state')
  final String state;
  @JsonKey(name: 'country')
  final String country;
  @JsonKey(name: 'pincode')
  final double pincode;
  @JsonKey(name: 'latitude')
  final double latitude;
  @JsonKey(name: 'longitude')
  final double longitude;
  static const fromJsonFactory = _$AddressObjectDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddressObjectDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(
                  other.address,
                  address,
                )) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(
                  other.country,
                  country,
                )) &&
            (identical(other.pincode, pincode) ||
                const DeepCollectionEquality().equals(
                  other.pincode,
                  pincode,
                )) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality().equals(
                  other.latitude,
                  latitude,
                )) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality().equals(
                  other.longitude,
                  longitude,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(pincode) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      runtimeType.hashCode;
}

extension $AddressObjectDtoExtension on AddressObjectDto {
  AddressObjectDto copyWith({
    String? id,
    String? userId,
    String? address,
    String? city,
    String? state,
    String? country,
    double? pincode,
    double? latitude,
    double? longitude,
  }) {
    return AddressObjectDto(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      address: address ?? this.address,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      pincode: pincode ?? this.pincode,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  AddressObjectDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? userId,
    Wrapped<String>? address,
    Wrapped<String>? city,
    Wrapped<String>? state,
    Wrapped<String>? country,
    Wrapped<double>? pincode,
    Wrapped<double>? latitude,
    Wrapped<double>? longitude,
  }) {
    return AddressObjectDto(
      id: (id != null ? id.value : this.id),
      userId: (userId != null ? userId.value : this.userId),
      address: (address != null ? address.value : this.address),
      city: (city != null ? city.value : this.city),
      state: (state != null ? state.value : this.state),
      country: (country != null ? country.value : this.country),
      pincode: (pincode != null ? pincode.value : this.pincode),
      latitude: (latitude != null ? latitude.value : this.latitude),
      longitude: (longitude != null ? longitude.value : this.longitude),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddressListResponseDto {
  const AddressListResponseDto({required this.items});

  factory AddressListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AddressListResponseDtoFromJson(json);

  static const toJsonFactory = _$AddressListResponseDtoToJson;
  Map<String, dynamic> toJson() => _$AddressListResponseDtoToJson(this);

  @JsonKey(name: 'items', defaultValue: <AddressObjectDto>[])
  final List<AddressObjectDto> items;
  static const fromJsonFactory = _$AddressListResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddressListResponseDto &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^ runtimeType.hashCode;
}

extension $AddressListResponseDtoExtension on AddressListResponseDto {
  AddressListResponseDto copyWith({List<AddressObjectDto>? items}) {
    return AddressListResponseDto(items: items ?? this.items);
  }

  AddressListResponseDto copyWithWrapped({
    Wrapped<List<AddressObjectDto>>? items,
  }) {
    return AddressListResponseDto(
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryObjectResponseDto {
  const CategoryObjectResponseDto({
    required this.id,
    required this.name,
    required this.imageUri,
    required this.description,
  });

  factory CategoryObjectResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryObjectResponseDtoFromJson(json);

  static const toJsonFactory = _$CategoryObjectResponseDtoToJson;
  Map<String, dynamic> toJson() => _$CategoryObjectResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'image_uri')
  final String imageUri;
  @JsonKey(name: 'description')
  final String description;
  static const fromJsonFactory = _$CategoryObjectResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CategoryObjectResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageUri, imageUri) ||
                const DeepCollectionEquality().equals(
                  other.imageUri,
                  imageUri,
                )) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageUri) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $CategoryObjectResponseDtoExtension on CategoryObjectResponseDto {
  CategoryObjectResponseDto copyWith({
    String? id,
    String? name,
    String? imageUri,
    String? description,
  }) {
    return CategoryObjectResponseDto(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUri: imageUri ?? this.imageUri,
      description: description ?? this.description,
    );
  }

  CategoryObjectResponseDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? name,
    Wrapped<String>? imageUri,
    Wrapped<String>? description,
  }) {
    return CategoryObjectResponseDto(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      imageUri: (imageUri != null ? imageUri.value : this.imageUri),
      description: (description != null ? description.value : this.description),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryListResponseDto {
  const CategoryListResponseDto({required this.data});

  factory CategoryListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryListResponseDtoFromJson(json);

  static const toJsonFactory = _$CategoryListResponseDtoToJson;
  Map<String, dynamic> toJson() => _$CategoryListResponseDtoToJson(this);

  @JsonKey(name: 'data', defaultValue: <CategoryObjectResponseDto>[])
  final List<CategoryObjectResponseDto> data;
  static const fromJsonFactory = _$CategoryListResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CategoryListResponseDto &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $CategoryListResponseDtoExtension on CategoryListResponseDto {
  CategoryListResponseDto copyWith({List<CategoryObjectResponseDto>? data}) {
    return CategoryListResponseDto(data: data ?? this.data);
  }

  CategoryListResponseDto copyWithWrapped({
    Wrapped<List<CategoryObjectResponseDto>>? data,
  }) {
    return CategoryListResponseDto(
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddCategoryReqDto {
  const AddCategoryReqDto({
    required this.name,
    required this.imageUri,
    required this.description,
  });

  factory AddCategoryReqDto.fromJson(Map<String, dynamic> json) =>
      _$AddCategoryReqDtoFromJson(json);

  static const toJsonFactory = _$AddCategoryReqDtoToJson;
  Map<String, dynamic> toJson() => _$AddCategoryReqDtoToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'image_uri')
  final String imageUri;
  @JsonKey(name: 'description')
  final String description;
  static const fromJsonFactory = _$AddCategoryReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddCategoryReqDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageUri, imageUri) ||
                const DeepCollectionEquality().equals(
                  other.imageUri,
                  imageUri,
                )) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageUri) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $AddCategoryReqDtoExtension on AddCategoryReqDto {
  AddCategoryReqDto copyWith({
    String? name,
    String? imageUri,
    String? description,
  }) {
    return AddCategoryReqDto(
      name: name ?? this.name,
      imageUri: imageUri ?? this.imageUri,
      description: description ?? this.description,
    );
  }

  AddCategoryReqDto copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<String>? imageUri,
    Wrapped<String>? description,
  }) {
    return AddCategoryReqDto(
      name: (name != null ? name.value : this.name),
      imageUri: (imageUri != null ? imageUri.value : this.imageUri),
      description: (description != null ? description.value : this.description),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddCategoryResponse {
  const AddCategoryResponse({required this.id});

  factory AddCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$AddCategoryResponseFromJson(json);

  static const toJsonFactory = _$AddCategoryResponseToJson;
  Map<String, dynamic> toJson() => _$AddCategoryResponseToJson(this);

  @JsonKey(name: 'id')
  final String id;
  static const fromJsonFactory = _$AddCategoryResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddCategoryResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $AddCategoryResponseExtension on AddCategoryResponse {
  AddCategoryResponse copyWith({String? id}) {
    return AddCategoryResponse(id: id ?? this.id);
  }

  AddCategoryResponse copyWithWrapped({Wrapped<String>? id}) {
    return AddCategoryResponse(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class AddSubCategoryReqDto {
  const AddSubCategoryReqDto({
    required this.categoryId,
    required this.title,
    this.imageUri,
    this.description,
  });

  factory AddSubCategoryReqDto.fromJson(Map<String, dynamic> json) =>
      _$AddSubCategoryReqDtoFromJson(json);

  static const toJsonFactory = _$AddSubCategoryReqDtoToJson;
  Map<String, dynamic> toJson() => _$AddSubCategoryReqDtoToJson(this);

  @JsonKey(name: 'categoryId')
  final String categoryId;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'imageUri')
  final String? imageUri;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$AddSubCategoryReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddSubCategoryReqDto &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.imageUri, imageUri) ||
                const DeepCollectionEquality().equals(
                  other.imageUri,
                  imageUri,
                )) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(imageUri) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $AddSubCategoryReqDtoExtension on AddSubCategoryReqDto {
  AddSubCategoryReqDto copyWith({
    String? categoryId,
    String? title,
    String? imageUri,
    String? description,
  }) {
    return AddSubCategoryReqDto(
      categoryId: categoryId ?? this.categoryId,
      title: title ?? this.title,
      imageUri: imageUri ?? this.imageUri,
      description: description ?? this.description,
    );
  }

  AddSubCategoryReqDto copyWithWrapped({
    Wrapped<String>? categoryId,
    Wrapped<String>? title,
    Wrapped<String?>? imageUri,
    Wrapped<String?>? description,
  }) {
    return AddSubCategoryReqDto(
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      title: (title != null ? title.value : this.title),
      imageUri: (imageUri != null ? imageUri.value : this.imageUri),
      description: (description != null ? description.value : this.description),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SubCategoryObjectResponseDto {
  const SubCategoryObjectResponseDto({required this.id, required this.title});

  factory SubCategoryObjectResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryObjectResponseDtoFromJson(json);

  static const toJsonFactory = _$SubCategoryObjectResponseDtoToJson;
  Map<String, dynamic> toJson() => _$SubCategoryObjectResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'title')
  final String title;
  static const fromJsonFactory = _$SubCategoryObjectResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SubCategoryObjectResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      runtimeType.hashCode;
}

extension $SubCategoryObjectResponseDtoExtension
    on SubCategoryObjectResponseDto {
  SubCategoryObjectResponseDto copyWith({String? id, String? title}) {
    return SubCategoryObjectResponseDto(
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }

  SubCategoryObjectResponseDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? title,
  }) {
    return SubCategoryObjectResponseDto(
      id: (id != null ? id.value : this.id),
      title: (title != null ? title.value : this.title),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SubCategoryObjectResDto {
  const SubCategoryObjectResDto({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.subCategoryType,
    required this.imageUri,
    required this.description,
  });

  factory SubCategoryObjectResDto.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryObjectResDtoFromJson(json);

  static const toJsonFactory = _$SubCategoryObjectResDtoToJson;
  Map<String, dynamic> toJson() => _$SubCategoryObjectResDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'categoryId')
  final String categoryId;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'subCategoryType')
  final double subCategoryType;
  @JsonKey(name: 'imageUri')
  final String imageUri;
  @JsonKey(name: 'description')
  final String description;
  static const fromJsonFactory = _$SubCategoryObjectResDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SubCategoryObjectResDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subCategoryType, subCategoryType) ||
                const DeepCollectionEquality().equals(
                  other.subCategoryType,
                  subCategoryType,
                )) &&
            (identical(other.imageUri, imageUri) ||
                const DeepCollectionEquality().equals(
                  other.imageUri,
                  imageUri,
                )) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subCategoryType) ^
      const DeepCollectionEquality().hash(imageUri) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $SubCategoryObjectResDtoExtension on SubCategoryObjectResDto {
  SubCategoryObjectResDto copyWith({
    String? id,
    String? categoryId,
    String? title,
    double? subCategoryType,
    String? imageUri,
    String? description,
  }) {
    return SubCategoryObjectResDto(
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      title: title ?? this.title,
      subCategoryType: subCategoryType ?? this.subCategoryType,
      imageUri: imageUri ?? this.imageUri,
      description: description ?? this.description,
    );
  }

  SubCategoryObjectResDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? categoryId,
    Wrapped<String>? title,
    Wrapped<double>? subCategoryType,
    Wrapped<String>? imageUri,
    Wrapped<String>? description,
  }) {
    return SubCategoryObjectResDto(
      id: (id != null ? id.value : this.id),
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      title: (title != null ? title.value : this.title),
      subCategoryType: (subCategoryType != null
          ? subCategoryType.value
          : this.subCategoryType),
      imageUri: (imageUri != null ? imageUri.value : this.imageUri),
      description: (description != null ? description.value : this.description),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SubCategoryListResponseDto {
  const SubCategoryListResponseDto({required this.data});

  factory SubCategoryListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryListResponseDtoFromJson(json);

  static const toJsonFactory = _$SubCategoryListResponseDtoToJson;
  Map<String, dynamic> toJson() => _$SubCategoryListResponseDtoToJson(this);

  @JsonKey(name: 'data', defaultValue: <SubCategoryObjectResDto>[])
  final List<SubCategoryObjectResDto> data;
  static const fromJsonFactory = _$SubCategoryListResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SubCategoryListResponseDto &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $SubCategoryListResponseDtoExtension on SubCategoryListResponseDto {
  SubCategoryListResponseDto copyWith({List<SubCategoryObjectResDto>? data}) {
    return SubCategoryListResponseDto(data: data ?? this.data);
  }

  SubCategoryListResponseDto copyWithWrapped({
    Wrapped<List<SubCategoryObjectResDto>>? data,
  }) {
    return SubCategoryListResponseDto(
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddProductReqDto {
  const AddProductReqDto({
    required this.productName,
    required this.localName,
    required this.categoryType,
    required this.imageUri,
    required this.description,
    required this.nutritionInfo,
    required this.productImage,
  });

  factory AddProductReqDto.fromJson(Map<String, dynamic> json) =>
      _$AddProductReqDtoFromJson(json);

  static const toJsonFactory = _$AddProductReqDtoToJson;
  Map<String, dynamic> toJson() => _$AddProductReqDtoToJson(this);

  @JsonKey(name: 'productName')
  final String productName;
  @JsonKey(name: 'localName')
  final String localName;
  @JsonKey(name: 'categoryType')
  final double categoryType;
  @JsonKey(name: 'imageUri')
  final String imageUri;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'nutritionInfo')
  final String nutritionInfo;
  @JsonKey(name: 'productImage')
  final String productImage;
  static const fromJsonFactory = _$AddProductReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddProductReqDto &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.localName, localName) ||
                const DeepCollectionEquality().equals(
                  other.localName,
                  localName,
                )) &&
            (identical(other.categoryType, categoryType) ||
                const DeepCollectionEquality().equals(
                  other.categoryType,
                  categoryType,
                )) &&
            (identical(other.imageUri, imageUri) ||
                const DeepCollectionEquality().equals(
                  other.imageUri,
                  imageUri,
                )) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.nutritionInfo, nutritionInfo) ||
                const DeepCollectionEquality().equals(
                  other.nutritionInfo,
                  nutritionInfo,
                )) &&
            (identical(other.productImage, productImage) ||
                const DeepCollectionEquality().equals(
                  other.productImage,
                  productImage,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(localName) ^
      const DeepCollectionEquality().hash(categoryType) ^
      const DeepCollectionEquality().hash(imageUri) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(nutritionInfo) ^
      const DeepCollectionEquality().hash(productImage) ^
      runtimeType.hashCode;
}

extension $AddProductReqDtoExtension on AddProductReqDto {
  AddProductReqDto copyWith({
    String? productName,
    String? localName,
    double? categoryType,
    String? imageUri,
    String? description,
    String? nutritionInfo,
    String? productImage,
  }) {
    return AddProductReqDto(
      productName: productName ?? this.productName,
      localName: localName ?? this.localName,
      categoryType: categoryType ?? this.categoryType,
      imageUri: imageUri ?? this.imageUri,
      description: description ?? this.description,
      nutritionInfo: nutritionInfo ?? this.nutritionInfo,
      productImage: productImage ?? this.productImage,
    );
  }

  AddProductReqDto copyWithWrapped({
    Wrapped<String>? productName,
    Wrapped<String>? localName,
    Wrapped<double>? categoryType,
    Wrapped<String>? imageUri,
    Wrapped<String>? description,
    Wrapped<String>? nutritionInfo,
    Wrapped<String>? productImage,
  }) {
    return AddProductReqDto(
      productName: (productName != null ? productName.value : this.productName),
      localName: (localName != null ? localName.value : this.localName),
      categoryType: (categoryType != null
          ? categoryType.value
          : this.categoryType),
      imageUri: (imageUri != null ? imageUri.value : this.imageUri),
      description: (description != null ? description.value : this.description),
      nutritionInfo: (nutritionInfo != null
          ? nutritionInfo.value
          : this.nutritionInfo),
      productImage: (productImage != null
          ? productImage.value
          : this.productImage),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddProductResponse {
  const AddProductResponse({required this.id});

  factory AddProductResponse.fromJson(Map<String, dynamic> json) =>
      _$AddProductResponseFromJson(json);

  static const toJsonFactory = _$AddProductResponseToJson;
  Map<String, dynamic> toJson() => _$AddProductResponseToJson(this);

  @JsonKey(name: 'id')
  final String id;
  static const fromJsonFactory = _$AddProductResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddProductResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $AddProductResponseExtension on AddProductResponse {
  AddProductResponse copyWith({String? id}) {
    return AddProductResponse(id: id ?? this.id);
  }

  AddProductResponse copyWithWrapped({Wrapped<String>? id}) {
    return AddProductResponse(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class ProductListObjectDto {
  const ProductListObjectDto({
    required this.id,
    required this.productName,
    required this.localName,
    required this.imageUri,
    required this.description,
    required this.quantity,
    required this.availableQuantity,
    required this.productPrice,
    required this.nutritionInfo,
    required this.productImage,
  });

  factory ProductListObjectDto.fromJson(Map<String, dynamic> json) =>
      _$ProductListObjectDtoFromJson(json);

  static const toJsonFactory = _$ProductListObjectDtoToJson;
  Map<String, dynamic> toJson() => _$ProductListObjectDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'productName')
  final String productName;
  @JsonKey(name: 'localName')
  final String localName;
  @JsonKey(name: 'imageUri')
  final String imageUri;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'quantity')
  final double quantity;
  @JsonKey(name: 'availableQuantity')
  final bool availableQuantity;
  @JsonKey(name: 'productPrice')
  final double productPrice;
  @JsonKey(name: 'nutritionInfo')
  final String nutritionInfo;
  @JsonKey(name: 'productImage')
  final String productImage;
  static const fromJsonFactory = _$ProductListObjectDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductListObjectDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.localName, localName) ||
                const DeepCollectionEquality().equals(
                  other.localName,
                  localName,
                )) &&
            (identical(other.imageUri, imageUri) ||
                const DeepCollectionEquality().equals(
                  other.imageUri,
                  imageUri,
                )) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality().equals(
                  other.quantity,
                  quantity,
                )) &&
            (identical(other.availableQuantity, availableQuantity) ||
                const DeepCollectionEquality().equals(
                  other.availableQuantity,
                  availableQuantity,
                )) &&
            (identical(other.productPrice, productPrice) ||
                const DeepCollectionEquality().equals(
                  other.productPrice,
                  productPrice,
                )) &&
            (identical(other.nutritionInfo, nutritionInfo) ||
                const DeepCollectionEquality().equals(
                  other.nutritionInfo,
                  nutritionInfo,
                )) &&
            (identical(other.productImage, productImage) ||
                const DeepCollectionEquality().equals(
                  other.productImage,
                  productImage,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(localName) ^
      const DeepCollectionEquality().hash(imageUri) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(availableQuantity) ^
      const DeepCollectionEquality().hash(productPrice) ^
      const DeepCollectionEquality().hash(nutritionInfo) ^
      const DeepCollectionEquality().hash(productImage) ^
      runtimeType.hashCode;
}

extension $ProductListObjectDtoExtension on ProductListObjectDto {
  ProductListObjectDto copyWith({
    String? id,
    String? productName,
    String? localName,
    String? imageUri,
    String? description,
    double? quantity,
    bool? availableQuantity,
    double? productPrice,
    String? nutritionInfo,
    String? productImage,
  }) {
    return ProductListObjectDto(
      id: id ?? this.id,
      productName: productName ?? this.productName,
      localName: localName ?? this.localName,
      imageUri: imageUri ?? this.imageUri,
      description: description ?? this.description,
      quantity: quantity ?? this.quantity,
      availableQuantity: availableQuantity ?? this.availableQuantity,
      productPrice: productPrice ?? this.productPrice,
      nutritionInfo: nutritionInfo ?? this.nutritionInfo,
      productImage: productImage ?? this.productImage,
    );
  }

  ProductListObjectDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? productName,
    Wrapped<String>? localName,
    Wrapped<String>? imageUri,
    Wrapped<String>? description,
    Wrapped<double>? quantity,
    Wrapped<bool>? availableQuantity,
    Wrapped<double>? productPrice,
    Wrapped<String>? nutritionInfo,
    Wrapped<String>? productImage,
  }) {
    return ProductListObjectDto(
      id: (id != null ? id.value : this.id),
      productName: (productName != null ? productName.value : this.productName),
      localName: (localName != null ? localName.value : this.localName),
      imageUri: (imageUri != null ? imageUri.value : this.imageUri),
      description: (description != null ? description.value : this.description),
      quantity: (quantity != null ? quantity.value : this.quantity),
      availableQuantity: (availableQuantity != null
          ? availableQuantity.value
          : this.availableQuantity),
      productPrice: (productPrice != null
          ? productPrice.value
          : this.productPrice),
      nutritionInfo: (nutritionInfo != null
          ? nutritionInfo.value
          : this.nutritionInfo),
      productImage: (productImage != null
          ? productImage.value
          : this.productImage),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AllProductResponse {
  const AllProductResponse({required this.data, required this.total});

  factory AllProductResponse.fromJson(Map<String, dynamic> json) =>
      _$AllProductResponseFromJson(json);

  static const toJsonFactory = _$AllProductResponseToJson;
  Map<String, dynamic> toJson() => _$AllProductResponseToJson(this);

  @JsonKey(name: 'data', defaultValue: <ProductListObjectDto>[])
  final List<ProductListObjectDto> data;
  @JsonKey(name: 'total')
  final double total;
  static const fromJsonFactory = _$AllProductResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AllProductResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $AllProductResponseExtension on AllProductResponse {
  AllProductResponse copyWith({
    List<ProductListObjectDto>? data,
    double? total,
  }) {
    return AllProductResponse(
      data: data ?? this.data,
      total: total ?? this.total,
    );
  }

  AllProductResponse copyWithWrapped({
    Wrapped<List<ProductListObjectDto>>? data,
    Wrapped<double>? total,
  }) {
    return AllProductResponse(
      data: (data != null ? data.value : this.data),
      total: (total != null ? total.value : this.total),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateProductSkuReqDto {
  const CreateProductSkuReqDto({
    required this.productId,
    required this.skuName,
    required this.orderStatus,
    required this.quantity,
    required this.productPrice,
  });

  factory CreateProductSkuReqDto.fromJson(Map<String, dynamic> json) =>
      _$CreateProductSkuReqDtoFromJson(json);

  static const toJsonFactory = _$CreateProductSkuReqDtoToJson;
  Map<String, dynamic> toJson() => _$CreateProductSkuReqDtoToJson(this);

  @JsonKey(name: 'productId')
  final String productId;
  @JsonKey(name: 'skuName')
  final String skuName;
  @JsonKey(name: 'orderStatus')
  final String orderStatus;
  @JsonKey(name: 'quantity')
  final double quantity;
  @JsonKey(name: 'productPrice')
  final double productPrice;
  static const fromJsonFactory = _$CreateProductSkuReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateProductSkuReqDto &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality().equals(
                  other.productId,
                  productId,
                )) &&
            (identical(other.skuName, skuName) ||
                const DeepCollectionEquality().equals(
                  other.skuName,
                  skuName,
                )) &&
            (identical(other.orderStatus, orderStatus) ||
                const DeepCollectionEquality().equals(
                  other.orderStatus,
                  orderStatus,
                )) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality().equals(
                  other.quantity,
                  quantity,
                )) &&
            (identical(other.productPrice, productPrice) ||
                const DeepCollectionEquality().equals(
                  other.productPrice,
                  productPrice,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(skuName) ^
      const DeepCollectionEquality().hash(orderStatus) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(productPrice) ^
      runtimeType.hashCode;
}

extension $CreateProductSkuReqDtoExtension on CreateProductSkuReqDto {
  CreateProductSkuReqDto copyWith({
    String? productId,
    String? skuName,
    String? orderStatus,
    double? quantity,
    double? productPrice,
  }) {
    return CreateProductSkuReqDto(
      productId: productId ?? this.productId,
      skuName: skuName ?? this.skuName,
      orderStatus: orderStatus ?? this.orderStatus,
      quantity: quantity ?? this.quantity,
      productPrice: productPrice ?? this.productPrice,
    );
  }

  CreateProductSkuReqDto copyWithWrapped({
    Wrapped<String>? productId,
    Wrapped<String>? skuName,
    Wrapped<String>? orderStatus,
    Wrapped<double>? quantity,
    Wrapped<double>? productPrice,
  }) {
    return CreateProductSkuReqDto(
      productId: (productId != null ? productId.value : this.productId),
      skuName: (skuName != null ? skuName.value : this.skuName),
      orderStatus: (orderStatus != null ? orderStatus.value : this.orderStatus),
      quantity: (quantity != null ? quantity.value : this.quantity),
      productPrice: (productPrice != null
          ? productPrice.value
          : this.productPrice),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateProductSkuResponseDto {
  const CreateProductSkuResponseDto({required this.id});

  factory CreateProductSkuResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CreateProductSkuResponseDtoFromJson(json);

  static const toJsonFactory = _$CreateProductSkuResponseDtoToJson;
  Map<String, dynamic> toJson() => _$CreateProductSkuResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  static const fromJsonFactory = _$CreateProductSkuResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateProductSkuResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $CreateProductSkuResponseDtoExtension on CreateProductSkuResponseDto {
  CreateProductSkuResponseDto copyWith({String? id}) {
    return CreateProductSkuResponseDto(id: id ?? this.id);
  }

  CreateProductSkuResponseDto copyWithWrapped({Wrapped<String>? id}) {
    return CreateProductSkuResponseDto(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateProductSkuReqDto {
  const UpdateProductSkuReqDto({
    required this.id,
    required this.skuName,
    required this.orderStatus,
  });

  factory UpdateProductSkuReqDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductSkuReqDtoFromJson(json);

  static const toJsonFactory = _$UpdateProductSkuReqDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateProductSkuReqDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'skuName')
  final String skuName;
  @JsonKey(name: 'orderStatus')
  final String orderStatus;
  static const fromJsonFactory = _$UpdateProductSkuReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateProductSkuReqDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.skuName, skuName) ||
                const DeepCollectionEquality().equals(
                  other.skuName,
                  skuName,
                )) &&
            (identical(other.orderStatus, orderStatus) ||
                const DeepCollectionEquality().equals(
                  other.orderStatus,
                  orderStatus,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(skuName) ^
      const DeepCollectionEquality().hash(orderStatus) ^
      runtimeType.hashCode;
}

extension $UpdateProductSkuReqDtoExtension on UpdateProductSkuReqDto {
  UpdateProductSkuReqDto copyWith({
    String? id,
    String? skuName,
    String? orderStatus,
  }) {
    return UpdateProductSkuReqDto(
      id: id ?? this.id,
      skuName: skuName ?? this.skuName,
      orderStatus: orderStatus ?? this.orderStatus,
    );
  }

  UpdateProductSkuReqDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? skuName,
    Wrapped<String>? orderStatus,
  }) {
    return UpdateProductSkuReqDto(
      id: (id != null ? id.value : this.id),
      skuName: (skuName != null ? skuName.value : this.skuName),
      orderStatus: (orderStatus != null ? orderStatus.value : this.orderStatus),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateProductSkuResponseDto {
  const UpdateProductSkuResponseDto({required this.id, required this.status});

  factory UpdateProductSkuResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductSkuResponseDtoFromJson(json);

  static const toJsonFactory = _$UpdateProductSkuResponseDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateProductSkuResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'status')
  final String status;
  static const fromJsonFactory = _$UpdateProductSkuResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateProductSkuResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $UpdateProductSkuResponseDtoExtension on UpdateProductSkuResponseDto {
  UpdateProductSkuResponseDto copyWith({String? id, String? status}) {
    return UpdateProductSkuResponseDto(
      id: id ?? this.id,
      status: status ?? this.status,
    );
  }

  UpdateProductSkuResponseDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? status,
  }) {
    return UpdateProductSkuResponseDto(
      id: (id != null ? id.value : this.id),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DeleteProductSkuReqDto {
  const DeleteProductSkuReqDto({required this.id});

  factory DeleteProductSkuReqDto.fromJson(Map<String, dynamic> json) =>
      _$DeleteProductSkuReqDtoFromJson(json);

  static const toJsonFactory = _$DeleteProductSkuReqDtoToJson;
  Map<String, dynamic> toJson() => _$DeleteProductSkuReqDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  static const fromJsonFactory = _$DeleteProductSkuReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DeleteProductSkuReqDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $DeleteProductSkuReqDtoExtension on DeleteProductSkuReqDto {
  DeleteProductSkuReqDto copyWith({String? id}) {
    return DeleteProductSkuReqDto(id: id ?? this.id);
  }

  DeleteProductSkuReqDto copyWithWrapped({Wrapped<String>? id}) {
    return DeleteProductSkuReqDto(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class DeleteProductSkuResponseDto {
  const DeleteProductSkuResponseDto({required this.id, required this.status});

  factory DeleteProductSkuResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DeleteProductSkuResponseDtoFromJson(json);

  static const toJsonFactory = _$DeleteProductSkuResponseDtoToJson;
  Map<String, dynamic> toJson() => _$DeleteProductSkuResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'status')
  final String status;
  static const fromJsonFactory = _$DeleteProductSkuResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DeleteProductSkuResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $DeleteProductSkuResponseDtoExtension on DeleteProductSkuResponseDto {
  DeleteProductSkuResponseDto copyWith({String? id, String? status}) {
    return DeleteProductSkuResponseDto(
      id: id ?? this.id,
      status: status ?? this.status,
    );
  }

  DeleteProductSkuResponseDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? status,
  }) {
    return DeleteProductSkuResponseDto(
      id: (id != null ? id.value : this.id),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GetProductSkusByProductReqDto {
  const GetProductSkusByProductReqDto({required this.productId});

  factory GetProductSkusByProductReqDto.fromJson(Map<String, dynamic> json) =>
      _$GetProductSkusByProductReqDtoFromJson(json);

  static const toJsonFactory = _$GetProductSkusByProductReqDtoToJson;
  Map<String, dynamic> toJson() => _$GetProductSkusByProductReqDtoToJson(this);

  @JsonKey(name: 'productId')
  final String productId;
  static const fromJsonFactory = _$GetProductSkusByProductReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetProductSkusByProductReqDto &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality().equals(
                  other.productId,
                  productId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productId) ^ runtimeType.hashCode;
}

extension $GetProductSkusByProductReqDtoExtension
    on GetProductSkusByProductReqDto {
  GetProductSkusByProductReqDto copyWith({String? productId}) {
    return GetProductSkusByProductReqDto(
      productId: productId ?? this.productId,
    );
  }

  GetProductSkusByProductReqDto copyWithWrapped({Wrapped<String>? productId}) {
    return GetProductSkusByProductReqDto(
      productId: (productId != null ? productId.value : this.productId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductSkuObjectDto {
  const ProductSkuObjectDto({
    required this.id,
    required this.productId,
    required this.skuName,
    required this.orderStatus,
  });

  factory ProductSkuObjectDto.fromJson(Map<String, dynamic> json) =>
      _$ProductSkuObjectDtoFromJson(json);

  static const toJsonFactory = _$ProductSkuObjectDtoToJson;
  Map<String, dynamic> toJson() => _$ProductSkuObjectDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'productId')
  final String productId;
  @JsonKey(name: 'skuName')
  final String skuName;
  @JsonKey(name: 'orderStatus')
  final String orderStatus;
  static const fromJsonFactory = _$ProductSkuObjectDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductSkuObjectDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality().equals(
                  other.productId,
                  productId,
                )) &&
            (identical(other.skuName, skuName) ||
                const DeepCollectionEquality().equals(
                  other.skuName,
                  skuName,
                )) &&
            (identical(other.orderStatus, orderStatus) ||
                const DeepCollectionEquality().equals(
                  other.orderStatus,
                  orderStatus,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(skuName) ^
      const DeepCollectionEquality().hash(orderStatus) ^
      runtimeType.hashCode;
}

extension $ProductSkuObjectDtoExtension on ProductSkuObjectDto {
  ProductSkuObjectDto copyWith({
    String? id,
    String? productId,
    String? skuName,
    String? orderStatus,
  }) {
    return ProductSkuObjectDto(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      skuName: skuName ?? this.skuName,
      orderStatus: orderStatus ?? this.orderStatus,
    );
  }

  ProductSkuObjectDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? productId,
    Wrapped<String>? skuName,
    Wrapped<String>? orderStatus,
  }) {
    return ProductSkuObjectDto(
      id: (id != null ? id.value : this.id),
      productId: (productId != null ? productId.value : this.productId),
      skuName: (skuName != null ? skuName.value : this.skuName),
      orderStatus: (orderStatus != null ? orderStatus.value : this.orderStatus),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductSkuListResponseDto {
  const ProductSkuListResponseDto({required this.items});

  factory ProductSkuListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProductSkuListResponseDtoFromJson(json);

  static const toJsonFactory = _$ProductSkuListResponseDtoToJson;
  Map<String, dynamic> toJson() => _$ProductSkuListResponseDtoToJson(this);

  @JsonKey(name: 'items', defaultValue: <ProductSkuObjectDto>[])
  final List<ProductSkuObjectDto> items;
  static const fromJsonFactory = _$ProductSkuListResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductSkuListResponseDto &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^ runtimeType.hashCode;
}

extension $ProductSkuListResponseDtoExtension on ProductSkuListResponseDto {
  ProductSkuListResponseDto copyWith({List<ProductSkuObjectDto>? items}) {
    return ProductSkuListResponseDto(items: items ?? this.items);
  }

  ProductSkuListResponseDto copyWithWrapped({
    Wrapped<List<ProductSkuObjectDto>>? items,
  }) {
    return ProductSkuListResponseDto(
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateFavouriteReqDto {
  const CreateFavouriteReqDto({required this.userId, required this.productId});

  factory CreateFavouriteReqDto.fromJson(Map<String, dynamic> json) =>
      _$CreateFavouriteReqDtoFromJson(json);

  static const toJsonFactory = _$CreateFavouriteReqDtoToJson;
  Map<String, dynamic> toJson() => _$CreateFavouriteReqDtoToJson(this);

  @JsonKey(name: 'userId')
  final String userId;
  @JsonKey(name: 'productId')
  final String productId;
  static const fromJsonFactory = _$CreateFavouriteReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateFavouriteReqDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality().equals(
                  other.productId,
                  productId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(productId) ^
      runtimeType.hashCode;
}

extension $CreateFavouriteReqDtoExtension on CreateFavouriteReqDto {
  CreateFavouriteReqDto copyWith({String? userId, String? productId}) {
    return CreateFavouriteReqDto(
      userId: userId ?? this.userId,
      productId: productId ?? this.productId,
    );
  }

  CreateFavouriteReqDto copyWithWrapped({
    Wrapped<String>? userId,
    Wrapped<String>? productId,
  }) {
    return CreateFavouriteReqDto(
      userId: (userId != null ? userId.value : this.userId),
      productId: (productId != null ? productId.value : this.productId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateFavouriteResponseDto {
  const CreateFavouriteResponseDto({required this.favouriteId});

  factory CreateFavouriteResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CreateFavouriteResponseDtoFromJson(json);

  static const toJsonFactory = _$CreateFavouriteResponseDtoToJson;
  Map<String, dynamic> toJson() => _$CreateFavouriteResponseDtoToJson(this);

  @JsonKey(name: 'favouriteId')
  final String favouriteId;
  static const fromJsonFactory = _$CreateFavouriteResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateFavouriteResponseDto &&
            (identical(other.favouriteId, favouriteId) ||
                const DeepCollectionEquality().equals(
                  other.favouriteId,
                  favouriteId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(favouriteId) ^ runtimeType.hashCode;
}

extension $CreateFavouriteResponseDtoExtension on CreateFavouriteResponseDto {
  CreateFavouriteResponseDto copyWith({String? favouriteId}) {
    return CreateFavouriteResponseDto(
      favouriteId: favouriteId ?? this.favouriteId,
    );
  }

  CreateFavouriteResponseDto copyWithWrapped({Wrapped<String>? favouriteId}) {
    return CreateFavouriteResponseDto(
      favouriteId: (favouriteId != null ? favouriteId.value : this.favouriteId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DeleteFavouriteResponseDto {
  const DeleteFavouriteResponseDto({
    required this.favouriteId,
    required this.status,
  });

  factory DeleteFavouriteResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DeleteFavouriteResponseDtoFromJson(json);

  static const toJsonFactory = _$DeleteFavouriteResponseDtoToJson;
  Map<String, dynamic> toJson() => _$DeleteFavouriteResponseDtoToJson(this);

  @JsonKey(name: 'favouriteId')
  final String favouriteId;
  @JsonKey(name: 'status')
  final String status;
  static const fromJsonFactory = _$DeleteFavouriteResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DeleteFavouriteResponseDto &&
            (identical(other.favouriteId, favouriteId) ||
                const DeepCollectionEquality().equals(
                  other.favouriteId,
                  favouriteId,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(favouriteId) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $DeleteFavouriteResponseDtoExtension on DeleteFavouriteResponseDto {
  DeleteFavouriteResponseDto copyWith({String? favouriteId, String? status}) {
    return DeleteFavouriteResponseDto(
      favouriteId: favouriteId ?? this.favouriteId,
      status: status ?? this.status,
    );
  }

  DeleteFavouriteResponseDto copyWithWrapped({
    Wrapped<String>? favouriteId,
    Wrapped<String>? status,
  }) {
    return DeleteFavouriteResponseDto(
      favouriteId: (favouriteId != null ? favouriteId.value : this.favouriteId),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class FavouriteListObjectDto {
  const FavouriteListObjectDto({
    required this.id,
    required this.userId,
    required this.productId,
    required this.createdAt,
    required this.deleteAt,
  });

  factory FavouriteListObjectDto.fromJson(Map<String, dynamic> json) =>
      _$FavouriteListObjectDtoFromJson(json);

  static const toJsonFactory = _$FavouriteListObjectDtoToJson;
  Map<String, dynamic> toJson() => _$FavouriteListObjectDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'userId')
  final String userId;
  @JsonKey(name: 'productId')
  final String productId;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'deleteAt')
  final DateTime deleteAt;
  static const fromJsonFactory = _$FavouriteListObjectDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is FavouriteListObjectDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality().equals(
                  other.productId,
                  productId,
                )) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.deleteAt, deleteAt) ||
                const DeepCollectionEquality().equals(
                  other.deleteAt,
                  deleteAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(deleteAt) ^
      runtimeType.hashCode;
}

extension $FavouriteListObjectDtoExtension on FavouriteListObjectDto {
  FavouriteListObjectDto copyWith({
    String? id,
    String? userId,
    String? productId,
    DateTime? createdAt,
    DateTime? deleteAt,
  }) {
    return FavouriteListObjectDto(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      productId: productId ?? this.productId,
      createdAt: createdAt ?? this.createdAt,
      deleteAt: deleteAt ?? this.deleteAt,
    );
  }

  FavouriteListObjectDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? userId,
    Wrapped<String>? productId,
    Wrapped<DateTime>? createdAt,
    Wrapped<DateTime>? deleteAt,
  }) {
    return FavouriteListObjectDto(
      id: (id != null ? id.value : this.id),
      userId: (userId != null ? userId.value : this.userId),
      productId: (productId != null ? productId.value : this.productId),
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      deleteAt: (deleteAt != null ? deleteAt.value : this.deleteAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class FavouriteListResponseDto {
  const FavouriteListResponseDto({required this.data, required this.total});

  factory FavouriteListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$FavouriteListResponseDtoFromJson(json);

  static const toJsonFactory = _$FavouriteListResponseDtoToJson;
  Map<String, dynamic> toJson() => _$FavouriteListResponseDtoToJson(this);

  @JsonKey(name: 'data', defaultValue: <FavouriteListObjectDto>[])
  final List<FavouriteListObjectDto> data;
  @JsonKey(name: 'total')
  final double total;
  static const fromJsonFactory = _$FavouriteListResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is FavouriteListResponseDto &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $FavouriteListResponseDtoExtension on FavouriteListResponseDto {
  FavouriteListResponseDto copyWith({
    List<FavouriteListObjectDto>? data,
    double? total,
  }) {
    return FavouriteListResponseDto(
      data: data ?? this.data,
      total: total ?? this.total,
    );
  }

  FavouriteListResponseDto copyWithWrapped({
    Wrapped<List<FavouriteListObjectDto>>? data,
    Wrapped<double>? total,
  }) {
    return FavouriteListResponseDto(
      data: (data != null ? data.value : this.data),
      total: (total != null ? total.value : this.total),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateCartReqDto {
  const CreateCartReqDto({required this.userId});

  factory CreateCartReqDto.fromJson(Map<String, dynamic> json) =>
      _$CreateCartReqDtoFromJson(json);

  static const toJsonFactory = _$CreateCartReqDtoToJson;
  Map<String, dynamic> toJson() => _$CreateCartReqDtoToJson(this);

  @JsonKey(name: 'userId')
  final String userId;
  static const fromJsonFactory = _$CreateCartReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateCartReqDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^ runtimeType.hashCode;
}

extension $CreateCartReqDtoExtension on CreateCartReqDto {
  CreateCartReqDto copyWith({String? userId}) {
    return CreateCartReqDto(userId: userId ?? this.userId);
  }

  CreateCartReqDto copyWithWrapped({Wrapped<String>? userId}) {
    return CreateCartReqDto(
      userId: (userId != null ? userId.value : this.userId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateCartResponseDto {
  const CreateCartResponseDto({required this.cartId});

  factory CreateCartResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CreateCartResponseDtoFromJson(json);

  static const toJsonFactory = _$CreateCartResponseDtoToJson;
  Map<String, dynamic> toJson() => _$CreateCartResponseDtoToJson(this);

  @JsonKey(name: 'cartId')
  final String cartId;
  static const fromJsonFactory = _$CreateCartResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateCartResponseDto &&
            (identical(other.cartId, cartId) ||
                const DeepCollectionEquality().equals(other.cartId, cartId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(cartId) ^ runtimeType.hashCode;
}

extension $CreateCartResponseDtoExtension on CreateCartResponseDto {
  CreateCartResponseDto copyWith({String? cartId}) {
    return CreateCartResponseDto(cartId: cartId ?? this.cartId);
  }

  CreateCartResponseDto copyWithWrapped({Wrapped<String>? cartId}) {
    return CreateCartResponseDto(
      cartId: (cartId != null ? cartId.value : this.cartId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddCartItemReqDto {
  const AddCartItemReqDto({
    required this.cartId,
    required this.productId,
    required this.productSubSkuId,
    required this.quantity,
  });

  factory AddCartItemReqDto.fromJson(Map<String, dynamic> json) =>
      _$AddCartItemReqDtoFromJson(json);

  static const toJsonFactory = _$AddCartItemReqDtoToJson;
  Map<String, dynamic> toJson() => _$AddCartItemReqDtoToJson(this);

  @JsonKey(name: 'cartId')
  final String cartId;
  @JsonKey(name: 'productId')
  final String productId;
  @JsonKey(name: 'productSubSkuId')
  final String productSubSkuId;
  @JsonKey(name: 'quantity')
  final double quantity;
  static const fromJsonFactory = _$AddCartItemReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddCartItemReqDto &&
            (identical(other.cartId, cartId) ||
                const DeepCollectionEquality().equals(other.cartId, cartId)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality().equals(
                  other.productId,
                  productId,
                )) &&
            (identical(other.productSubSkuId, productSubSkuId) ||
                const DeepCollectionEquality().equals(
                  other.productSubSkuId,
                  productSubSkuId,
                )) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality().equals(
                  other.quantity,
                  quantity,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(cartId) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(productSubSkuId) ^
      const DeepCollectionEquality().hash(quantity) ^
      runtimeType.hashCode;
}

extension $AddCartItemReqDtoExtension on AddCartItemReqDto {
  AddCartItemReqDto copyWith({
    String? cartId,
    String? productId,
    String? productSubSkuId,
    double? quantity,
  }) {
    return AddCartItemReqDto(
      cartId: cartId ?? this.cartId,
      productId: productId ?? this.productId,
      productSubSkuId: productSubSkuId ?? this.productSubSkuId,
      quantity: quantity ?? this.quantity,
    );
  }

  AddCartItemReqDto copyWithWrapped({
    Wrapped<String>? cartId,
    Wrapped<String>? productId,
    Wrapped<String>? productSubSkuId,
    Wrapped<double>? quantity,
  }) {
    return AddCartItemReqDto(
      cartId: (cartId != null ? cartId.value : this.cartId),
      productId: (productId != null ? productId.value : this.productId),
      productSubSkuId: (productSubSkuId != null
          ? productSubSkuId.value
          : this.productSubSkuId),
      quantity: (quantity != null ? quantity.value : this.quantity),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddCartItemResponseDto {
  const AddCartItemResponseDto({required this.itemId});

  factory AddCartItemResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AddCartItemResponseDtoFromJson(json);

  static const toJsonFactory = _$AddCartItemResponseDtoToJson;
  Map<String, dynamic> toJson() => _$AddCartItemResponseDtoToJson(this);

  @JsonKey(name: 'itemId')
  final String itemId;
  static const fromJsonFactory = _$AddCartItemResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddCartItemResponseDto &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(itemId) ^ runtimeType.hashCode;
}

extension $AddCartItemResponseDtoExtension on AddCartItemResponseDto {
  AddCartItemResponseDto copyWith({String? itemId}) {
    return AddCartItemResponseDto(itemId: itemId ?? this.itemId);
  }

  AddCartItemResponseDto copyWithWrapped({Wrapped<String>? itemId}) {
    return AddCartItemResponseDto(
      itemId: (itemId != null ? itemId.value : this.itemId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RemoveCartItemReqDto {
  const RemoveCartItemReqDto({required this.itemId});

  factory RemoveCartItemReqDto.fromJson(Map<String, dynamic> json) =>
      _$RemoveCartItemReqDtoFromJson(json);

  static const toJsonFactory = _$RemoveCartItemReqDtoToJson;
  Map<String, dynamic> toJson() => _$RemoveCartItemReqDtoToJson(this);

  @JsonKey(name: 'itemId')
  final String itemId;
  static const fromJsonFactory = _$RemoveCartItemReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RemoveCartItemReqDto &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(itemId) ^ runtimeType.hashCode;
}

extension $RemoveCartItemReqDtoExtension on RemoveCartItemReqDto {
  RemoveCartItemReqDto copyWith({String? itemId}) {
    return RemoveCartItemReqDto(itemId: itemId ?? this.itemId);
  }

  RemoveCartItemReqDto copyWithWrapped({Wrapped<String>? itemId}) {
    return RemoveCartItemReqDto(
      itemId: (itemId != null ? itemId.value : this.itemId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RemoveCartItemResponseDto {
  const RemoveCartItemResponseDto({required this.itemId, required this.status});

  factory RemoveCartItemResponseDto.fromJson(Map<String, dynamic> json) =>
      _$RemoveCartItemResponseDtoFromJson(json);

  static const toJsonFactory = _$RemoveCartItemResponseDtoToJson;
  Map<String, dynamic> toJson() => _$RemoveCartItemResponseDtoToJson(this);

  @JsonKey(name: 'itemId')
  final String itemId;
  @JsonKey(name: 'status')
  final String status;
  static const fromJsonFactory = _$RemoveCartItemResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RemoveCartItemResponseDto &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $RemoveCartItemResponseDtoExtension on RemoveCartItemResponseDto {
  RemoveCartItemResponseDto copyWith({String? itemId, String? status}) {
    return RemoveCartItemResponseDto(
      itemId: itemId ?? this.itemId,
      status: status ?? this.status,
    );
  }

  RemoveCartItemResponseDto copyWithWrapped({
    Wrapped<String>? itemId,
    Wrapped<String>? status,
  }) {
    return RemoveCartItemResponseDto(
      itemId: (itemId != null ? itemId.value : this.itemId),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateCartItemReqDto {
  const UpdateCartItemReqDto({required this.itemId, required this.quantity});

  factory UpdateCartItemReqDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartItemReqDtoFromJson(json);

  static const toJsonFactory = _$UpdateCartItemReqDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateCartItemReqDtoToJson(this);

  @JsonKey(name: 'itemId')
  final String itemId;
  @JsonKey(name: 'quantity')
  final double quantity;
  static const fromJsonFactory = _$UpdateCartItemReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateCartItemReqDto &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality().equals(
                  other.quantity,
                  quantity,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(quantity) ^
      runtimeType.hashCode;
}

extension $UpdateCartItemReqDtoExtension on UpdateCartItemReqDto {
  UpdateCartItemReqDto copyWith({String? itemId, double? quantity}) {
    return UpdateCartItemReqDto(
      itemId: itemId ?? this.itemId,
      quantity: quantity ?? this.quantity,
    );
  }

  UpdateCartItemReqDto copyWithWrapped({
    Wrapped<String>? itemId,
    Wrapped<double>? quantity,
  }) {
    return UpdateCartItemReqDto(
      itemId: (itemId != null ? itemId.value : this.itemId),
      quantity: (quantity != null ? quantity.value : this.quantity),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateCartItemResponseDto {
  const UpdateCartItemResponseDto({required this.itemId, required this.status});

  factory UpdateCartItemResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartItemResponseDtoFromJson(json);

  static const toJsonFactory = _$UpdateCartItemResponseDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateCartItemResponseDtoToJson(this);

  @JsonKey(name: 'itemId')
  final String itemId;
  @JsonKey(name: 'status')
  final String status;
  static const fromJsonFactory = _$UpdateCartItemResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateCartItemResponseDto &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $UpdateCartItemResponseDtoExtension on UpdateCartItemResponseDto {
  UpdateCartItemResponseDto copyWith({String? itemId, String? status}) {
    return UpdateCartItemResponseDto(
      itemId: itemId ?? this.itemId,
      status: status ?? this.status,
    );
  }

  UpdateCartItemResponseDto copyWithWrapped({
    Wrapped<String>? itemId,
    Wrapped<String>? status,
  }) {
    return UpdateCartItemResponseDto(
      itemId: (itemId != null ? itemId.value : this.itemId),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CartItemObjectDto {
  const CartItemObjectDto({
    required this.id,
    required this.productId,
    required this.productSubSkuId,
    required this.quantity,
    required this.createdAt,
    required this.updateAt,
  });

  factory CartItemObjectDto.fromJson(Map<String, dynamic> json) =>
      _$CartItemObjectDtoFromJson(json);

  static const toJsonFactory = _$CartItemObjectDtoToJson;
  Map<String, dynamic> toJson() => _$CartItemObjectDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'productId')
  final String productId;
  @JsonKey(name: 'productSubSkuId')
  final String productSubSkuId;
  @JsonKey(name: 'quantity')
  final double quantity;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updateAt')
  final DateTime updateAt;
  static const fromJsonFactory = _$CartItemObjectDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CartItemObjectDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality().equals(
                  other.productId,
                  productId,
                )) &&
            (identical(other.productSubSkuId, productSubSkuId) ||
                const DeepCollectionEquality().equals(
                  other.productSubSkuId,
                  productSubSkuId,
                )) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality().equals(
                  other.quantity,
                  quantity,
                )) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.updateAt, updateAt) ||
                const DeepCollectionEquality().equals(
                  other.updateAt,
                  updateAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(productSubSkuId) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updateAt) ^
      runtimeType.hashCode;
}

extension $CartItemObjectDtoExtension on CartItemObjectDto {
  CartItemObjectDto copyWith({
    String? id,
    String? productId,
    String? productSubSkuId,
    double? quantity,
    DateTime? createdAt,
    DateTime? updateAt,
  }) {
    return CartItemObjectDto(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      productSubSkuId: productSubSkuId ?? this.productSubSkuId,
      quantity: quantity ?? this.quantity,
      createdAt: createdAt ?? this.createdAt,
      updateAt: updateAt ?? this.updateAt,
    );
  }

  CartItemObjectDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? productId,
    Wrapped<String>? productSubSkuId,
    Wrapped<double>? quantity,
    Wrapped<DateTime>? createdAt,
    Wrapped<DateTime>? updateAt,
  }) {
    return CartItemObjectDto(
      id: (id != null ? id.value : this.id),
      productId: (productId != null ? productId.value : this.productId),
      productSubSkuId: (productSubSkuId != null
          ? productSubSkuId.value
          : this.productSubSkuId),
      quantity: (quantity != null ? quantity.value : this.quantity),
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      updateAt: (updateAt != null ? updateAt.value : this.updateAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CartDetailsResponseDto {
  const CartDetailsResponseDto({
    required this.id,
    required this.userId,
    required this.createdAt,
    required this.updateAt,
    required this.items,
  });

  factory CartDetailsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CartDetailsResponseDtoFromJson(json);

  static const toJsonFactory = _$CartDetailsResponseDtoToJson;
  Map<String, dynamic> toJson() => _$CartDetailsResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'userId')
  final String userId;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updateAt')
  final DateTime updateAt;
  @JsonKey(name: 'items', defaultValue: <CartItemObjectDto>[])
  final List<CartItemObjectDto> items;
  static const fromJsonFactory = _$CartDetailsResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CartDetailsResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.updateAt, updateAt) ||
                const DeepCollectionEquality().equals(
                  other.updateAt,
                  updateAt,
                )) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updateAt) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $CartDetailsResponseDtoExtension on CartDetailsResponseDto {
  CartDetailsResponseDto copyWith({
    String? id,
    String? userId,
    DateTime? createdAt,
    DateTime? updateAt,
    List<CartItemObjectDto>? items,
  }) {
    return CartDetailsResponseDto(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      updateAt: updateAt ?? this.updateAt,
      items: items ?? this.items,
    );
  }

  CartDetailsResponseDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? userId,
    Wrapped<DateTime>? createdAt,
    Wrapped<DateTime>? updateAt,
    Wrapped<List<CartItemObjectDto>>? items,
  }) {
    return CartDetailsResponseDto(
      id: (id != null ? id.value : this.id),
      userId: (userId != null ? userId.value : this.userId),
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      updateAt: (updateAt != null ? updateAt.value : this.updateAt),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddSubCartItemReqDto {
  const AddSubCartItemReqDto({
    required this.cartId,
    required this.productId,
    required this.productSubSkuId,
    required this.quantity,
  });

  factory AddSubCartItemReqDto.fromJson(Map<String, dynamic> json) =>
      _$AddSubCartItemReqDtoFromJson(json);

  static const toJsonFactory = _$AddSubCartItemReqDtoToJson;
  Map<String, dynamic> toJson() => _$AddSubCartItemReqDtoToJson(this);

  @JsonKey(name: 'cartId')
  final String cartId;
  @JsonKey(name: 'productId')
  final String productId;
  @JsonKey(name: 'productSubSkuId')
  final String productSubSkuId;
  @JsonKey(name: 'quantity')
  final double quantity;
  static const fromJsonFactory = _$AddSubCartItemReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddSubCartItemReqDto &&
            (identical(other.cartId, cartId) ||
                const DeepCollectionEquality().equals(other.cartId, cartId)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality().equals(
                  other.productId,
                  productId,
                )) &&
            (identical(other.productSubSkuId, productSubSkuId) ||
                const DeepCollectionEquality().equals(
                  other.productSubSkuId,
                  productSubSkuId,
                )) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality().equals(
                  other.quantity,
                  quantity,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(cartId) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(productSubSkuId) ^
      const DeepCollectionEquality().hash(quantity) ^
      runtimeType.hashCode;
}

extension $AddSubCartItemReqDtoExtension on AddSubCartItemReqDto {
  AddSubCartItemReqDto copyWith({
    String? cartId,
    String? productId,
    String? productSubSkuId,
    double? quantity,
  }) {
    return AddSubCartItemReqDto(
      cartId: cartId ?? this.cartId,
      productId: productId ?? this.productId,
      productSubSkuId: productSubSkuId ?? this.productSubSkuId,
      quantity: quantity ?? this.quantity,
    );
  }

  AddSubCartItemReqDto copyWithWrapped({
    Wrapped<String>? cartId,
    Wrapped<String>? productId,
    Wrapped<String>? productSubSkuId,
    Wrapped<double>? quantity,
  }) {
    return AddSubCartItemReqDto(
      cartId: (cartId != null ? cartId.value : this.cartId),
      productId: (productId != null ? productId.value : this.productId),
      productSubSkuId: (productSubSkuId != null
          ? productSubSkuId.value
          : this.productSubSkuId),
      quantity: (quantity != null ? quantity.value : this.quantity),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddSubCartItemResponseDto {
  const AddSubCartItemResponseDto({required this.itemId});

  factory AddSubCartItemResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AddSubCartItemResponseDtoFromJson(json);

  static const toJsonFactory = _$AddSubCartItemResponseDtoToJson;
  Map<String, dynamic> toJson() => _$AddSubCartItemResponseDtoToJson(this);

  @JsonKey(name: 'itemId')
  final String itemId;
  static const fromJsonFactory = _$AddSubCartItemResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddSubCartItemResponseDto &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(itemId) ^ runtimeType.hashCode;
}

extension $AddSubCartItemResponseDtoExtension on AddSubCartItemResponseDto {
  AddSubCartItemResponseDto copyWith({String? itemId}) {
    return AddSubCartItemResponseDto(itemId: itemId ?? this.itemId);
  }

  AddSubCartItemResponseDto copyWithWrapped({Wrapped<String>? itemId}) {
    return AddSubCartItemResponseDto(
      itemId: (itemId != null ? itemId.value : this.itemId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RemoveSubCartItemReqDto {
  const RemoveSubCartItemReqDto({required this.itemId});

  factory RemoveSubCartItemReqDto.fromJson(Map<String, dynamic> json) =>
      _$RemoveSubCartItemReqDtoFromJson(json);

  static const toJsonFactory = _$RemoveSubCartItemReqDtoToJson;
  Map<String, dynamic> toJson() => _$RemoveSubCartItemReqDtoToJson(this);

  @JsonKey(name: 'itemId')
  final String itemId;
  static const fromJsonFactory = _$RemoveSubCartItemReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RemoveSubCartItemReqDto &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(itemId) ^ runtimeType.hashCode;
}

extension $RemoveSubCartItemReqDtoExtension on RemoveSubCartItemReqDto {
  RemoveSubCartItemReqDto copyWith({String? itemId}) {
    return RemoveSubCartItemReqDto(itemId: itemId ?? this.itemId);
  }

  RemoveSubCartItemReqDto copyWithWrapped({Wrapped<String>? itemId}) {
    return RemoveSubCartItemReqDto(
      itemId: (itemId != null ? itemId.value : this.itemId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RemoveSubCartItemResponseDto {
  const RemoveSubCartItemResponseDto({
    required this.itemId,
    required this.status,
  });

  factory RemoveSubCartItemResponseDto.fromJson(Map<String, dynamic> json) =>
      _$RemoveSubCartItemResponseDtoFromJson(json);

  static const toJsonFactory = _$RemoveSubCartItemResponseDtoToJson;
  Map<String, dynamic> toJson() => _$RemoveSubCartItemResponseDtoToJson(this);

  @JsonKey(name: 'itemId')
  final String itemId;
  @JsonKey(name: 'status')
  final String status;
  static const fromJsonFactory = _$RemoveSubCartItemResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RemoveSubCartItemResponseDto &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $RemoveSubCartItemResponseDtoExtension
    on RemoveSubCartItemResponseDto {
  RemoveSubCartItemResponseDto copyWith({String? itemId, String? status}) {
    return RemoveSubCartItemResponseDto(
      itemId: itemId ?? this.itemId,
      status: status ?? this.status,
    );
  }

  RemoveSubCartItemResponseDto copyWithWrapped({
    Wrapped<String>? itemId,
    Wrapped<String>? status,
  }) {
    return RemoveSubCartItemResponseDto(
      itemId: (itemId != null ? itemId.value : this.itemId),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateSubCartItemReqDto {
  const UpdateSubCartItemReqDto({required this.itemId, required this.quantity});

  factory UpdateSubCartItemReqDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateSubCartItemReqDtoFromJson(json);

  static const toJsonFactory = _$UpdateSubCartItemReqDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateSubCartItemReqDtoToJson(this);

  @JsonKey(name: 'itemId')
  final String itemId;
  @JsonKey(name: 'quantity')
  final double quantity;
  static const fromJsonFactory = _$UpdateSubCartItemReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateSubCartItemReqDto &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality().equals(
                  other.quantity,
                  quantity,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(quantity) ^
      runtimeType.hashCode;
}

extension $UpdateSubCartItemReqDtoExtension on UpdateSubCartItemReqDto {
  UpdateSubCartItemReqDto copyWith({String? itemId, double? quantity}) {
    return UpdateSubCartItemReqDto(
      itemId: itemId ?? this.itemId,
      quantity: quantity ?? this.quantity,
    );
  }

  UpdateSubCartItemReqDto copyWithWrapped({
    Wrapped<String>? itemId,
    Wrapped<double>? quantity,
  }) {
    return UpdateSubCartItemReqDto(
      itemId: (itemId != null ? itemId.value : this.itemId),
      quantity: (quantity != null ? quantity.value : this.quantity),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateSubCartItemResponseDto {
  const UpdateSubCartItemResponseDto({
    required this.itemId,
    required this.status,
  });

  factory UpdateSubCartItemResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateSubCartItemResponseDtoFromJson(json);

  static const toJsonFactory = _$UpdateSubCartItemResponseDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateSubCartItemResponseDtoToJson(this);

  @JsonKey(name: 'itemId')
  final String itemId;
  @JsonKey(name: 'status')
  final String status;
  static const fromJsonFactory = _$UpdateSubCartItemResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateSubCartItemResponseDto &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $UpdateSubCartItemResponseDtoExtension
    on UpdateSubCartItemResponseDto {
  UpdateSubCartItemResponseDto copyWith({String? itemId, String? status}) {
    return UpdateSubCartItemResponseDto(
      itemId: itemId ?? this.itemId,
      status: status ?? this.status,
    );
  }

  UpdateSubCartItemResponseDto copyWithWrapped({
    Wrapped<String>? itemId,
    Wrapped<String>? status,
  }) {
    return UpdateSubCartItemResponseDto(
      itemId: (itemId != null ? itemId.value : this.itemId),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GetSubCartItemsByCartReqDto {
  const GetSubCartItemsByCartReqDto({required this.cartId});

  factory GetSubCartItemsByCartReqDto.fromJson(Map<String, dynamic> json) =>
      _$GetSubCartItemsByCartReqDtoFromJson(json);

  static const toJsonFactory = _$GetSubCartItemsByCartReqDtoToJson;
  Map<String, dynamic> toJson() => _$GetSubCartItemsByCartReqDtoToJson(this);

  @JsonKey(name: 'cartId')
  final String cartId;
  static const fromJsonFactory = _$GetSubCartItemsByCartReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetSubCartItemsByCartReqDto &&
            (identical(other.cartId, cartId) ||
                const DeepCollectionEquality().equals(other.cartId, cartId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(cartId) ^ runtimeType.hashCode;
}

extension $GetSubCartItemsByCartReqDtoExtension on GetSubCartItemsByCartReqDto {
  GetSubCartItemsByCartReqDto copyWith({String? cartId}) {
    return GetSubCartItemsByCartReqDto(cartId: cartId ?? this.cartId);
  }

  GetSubCartItemsByCartReqDto copyWithWrapped({Wrapped<String>? cartId}) {
    return GetSubCartItemsByCartReqDto(
      cartId: (cartId != null ? cartId.value : this.cartId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SubCartItemObjectDto {
  const SubCartItemObjectDto({
    required this.id,
    required this.cartId,
    required this.productId,
    required this.productSubSkuId,
    required this.quantity,
    required this.createdAt,
    required this.updateAt,
  });

  factory SubCartItemObjectDto.fromJson(Map<String, dynamic> json) =>
      _$SubCartItemObjectDtoFromJson(json);

  static const toJsonFactory = _$SubCartItemObjectDtoToJson;
  Map<String, dynamic> toJson() => _$SubCartItemObjectDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'cartId')
  final String cartId;
  @JsonKey(name: 'productId')
  final String productId;
  @JsonKey(name: 'productSubSkuId')
  final String productSubSkuId;
  @JsonKey(name: 'quantity')
  final double quantity;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updateAt')
  final DateTime updateAt;
  static const fromJsonFactory = _$SubCartItemObjectDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SubCartItemObjectDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.cartId, cartId) ||
                const DeepCollectionEquality().equals(other.cartId, cartId)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality().equals(
                  other.productId,
                  productId,
                )) &&
            (identical(other.productSubSkuId, productSubSkuId) ||
                const DeepCollectionEquality().equals(
                  other.productSubSkuId,
                  productSubSkuId,
                )) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality().equals(
                  other.quantity,
                  quantity,
                )) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.updateAt, updateAt) ||
                const DeepCollectionEquality().equals(
                  other.updateAt,
                  updateAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(cartId) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(productSubSkuId) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updateAt) ^
      runtimeType.hashCode;
}

extension $SubCartItemObjectDtoExtension on SubCartItemObjectDto {
  SubCartItemObjectDto copyWith({
    String? id,
    String? cartId,
    String? productId,
    String? productSubSkuId,
    double? quantity,
    DateTime? createdAt,
    DateTime? updateAt,
  }) {
    return SubCartItemObjectDto(
      id: id ?? this.id,
      cartId: cartId ?? this.cartId,
      productId: productId ?? this.productId,
      productSubSkuId: productSubSkuId ?? this.productSubSkuId,
      quantity: quantity ?? this.quantity,
      createdAt: createdAt ?? this.createdAt,
      updateAt: updateAt ?? this.updateAt,
    );
  }

  SubCartItemObjectDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? cartId,
    Wrapped<String>? productId,
    Wrapped<String>? productSubSkuId,
    Wrapped<double>? quantity,
    Wrapped<DateTime>? createdAt,
    Wrapped<DateTime>? updateAt,
  }) {
    return SubCartItemObjectDto(
      id: (id != null ? id.value : this.id),
      cartId: (cartId != null ? cartId.value : this.cartId),
      productId: (productId != null ? productId.value : this.productId),
      productSubSkuId: (productSubSkuId != null
          ? productSubSkuId.value
          : this.productSubSkuId),
      quantity: (quantity != null ? quantity.value : this.quantity),
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      updateAt: (updateAt != null ? updateAt.value : this.updateAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SubCartItemsListResponseDto {
  const SubCartItemsListResponseDto({required this.items});

  factory SubCartItemsListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SubCartItemsListResponseDtoFromJson(json);

  static const toJsonFactory = _$SubCartItemsListResponseDtoToJson;
  Map<String, dynamic> toJson() => _$SubCartItemsListResponseDtoToJson(this);

  @JsonKey(name: 'items', defaultValue: <SubCartItemObjectDto>[])
  final List<SubCartItemObjectDto> items;
  static const fromJsonFactory = _$SubCartItemsListResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SubCartItemsListResponseDto &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^ runtimeType.hashCode;
}

extension $SubCartItemsListResponseDtoExtension on SubCartItemsListResponseDto {
  SubCartItemsListResponseDto copyWith({List<SubCartItemObjectDto>? items}) {
    return SubCartItemsListResponseDto(items: items ?? this.items);
  }

  SubCartItemsListResponseDto copyWithWrapped({
    Wrapped<List<SubCartItemObjectDto>>? items,
  }) {
    return SubCartItemsListResponseDto(
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateOrderReqDto {
  const CreateOrderReqDto({
    required this.userId,
    required this.transactionId,
    required this.status,
  });

  factory CreateOrderReqDto.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderReqDtoFromJson(json);

  static const toJsonFactory = _$CreateOrderReqDtoToJson;
  Map<String, dynamic> toJson() => _$CreateOrderReqDtoToJson(this);

  @JsonKey(name: 'userId')
  final String userId;
  @JsonKey(name: 'transactionId')
  final double transactionId;
  @JsonKey(name: 'status')
  final String status;
  static const fromJsonFactory = _$CreateOrderReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateOrderReqDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality().equals(
                  other.transactionId,
                  transactionId,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $CreateOrderReqDtoExtension on CreateOrderReqDto {
  CreateOrderReqDto copyWith({
    String? userId,
    double? transactionId,
    String? status,
  }) {
    return CreateOrderReqDto(
      userId: userId ?? this.userId,
      transactionId: transactionId ?? this.transactionId,
      status: status ?? this.status,
    );
  }

  CreateOrderReqDto copyWithWrapped({
    Wrapped<String>? userId,
    Wrapped<double>? transactionId,
    Wrapped<String>? status,
  }) {
    return CreateOrderReqDto(
      userId: (userId != null ? userId.value : this.userId),
      transactionId: (transactionId != null
          ? transactionId.value
          : this.transactionId),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateOrderResponseDto {
  const CreateOrderResponseDto({required this.orderId});

  factory CreateOrderResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderResponseDtoFromJson(json);

  static const toJsonFactory = _$CreateOrderResponseDtoToJson;
  Map<String, dynamic> toJson() => _$CreateOrderResponseDtoToJson(this);

  @JsonKey(name: 'orderId')
  final String orderId;
  static const fromJsonFactory = _$CreateOrderResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateOrderResponseDto &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality().equals(other.orderId, orderId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orderId) ^ runtimeType.hashCode;
}

extension $CreateOrderResponseDtoExtension on CreateOrderResponseDto {
  CreateOrderResponseDto copyWith({String? orderId}) {
    return CreateOrderResponseDto(orderId: orderId ?? this.orderId);
  }

  CreateOrderResponseDto copyWithWrapped({Wrapped<String>? orderId}) {
    return CreateOrderResponseDto(
      orderId: (orderId != null ? orderId.value : this.orderId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddOrderItemReqDto {
  const AddOrderItemReqDto({
    required this.orderId,
    required this.productId,
    required this.productSkuId,
    required this.quantity,
    required this.price,
  });

  factory AddOrderItemReqDto.fromJson(Map<String, dynamic> json) =>
      _$AddOrderItemReqDtoFromJson(json);

  static const toJsonFactory = _$AddOrderItemReqDtoToJson;
  Map<String, dynamic> toJson() => _$AddOrderItemReqDtoToJson(this);

  @JsonKey(name: 'orderId')
  final String orderId;
  @JsonKey(name: 'productId')
  final String productId;
  @JsonKey(name: 'productSkuId')
  final String productSkuId;
  @JsonKey(name: 'quantity')
  final double quantity;
  @JsonKey(name: 'price')
  final double price;
  static const fromJsonFactory = _$AddOrderItemReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddOrderItemReqDto &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality().equals(
                  other.orderId,
                  orderId,
                )) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality().equals(
                  other.productId,
                  productId,
                )) &&
            (identical(other.productSkuId, productSkuId) ||
                const DeepCollectionEquality().equals(
                  other.productSkuId,
                  productSkuId,
                )) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality().equals(
                  other.quantity,
                  quantity,
                )) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(productSkuId) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(price) ^
      runtimeType.hashCode;
}

extension $AddOrderItemReqDtoExtension on AddOrderItemReqDto {
  AddOrderItemReqDto copyWith({
    String? orderId,
    String? productId,
    String? productSkuId,
    double? quantity,
    double? price,
  }) {
    return AddOrderItemReqDto(
      orderId: orderId ?? this.orderId,
      productId: productId ?? this.productId,
      productSkuId: productSkuId ?? this.productSkuId,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
    );
  }

  AddOrderItemReqDto copyWithWrapped({
    Wrapped<String>? orderId,
    Wrapped<String>? productId,
    Wrapped<String>? productSkuId,
    Wrapped<double>? quantity,
    Wrapped<double>? price,
  }) {
    return AddOrderItemReqDto(
      orderId: (orderId != null ? orderId.value : this.orderId),
      productId: (productId != null ? productId.value : this.productId),
      productSkuId: (productSkuId != null
          ? productSkuId.value
          : this.productSkuId),
      quantity: (quantity != null ? quantity.value : this.quantity),
      price: (price != null ? price.value : this.price),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddOrderItemResponseDto {
  const AddOrderItemResponseDto({required this.itemId});

  factory AddOrderItemResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AddOrderItemResponseDtoFromJson(json);

  static const toJsonFactory = _$AddOrderItemResponseDtoToJson;
  Map<String, dynamic> toJson() => _$AddOrderItemResponseDtoToJson(this);

  @JsonKey(name: 'itemId')
  final String itemId;
  static const fromJsonFactory = _$AddOrderItemResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddOrderItemResponseDto &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(itemId) ^ runtimeType.hashCode;
}

extension $AddOrderItemResponseDtoExtension on AddOrderItemResponseDto {
  AddOrderItemResponseDto copyWith({String? itemId}) {
    return AddOrderItemResponseDto(itemId: itemId ?? this.itemId);
  }

  AddOrderItemResponseDto copyWithWrapped({Wrapped<String>? itemId}) {
    return AddOrderItemResponseDto(
      itemId: (itemId != null ? itemId.value : this.itemId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RemoveOrderItemReqDto {
  const RemoveOrderItemReqDto({required this.itemId});

  factory RemoveOrderItemReqDto.fromJson(Map<String, dynamic> json) =>
      _$RemoveOrderItemReqDtoFromJson(json);

  static const toJsonFactory = _$RemoveOrderItemReqDtoToJson;
  Map<String, dynamic> toJson() => _$RemoveOrderItemReqDtoToJson(this);

  @JsonKey(name: 'itemId')
  final String itemId;
  static const fromJsonFactory = _$RemoveOrderItemReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RemoveOrderItemReqDto &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(itemId) ^ runtimeType.hashCode;
}

extension $RemoveOrderItemReqDtoExtension on RemoveOrderItemReqDto {
  RemoveOrderItemReqDto copyWith({String? itemId}) {
    return RemoveOrderItemReqDto(itemId: itemId ?? this.itemId);
  }

  RemoveOrderItemReqDto copyWithWrapped({Wrapped<String>? itemId}) {
    return RemoveOrderItemReqDto(
      itemId: (itemId != null ? itemId.value : this.itemId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RemoveOrderItemResponseDto {
  const RemoveOrderItemResponseDto({
    required this.itemId,
    required this.status,
  });

  factory RemoveOrderItemResponseDto.fromJson(Map<String, dynamic> json) =>
      _$RemoveOrderItemResponseDtoFromJson(json);

  static const toJsonFactory = _$RemoveOrderItemResponseDtoToJson;
  Map<String, dynamic> toJson() => _$RemoveOrderItemResponseDtoToJson(this);

  @JsonKey(name: 'itemId')
  final String itemId;
  @JsonKey(name: 'status')
  final String status;
  static const fromJsonFactory = _$RemoveOrderItemResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RemoveOrderItemResponseDto &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $RemoveOrderItemResponseDtoExtension on RemoveOrderItemResponseDto {
  RemoveOrderItemResponseDto copyWith({String? itemId, String? status}) {
    return RemoveOrderItemResponseDto(
      itemId: itemId ?? this.itemId,
      status: status ?? this.status,
    );
  }

  RemoveOrderItemResponseDto copyWithWrapped({
    Wrapped<String>? itemId,
    Wrapped<String>? status,
  }) {
    return RemoveOrderItemResponseDto(
      itemId: (itemId != null ? itemId.value : this.itemId),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateOrderItemReqDto {
  const UpdateOrderItemReqDto({
    required this.id,
    required this.quantity,
    required this.price,
  });

  factory UpdateOrderItemReqDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderItemReqDtoFromJson(json);

  static const toJsonFactory = _$UpdateOrderItemReqDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateOrderItemReqDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'quantity')
  final double quantity;
  @JsonKey(name: 'price')
  final double price;
  static const fromJsonFactory = _$UpdateOrderItemReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateOrderItemReqDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality().equals(
                  other.quantity,
                  quantity,
                )) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(price) ^
      runtimeType.hashCode;
}

extension $UpdateOrderItemReqDtoExtension on UpdateOrderItemReqDto {
  UpdateOrderItemReqDto copyWith({
    String? id,
    double? quantity,
    double? price,
  }) {
    return UpdateOrderItemReqDto(
      id: id ?? this.id,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
    );
  }

  UpdateOrderItemReqDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<double>? quantity,
    Wrapped<double>? price,
  }) {
    return UpdateOrderItemReqDto(
      id: (id != null ? id.value : this.id),
      quantity: (quantity != null ? quantity.value : this.quantity),
      price: (price != null ? price.value : this.price),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateOrderItemResponseDto {
  const UpdateOrderItemResponseDto({required this.id, required this.status});

  factory UpdateOrderItemResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderItemResponseDtoFromJson(json);

  static const toJsonFactory = _$UpdateOrderItemResponseDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateOrderItemResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'status')
  final String status;
  static const fromJsonFactory = _$UpdateOrderItemResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateOrderItemResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $UpdateOrderItemResponseDtoExtension on UpdateOrderItemResponseDto {
  UpdateOrderItemResponseDto copyWith({String? id, String? status}) {
    return UpdateOrderItemResponseDto(
      id: id ?? this.id,
      status: status ?? this.status,
    );
  }

  UpdateOrderItemResponseDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? status,
  }) {
    return UpdateOrderItemResponseDto(
      id: (id != null ? id.value : this.id),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GetOrdersByUserReqDto {
  const GetOrdersByUserReqDto({required this.userId});

  factory GetOrdersByUserReqDto.fromJson(Map<String, dynamic> json) =>
      _$GetOrdersByUserReqDtoFromJson(json);

  static const toJsonFactory = _$GetOrdersByUserReqDtoToJson;
  Map<String, dynamic> toJson() => _$GetOrdersByUserReqDtoToJson(this);

  @JsonKey(name: 'userId')
  final String userId;
  static const fromJsonFactory = _$GetOrdersByUserReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetOrdersByUserReqDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^ runtimeType.hashCode;
}

extension $GetOrdersByUserReqDtoExtension on GetOrdersByUserReqDto {
  GetOrdersByUserReqDto copyWith({String? userId}) {
    return GetOrdersByUserReqDto(userId: userId ?? this.userId);
  }

  GetOrdersByUserReqDto copyWithWrapped({Wrapped<String>? userId}) {
    return GetOrdersByUserReqDto(
      userId: (userId != null ? userId.value : this.userId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class OrderItemObjectDto {
  const OrderItemObjectDto({
    required this.id,
    required this.productId,
    required this.productSkuId,
    required this.quantity,
    required this.price,
    required this.createdAt,
    required this.updatedAt,
  });

  factory OrderItemObjectDto.fromJson(Map<String, dynamic> json) =>
      _$OrderItemObjectDtoFromJson(json);

  static const toJsonFactory = _$OrderItemObjectDtoToJson;
  Map<String, dynamic> toJson() => _$OrderItemObjectDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'productId')
  final String productId;
  @JsonKey(name: 'productSkuId')
  final String productSkuId;
  @JsonKey(name: 'quantity')
  final double quantity;
  @JsonKey(name: 'price')
  final double price;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$OrderItemObjectDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrderItemObjectDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality().equals(
                  other.productId,
                  productId,
                )) &&
            (identical(other.productSkuId, productSkuId) ||
                const DeepCollectionEquality().equals(
                  other.productSkuId,
                  productSkuId,
                )) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality().equals(
                  other.quantity,
                  quantity,
                )) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(productSkuId) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $OrderItemObjectDtoExtension on OrderItemObjectDto {
  OrderItemObjectDto copyWith({
    String? id,
    String? productId,
    String? productSkuId,
    double? quantity,
    double? price,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return OrderItemObjectDto(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      productSkuId: productSkuId ?? this.productSkuId,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  OrderItemObjectDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? productId,
    Wrapped<String>? productSkuId,
    Wrapped<double>? quantity,
    Wrapped<double>? price,
    Wrapped<DateTime>? createdAt,
    Wrapped<DateTime>? updatedAt,
  }) {
    return OrderItemObjectDto(
      id: (id != null ? id.value : this.id),
      productId: (productId != null ? productId.value : this.productId),
      productSkuId: (productSkuId != null
          ? productSkuId.value
          : this.productSkuId),
      quantity: (quantity != null ? quantity.value : this.quantity),
      price: (price != null ? price.value : this.price),
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class OrderDetailsResponseDto {
  const OrderDetailsResponseDto({
    required this.id,
    required this.userId,
    required this.transactionId,
    required this.status,
    required this.createdAt,
    required this.deliveredAt,
    required this.items,
  });

  factory OrderDetailsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsResponseDtoFromJson(json);

  static const toJsonFactory = _$OrderDetailsResponseDtoToJson;
  Map<String, dynamic> toJson() => _$OrderDetailsResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'userId')
  final String userId;
  @JsonKey(name: 'transactionId')
  final double transactionId;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'deliveredAt')
  final DateTime deliveredAt;
  @JsonKey(name: 'items', defaultValue: <OrderItemObjectDto>[])
  final List<OrderItemObjectDto> items;
  static const fromJsonFactory = _$OrderDetailsResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrderDetailsResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality().equals(
                  other.transactionId,
                  transactionId,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.deliveredAt, deliveredAt) ||
                const DeepCollectionEquality().equals(
                  other.deliveredAt,
                  deliveredAt,
                )) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(deliveredAt) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $OrderDetailsResponseDtoExtension on OrderDetailsResponseDto {
  OrderDetailsResponseDto copyWith({
    String? id,
    String? userId,
    double? transactionId,
    String? status,
    DateTime? createdAt,
    DateTime? deliveredAt,
    List<OrderItemObjectDto>? items,
  }) {
    return OrderDetailsResponseDto(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      transactionId: transactionId ?? this.transactionId,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      deliveredAt: deliveredAt ?? this.deliveredAt,
      items: items ?? this.items,
    );
  }

  OrderDetailsResponseDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? userId,
    Wrapped<double>? transactionId,
    Wrapped<String>? status,
    Wrapped<DateTime>? createdAt,
    Wrapped<DateTime>? deliveredAt,
    Wrapped<List<OrderItemObjectDto>>? items,
  }) {
    return OrderDetailsResponseDto(
      id: (id != null ? id.value : this.id),
      userId: (userId != null ? userId.value : this.userId),
      transactionId: (transactionId != null
          ? transactionId.value
          : this.transactionId),
      status: (status != null ? status.value : this.status),
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      deliveredAt: (deliveredAt != null ? deliveredAt.value : this.deliveredAt),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class OrderListResponseDto {
  const OrderListResponseDto({required this.orders});

  factory OrderListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$OrderListResponseDtoFromJson(json);

  static const toJsonFactory = _$OrderListResponseDtoToJson;
  Map<String, dynamic> toJson() => _$OrderListResponseDtoToJson(this);

  @JsonKey(name: 'orders', defaultValue: <OrderDetailsResponseDto>[])
  final List<OrderDetailsResponseDto> orders;
  static const fromJsonFactory = _$OrderListResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrderListResponseDto &&
            (identical(other.orders, orders) ||
                const DeepCollectionEquality().equals(other.orders, orders)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orders) ^ runtimeType.hashCode;
}

extension $OrderListResponseDtoExtension on OrderListResponseDto {
  OrderListResponseDto copyWith({List<OrderDetailsResponseDto>? orders}) {
    return OrderListResponseDto(orders: orders ?? this.orders);
  }

  OrderListResponseDto copyWithWrapped({
    Wrapped<List<OrderDetailsResponseDto>>? orders,
  }) {
    return OrderListResponseDto(
      orders: (orders != null ? orders.value : this.orders),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateOrderItemReqDto {
  const CreateOrderItemReqDto({
    required this.orderId,
    required this.productId,
    required this.productSkuId,
    required this.quantity,
    required this.price,
  });

  factory CreateOrderItemReqDto.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderItemReqDtoFromJson(json);

  static const toJsonFactory = _$CreateOrderItemReqDtoToJson;
  Map<String, dynamic> toJson() => _$CreateOrderItemReqDtoToJson(this);

  @JsonKey(name: 'orderId')
  final String orderId;
  @JsonKey(name: 'productId')
  final String productId;
  @JsonKey(name: 'productSkuId')
  final String productSkuId;
  @JsonKey(name: 'quantity')
  final double quantity;
  @JsonKey(name: 'price')
  final double price;
  static const fromJsonFactory = _$CreateOrderItemReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateOrderItemReqDto &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality().equals(
                  other.orderId,
                  orderId,
                )) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality().equals(
                  other.productId,
                  productId,
                )) &&
            (identical(other.productSkuId, productSkuId) ||
                const DeepCollectionEquality().equals(
                  other.productSkuId,
                  productSkuId,
                )) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality().equals(
                  other.quantity,
                  quantity,
                )) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(productSkuId) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(price) ^
      runtimeType.hashCode;
}

extension $CreateOrderItemReqDtoExtension on CreateOrderItemReqDto {
  CreateOrderItemReqDto copyWith({
    String? orderId,
    String? productId,
    String? productSkuId,
    double? quantity,
    double? price,
  }) {
    return CreateOrderItemReqDto(
      orderId: orderId ?? this.orderId,
      productId: productId ?? this.productId,
      productSkuId: productSkuId ?? this.productSkuId,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
    );
  }

  CreateOrderItemReqDto copyWithWrapped({
    Wrapped<String>? orderId,
    Wrapped<String>? productId,
    Wrapped<String>? productSkuId,
    Wrapped<double>? quantity,
    Wrapped<double>? price,
  }) {
    return CreateOrderItemReqDto(
      orderId: (orderId != null ? orderId.value : this.orderId),
      productId: (productId != null ? productId.value : this.productId),
      productSkuId: (productSkuId != null
          ? productSkuId.value
          : this.productSkuId),
      quantity: (quantity != null ? quantity.value : this.quantity),
      price: (price != null ? price.value : this.price),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateOrderItemResponseDto {
  const CreateOrderItemResponseDto({required this.id});

  factory CreateOrderItemResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderItemResponseDtoFromJson(json);

  static const toJsonFactory = _$CreateOrderItemResponseDtoToJson;
  Map<String, dynamic> toJson() => _$CreateOrderItemResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  static const fromJsonFactory = _$CreateOrderItemResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateOrderItemResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $CreateOrderItemResponseDtoExtension on CreateOrderItemResponseDto {
  CreateOrderItemResponseDto copyWith({String? id}) {
    return CreateOrderItemResponseDto(id: id ?? this.id);
  }

  CreateOrderItemResponseDto copyWithWrapped({Wrapped<String>? id}) {
    return CreateOrderItemResponseDto(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class DeleteOrderItemReqDto {
  const DeleteOrderItemReqDto({required this.id});

  factory DeleteOrderItemReqDto.fromJson(Map<String, dynamic> json) =>
      _$DeleteOrderItemReqDtoFromJson(json);

  static const toJsonFactory = _$DeleteOrderItemReqDtoToJson;
  Map<String, dynamic> toJson() => _$DeleteOrderItemReqDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  static const fromJsonFactory = _$DeleteOrderItemReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DeleteOrderItemReqDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $DeleteOrderItemReqDtoExtension on DeleteOrderItemReqDto {
  DeleteOrderItemReqDto copyWith({String? id}) {
    return DeleteOrderItemReqDto(id: id ?? this.id);
  }

  DeleteOrderItemReqDto copyWithWrapped({Wrapped<String>? id}) {
    return DeleteOrderItemReqDto(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class DeleteOrderItemResponseDto {
  const DeleteOrderItemResponseDto({required this.id, required this.status});

  factory DeleteOrderItemResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DeleteOrderItemResponseDtoFromJson(json);

  static const toJsonFactory = _$DeleteOrderItemResponseDtoToJson;
  Map<String, dynamic> toJson() => _$DeleteOrderItemResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'status')
  final String status;
  static const fromJsonFactory = _$DeleteOrderItemResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DeleteOrderItemResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $DeleteOrderItemResponseDtoExtension on DeleteOrderItemResponseDto {
  DeleteOrderItemResponseDto copyWith({String? id, String? status}) {
    return DeleteOrderItemResponseDto(
      id: id ?? this.id,
      status: status ?? this.status,
    );
  }

  DeleteOrderItemResponseDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? status,
  }) {
    return DeleteOrderItemResponseDto(
      id: (id != null ? id.value : this.id),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GetOrderItemsByOrderReqDto {
  const GetOrderItemsByOrderReqDto({required this.orderId});

  factory GetOrderItemsByOrderReqDto.fromJson(Map<String, dynamic> json) =>
      _$GetOrderItemsByOrderReqDtoFromJson(json);

  static const toJsonFactory = _$GetOrderItemsByOrderReqDtoToJson;
  Map<String, dynamic> toJson() => _$GetOrderItemsByOrderReqDtoToJson(this);

  @JsonKey(name: 'orderId')
  final String orderId;
  static const fromJsonFactory = _$GetOrderItemsByOrderReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetOrderItemsByOrderReqDto &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality().equals(other.orderId, orderId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orderId) ^ runtimeType.hashCode;
}

extension $GetOrderItemsByOrderReqDtoExtension on GetOrderItemsByOrderReqDto {
  GetOrderItemsByOrderReqDto copyWith({String? orderId}) {
    return GetOrderItemsByOrderReqDto(orderId: orderId ?? this.orderId);
  }

  GetOrderItemsByOrderReqDto copyWithWrapped({Wrapped<String>? orderId}) {
    return GetOrderItemsByOrderReqDto(
      orderId: (orderId != null ? orderId.value : this.orderId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class OrderItemListResponseDto {
  const OrderItemListResponseDto({required this.items});

  factory OrderItemListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$OrderItemListResponseDtoFromJson(json);

  static const toJsonFactory = _$OrderItemListResponseDtoToJson;
  Map<String, dynamic> toJson() => _$OrderItemListResponseDtoToJson(this);

  @JsonKey(name: 'items', defaultValue: <OrderItemObjectDto>[])
  final List<OrderItemObjectDto> items;
  static const fromJsonFactory = _$OrderItemListResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrderItemListResponseDto &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^ runtimeType.hashCode;
}

extension $OrderItemListResponseDtoExtension on OrderItemListResponseDto {
  OrderItemListResponseDto copyWith({List<OrderItemObjectDto>? items}) {
    return OrderItemListResponseDto(items: items ?? this.items);
  }

  OrderItemListResponseDto copyWithWrapped({
    Wrapped<List<OrderItemObjectDto>>? items,
  }) {
    return OrderItemListResponseDto(
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreatePaymentReqDto {
  const CreatePaymentReqDto({
    required this.transactionId,
    required this.amount,
    required this.paymentMethod,
    required this.status,
    required this.failureReason,
    required this.metadata,
    required this.orderId,
  });

  factory CreatePaymentReqDto.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentReqDtoFromJson(json);

  static const toJsonFactory = _$CreatePaymentReqDtoToJson;
  Map<String, dynamic> toJson() => _$CreatePaymentReqDtoToJson(this);

  @JsonKey(name: 'transactionId')
  final double transactionId;
  @JsonKey(name: 'amount')
  final double amount;
  @JsonKey(name: 'paymentMethod')
  final String paymentMethod;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'failureReason')
  final String failureReason;
  @JsonKey(name: 'metadata')
  final String metadata;
  @JsonKey(name: 'orderId')
  final String orderId;
  static const fromJsonFactory = _$CreatePaymentReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreatePaymentReqDto &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality().equals(
                  other.transactionId,
                  transactionId,
                )) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality().equals(
                  other.paymentMethod,
                  paymentMethod,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.failureReason, failureReason) ||
                const DeepCollectionEquality().equals(
                  other.failureReason,
                  failureReason,
                )) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality().equals(
                  other.metadata,
                  metadata,
                )) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality().equals(other.orderId, orderId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(paymentMethod) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(failureReason) ^
      const DeepCollectionEquality().hash(metadata) ^
      const DeepCollectionEquality().hash(orderId) ^
      runtimeType.hashCode;
}

extension $CreatePaymentReqDtoExtension on CreatePaymentReqDto {
  CreatePaymentReqDto copyWith({
    double? transactionId,
    double? amount,
    String? paymentMethod,
    String? status,
    String? failureReason,
    String? metadata,
    String? orderId,
  }) {
    return CreatePaymentReqDto(
      transactionId: transactionId ?? this.transactionId,
      amount: amount ?? this.amount,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      status: status ?? this.status,
      failureReason: failureReason ?? this.failureReason,
      metadata: metadata ?? this.metadata,
      orderId: orderId ?? this.orderId,
    );
  }

  CreatePaymentReqDto copyWithWrapped({
    Wrapped<double>? transactionId,
    Wrapped<double>? amount,
    Wrapped<String>? paymentMethod,
    Wrapped<String>? status,
    Wrapped<String>? failureReason,
    Wrapped<String>? metadata,
    Wrapped<String>? orderId,
  }) {
    return CreatePaymentReqDto(
      transactionId: (transactionId != null
          ? transactionId.value
          : this.transactionId),
      amount: (amount != null ? amount.value : this.amount),
      paymentMethod: (paymentMethod != null
          ? paymentMethod.value
          : this.paymentMethod),
      status: (status != null ? status.value : this.status),
      failureReason: (failureReason != null
          ? failureReason.value
          : this.failureReason),
      metadata: (metadata != null ? metadata.value : this.metadata),
      orderId: (orderId != null ? orderId.value : this.orderId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreatePaymentResponseDto {
  const CreatePaymentResponseDto({required this.id});

  factory CreatePaymentResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentResponseDtoFromJson(json);

  static const toJsonFactory = _$CreatePaymentResponseDtoToJson;
  Map<String, dynamic> toJson() => _$CreatePaymentResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  static const fromJsonFactory = _$CreatePaymentResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreatePaymentResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $CreatePaymentResponseDtoExtension on CreatePaymentResponseDto {
  CreatePaymentResponseDto copyWith({String? id}) {
    return CreatePaymentResponseDto(id: id ?? this.id);
  }

  CreatePaymentResponseDto copyWithWrapped({Wrapped<String>? id}) {
    return CreatePaymentResponseDto(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdatePaymentReqDto {
  const UpdatePaymentReqDto({
    required this.id,
    required this.status,
    required this.failureReason,
    required this.metadata,
  });

  factory UpdatePaymentReqDto.fromJson(Map<String, dynamic> json) =>
      _$UpdatePaymentReqDtoFromJson(json);

  static const toJsonFactory = _$UpdatePaymentReqDtoToJson;
  Map<String, dynamic> toJson() => _$UpdatePaymentReqDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'failureReason')
  final String failureReason;
  @JsonKey(name: 'metadata')
  final String metadata;
  static const fromJsonFactory = _$UpdatePaymentReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdatePaymentReqDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.failureReason, failureReason) ||
                const DeepCollectionEquality().equals(
                  other.failureReason,
                  failureReason,
                )) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality().equals(
                  other.metadata,
                  metadata,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(failureReason) ^
      const DeepCollectionEquality().hash(metadata) ^
      runtimeType.hashCode;
}

extension $UpdatePaymentReqDtoExtension on UpdatePaymentReqDto {
  UpdatePaymentReqDto copyWith({
    String? id,
    String? status,
    String? failureReason,
    String? metadata,
  }) {
    return UpdatePaymentReqDto(
      id: id ?? this.id,
      status: status ?? this.status,
      failureReason: failureReason ?? this.failureReason,
      metadata: metadata ?? this.metadata,
    );
  }

  UpdatePaymentReqDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? status,
    Wrapped<String>? failureReason,
    Wrapped<String>? metadata,
  }) {
    return UpdatePaymentReqDto(
      id: (id != null ? id.value : this.id),
      status: (status != null ? status.value : this.status),
      failureReason: (failureReason != null
          ? failureReason.value
          : this.failureReason),
      metadata: (metadata != null ? metadata.value : this.metadata),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdatePaymentResponseDto {
  const UpdatePaymentResponseDto({required this.id, required this.status});

  factory UpdatePaymentResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UpdatePaymentResponseDtoFromJson(json);

  static const toJsonFactory = _$UpdatePaymentResponseDtoToJson;
  Map<String, dynamic> toJson() => _$UpdatePaymentResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'status')
  final String status;
  static const fromJsonFactory = _$UpdatePaymentResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdatePaymentResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $UpdatePaymentResponseDtoExtension on UpdatePaymentResponseDto {
  UpdatePaymentResponseDto copyWith({String? id, String? status}) {
    return UpdatePaymentResponseDto(
      id: id ?? this.id,
      status: status ?? this.status,
    );
  }

  UpdatePaymentResponseDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? status,
  }) {
    return UpdatePaymentResponseDto(
      id: (id != null ? id.value : this.id),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DeletePaymentReqDto {
  const DeletePaymentReqDto({required this.id});

  factory DeletePaymentReqDto.fromJson(Map<String, dynamic> json) =>
      _$DeletePaymentReqDtoFromJson(json);

  static const toJsonFactory = _$DeletePaymentReqDtoToJson;
  Map<String, dynamic> toJson() => _$DeletePaymentReqDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  static const fromJsonFactory = _$DeletePaymentReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DeletePaymentReqDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $DeletePaymentReqDtoExtension on DeletePaymentReqDto {
  DeletePaymentReqDto copyWith({String? id}) {
    return DeletePaymentReqDto(id: id ?? this.id);
  }

  DeletePaymentReqDto copyWithWrapped({Wrapped<String>? id}) {
    return DeletePaymentReqDto(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class DeletePaymentResponseDto {
  const DeletePaymentResponseDto({required this.id, required this.status});

  factory DeletePaymentResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DeletePaymentResponseDtoFromJson(json);

  static const toJsonFactory = _$DeletePaymentResponseDtoToJson;
  Map<String, dynamic> toJson() => _$DeletePaymentResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'status')
  final String status;
  static const fromJsonFactory = _$DeletePaymentResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DeletePaymentResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $DeletePaymentResponseDtoExtension on DeletePaymentResponseDto {
  DeletePaymentResponseDto copyWith({String? id, String? status}) {
    return DeletePaymentResponseDto(
      id: id ?? this.id,
      status: status ?? this.status,
    );
  }

  DeletePaymentResponseDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? status,
  }) {
    return DeletePaymentResponseDto(
      id: (id != null ? id.value : this.id),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GetPaymentsByOrderReqDto {
  const GetPaymentsByOrderReqDto({required this.orderId});

  factory GetPaymentsByOrderReqDto.fromJson(Map<String, dynamic> json) =>
      _$GetPaymentsByOrderReqDtoFromJson(json);

  static const toJsonFactory = _$GetPaymentsByOrderReqDtoToJson;
  Map<String, dynamic> toJson() => _$GetPaymentsByOrderReqDtoToJson(this);

  @JsonKey(name: 'orderId')
  final String orderId;
  static const fromJsonFactory = _$GetPaymentsByOrderReqDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetPaymentsByOrderReqDto &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality().equals(other.orderId, orderId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orderId) ^ runtimeType.hashCode;
}

extension $GetPaymentsByOrderReqDtoExtension on GetPaymentsByOrderReqDto {
  GetPaymentsByOrderReqDto copyWith({String? orderId}) {
    return GetPaymentsByOrderReqDto(orderId: orderId ?? this.orderId);
  }

  GetPaymentsByOrderReqDto copyWithWrapped({Wrapped<String>? orderId}) {
    return GetPaymentsByOrderReqDto(
      orderId: (orderId != null ? orderId.value : this.orderId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PaymentObjectDto {
  const PaymentObjectDto({
    required this.id,
    required this.transactionId,
    required this.amount,
    required this.paymentMethod,
    required this.status,
    required this.failureReason,
    required this.metadata,
    required this.createdAt,
    required this.updatedAt,
    required this.orderId,
  });

  factory PaymentObjectDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentObjectDtoFromJson(json);

  static const toJsonFactory = _$PaymentObjectDtoToJson;
  Map<String, dynamic> toJson() => _$PaymentObjectDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'transactionId')
  final double transactionId;
  @JsonKey(name: 'amount')
  final double amount;
  @JsonKey(name: 'paymentMethod')
  final String paymentMethod;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'failureReason')
  final String failureReason;
  @JsonKey(name: 'metadata')
  final String metadata;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  @JsonKey(name: 'orderId')
  final String orderId;
  static const fromJsonFactory = _$PaymentObjectDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PaymentObjectDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality().equals(
                  other.transactionId,
                  transactionId,
                )) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality().equals(
                  other.paymentMethod,
                  paymentMethod,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.failureReason, failureReason) ||
                const DeepCollectionEquality().equals(
                  other.failureReason,
                  failureReason,
                )) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality().equals(
                  other.metadata,
                  metadata,
                )) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality().equals(other.orderId, orderId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(paymentMethod) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(failureReason) ^
      const DeepCollectionEquality().hash(metadata) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(orderId) ^
      runtimeType.hashCode;
}

extension $PaymentObjectDtoExtension on PaymentObjectDto {
  PaymentObjectDto copyWith({
    String? id,
    double? transactionId,
    double? amount,
    String? paymentMethod,
    String? status,
    String? failureReason,
    String? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? orderId,
  }) {
    return PaymentObjectDto(
      id: id ?? this.id,
      transactionId: transactionId ?? this.transactionId,
      amount: amount ?? this.amount,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      status: status ?? this.status,
      failureReason: failureReason ?? this.failureReason,
      metadata: metadata ?? this.metadata,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      orderId: orderId ?? this.orderId,
    );
  }

  PaymentObjectDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<double>? transactionId,
    Wrapped<double>? amount,
    Wrapped<String>? paymentMethod,
    Wrapped<String>? status,
    Wrapped<String>? failureReason,
    Wrapped<String>? metadata,
    Wrapped<DateTime>? createdAt,
    Wrapped<DateTime>? updatedAt,
    Wrapped<String>? orderId,
  }) {
    return PaymentObjectDto(
      id: (id != null ? id.value : this.id),
      transactionId: (transactionId != null
          ? transactionId.value
          : this.transactionId),
      amount: (amount != null ? amount.value : this.amount),
      paymentMethod: (paymentMethod != null
          ? paymentMethod.value
          : this.paymentMethod),
      status: (status != null ? status.value : this.status),
      failureReason: (failureReason != null
          ? failureReason.value
          : this.failureReason),
      metadata: (metadata != null ? metadata.value : this.metadata),
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      orderId: (orderId != null ? orderId.value : this.orderId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PaymentListResponseDto {
  const PaymentListResponseDto({required this.items});

  factory PaymentListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentListResponseDtoFromJson(json);

  static const toJsonFactory = _$PaymentListResponseDtoToJson;
  Map<String, dynamic> toJson() => _$PaymentListResponseDtoToJson(this);

  @JsonKey(name: 'items', defaultValue: <PaymentObjectDto>[])
  final List<PaymentObjectDto> items;
  static const fromJsonFactory = _$PaymentListResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PaymentListResponseDto &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^ runtimeType.hashCode;
}

extension $PaymentListResponseDtoExtension on PaymentListResponseDto {
  PaymentListResponseDto copyWith({List<PaymentObjectDto>? items}) {
    return PaymentListResponseDto(items: items ?? this.items);
  }

  PaymentListResponseDto copyWithWrapped({
    Wrapped<List<PaymentObjectDto>>? items,
  }) {
    return PaymentListResponseDto(
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class FailedToGetResourceError {
  const FailedToGetResourceError({required this.message, required this.type});

  factory FailedToGetResourceError.fromJson(Map<String, dynamic> json) =>
      _$FailedToGetResourceErrorFromJson(json);

  static const toJsonFactory = _$FailedToGetResourceErrorToJson;
  Map<String, dynamic> toJson() => _$FailedToGetResourceErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$FailedToGetResourceErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is FailedToGetResourceError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $FailedToGetResourceErrorExtension on FailedToGetResourceError {
  FailedToGetResourceError copyWith({String? message, String? type}) {
    return FailedToGetResourceError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  FailedToGetResourceError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return FailedToGetResourceError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class FailedToSaveResourceError {
  const FailedToSaveResourceError({required this.message, required this.type});

  factory FailedToSaveResourceError.fromJson(Map<String, dynamic> json) =>
      _$FailedToSaveResourceErrorFromJson(json);

  static const toJsonFactory = _$FailedToSaveResourceErrorToJson;
  Map<String, dynamic> toJson() => _$FailedToSaveResourceErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$FailedToSaveResourceErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is FailedToSaveResourceError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $FailedToSaveResourceErrorExtension on FailedToSaveResourceError {
  FailedToSaveResourceError copyWith({String? message, String? type}) {
    return FailedToSaveResourceError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  FailedToSaveResourceError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return FailedToSaveResourceError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class BadRequestError {
  const BadRequestError({required this.message, required this.type});

  factory BadRequestError.fromJson(Map<String, dynamic> json) =>
      _$BadRequestErrorFromJson(json);

  static const toJsonFactory = _$BadRequestErrorToJson;
  Map<String, dynamic> toJson() => _$BadRequestErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$BadRequestErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BadRequestError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $BadRequestErrorExtension on BadRequestError {
  BadRequestError copyWith({String? message, String? type}) {
    return BadRequestError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  BadRequestError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return BadRequestError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserExistsWithEmailError {
  const UserExistsWithEmailError({required this.message, required this.type});

  factory UserExistsWithEmailError.fromJson(Map<String, dynamic> json) =>
      _$UserExistsWithEmailErrorFromJson(json);

  static const toJsonFactory = _$UserExistsWithEmailErrorToJson;
  Map<String, dynamic> toJson() => _$UserExistsWithEmailErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$UserExistsWithEmailErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserExistsWithEmailError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $UserExistsWithEmailErrorExtension on UserExistsWithEmailError {
  UserExistsWithEmailError copyWith({String? message, String? type}) {
    return UserExistsWithEmailError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  UserExistsWithEmailError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return UserExistsWithEmailError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UnauthorizedError {
  const UnauthorizedError({required this.message, required this.type});

  factory UnauthorizedError.fromJson(Map<String, dynamic> json) =>
      _$UnauthorizedErrorFromJson(json);

  static const toJsonFactory = _$UnauthorizedErrorToJson;
  Map<String, dynamic> toJson() => _$UnauthorizedErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$UnauthorizedErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UnauthorizedError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $UnauthorizedErrorExtension on UnauthorizedError {
  UnauthorizedError copyWith({String? message, String? type}) {
    return UnauthorizedError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  UnauthorizedError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return UnauthorizedError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CronJobLockSetupError {
  const CronJobLockSetupError({required this.message, required this.type});

  factory CronJobLockSetupError.fromJson(Map<String, dynamic> json) =>
      _$CronJobLockSetupErrorFromJson(json);

  static const toJsonFactory = _$CronJobLockSetupErrorToJson;
  Map<String, dynamic> toJson() => _$CronJobLockSetupErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$CronJobLockSetupErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CronJobLockSetupError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $CronJobLockSetupErrorExtension on CronJobLockSetupError {
  CronJobLockSetupError copyWith({String? message, String? type}) {
    return CronJobLockSetupError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  CronJobLockSetupError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return CronJobLockSetupError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class FileTypeNotSupportedError {
  const FileTypeNotSupportedError({required this.message, required this.type});

  factory FileTypeNotSupportedError.fromJson(Map<String, dynamic> json) =>
      _$FileTypeNotSupportedErrorFromJson(json);

  static const toJsonFactory = _$FileTypeNotSupportedErrorToJson;
  Map<String, dynamic> toJson() => _$FileTypeNotSupportedErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$FileTypeNotSupportedErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is FileTypeNotSupportedError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $FileTypeNotSupportedErrorExtension on FileTypeNotSupportedError {
  FileTypeNotSupportedError copyWith({String? message, String? type}) {
    return FileTypeNotSupportedError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  FileTypeNotSupportedError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return FileTypeNotSupportedError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MediaFileInvalidError {
  const MediaFileInvalidError({required this.message, required this.type});

  factory MediaFileInvalidError.fromJson(Map<String, dynamic> json) =>
      _$MediaFileInvalidErrorFromJson(json);

  static const toJsonFactory = _$MediaFileInvalidErrorToJson;
  Map<String, dynamic> toJson() => _$MediaFileInvalidErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$MediaFileInvalidErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MediaFileInvalidError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $MediaFileInvalidErrorExtension on MediaFileInvalidError {
  MediaFileInvalidError copyWith({String? message, String? type}) {
    return MediaFileInvalidError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  MediaFileInvalidError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return MediaFileInvalidError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MediaFileTypeMetaDataNotFoundError {
  const MediaFileTypeMetaDataNotFoundError({
    required this.message,
    required this.type,
  });

  factory MediaFileTypeMetaDataNotFoundError.fromJson(
    Map<String, dynamic> json,
  ) => _$MediaFileTypeMetaDataNotFoundErrorFromJson(json);

  static const toJsonFactory = _$MediaFileTypeMetaDataNotFoundErrorToJson;
  Map<String, dynamic> toJson() =>
      _$MediaFileTypeMetaDataNotFoundErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$MediaFileTypeMetaDataNotFoundErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MediaFileTypeMetaDataNotFoundError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $MediaFileTypeMetaDataNotFoundErrorExtension
    on MediaFileTypeMetaDataNotFoundError {
  MediaFileTypeMetaDataNotFoundError copyWith({String? message, String? type}) {
    return MediaFileTypeMetaDataNotFoundError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  MediaFileTypeMetaDataNotFoundError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return MediaFileTypeMetaDataNotFoundError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AWSHeadObjectNotFoundError {
  const AWSHeadObjectNotFoundError({required this.message, required this.type});

  factory AWSHeadObjectNotFoundError.fromJson(Map<String, dynamic> json) =>
      _$AWSHeadObjectNotFoundErrorFromJson(json);

  static const toJsonFactory = _$AWSHeadObjectNotFoundErrorToJson;
  Map<String, dynamic> toJson() => _$AWSHeadObjectNotFoundErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$AWSHeadObjectNotFoundErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AWSHeadObjectNotFoundError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $AWSHeadObjectNotFoundErrorExtension on AWSHeadObjectNotFoundError {
  AWSHeadObjectNotFoundError copyWith({String? message, String? type}) {
    return AWSHeadObjectNotFoundError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  AWSHeadObjectNotFoundError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return AWSHeadObjectNotFoundError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ForbiddenError {
  const ForbiddenError({required this.message, required this.type});

  factory ForbiddenError.fromJson(Map<String, dynamic> json) =>
      _$ForbiddenErrorFromJson(json);

  static const toJsonFactory = _$ForbiddenErrorToJson;
  Map<String, dynamic> toJson() => _$ForbiddenErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$ForbiddenErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ForbiddenError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $ForbiddenErrorExtension on ForbiddenError {
  ForbiddenError copyWith({String? message, String? type}) {
    return ForbiddenError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  ForbiddenError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return ForbiddenError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class InternalServerError {
  const InternalServerError({required this.message, required this.type});

  factory InternalServerError.fromJson(Map<String, dynamic> json) =>
      _$InternalServerErrorFromJson(json);

  static const toJsonFactory = _$InternalServerErrorToJson;
  Map<String, dynamic> toJson() => _$InternalServerErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$InternalServerErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InternalServerError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $InternalServerErrorExtension on InternalServerError {
  InternalServerError copyWith({String? message, String? type}) {
    return InternalServerError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  InternalServerError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return InternalServerError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class InvalidBoolValidationError {
  const InvalidBoolValidationError({required this.message, required this.type});

  factory InvalidBoolValidationError.fromJson(Map<String, dynamic> json) =>
      _$InvalidBoolValidationErrorFromJson(json);

  static const toJsonFactory = _$InvalidBoolValidationErrorToJson;
  Map<String, dynamic> toJson() => _$InvalidBoolValidationErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$InvalidBoolValidationErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvalidBoolValidationError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $InvalidBoolValidationErrorExtension on InvalidBoolValidationError {
  InvalidBoolValidationError copyWith({String? message, String? type}) {
    return InvalidBoolValidationError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  InvalidBoolValidationError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return InvalidBoolValidationError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class InvalidDateValidationError {
  const InvalidDateValidationError({required this.message, required this.type});

  factory InvalidDateValidationError.fromJson(Map<String, dynamic> json) =>
      _$InvalidDateValidationErrorFromJson(json);

  static const toJsonFactory = _$InvalidDateValidationErrorToJson;
  Map<String, dynamic> toJson() => _$InvalidDateValidationErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$InvalidDateValidationErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvalidDateValidationError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $InvalidDateValidationErrorExtension on InvalidDateValidationError {
  InvalidDateValidationError copyWith({String? message, String? type}) {
    return InvalidDateValidationError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  InvalidDateValidationError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return InvalidDateValidationError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class InvalidDecimalValidationError {
  const InvalidDecimalValidationError({
    required this.message,
    required this.type,
  });

  factory InvalidDecimalValidationError.fromJson(Map<String, dynamic> json) =>
      _$InvalidDecimalValidationErrorFromJson(json);

  static const toJsonFactory = _$InvalidDecimalValidationErrorToJson;
  Map<String, dynamic> toJson() => _$InvalidDecimalValidationErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$InvalidDecimalValidationErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvalidDecimalValidationError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $InvalidDecimalValidationErrorExtension
    on InvalidDecimalValidationError {
  InvalidDecimalValidationError copyWith({String? message, String? type}) {
    return InvalidDecimalValidationError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  InvalidDecimalValidationError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return InvalidDecimalValidationError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class InvalidEmailValidationError {
  const InvalidEmailValidationError({
    required this.message,
    required this.type,
  });

  factory InvalidEmailValidationError.fromJson(Map<String, dynamic> json) =>
      _$InvalidEmailValidationErrorFromJson(json);

  static const toJsonFactory = _$InvalidEmailValidationErrorToJson;
  Map<String, dynamic> toJson() => _$InvalidEmailValidationErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$InvalidEmailValidationErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvalidEmailValidationError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $InvalidEmailValidationErrorExtension on InvalidEmailValidationError {
  InvalidEmailValidationError copyWith({String? message, String? type}) {
    return InvalidEmailValidationError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  InvalidEmailValidationError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return InvalidEmailValidationError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class InvalidIntValidationError {
  const InvalidIntValidationError({required this.message, required this.type});

  factory InvalidIntValidationError.fromJson(Map<String, dynamic> json) =>
      _$InvalidIntValidationErrorFromJson(json);

  static const toJsonFactory = _$InvalidIntValidationErrorToJson;
  Map<String, dynamic> toJson() => _$InvalidIntValidationErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$InvalidIntValidationErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvalidIntValidationError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $InvalidIntValidationErrorExtension on InvalidIntValidationError {
  InvalidIntValidationError copyWith({String? message, String? type}) {
    return InvalidIntValidationError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  InvalidIntValidationError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return InvalidIntValidationError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class InvalidNumberValidationError {
  const InvalidNumberValidationError({
    required this.message,
    required this.type,
  });

  factory InvalidNumberValidationError.fromJson(Map<String, dynamic> json) =>
      _$InvalidNumberValidationErrorFromJson(json);

  static const toJsonFactory = _$InvalidNumberValidationErrorToJson;
  Map<String, dynamic> toJson() => _$InvalidNumberValidationErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$InvalidNumberValidationErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvalidNumberValidationError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $InvalidNumberValidationErrorExtension
    on InvalidNumberValidationError {
  InvalidNumberValidationError copyWith({String? message, String? type}) {
    return InvalidNumberValidationError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  InvalidNumberValidationError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return InvalidNumberValidationError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class InvalidEnumValidationError {
  const InvalidEnumValidationError({required this.message, required this.type});

  factory InvalidEnumValidationError.fromJson(Map<String, dynamic> json) =>
      _$InvalidEnumValidationErrorFromJson(json);

  static const toJsonFactory = _$InvalidEnumValidationErrorToJson;
  Map<String, dynamic> toJson() => _$InvalidEnumValidationErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$InvalidEnumValidationErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvalidEnumValidationError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $InvalidEnumValidationErrorExtension on InvalidEnumValidationError {
  InvalidEnumValidationError copyWith({String? message, String? type}) {
    return InvalidEnumValidationError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  InvalidEnumValidationError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return InvalidEnumValidationError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class InvalidStringValidationError {
  const InvalidStringValidationError({
    required this.message,
    required this.type,
  });

  factory InvalidStringValidationError.fromJson(Map<String, dynamic> json) =>
      _$InvalidStringValidationErrorFromJson(json);

  static const toJsonFactory = _$InvalidStringValidationErrorToJson;
  Map<String, dynamic> toJson() => _$InvalidStringValidationErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$InvalidStringValidationErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvalidStringValidationError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $InvalidStringValidationErrorExtension
    on InvalidStringValidationError {
  InvalidStringValidationError copyWith({String? message, String? type}) {
    return InvalidStringValidationError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  InvalidStringValidationError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return InvalidStringValidationError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PermissionsRequiredError {
  const PermissionsRequiredError({required this.message, required this.type});

  factory PermissionsRequiredError.fromJson(Map<String, dynamic> json) =>
      _$PermissionsRequiredErrorFromJson(json);

  static const toJsonFactory = _$PermissionsRequiredErrorToJson;
  Map<String, dynamic> toJson() => _$PermissionsRequiredErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$PermissionsRequiredErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PermissionsRequiredError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $PermissionsRequiredErrorExtension on PermissionsRequiredError {
  PermissionsRequiredError copyWith({String? message, String? type}) {
    return PermissionsRequiredError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  PermissionsRequiredError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return PermissionsRequiredError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class InvalidPermissionNameError {
  const InvalidPermissionNameError({required this.message, required this.type});

  factory InvalidPermissionNameError.fromJson(Map<String, dynamic> json) =>
      _$InvalidPermissionNameErrorFromJson(json);

  static const toJsonFactory = _$InvalidPermissionNameErrorToJson;
  Map<String, dynamic> toJson() => _$InvalidPermissionNameErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$InvalidPermissionNameErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvalidPermissionNameError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $InvalidPermissionNameErrorExtension on InvalidPermissionNameError {
  InvalidPermissionNameError copyWith({String? message, String? type}) {
    return InvalidPermissionNameError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  InvalidPermissionNameError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return InvalidPermissionNameError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MinStringLengthValidationError {
  const MinStringLengthValidationError({
    required this.message,
    required this.type,
  });

  factory MinStringLengthValidationError.fromJson(Map<String, dynamic> json) =>
      _$MinStringLengthValidationErrorFromJson(json);

  static const toJsonFactory = _$MinStringLengthValidationErrorToJson;
  Map<String, dynamic> toJson() => _$MinStringLengthValidationErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$MinStringLengthValidationErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MinStringLengthValidationError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $MinStringLengthValidationErrorExtension
    on MinStringLengthValidationError {
  MinStringLengthValidationError copyWith({String? message, String? type}) {
    return MinStringLengthValidationError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  MinStringLengthValidationError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return MinStringLengthValidationError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MaxStringLengthValidationError {
  const MaxStringLengthValidationError({
    required this.message,
    required this.type,
  });

  factory MaxStringLengthValidationError.fromJson(Map<String, dynamic> json) =>
      _$MaxStringLengthValidationErrorFromJson(json);

  static const toJsonFactory = _$MaxStringLengthValidationErrorToJson;
  Map<String, dynamic> toJson() => _$MaxStringLengthValidationErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$MaxStringLengthValidationErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MaxStringLengthValidationError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $MaxStringLengthValidationErrorExtension
    on MaxStringLengthValidationError {
  MaxStringLengthValidationError copyWith({String? message, String? type}) {
    return MaxStringLengthValidationError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  MaxStringLengthValidationError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return MaxStringLengthValidationError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class InvalidValueValidationError {
  const InvalidValueValidationError({
    required this.message,
    required this.type,
  });

  factory InvalidValueValidationError.fromJson(Map<String, dynamic> json) =>
      _$InvalidValueValidationErrorFromJson(json);

  static const toJsonFactory = _$InvalidValueValidationErrorToJson;
  Map<String, dynamic> toJson() => _$InvalidValueValidationErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$InvalidValueValidationErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvalidValueValidationError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $InvalidValueValidationErrorExtension on InvalidValueValidationError {
  InvalidValueValidationError copyWith({String? message, String? type}) {
    return InvalidValueValidationError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  InvalidValueValidationError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return InvalidValueValidationError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MaxNumberValidationError {
  const MaxNumberValidationError({required this.message, required this.type});

  factory MaxNumberValidationError.fromJson(Map<String, dynamic> json) =>
      _$MaxNumberValidationErrorFromJson(json);

  static const toJsonFactory = _$MaxNumberValidationErrorToJson;
  Map<String, dynamic> toJson() => _$MaxNumberValidationErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$MaxNumberValidationErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MaxNumberValidationError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $MaxNumberValidationErrorExtension on MaxNumberValidationError {
  MaxNumberValidationError copyWith({String? message, String? type}) {
    return MaxNumberValidationError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  MaxNumberValidationError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return MaxNumberValidationError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MinNumberValidationError {
  const MinNumberValidationError({required this.message, required this.type});

  factory MinNumberValidationError.fromJson(Map<String, dynamic> json) =>
      _$MinNumberValidationErrorFromJson(json);

  static const toJsonFactory = _$MinNumberValidationErrorToJson;
  Map<String, dynamic> toJson() => _$MinNumberValidationErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$MinNumberValidationErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MinNumberValidationError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $MinNumberValidationErrorExtension on MinNumberValidationError {
  MinNumberValidationError copyWith({String? message, String? type}) {
    return MinNumberValidationError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  MinNumberValidationError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return MinNumberValidationError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class NotMatchingRegexValidationError {
  const NotMatchingRegexValidationError({
    required this.message,
    required this.type,
  });

  factory NotMatchingRegexValidationError.fromJson(Map<String, dynamic> json) =>
      _$NotMatchingRegexValidationErrorFromJson(json);

  static const toJsonFactory = _$NotMatchingRegexValidationErrorToJson;
  Map<String, dynamic> toJson() =>
      _$NotMatchingRegexValidationErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$NotMatchingRegexValidationErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is NotMatchingRegexValidationError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $NotMatchingRegexValidationErrorExtension
    on NotMatchingRegexValidationError {
  NotMatchingRegexValidationError copyWith({String? message, String? type}) {
    return NotMatchingRegexValidationError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  NotMatchingRegexValidationError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return NotMatchingRegexValidationError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class NotOneOfValuesValidationError {
  const NotOneOfValuesValidationError({
    required this.message,
    required this.type,
  });

  factory NotOneOfValuesValidationError.fromJson(Map<String, dynamic> json) =>
      _$NotOneOfValuesValidationErrorFromJson(json);

  static const toJsonFactory = _$NotOneOfValuesValidationErrorToJson;
  Map<String, dynamic> toJson() => _$NotOneOfValuesValidationErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$NotOneOfValuesValidationErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is NotOneOfValuesValidationError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $NotOneOfValuesValidationErrorExtension
    on NotOneOfValuesValidationError {
  NotOneOfValuesValidationError copyWith({String? message, String? type}) {
    return NotOneOfValuesValidationError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  NotOneOfValuesValidationError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return NotOneOfValuesValidationError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ServiceError {
  const ServiceError({required this.message, required this.type});

  factory ServiceError.fromJson(Map<String, dynamic> json) =>
      _$ServiceErrorFromJson(json);

  static const toJsonFactory = _$ServiceErrorToJson;
  Map<String, dynamic> toJson() => _$ServiceErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$ServiceErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ServiceError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $ServiceErrorExtension on ServiceError {
  ServiceError copyWith({String? message, String? type}) {
    return ServiceError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  ServiceError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return ServiceError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AuthNotFoundError {
  const AuthNotFoundError({required this.message, required this.type});

  factory AuthNotFoundError.fromJson(Map<String, dynamic> json) =>
      _$AuthNotFoundErrorFromJson(json);

  static const toJsonFactory = _$AuthNotFoundErrorToJson;
  Map<String, dynamic> toJson() => _$AuthNotFoundErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$AuthNotFoundErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AuthNotFoundError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $AuthNotFoundErrorExtension on AuthNotFoundError {
  AuthNotFoundError copyWith({String? message, String? type}) {
    return AuthNotFoundError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  AuthNotFoundError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return AuthNotFoundError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RefreshTokenExpiredOrNotActiveError {
  const RefreshTokenExpiredOrNotActiveError({
    required this.message,
    required this.type,
  });

  factory RefreshTokenExpiredOrNotActiveError.fromJson(
    Map<String, dynamic> json,
  ) => _$RefreshTokenExpiredOrNotActiveErrorFromJson(json);

  static const toJsonFactory = _$RefreshTokenExpiredOrNotActiveErrorToJson;
  Map<String, dynamic> toJson() =>
      _$RefreshTokenExpiredOrNotActiveErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$RefreshTokenExpiredOrNotActiveErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RefreshTokenExpiredOrNotActiveError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $RefreshTokenExpiredOrNotActiveErrorExtension
    on RefreshTokenExpiredOrNotActiveError {
  RefreshTokenExpiredOrNotActiveError copyWith({
    String? message,
    String? type,
  }) {
    return RefreshTokenExpiredOrNotActiveError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  RefreshTokenExpiredOrNotActiveError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return RefreshTokenExpiredOrNotActiveError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PasswordTokenNotFoundError {
  const PasswordTokenNotFoundError({required this.message, required this.type});

  factory PasswordTokenNotFoundError.fromJson(Map<String, dynamic> json) =>
      _$PasswordTokenNotFoundErrorFromJson(json);

  static const toJsonFactory = _$PasswordTokenNotFoundErrorToJson;
  Map<String, dynamic> toJson() => _$PasswordTokenNotFoundErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$PasswordTokenNotFoundErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PasswordTokenNotFoundError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $PasswordTokenNotFoundErrorExtension on PasswordTokenNotFoundError {
  PasswordTokenNotFoundError copyWith({String? message, String? type}) {
    return PasswordTokenNotFoundError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  PasswordTokenNotFoundError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return PasswordTokenNotFoundError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PasswordTokenExpiredError {
  const PasswordTokenExpiredError({required this.message, required this.type});

  factory PasswordTokenExpiredError.fromJson(Map<String, dynamic> json) =>
      _$PasswordTokenExpiredErrorFromJson(json);

  static const toJsonFactory = _$PasswordTokenExpiredErrorToJson;
  Map<String, dynamic> toJson() => _$PasswordTokenExpiredErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$PasswordTokenExpiredErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PasswordTokenExpiredError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $PasswordTokenExpiredErrorExtension on PasswordTokenExpiredError {
  PasswordTokenExpiredError copyWith({String? message, String? type}) {
    return PasswordTokenExpiredError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  PasswordTokenExpiredError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return PasswordTokenExpiredError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class InvalidPasswordError {
  const InvalidPasswordError({required this.message, required this.type});

  factory InvalidPasswordError.fromJson(Map<String, dynamic> json) =>
      _$InvalidPasswordErrorFromJson(json);

  static const toJsonFactory = _$InvalidPasswordErrorToJson;
  Map<String, dynamic> toJson() => _$InvalidPasswordErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$InvalidPasswordErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvalidPasswordError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $InvalidPasswordErrorExtension on InvalidPasswordError {
  InvalidPasswordError copyWith({String? message, String? type}) {
    return InvalidPasswordError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  InvalidPasswordError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return InvalidPasswordError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RefreshTokenBlockedError {
  const RefreshTokenBlockedError({required this.message, required this.type});

  factory RefreshTokenBlockedError.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenBlockedErrorFromJson(json);

  static const toJsonFactory = _$RefreshTokenBlockedErrorToJson;
  Map<String, dynamic> toJson() => _$RefreshTokenBlockedErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$RefreshTokenBlockedErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RefreshTokenBlockedError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $RefreshTokenBlockedErrorExtension on RefreshTokenBlockedError {
  RefreshTokenBlockedError copyWith({String? message, String? type}) {
    return RefreshTokenBlockedError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  RefreshTokenBlockedError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return RefreshTokenBlockedError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class WrongPasswordError {
  const WrongPasswordError({required this.message, required this.type});

  factory WrongPasswordError.fromJson(Map<String, dynamic> json) =>
      _$WrongPasswordErrorFromJson(json);

  static const toJsonFactory = _$WrongPasswordErrorToJson;
  Map<String, dynamic> toJson() => _$WrongPasswordErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$WrongPasswordErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is WrongPasswordError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $WrongPasswordErrorExtension on WrongPasswordError {
  WrongPasswordError copyWith({String? message, String? type}) {
    return WrongPasswordError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  WrongPasswordError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return WrongPasswordError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AuthNotActiveError {
  const AuthNotActiveError({required this.message, required this.type});

  factory AuthNotActiveError.fromJson(Map<String, dynamic> json) =>
      _$AuthNotActiveErrorFromJson(json);

  static const toJsonFactory = _$AuthNotActiveErrorToJson;
  Map<String, dynamic> toJson() => _$AuthNotActiveErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$AuthNotActiveErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AuthNotActiveError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $AuthNotActiveErrorExtension on AuthNotActiveError {
  AuthNotActiveError copyWith({String? message, String? type}) {
    return AuthNotActiveError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  AuthNotActiveError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return AuthNotActiveError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SameAsOneOfPreviousPasswordsError {
  const SameAsOneOfPreviousPasswordsError({
    required this.message,
    required this.type,
  });

  factory SameAsOneOfPreviousPasswordsError.fromJson(
    Map<String, dynamic> json,
  ) => _$SameAsOneOfPreviousPasswordsErrorFromJson(json);

  static const toJsonFactory = _$SameAsOneOfPreviousPasswordsErrorToJson;
  Map<String, dynamic> toJson() =>
      _$SameAsOneOfPreviousPasswordsErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$SameAsOneOfPreviousPasswordsErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SameAsOneOfPreviousPasswordsError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $SameAsOneOfPreviousPasswordsErrorExtension
    on SameAsOneOfPreviousPasswordsError {
  SameAsOneOfPreviousPasswordsError copyWith({String? message, String? type}) {
    return SameAsOneOfPreviousPasswordsError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  SameAsOneOfPreviousPasswordsError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return SameAsOneOfPreviousPasswordsError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserNotFoundError {
  const UserNotFoundError({required this.message, required this.type});

  factory UserNotFoundError.fromJson(Map<String, dynamic> json) =>
      _$UserNotFoundErrorFromJson(json);

  static const toJsonFactory = _$UserNotFoundErrorToJson;
  Map<String, dynamic> toJson() => _$UserNotFoundErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$UserNotFoundErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserNotFoundError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $UserNotFoundErrorExtension on UserNotFoundError {
  UserNotFoundError copyWith({String? message, String? type}) {
    return UserNotFoundError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  UserNotFoundError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return UserNotFoundError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class InvalidOtpError {
  const InvalidOtpError({required this.message, required this.type});

  factory InvalidOtpError.fromJson(Map<String, dynamic> json) =>
      _$InvalidOtpErrorFromJson(json);

  static const toJsonFactory = _$InvalidOtpErrorToJson;
  Map<String, dynamic> toJson() => _$InvalidOtpErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$InvalidOtpErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvalidOtpError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $InvalidOtpErrorExtension on InvalidOtpError {
  InvalidOtpError copyWith({String? message, String? type}) {
    return InvalidOtpError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  InvalidOtpError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return InvalidOtpError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class InvalidPhoneNumberError {
  const InvalidPhoneNumberError({required this.message, required this.type});

  factory InvalidPhoneNumberError.fromJson(Map<String, dynamic> json) =>
      _$InvalidPhoneNumberErrorFromJson(json);

  static const toJsonFactory = _$InvalidPhoneNumberErrorToJson;
  Map<String, dynamic> toJson() => _$InvalidPhoneNumberErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$InvalidPhoneNumberErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvalidPhoneNumberError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $InvalidPhoneNumberErrorExtension on InvalidPhoneNumberError {
  InvalidPhoneNumberError copyWith({String? message, String? type}) {
    return InvalidPhoneNumberError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  InvalidPhoneNumberError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return InvalidPhoneNumberError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserNotActiveError {
  const UserNotActiveError({required this.message, required this.type});

  factory UserNotActiveError.fromJson(Map<String, dynamic> json) =>
      _$UserNotActiveErrorFromJson(json);

  static const toJsonFactory = _$UserNotActiveErrorToJson;
  Map<String, dynamic> toJson() => _$UserNotActiveErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$UserNotActiveErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserNotActiveError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $UserNotActiveErrorExtension on UserNotActiveError {
  UserNotActiveError copyWith({String? message, String? type}) {
    return UserNotActiveError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  UserNotActiveError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return UserNotActiveError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CannotDeactivateInvitedUserError {
  const CannotDeactivateInvitedUserError({
    required this.message,
    required this.type,
  });

  factory CannotDeactivateInvitedUserError.fromJson(
    Map<String, dynamic> json,
  ) => _$CannotDeactivateInvitedUserErrorFromJson(json);

  static const toJsonFactory = _$CannotDeactivateInvitedUserErrorToJson;
  Map<String, dynamic> toJson() =>
      _$CannotDeactivateInvitedUserErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$CannotDeactivateInvitedUserErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CannotDeactivateInvitedUserError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $CannotDeactivateInvitedUserErrorExtension
    on CannotDeactivateInvitedUserError {
  CannotDeactivateInvitedUserError copyWith({String? message, String? type}) {
    return CannotDeactivateInvitedUserError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  CannotDeactivateInvitedUserError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return CannotDeactivateInvitedUserError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CannotDeactivateDeactivatedUserError {
  const CannotDeactivateDeactivatedUserError({
    required this.message,
    required this.type,
  });

  factory CannotDeactivateDeactivatedUserError.fromJson(
    Map<String, dynamic> json,
  ) => _$CannotDeactivateDeactivatedUserErrorFromJson(json);

  static const toJsonFactory = _$CannotDeactivateDeactivatedUserErrorToJson;
  Map<String, dynamic> toJson() =>
      _$CannotDeactivateDeactivatedUserErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$CannotDeactivateDeactivatedUserErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CannotDeactivateDeactivatedUserError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $CannotDeactivateDeactivatedUserErrorExtension
    on CannotDeactivateDeactivatedUserError {
  CannotDeactivateDeactivatedUserError copyWith({
    String? message,
    String? type,
  }) {
    return CannotDeactivateDeactivatedUserError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  CannotDeactivateDeactivatedUserError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return CannotDeactivateDeactivatedUserError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CannotDeactivateInactiveUserError {
  const CannotDeactivateInactiveUserError({
    required this.message,
    required this.type,
  });

  factory CannotDeactivateInactiveUserError.fromJson(
    Map<String, dynamic> json,
  ) => _$CannotDeactivateInactiveUserErrorFromJson(json);

  static const toJsonFactory = _$CannotDeactivateInactiveUserErrorToJson;
  Map<String, dynamic> toJson() =>
      _$CannotDeactivateInactiveUserErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$CannotDeactivateInactiveUserErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CannotDeactivateInactiveUserError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $CannotDeactivateInactiveUserErrorExtension
    on CannotDeactivateInactiveUserError {
  CannotDeactivateInactiveUserError copyWith({String? message, String? type}) {
    return CannotDeactivateInactiveUserError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  CannotDeactivateInactiveUserError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return CannotDeactivateInactiveUserError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CannotDeactivateRequestedUserError {
  const CannotDeactivateRequestedUserError({
    required this.message,
    required this.type,
  });

  factory CannotDeactivateRequestedUserError.fromJson(
    Map<String, dynamic> json,
  ) => _$CannotDeactivateRequestedUserErrorFromJson(json);

  static const toJsonFactory = _$CannotDeactivateRequestedUserErrorToJson;
  Map<String, dynamic> toJson() =>
      _$CannotDeactivateRequestedUserErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$CannotDeactivateRequestedUserErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CannotDeactivateRequestedUserError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $CannotDeactivateRequestedUserErrorExtension
    on CannotDeactivateRequestedUserError {
  CannotDeactivateRequestedUserError copyWith({String? message, String? type}) {
    return CannotDeactivateRequestedUserError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  CannotDeactivateRequestedUserError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return CannotDeactivateRequestedUserError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CannotReactivateActiveUserError {
  const CannotReactivateActiveUserError({
    required this.message,
    required this.type,
  });

  factory CannotReactivateActiveUserError.fromJson(Map<String, dynamic> json) =>
      _$CannotReactivateActiveUserErrorFromJson(json);

  static const toJsonFactory = _$CannotReactivateActiveUserErrorToJson;
  Map<String, dynamic> toJson() =>
      _$CannotReactivateActiveUserErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$CannotReactivateActiveUserErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CannotReactivateActiveUserError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $CannotReactivateActiveUserErrorExtension
    on CannotReactivateActiveUserError {
  CannotReactivateActiveUserError copyWith({String? message, String? type}) {
    return CannotReactivateActiveUserError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  CannotReactivateActiveUserError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return CannotReactivateActiveUserError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CannotReactivateInactiveUserError {
  const CannotReactivateInactiveUserError({
    required this.message,
    required this.type,
  });

  factory CannotReactivateInactiveUserError.fromJson(
    Map<String, dynamic> json,
  ) => _$CannotReactivateInactiveUserErrorFromJson(json);

  static const toJsonFactory = _$CannotReactivateInactiveUserErrorToJson;
  Map<String, dynamic> toJson() =>
      _$CannotReactivateInactiveUserErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$CannotReactivateInactiveUserErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CannotReactivateInactiveUserError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $CannotReactivateInactiveUserErrorExtension
    on CannotReactivateInactiveUserError {
  CannotReactivateInactiveUserError copyWith({String? message, String? type}) {
    return CannotReactivateInactiveUserError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  CannotReactivateInactiveUserError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return CannotReactivateInactiveUserError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CannotReactivateRequestedUserError {
  const CannotReactivateRequestedUserError({
    required this.message,
    required this.type,
  });

  factory CannotReactivateRequestedUserError.fromJson(
    Map<String, dynamic> json,
  ) => _$CannotReactivateRequestedUserErrorFromJson(json);

  static const toJsonFactory = _$CannotReactivateRequestedUserErrorToJson;
  Map<String, dynamic> toJson() =>
      _$CannotReactivateRequestedUserErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$CannotReactivateRequestedUserErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CannotReactivateRequestedUserError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $CannotReactivateRequestedUserErrorExtension
    on CannotReactivateRequestedUserError {
  CannotReactivateRequestedUserError copyWith({String? message, String? type}) {
    return CannotReactivateRequestedUserError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  CannotReactivateRequestedUserError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return CannotReactivateRequestedUserError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CannotReactivateInvitedUserError {
  const CannotReactivateInvitedUserError({
    required this.message,
    required this.type,
  });

  factory CannotReactivateInvitedUserError.fromJson(
    Map<String, dynamic> json,
  ) => _$CannotReactivateInvitedUserErrorFromJson(json);

  static const toJsonFactory = _$CannotReactivateInvitedUserErrorToJson;
  Map<String, dynamic> toJson() =>
      _$CannotReactivateInvitedUserErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$CannotReactivateInvitedUserErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CannotReactivateInvitedUserError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $CannotReactivateInvitedUserErrorExtension
    on CannotReactivateInvitedUserError {
  CannotReactivateInvitedUserError copyWith({String? message, String? type}) {
    return CannotReactivateInvitedUserError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  CannotReactivateInvitedUserError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return CannotReactivateInvitedUserError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserIsNotEligibleForInvitationError {
  const UserIsNotEligibleForInvitationError({
    required this.message,
    required this.type,
  });

  factory UserIsNotEligibleForInvitationError.fromJson(
    Map<String, dynamic> json,
  ) => _$UserIsNotEligibleForInvitationErrorFromJson(json);

  static const toJsonFactory = _$UserIsNotEligibleForInvitationErrorToJson;
  Map<String, dynamic> toJson() =>
      _$UserIsNotEligibleForInvitationErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$UserIsNotEligibleForInvitationErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserIsNotEligibleForInvitationError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $UserIsNotEligibleForInvitationErrorExtension
    on UserIsNotEligibleForInvitationError {
  UserIsNotEligibleForInvitationError copyWith({
    String? message,
    String? type,
  }) {
    return UserIsNotEligibleForInvitationError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  UserIsNotEligibleForInvitationError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return UserIsNotEligibleForInvitationError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SystemAdminUserExistsError {
  const SystemAdminUserExistsError({required this.message, required this.type});

  factory SystemAdminUserExistsError.fromJson(Map<String, dynamic> json) =>
      _$SystemAdminUserExistsErrorFromJson(json);

  static const toJsonFactory = _$SystemAdminUserExistsErrorToJson;
  Map<String, dynamic> toJson() => _$SystemAdminUserExistsErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$SystemAdminUserExistsErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SystemAdminUserExistsError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $SystemAdminUserExistsErrorExtension on SystemAdminUserExistsError {
  SystemAdminUserExistsError copyWith({String? message, String? type}) {
    return SystemAdminUserExistsError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  SystemAdminUserExistsError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return SystemAdminUserExistsError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MobileNumberAlreadyExistsError {
  const MobileNumberAlreadyExistsError({
    required this.message,
    required this.type,
  });

  factory MobileNumberAlreadyExistsError.fromJson(Map<String, dynamic> json) =>
      _$MobileNumberAlreadyExistsErrorFromJson(json);

  static const toJsonFactory = _$MobileNumberAlreadyExistsErrorToJson;
  Map<String, dynamic> toJson() => _$MobileNumberAlreadyExistsErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$MobileNumberAlreadyExistsErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MobileNumberAlreadyExistsError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $MobileNumberAlreadyExistsErrorExtension
    on MobileNumberAlreadyExistsError {
  MobileNumberAlreadyExistsError copyWith({String? message, String? type}) {
    return MobileNumberAlreadyExistsError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  MobileNumberAlreadyExistsError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return MobileNumberAlreadyExistsError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RoleNotFoundError {
  const RoleNotFoundError({required this.message, required this.type});

  factory RoleNotFoundError.fromJson(Map<String, dynamic> json) =>
      _$RoleNotFoundErrorFromJson(json);

  static const toJsonFactory = _$RoleNotFoundErrorToJson;
  Map<String, dynamic> toJson() => _$RoleNotFoundErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$RoleNotFoundErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RoleNotFoundError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $RoleNotFoundErrorExtension on RoleNotFoundError {
  RoleNotFoundError copyWith({String? message, String? type}) {
    return RoleNotFoundError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  RoleNotFoundError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return RoleNotFoundError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RoleNotActiveError {
  const RoleNotActiveError({required this.message, required this.type});

  factory RoleNotActiveError.fromJson(Map<String, dynamic> json) =>
      _$RoleNotActiveErrorFromJson(json);

  static const toJsonFactory = _$RoleNotActiveErrorToJson;
  Map<String, dynamic> toJson() => _$RoleNotActiveErrorToJson(this);

  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$RoleNotActiveErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RoleNotActiveError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $RoleNotActiveErrorExtension on RoleNotActiveError {
  RoleNotActiveError copyWith({String? message, String? type}) {
    return RoleNotActiveError(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }

  RoleNotActiveError copyWithWrapped({
    Wrapped<String>? message,
    Wrapped<String>? type,
  }) {
    return RoleNotActiveError(
      message: (message != null ? message.value : this.message),
      type: (type != null ? type.value : this.type),
    );
  }
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
