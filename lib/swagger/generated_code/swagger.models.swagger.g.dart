// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInDto _$SignInDtoFromJson(Map<String, dynamic> json) =>
    SignInDto(mobileNo: json['mobileNo'] as String);

Map<String, dynamic> _$SignInDtoToJson(SignInDto instance) => <String, dynamic>{
  'mobileNo': instance.mobileNo,
};

SignInResponse _$SignInResponseFromJson(Map<String, dynamic> json) =>
    SignInResponse(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$SignInResponseToJson(SignInResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'userId': instance.userId,
    };

CreateUserReqDto _$CreateUserReqDtoFromJson(Map<String, dynamic> json) =>
    CreateUserReqDto(
      mobileNo: json['mobileNo'] as String,
      fcmToken: json['fcmToken'] as String,
      role: json['role'] as String,
      pincode: json['pincode'] as String,
    );

Map<String, dynamic> _$CreateUserReqDtoToJson(CreateUserReqDto instance) =>
    <String, dynamic>{
      'mobileNo': instance.mobileNo,
      'fcmToken': instance.fcmToken,
      'role': instance.role,
      'pincode': instance.pincode,
    };

DeleteUserResponseDto _$DeleteUserResponseDtoFromJson(
  Map<String, dynamic> json,
) => DeleteUserResponseDto(
  userId: json['userId'] as String,
  userDeleted: json['userDeleted'] as String,
);

Map<String, dynamic> _$DeleteUserResponseDtoToJson(
  DeleteUserResponseDto instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'userDeleted': instance.userDeleted,
};

UserListObjectDto _$UserListObjectDtoFromJson(Map<String, dynamic> json) =>
    UserListObjectDto(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      mobileNo: json['mobileNo'] as String,
      role: json['role'] as String,
      pinCode: json['pinCode'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$UserListObjectDtoToJson(UserListObjectDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'mobileNo': instance.mobileNo,
      'role': instance.role,
      'pinCode': instance.pinCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

UserListResponseDto _$UserListResponseDtoFromJson(Map<String, dynamic> json) =>
    UserListResponseDto(
      data:
          (json['data'] as List<dynamic>?)
              ?.map(
                (e) => UserListObjectDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
      total: (json['total'] as num).toDouble(),
    );

Map<String, dynamic> _$UserListResponseDtoToJson(
  UserListResponseDto instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'total': instance.total,
};

CreateOtpReqDto _$CreateOtpReqDtoFromJson(Map<String, dynamic> json) =>
    CreateOtpReqDto(userId: json['userId'] as String);

Map<String, dynamic> _$CreateOtpReqDtoToJson(CreateOtpReqDto instance) =>
    <String, dynamic>{'userId': instance.userId};

CreateOtpResponseDto _$CreateOtpResponseDtoFromJson(
  Map<String, dynamic> json,
) => CreateOtpResponseDto(id: json['id'] as String);

Map<String, dynamic> _$CreateOtpResponseDtoToJson(
  CreateOtpResponseDto instance,
) => <String, dynamic>{'id': instance.id};

VerifyOtpByMobileReqDto _$VerifyOtpByMobileReqDtoFromJson(
  Map<String, dynamic> json,
) => VerifyOtpByMobileReqDto(
  userId: json['userId'] as String,
  otp: json['otp'] as String,
  mobileNo: json['mobileNo'] as String,
);

Map<String, dynamic> _$VerifyOtpByMobileReqDtoToJson(
  VerifyOtpByMobileReqDto instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'otp': instance.otp,
  'mobileNo': instance.mobileNo,
};

VerifyOtpByMobileResponseDto _$VerifyOtpByMobileResponseDtoFromJson(
  Map<String, dynamic> json,
) => VerifyOtpByMobileResponseDto(success: json['success'] as bool);

Map<String, dynamic> _$VerifyOtpByMobileResponseDtoToJson(
  VerifyOtpByMobileResponseDto instance,
) => <String, dynamic>{'success': instance.success};

DeleteOtpReqDto _$DeleteOtpReqDtoFromJson(Map<String, dynamic> json) =>
    DeleteOtpReqDto(id: json['id'] as String);

Map<String, dynamic> _$DeleteOtpReqDtoToJson(DeleteOtpReqDto instance) =>
    <String, dynamic>{'id': instance.id};

DeleteOtpResponseDto _$DeleteOtpResponseDtoFromJson(
  Map<String, dynamic> json,
) => DeleteOtpResponseDto(
  id: json['id'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$DeleteOtpResponseDtoToJson(
  DeleteOtpResponseDto instance,
) => <String, dynamic>{'id': instance.id, 'status': instance.status};

CreateAddressReqDto _$CreateAddressReqDtoFromJson(Map<String, dynamic> json) =>
    CreateAddressReqDto(
      userId: json['userId'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      pincode: (json['pincode'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$CreateAddressReqDtoToJson(
  CreateAddressReqDto instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'address': instance.address,
  'city': instance.city,
  'state': instance.state,
  'country': instance.country,
  'pincode': instance.pincode,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};

CreateAddressResponseDto _$CreateAddressResponseDtoFromJson(
  Map<String, dynamic> json,
) => CreateAddressResponseDto(id: json['id'] as String);

Map<String, dynamic> _$CreateAddressResponseDtoToJson(
  CreateAddressResponseDto instance,
) => <String, dynamic>{'id': instance.id};

UpdateAddressReqDto _$UpdateAddressReqDtoFromJson(Map<String, dynamic> json) =>
    UpdateAddressReqDto(
      id: json['id'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      pincode: (json['pincode'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$UpdateAddressReqDtoToJson(
  UpdateAddressReqDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'address': instance.address,
  'city': instance.city,
  'state': instance.state,
  'country': instance.country,
  'pincode': instance.pincode,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};

UpdateAddressResponseDto _$UpdateAddressResponseDtoFromJson(
  Map<String, dynamic> json,
) => UpdateAddressResponseDto(
  id: json['id'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$UpdateAddressResponseDtoToJson(
  UpdateAddressResponseDto instance,
) => <String, dynamic>{'id': instance.id, 'status': instance.status};

DeleteAddressReqDto _$DeleteAddressReqDtoFromJson(Map<String, dynamic> json) =>
    DeleteAddressReqDto(id: json['id'] as String);

Map<String, dynamic> _$DeleteAddressReqDtoToJson(
  DeleteAddressReqDto instance,
) => <String, dynamic>{'id': instance.id};

DeleteAddressResponseDto _$DeleteAddressResponseDtoFromJson(
  Map<String, dynamic> json,
) => DeleteAddressResponseDto(
  id: json['id'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$DeleteAddressResponseDtoToJson(
  DeleteAddressResponseDto instance,
) => <String, dynamic>{'id': instance.id, 'status': instance.status};

GetAddressesByUserReqDto _$GetAddressesByUserReqDtoFromJson(
  Map<String, dynamic> json,
) => GetAddressesByUserReqDto(userId: json['userId'] as String);

Map<String, dynamic> _$GetAddressesByUserReqDtoToJson(
  GetAddressesByUserReqDto instance,
) => <String, dynamic>{'userId': instance.userId};

AddressObjectDto _$AddressObjectDtoFromJson(Map<String, dynamic> json) =>
    AddressObjectDto(
      id: json['id'] as String,
      userId: json['userId'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      pincode: (json['pincode'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$AddressObjectDtoToJson(AddressObjectDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'pincode': instance.pincode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

AddressListResponseDto _$AddressListResponseDtoFromJson(
  Map<String, dynamic> json,
) => AddressListResponseDto(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => AddressObjectDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$AddressListResponseDtoToJson(
  AddressListResponseDto instance,
) => <String, dynamic>{'items': instance.items.map((e) => e.toJson()).toList()};

CategoryObjectResponseDto _$CategoryObjectResponseDtoFromJson(
  Map<String, dynamic> json,
) => CategoryObjectResponseDto(
  id: json['id'] as String,
  name: json['name'] as String,
  imageUri: json['image_uri'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$CategoryObjectResponseDtoToJson(
  CategoryObjectResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image_uri': instance.imageUri,
  'description': instance.description,
};

CategoryListResponseDto _$CategoryListResponseDtoFromJson(
  Map<String, dynamic> json,
) => CategoryListResponseDto(
  data:
      (json['data'] as List<dynamic>?)
          ?.map(
            (e) =>
                CategoryObjectResponseDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      [],
);

Map<String, dynamic> _$CategoryListResponseDtoToJson(
  CategoryListResponseDto instance,
) => <String, dynamic>{'data': instance.data.map((e) => e.toJson()).toList()};

AddCategoryReqDto _$AddCategoryReqDtoFromJson(Map<String, dynamic> json) =>
    AddCategoryReqDto(
      name: json['name'] as String,
      imageUri: json['image_uri'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$AddCategoryReqDtoToJson(AddCategoryReqDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image_uri': instance.imageUri,
      'description': instance.description,
    };

AddCategoryResponse _$AddCategoryResponseFromJson(Map<String, dynamic> json) =>
    AddCategoryResponse(id: json['id'] as String);

Map<String, dynamic> _$AddCategoryResponseToJson(
  AddCategoryResponse instance,
) => <String, dynamic>{'id': instance.id};

AddSubCategoryReqDto _$AddSubCategoryReqDtoFromJson(
  Map<String, dynamic> json,
) => AddSubCategoryReqDto(
  categoryId: json['categoryId'] as String,
  title: json['title'] as String,
  imageUri: json['imageUri'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$AddSubCategoryReqDtoToJson(
  AddSubCategoryReqDto instance,
) => <String, dynamic>{
  'categoryId': instance.categoryId,
  'title': instance.title,
  'imageUri': instance.imageUri,
  'description': instance.description,
};

SubCategoryObjectResponseDto _$SubCategoryObjectResponseDtoFromJson(
  Map<String, dynamic> json,
) => SubCategoryObjectResponseDto(
  id: json['id'] as String,
  title: json['title'] as String,
);

Map<String, dynamic> _$SubCategoryObjectResponseDtoToJson(
  SubCategoryObjectResponseDto instance,
) => <String, dynamic>{'id': instance.id, 'title': instance.title};

SubCategoryObjectResDto _$SubCategoryObjectResDtoFromJson(
  Map<String, dynamic> json,
) => SubCategoryObjectResDto(
  id: json['id'] as String,
  categoryId: json['categoryId'] as String,
  title: json['title'] as String,
  subCategoryType: (json['subCategoryType'] as num).toDouble(),
  imageUri: json['imageUri'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$SubCategoryObjectResDtoToJson(
  SubCategoryObjectResDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'categoryId': instance.categoryId,
  'title': instance.title,
  'subCategoryType': instance.subCategoryType,
  'imageUri': instance.imageUri,
  'description': instance.description,
};

SubCategoryListResponseDto _$SubCategoryListResponseDtoFromJson(
  Map<String, dynamic> json,
) => SubCategoryListResponseDto(
  data:
      (json['data'] as List<dynamic>?)
          ?.map(
            (e) => SubCategoryObjectResDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      [],
);

Map<String, dynamic> _$SubCategoryListResponseDtoToJson(
  SubCategoryListResponseDto instance,
) => <String, dynamic>{'data': instance.data.map((e) => e.toJson()).toList()};

AddProductReqDto _$AddProductReqDtoFromJson(Map<String, dynamic> json) =>
    AddProductReqDto(
      productName: json['productName'] as String,
      localName: json['localName'] as String,
      categoryType: (json['categoryType'] as num).toDouble(),
      imageUri: json['imageUri'] as String,
      description: json['description'] as String,
      nutritionInfo: json['nutritionInfo'] as String,
      productImage: json['productImage'] as String,
    );

Map<String, dynamic> _$AddProductReqDtoToJson(AddProductReqDto instance) =>
    <String, dynamic>{
      'productName': instance.productName,
      'localName': instance.localName,
      'categoryType': instance.categoryType,
      'imageUri': instance.imageUri,
      'description': instance.description,
      'nutritionInfo': instance.nutritionInfo,
      'productImage': instance.productImage,
    };

AddProductResponse _$AddProductResponseFromJson(Map<String, dynamic> json) =>
    AddProductResponse(id: json['id'] as String);

Map<String, dynamic> _$AddProductResponseToJson(AddProductResponse instance) =>
    <String, dynamic>{'id': instance.id};

ProductListObjectDto _$ProductListObjectDtoFromJson(
  Map<String, dynamic> json,
) => ProductListObjectDto(
  id: json['id'] as String,
  productName: json['productName'] as String,
  localName: json['localName'] as String,
  imageUri: json['imageUri'] as String,
  description: json['description'] as String,
  quantity: (json['quantity'] as num).toDouble(),
  availableQuantity: json['availableQuantity'] as bool,
  productPrice: (json['productPrice'] as num).toDouble(),
  nutritionInfo: json['nutritionInfo'] as String,
  productImage: json['productImage'] as String,
);

Map<String, dynamic> _$ProductListObjectDtoToJson(
  ProductListObjectDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'productName': instance.productName,
  'localName': instance.localName,
  'imageUri': instance.imageUri,
  'description': instance.description,
  'quantity': instance.quantity,
  'availableQuantity': instance.availableQuantity,
  'productPrice': instance.productPrice,
  'nutritionInfo': instance.nutritionInfo,
  'productImage': instance.productImage,
};

AllProductResponse _$AllProductResponseFromJson(Map<String, dynamic> json) =>
    AllProductResponse(
      data:
          (json['data'] as List<dynamic>?)
              ?.map(
                (e) => ProductListObjectDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
      total: (json['total'] as num).toDouble(),
    );

Map<String, dynamic> _$AllProductResponseToJson(AllProductResponse instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

CreateProductSkuReqDto _$CreateProductSkuReqDtoFromJson(
  Map<String, dynamic> json,
) => CreateProductSkuReqDto(
  productId: json['productId'] as String,
  skuName: json['skuName'] as String,
  orderStatus: json['orderStatus'] as String,
  quantity: (json['quantity'] as num).toDouble(),
  productPrice: (json['productPrice'] as num).toDouble(),
);

Map<String, dynamic> _$CreateProductSkuReqDtoToJson(
  CreateProductSkuReqDto instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'skuName': instance.skuName,
  'orderStatus': instance.orderStatus,
  'quantity': instance.quantity,
  'productPrice': instance.productPrice,
};

CreateProductSkuResponseDto _$CreateProductSkuResponseDtoFromJson(
  Map<String, dynamic> json,
) => CreateProductSkuResponseDto(id: json['id'] as String);

Map<String, dynamic> _$CreateProductSkuResponseDtoToJson(
  CreateProductSkuResponseDto instance,
) => <String, dynamic>{'id': instance.id};

UpdateProductSkuReqDto _$UpdateProductSkuReqDtoFromJson(
  Map<String, dynamic> json,
) => UpdateProductSkuReqDto(
  id: json['id'] as String,
  skuName: json['skuName'] as String,
  orderStatus: json['orderStatus'] as String,
);

Map<String, dynamic> _$UpdateProductSkuReqDtoToJson(
  UpdateProductSkuReqDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'skuName': instance.skuName,
  'orderStatus': instance.orderStatus,
};

UpdateProductSkuResponseDto _$UpdateProductSkuResponseDtoFromJson(
  Map<String, dynamic> json,
) => UpdateProductSkuResponseDto(
  id: json['id'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$UpdateProductSkuResponseDtoToJson(
  UpdateProductSkuResponseDto instance,
) => <String, dynamic>{'id': instance.id, 'status': instance.status};

DeleteProductSkuReqDto _$DeleteProductSkuReqDtoFromJson(
  Map<String, dynamic> json,
) => DeleteProductSkuReqDto(id: json['id'] as String);

Map<String, dynamic> _$DeleteProductSkuReqDtoToJson(
  DeleteProductSkuReqDto instance,
) => <String, dynamic>{'id': instance.id};

DeleteProductSkuResponseDto _$DeleteProductSkuResponseDtoFromJson(
  Map<String, dynamic> json,
) => DeleteProductSkuResponseDto(
  id: json['id'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$DeleteProductSkuResponseDtoToJson(
  DeleteProductSkuResponseDto instance,
) => <String, dynamic>{'id': instance.id, 'status': instance.status};

GetProductSkusByProductReqDto _$GetProductSkusByProductReqDtoFromJson(
  Map<String, dynamic> json,
) => GetProductSkusByProductReqDto(productId: json['productId'] as String);

Map<String, dynamic> _$GetProductSkusByProductReqDtoToJson(
  GetProductSkusByProductReqDto instance,
) => <String, dynamic>{'productId': instance.productId};

ProductSkuObjectDto _$ProductSkuObjectDtoFromJson(Map<String, dynamic> json) =>
    ProductSkuObjectDto(
      id: json['id'] as String,
      productId: json['productId'] as String,
      skuName: json['skuName'] as String,
      orderStatus: json['orderStatus'] as String,
    );

Map<String, dynamic> _$ProductSkuObjectDtoToJson(
  ProductSkuObjectDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'productId': instance.productId,
  'skuName': instance.skuName,
  'orderStatus': instance.orderStatus,
};

ProductSkuListResponseDto _$ProductSkuListResponseDtoFromJson(
  Map<String, dynamic> json,
) => ProductSkuListResponseDto(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => ProductSkuObjectDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$ProductSkuListResponseDtoToJson(
  ProductSkuListResponseDto instance,
) => <String, dynamic>{'items': instance.items.map((e) => e.toJson()).toList()};

CreateFavouriteReqDto _$CreateFavouriteReqDtoFromJson(
  Map<String, dynamic> json,
) => CreateFavouriteReqDto(
  userId: json['userId'] as String,
  productId: json['productId'] as String,
);

Map<String, dynamic> _$CreateFavouriteReqDtoToJson(
  CreateFavouriteReqDto instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'productId': instance.productId,
};

CreateFavouriteResponseDto _$CreateFavouriteResponseDtoFromJson(
  Map<String, dynamic> json,
) => CreateFavouriteResponseDto(favouriteId: json['favouriteId'] as String);

Map<String, dynamic> _$CreateFavouriteResponseDtoToJson(
  CreateFavouriteResponseDto instance,
) => <String, dynamic>{'favouriteId': instance.favouriteId};

DeleteFavouriteResponseDto _$DeleteFavouriteResponseDtoFromJson(
  Map<String, dynamic> json,
) => DeleteFavouriteResponseDto(
  favouriteId: json['favouriteId'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$DeleteFavouriteResponseDtoToJson(
  DeleteFavouriteResponseDto instance,
) => <String, dynamic>{
  'favouriteId': instance.favouriteId,
  'status': instance.status,
};

FavouriteListObjectDto _$FavouriteListObjectDtoFromJson(
  Map<String, dynamic> json,
) => FavouriteListObjectDto(
  id: json['id'] as String,
  userId: json['userId'] as String,
  productId: json['productId'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  deleteAt: DateTime.parse(json['deleteAt'] as String),
);

Map<String, dynamic> _$FavouriteListObjectDtoToJson(
  FavouriteListObjectDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'productId': instance.productId,
  'createdAt': instance.createdAt.toIso8601String(),
  'deleteAt': instance.deleteAt.toIso8601String(),
};

FavouriteListResponseDto _$FavouriteListResponseDtoFromJson(
  Map<String, dynamic> json,
) => FavouriteListResponseDto(
  data:
      (json['data'] as List<dynamic>?)
          ?.map(
            (e) => FavouriteListObjectDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      [],
  total: (json['total'] as num).toDouble(),
);

Map<String, dynamic> _$FavouriteListResponseDtoToJson(
  FavouriteListResponseDto instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'total': instance.total,
};

CreateCartReqDto _$CreateCartReqDtoFromJson(Map<String, dynamic> json) =>
    CreateCartReqDto(userId: json['userId'] as String);

Map<String, dynamic> _$CreateCartReqDtoToJson(CreateCartReqDto instance) =>
    <String, dynamic>{'userId': instance.userId};

CreateCartResponseDto _$CreateCartResponseDtoFromJson(
  Map<String, dynamic> json,
) => CreateCartResponseDto(cartId: json['cartId'] as String);

Map<String, dynamic> _$CreateCartResponseDtoToJson(
  CreateCartResponseDto instance,
) => <String, dynamic>{'cartId': instance.cartId};

AddCartItemReqDto _$AddCartItemReqDtoFromJson(Map<String, dynamic> json) =>
    AddCartItemReqDto(
      cartId: json['cartId'] as String,
      productId: json['productId'] as String,
      productSubSkuId: json['productSubSkuId'] as String,
      quantity: (json['quantity'] as num).toDouble(),
    );

Map<String, dynamic> _$AddCartItemReqDtoToJson(AddCartItemReqDto instance) =>
    <String, dynamic>{
      'cartId': instance.cartId,
      'productId': instance.productId,
      'productSubSkuId': instance.productSubSkuId,
      'quantity': instance.quantity,
    };

AddCartItemResponseDto _$AddCartItemResponseDtoFromJson(
  Map<String, dynamic> json,
) => AddCartItemResponseDto(itemId: json['itemId'] as String);

Map<String, dynamic> _$AddCartItemResponseDtoToJson(
  AddCartItemResponseDto instance,
) => <String, dynamic>{'itemId': instance.itemId};

RemoveCartItemReqDto _$RemoveCartItemReqDtoFromJson(
  Map<String, dynamic> json,
) => RemoveCartItemReqDto(itemId: json['itemId'] as String);

Map<String, dynamic> _$RemoveCartItemReqDtoToJson(
  RemoveCartItemReqDto instance,
) => <String, dynamic>{'itemId': instance.itemId};

RemoveCartItemResponseDto _$RemoveCartItemResponseDtoFromJson(
  Map<String, dynamic> json,
) => RemoveCartItemResponseDto(
  itemId: json['itemId'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$RemoveCartItemResponseDtoToJson(
  RemoveCartItemResponseDto instance,
) => <String, dynamic>{'itemId': instance.itemId, 'status': instance.status};

UpdateCartItemReqDto _$UpdateCartItemReqDtoFromJson(
  Map<String, dynamic> json,
) => UpdateCartItemReqDto(
  itemId: json['itemId'] as String,
  quantity: (json['quantity'] as num).toDouble(),
);

Map<String, dynamic> _$UpdateCartItemReqDtoToJson(
  UpdateCartItemReqDto instance,
) => <String, dynamic>{
  'itemId': instance.itemId,
  'quantity': instance.quantity,
};

UpdateCartItemResponseDto _$UpdateCartItemResponseDtoFromJson(
  Map<String, dynamic> json,
) => UpdateCartItemResponseDto(
  itemId: json['itemId'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$UpdateCartItemResponseDtoToJson(
  UpdateCartItemResponseDto instance,
) => <String, dynamic>{'itemId': instance.itemId, 'status': instance.status};

CartItemObjectDto _$CartItemObjectDtoFromJson(Map<String, dynamic> json) =>
    CartItemObjectDto(
      id: json['id'] as String,
      productId: json['productId'] as String,
      productSubSkuId: json['productSubSkuId'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updateAt: DateTime.parse(json['updateAt'] as String),
    );

Map<String, dynamic> _$CartItemObjectDtoToJson(CartItemObjectDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'productSubSkuId': instance.productSubSkuId,
      'quantity': instance.quantity,
      'createdAt': instance.createdAt.toIso8601String(),
      'updateAt': instance.updateAt.toIso8601String(),
    };

CartDetailsResponseDto _$CartDetailsResponseDtoFromJson(
  Map<String, dynamic> json,
) => CartDetailsResponseDto(
  id: json['id'] as String,
  userId: json['userId'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updateAt: DateTime.parse(json['updateAt'] as String),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => CartItemObjectDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$CartDetailsResponseDtoToJson(
  CartDetailsResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'createdAt': instance.createdAt.toIso8601String(),
  'updateAt': instance.updateAt.toIso8601String(),
  'items': instance.items.map((e) => e.toJson()).toList(),
};

AddSubCartItemReqDto _$AddSubCartItemReqDtoFromJson(
  Map<String, dynamic> json,
) => AddSubCartItemReqDto(
  cartId: json['cartId'] as String,
  productId: json['productId'] as String,
  productSubSkuId: json['productSubSkuId'] as String,
  quantity: (json['quantity'] as num).toDouble(),
);

Map<String, dynamic> _$AddSubCartItemReqDtoToJson(
  AddSubCartItemReqDto instance,
) => <String, dynamic>{
  'cartId': instance.cartId,
  'productId': instance.productId,
  'productSubSkuId': instance.productSubSkuId,
  'quantity': instance.quantity,
};

AddSubCartItemResponseDto _$AddSubCartItemResponseDtoFromJson(
  Map<String, dynamic> json,
) => AddSubCartItemResponseDto(itemId: json['itemId'] as String);

Map<String, dynamic> _$AddSubCartItemResponseDtoToJson(
  AddSubCartItemResponseDto instance,
) => <String, dynamic>{'itemId': instance.itemId};

RemoveSubCartItemReqDto _$RemoveSubCartItemReqDtoFromJson(
  Map<String, dynamic> json,
) => RemoveSubCartItemReqDto(itemId: json['itemId'] as String);

Map<String, dynamic> _$RemoveSubCartItemReqDtoToJson(
  RemoveSubCartItemReqDto instance,
) => <String, dynamic>{'itemId': instance.itemId};

RemoveSubCartItemResponseDto _$RemoveSubCartItemResponseDtoFromJson(
  Map<String, dynamic> json,
) => RemoveSubCartItemResponseDto(
  itemId: json['itemId'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$RemoveSubCartItemResponseDtoToJson(
  RemoveSubCartItemResponseDto instance,
) => <String, dynamic>{'itemId': instance.itemId, 'status': instance.status};

UpdateSubCartItemReqDto _$UpdateSubCartItemReqDtoFromJson(
  Map<String, dynamic> json,
) => UpdateSubCartItemReqDto(
  itemId: json['itemId'] as String,
  quantity: (json['quantity'] as num).toDouble(),
);

Map<String, dynamic> _$UpdateSubCartItemReqDtoToJson(
  UpdateSubCartItemReqDto instance,
) => <String, dynamic>{
  'itemId': instance.itemId,
  'quantity': instance.quantity,
};

UpdateSubCartItemResponseDto _$UpdateSubCartItemResponseDtoFromJson(
  Map<String, dynamic> json,
) => UpdateSubCartItemResponseDto(
  itemId: json['itemId'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$UpdateSubCartItemResponseDtoToJson(
  UpdateSubCartItemResponseDto instance,
) => <String, dynamic>{'itemId': instance.itemId, 'status': instance.status};

GetSubCartItemsByCartReqDto _$GetSubCartItemsByCartReqDtoFromJson(
  Map<String, dynamic> json,
) => GetSubCartItemsByCartReqDto(cartId: json['cartId'] as String);

Map<String, dynamic> _$GetSubCartItemsByCartReqDtoToJson(
  GetSubCartItemsByCartReqDto instance,
) => <String, dynamic>{'cartId': instance.cartId};

SubCartItemObjectDto _$SubCartItemObjectDtoFromJson(
  Map<String, dynamic> json,
) => SubCartItemObjectDto(
  id: json['id'] as String,
  cartId: json['cartId'] as String,
  productId: json['productId'] as String,
  productSubSkuId: json['productSubSkuId'] as String,
  quantity: (json['quantity'] as num).toDouble(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updateAt: DateTime.parse(json['updateAt'] as String),
);

Map<String, dynamic> _$SubCartItemObjectDtoToJson(
  SubCartItemObjectDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'cartId': instance.cartId,
  'productId': instance.productId,
  'productSubSkuId': instance.productSubSkuId,
  'quantity': instance.quantity,
  'createdAt': instance.createdAt.toIso8601String(),
  'updateAt': instance.updateAt.toIso8601String(),
};

SubCartItemsListResponseDto _$SubCartItemsListResponseDtoFromJson(
  Map<String, dynamic> json,
) => SubCartItemsListResponseDto(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => SubCartItemObjectDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$SubCartItemsListResponseDtoToJson(
  SubCartItemsListResponseDto instance,
) => <String, dynamic>{'items': instance.items.map((e) => e.toJson()).toList()};

CreateOrderReqDto _$CreateOrderReqDtoFromJson(Map<String, dynamic> json) =>
    CreateOrderReqDto(
      userId: json['userId'] as String,
      transactionId: (json['transactionId'] as num).toDouble(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$CreateOrderReqDtoToJson(CreateOrderReqDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'transactionId': instance.transactionId,
      'status': instance.status,
    };

CreateOrderResponseDto _$CreateOrderResponseDtoFromJson(
  Map<String, dynamic> json,
) => CreateOrderResponseDto(orderId: json['orderId'] as String);

Map<String, dynamic> _$CreateOrderResponseDtoToJson(
  CreateOrderResponseDto instance,
) => <String, dynamic>{'orderId': instance.orderId};

AddOrderItemReqDto _$AddOrderItemReqDtoFromJson(Map<String, dynamic> json) =>
    AddOrderItemReqDto(
      orderId: json['orderId'] as String,
      productId: json['productId'] as String,
      productSkuId: json['productSkuId'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$AddOrderItemReqDtoToJson(AddOrderItemReqDto instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'productId': instance.productId,
      'productSkuId': instance.productSkuId,
      'quantity': instance.quantity,
      'price': instance.price,
    };

AddOrderItemResponseDto _$AddOrderItemResponseDtoFromJson(
  Map<String, dynamic> json,
) => AddOrderItemResponseDto(itemId: json['itemId'] as String);

Map<String, dynamic> _$AddOrderItemResponseDtoToJson(
  AddOrderItemResponseDto instance,
) => <String, dynamic>{'itemId': instance.itemId};

RemoveOrderItemReqDto _$RemoveOrderItemReqDtoFromJson(
  Map<String, dynamic> json,
) => RemoveOrderItemReqDto(itemId: json['itemId'] as String);

Map<String, dynamic> _$RemoveOrderItemReqDtoToJson(
  RemoveOrderItemReqDto instance,
) => <String, dynamic>{'itemId': instance.itemId};

RemoveOrderItemResponseDto _$RemoveOrderItemResponseDtoFromJson(
  Map<String, dynamic> json,
) => RemoveOrderItemResponseDto(
  itemId: json['itemId'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$RemoveOrderItemResponseDtoToJson(
  RemoveOrderItemResponseDto instance,
) => <String, dynamic>{'itemId': instance.itemId, 'status': instance.status};

UpdateOrderItemReqDto _$UpdateOrderItemReqDtoFromJson(
  Map<String, dynamic> json,
) => UpdateOrderItemReqDto(
  id: json['id'] as String,
  quantity: (json['quantity'] as num).toDouble(),
  price: (json['price'] as num).toDouble(),
);

Map<String, dynamic> _$UpdateOrderItemReqDtoToJson(
  UpdateOrderItemReqDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'quantity': instance.quantity,
  'price': instance.price,
};

UpdateOrderItemResponseDto _$UpdateOrderItemResponseDtoFromJson(
  Map<String, dynamic> json,
) => UpdateOrderItemResponseDto(
  id: json['id'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$UpdateOrderItemResponseDtoToJson(
  UpdateOrderItemResponseDto instance,
) => <String, dynamic>{'id': instance.id, 'status': instance.status};

GetOrdersByUserReqDto _$GetOrdersByUserReqDtoFromJson(
  Map<String, dynamic> json,
) => GetOrdersByUserReqDto(userId: json['userId'] as String);

Map<String, dynamic> _$GetOrdersByUserReqDtoToJson(
  GetOrdersByUserReqDto instance,
) => <String, dynamic>{'userId': instance.userId};

OrderItemObjectDto _$OrderItemObjectDtoFromJson(Map<String, dynamic> json) =>
    OrderItemObjectDto(
      id: json['id'] as String,
      productId: json['productId'] as String,
      productSkuId: json['productSkuId'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$OrderItemObjectDtoToJson(OrderItemObjectDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'productSkuId': instance.productSkuId,
      'quantity': instance.quantity,
      'price': instance.price,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

OrderDetailsResponseDto _$OrderDetailsResponseDtoFromJson(
  Map<String, dynamic> json,
) => OrderDetailsResponseDto(
  id: json['id'] as String,
  userId: json['userId'] as String,
  transactionId: (json['transactionId'] as num).toDouble(),
  status: json['status'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  deliveredAt: DateTime.parse(json['deliveredAt'] as String),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItemObjectDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$OrderDetailsResponseDtoToJson(
  OrderDetailsResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'transactionId': instance.transactionId,
  'status': instance.status,
  'createdAt': instance.createdAt.toIso8601String(),
  'deliveredAt': instance.deliveredAt.toIso8601String(),
  'items': instance.items.map((e) => e.toJson()).toList(),
};

OrderListResponseDto _$OrderListResponseDtoFromJson(
  Map<String, dynamic> json,
) => OrderListResponseDto(
  orders:
      (json['orders'] as List<dynamic>?)
          ?.map(
            (e) => OrderDetailsResponseDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      [],
);

Map<String, dynamic> _$OrderListResponseDtoToJson(
  OrderListResponseDto instance,
) => <String, dynamic>{
  'orders': instance.orders.map((e) => e.toJson()).toList(),
};

CreateOrderItemReqDto _$CreateOrderItemReqDtoFromJson(
  Map<String, dynamic> json,
) => CreateOrderItemReqDto(
  orderId: json['orderId'] as String,
  productId: json['productId'] as String,
  productSkuId: json['productSkuId'] as String,
  quantity: (json['quantity'] as num).toDouble(),
  price: (json['price'] as num).toDouble(),
);

Map<String, dynamic> _$CreateOrderItemReqDtoToJson(
  CreateOrderItemReqDto instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'productId': instance.productId,
  'productSkuId': instance.productSkuId,
  'quantity': instance.quantity,
  'price': instance.price,
};

CreateOrderItemResponseDto _$CreateOrderItemResponseDtoFromJson(
  Map<String, dynamic> json,
) => CreateOrderItemResponseDto(id: json['id'] as String);

Map<String, dynamic> _$CreateOrderItemResponseDtoToJson(
  CreateOrderItemResponseDto instance,
) => <String, dynamic>{'id': instance.id};

DeleteOrderItemReqDto _$DeleteOrderItemReqDtoFromJson(
  Map<String, dynamic> json,
) => DeleteOrderItemReqDto(id: json['id'] as String);

Map<String, dynamic> _$DeleteOrderItemReqDtoToJson(
  DeleteOrderItemReqDto instance,
) => <String, dynamic>{'id': instance.id};

DeleteOrderItemResponseDto _$DeleteOrderItemResponseDtoFromJson(
  Map<String, dynamic> json,
) => DeleteOrderItemResponseDto(
  id: json['id'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$DeleteOrderItemResponseDtoToJson(
  DeleteOrderItemResponseDto instance,
) => <String, dynamic>{'id': instance.id, 'status': instance.status};

GetOrderItemsByOrderReqDto _$GetOrderItemsByOrderReqDtoFromJson(
  Map<String, dynamic> json,
) => GetOrderItemsByOrderReqDto(orderId: json['orderId'] as String);

Map<String, dynamic> _$GetOrderItemsByOrderReqDtoToJson(
  GetOrderItemsByOrderReqDto instance,
) => <String, dynamic>{'orderId': instance.orderId};

OrderItemListResponseDto _$OrderItemListResponseDtoFromJson(
  Map<String, dynamic> json,
) => OrderItemListResponseDto(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItemObjectDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$OrderItemListResponseDtoToJson(
  OrderItemListResponseDto instance,
) => <String, dynamic>{'items': instance.items.map((e) => e.toJson()).toList()};

CreatePaymentReqDto _$CreatePaymentReqDtoFromJson(Map<String, dynamic> json) =>
    CreatePaymentReqDto(
      transactionId: (json['transactionId'] as num).toDouble(),
      amount: (json['amount'] as num).toDouble(),
      paymentMethod: json['paymentMethod'] as String,
      status: json['status'] as String,
      failureReason: json['failureReason'] as String,
      metadata: json['metadata'] as String,
      orderId: json['orderId'] as String,
    );

Map<String, dynamic> _$CreatePaymentReqDtoToJson(
  CreatePaymentReqDto instance,
) => <String, dynamic>{
  'transactionId': instance.transactionId,
  'amount': instance.amount,
  'paymentMethod': instance.paymentMethod,
  'status': instance.status,
  'failureReason': instance.failureReason,
  'metadata': instance.metadata,
  'orderId': instance.orderId,
};

CreatePaymentResponseDto _$CreatePaymentResponseDtoFromJson(
  Map<String, dynamic> json,
) => CreatePaymentResponseDto(id: json['id'] as String);

Map<String, dynamic> _$CreatePaymentResponseDtoToJson(
  CreatePaymentResponseDto instance,
) => <String, dynamic>{'id': instance.id};

UpdatePaymentReqDto _$UpdatePaymentReqDtoFromJson(Map<String, dynamic> json) =>
    UpdatePaymentReqDto(
      id: json['id'] as String,
      status: json['status'] as String,
      failureReason: json['failureReason'] as String,
      metadata: json['metadata'] as String,
    );

Map<String, dynamic> _$UpdatePaymentReqDtoToJson(
  UpdatePaymentReqDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'status': instance.status,
  'failureReason': instance.failureReason,
  'metadata': instance.metadata,
};

UpdatePaymentResponseDto _$UpdatePaymentResponseDtoFromJson(
  Map<String, dynamic> json,
) => UpdatePaymentResponseDto(
  id: json['id'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$UpdatePaymentResponseDtoToJson(
  UpdatePaymentResponseDto instance,
) => <String, dynamic>{'id': instance.id, 'status': instance.status};

DeletePaymentReqDto _$DeletePaymentReqDtoFromJson(Map<String, dynamic> json) =>
    DeletePaymentReqDto(id: json['id'] as String);

Map<String, dynamic> _$DeletePaymentReqDtoToJson(
  DeletePaymentReqDto instance,
) => <String, dynamic>{'id': instance.id};

DeletePaymentResponseDto _$DeletePaymentResponseDtoFromJson(
  Map<String, dynamic> json,
) => DeletePaymentResponseDto(
  id: json['id'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$DeletePaymentResponseDtoToJson(
  DeletePaymentResponseDto instance,
) => <String, dynamic>{'id': instance.id, 'status': instance.status};

GetPaymentsByOrderReqDto _$GetPaymentsByOrderReqDtoFromJson(
  Map<String, dynamic> json,
) => GetPaymentsByOrderReqDto(orderId: json['orderId'] as String);

Map<String, dynamic> _$GetPaymentsByOrderReqDtoToJson(
  GetPaymentsByOrderReqDto instance,
) => <String, dynamic>{'orderId': instance.orderId};

PaymentObjectDto _$PaymentObjectDtoFromJson(Map<String, dynamic> json) =>
    PaymentObjectDto(
      id: json['id'] as String,
      transactionId: (json['transactionId'] as num).toDouble(),
      amount: (json['amount'] as num).toDouble(),
      paymentMethod: json['paymentMethod'] as String,
      status: json['status'] as String,
      failureReason: json['failureReason'] as String,
      metadata: json['metadata'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      orderId: json['orderId'] as String,
    );

Map<String, dynamic> _$PaymentObjectDtoToJson(PaymentObjectDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transactionId': instance.transactionId,
      'amount': instance.amount,
      'paymentMethod': instance.paymentMethod,
      'status': instance.status,
      'failureReason': instance.failureReason,
      'metadata': instance.metadata,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'orderId': instance.orderId,
    };

PaymentListResponseDto _$PaymentListResponseDtoFromJson(
  Map<String, dynamic> json,
) => PaymentListResponseDto(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => PaymentObjectDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$PaymentListResponseDtoToJson(
  PaymentListResponseDto instance,
) => <String, dynamic>{'items': instance.items.map((e) => e.toJson()).toList()};

FailedToGetResourceError _$FailedToGetResourceErrorFromJson(
  Map<String, dynamic> json,
) => FailedToGetResourceError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$FailedToGetResourceErrorToJson(
  FailedToGetResourceError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

FailedToSaveResourceError _$FailedToSaveResourceErrorFromJson(
  Map<String, dynamic> json,
) => FailedToSaveResourceError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$FailedToSaveResourceErrorToJson(
  FailedToSaveResourceError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

BadRequestError _$BadRequestErrorFromJson(Map<String, dynamic> json) =>
    BadRequestError(
      message: json['message'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$BadRequestErrorToJson(BadRequestError instance) =>
    <String, dynamic>{'message': instance.message, 'type': instance.type};

UserExistsWithEmailError _$UserExistsWithEmailErrorFromJson(
  Map<String, dynamic> json,
) => UserExistsWithEmailError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$UserExistsWithEmailErrorToJson(
  UserExistsWithEmailError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

UnauthorizedError _$UnauthorizedErrorFromJson(Map<String, dynamic> json) =>
    UnauthorizedError(
      message: json['message'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$UnauthorizedErrorToJson(UnauthorizedError instance) =>
    <String, dynamic>{'message': instance.message, 'type': instance.type};

CronJobLockSetupError _$CronJobLockSetupErrorFromJson(
  Map<String, dynamic> json,
) => CronJobLockSetupError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$CronJobLockSetupErrorToJson(
  CronJobLockSetupError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

FileTypeNotSupportedError _$FileTypeNotSupportedErrorFromJson(
  Map<String, dynamic> json,
) => FileTypeNotSupportedError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$FileTypeNotSupportedErrorToJson(
  FileTypeNotSupportedError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

MediaFileInvalidError _$MediaFileInvalidErrorFromJson(
  Map<String, dynamic> json,
) => MediaFileInvalidError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$MediaFileInvalidErrorToJson(
  MediaFileInvalidError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

MediaFileTypeMetaDataNotFoundError _$MediaFileTypeMetaDataNotFoundErrorFromJson(
  Map<String, dynamic> json,
) => MediaFileTypeMetaDataNotFoundError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$MediaFileTypeMetaDataNotFoundErrorToJson(
  MediaFileTypeMetaDataNotFoundError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

AWSHeadObjectNotFoundError _$AWSHeadObjectNotFoundErrorFromJson(
  Map<String, dynamic> json,
) => AWSHeadObjectNotFoundError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$AWSHeadObjectNotFoundErrorToJson(
  AWSHeadObjectNotFoundError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

ForbiddenError _$ForbiddenErrorFromJson(Map<String, dynamic> json) =>
    ForbiddenError(
      message: json['message'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$ForbiddenErrorToJson(ForbiddenError instance) =>
    <String, dynamic>{'message': instance.message, 'type': instance.type};

InternalServerError _$InternalServerErrorFromJson(Map<String, dynamic> json) =>
    InternalServerError(
      message: json['message'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$InternalServerErrorToJson(
  InternalServerError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

InvalidBoolValidationError _$InvalidBoolValidationErrorFromJson(
  Map<String, dynamic> json,
) => InvalidBoolValidationError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$InvalidBoolValidationErrorToJson(
  InvalidBoolValidationError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

InvalidDateValidationError _$InvalidDateValidationErrorFromJson(
  Map<String, dynamic> json,
) => InvalidDateValidationError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$InvalidDateValidationErrorToJson(
  InvalidDateValidationError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

InvalidDecimalValidationError _$InvalidDecimalValidationErrorFromJson(
  Map<String, dynamic> json,
) => InvalidDecimalValidationError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$InvalidDecimalValidationErrorToJson(
  InvalidDecimalValidationError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

InvalidEmailValidationError _$InvalidEmailValidationErrorFromJson(
  Map<String, dynamic> json,
) => InvalidEmailValidationError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$InvalidEmailValidationErrorToJson(
  InvalidEmailValidationError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

InvalidIntValidationError _$InvalidIntValidationErrorFromJson(
  Map<String, dynamic> json,
) => InvalidIntValidationError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$InvalidIntValidationErrorToJson(
  InvalidIntValidationError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

InvalidNumberValidationError _$InvalidNumberValidationErrorFromJson(
  Map<String, dynamic> json,
) => InvalidNumberValidationError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$InvalidNumberValidationErrorToJson(
  InvalidNumberValidationError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

InvalidEnumValidationError _$InvalidEnumValidationErrorFromJson(
  Map<String, dynamic> json,
) => InvalidEnumValidationError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$InvalidEnumValidationErrorToJson(
  InvalidEnumValidationError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

InvalidStringValidationError _$InvalidStringValidationErrorFromJson(
  Map<String, dynamic> json,
) => InvalidStringValidationError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$InvalidStringValidationErrorToJson(
  InvalidStringValidationError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

PermissionsRequiredError _$PermissionsRequiredErrorFromJson(
  Map<String, dynamic> json,
) => PermissionsRequiredError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$PermissionsRequiredErrorToJson(
  PermissionsRequiredError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

InvalidPermissionNameError _$InvalidPermissionNameErrorFromJson(
  Map<String, dynamic> json,
) => InvalidPermissionNameError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$InvalidPermissionNameErrorToJson(
  InvalidPermissionNameError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

MinStringLengthValidationError _$MinStringLengthValidationErrorFromJson(
  Map<String, dynamic> json,
) => MinStringLengthValidationError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$MinStringLengthValidationErrorToJson(
  MinStringLengthValidationError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

MaxStringLengthValidationError _$MaxStringLengthValidationErrorFromJson(
  Map<String, dynamic> json,
) => MaxStringLengthValidationError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$MaxStringLengthValidationErrorToJson(
  MaxStringLengthValidationError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

InvalidValueValidationError _$InvalidValueValidationErrorFromJson(
  Map<String, dynamic> json,
) => InvalidValueValidationError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$InvalidValueValidationErrorToJson(
  InvalidValueValidationError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

MaxNumberValidationError _$MaxNumberValidationErrorFromJson(
  Map<String, dynamic> json,
) => MaxNumberValidationError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$MaxNumberValidationErrorToJson(
  MaxNumberValidationError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

MinNumberValidationError _$MinNumberValidationErrorFromJson(
  Map<String, dynamic> json,
) => MinNumberValidationError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$MinNumberValidationErrorToJson(
  MinNumberValidationError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

NotMatchingRegexValidationError _$NotMatchingRegexValidationErrorFromJson(
  Map<String, dynamic> json,
) => NotMatchingRegexValidationError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$NotMatchingRegexValidationErrorToJson(
  NotMatchingRegexValidationError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

NotOneOfValuesValidationError _$NotOneOfValuesValidationErrorFromJson(
  Map<String, dynamic> json,
) => NotOneOfValuesValidationError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$NotOneOfValuesValidationErrorToJson(
  NotOneOfValuesValidationError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

ServiceError _$ServiceErrorFromJson(Map<String, dynamic> json) => ServiceError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$ServiceErrorToJson(ServiceError instance) =>
    <String, dynamic>{'message': instance.message, 'type': instance.type};

AuthNotFoundError _$AuthNotFoundErrorFromJson(Map<String, dynamic> json) =>
    AuthNotFoundError(
      message: json['message'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$AuthNotFoundErrorToJson(AuthNotFoundError instance) =>
    <String, dynamic>{'message': instance.message, 'type': instance.type};

RefreshTokenExpiredOrNotActiveError
_$RefreshTokenExpiredOrNotActiveErrorFromJson(Map<String, dynamic> json) =>
    RefreshTokenExpiredOrNotActiveError(
      message: json['message'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$RefreshTokenExpiredOrNotActiveErrorToJson(
  RefreshTokenExpiredOrNotActiveError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

PasswordTokenNotFoundError _$PasswordTokenNotFoundErrorFromJson(
  Map<String, dynamic> json,
) => PasswordTokenNotFoundError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$PasswordTokenNotFoundErrorToJson(
  PasswordTokenNotFoundError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

PasswordTokenExpiredError _$PasswordTokenExpiredErrorFromJson(
  Map<String, dynamic> json,
) => PasswordTokenExpiredError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$PasswordTokenExpiredErrorToJson(
  PasswordTokenExpiredError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

InvalidPasswordError _$InvalidPasswordErrorFromJson(
  Map<String, dynamic> json,
) => InvalidPasswordError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$InvalidPasswordErrorToJson(
  InvalidPasswordError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

RefreshTokenBlockedError _$RefreshTokenBlockedErrorFromJson(
  Map<String, dynamic> json,
) => RefreshTokenBlockedError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$RefreshTokenBlockedErrorToJson(
  RefreshTokenBlockedError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

WrongPasswordError _$WrongPasswordErrorFromJson(Map<String, dynamic> json) =>
    WrongPasswordError(
      message: json['message'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$WrongPasswordErrorToJson(WrongPasswordError instance) =>
    <String, dynamic>{'message': instance.message, 'type': instance.type};

AuthNotActiveError _$AuthNotActiveErrorFromJson(Map<String, dynamic> json) =>
    AuthNotActiveError(
      message: json['message'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$AuthNotActiveErrorToJson(AuthNotActiveError instance) =>
    <String, dynamic>{'message': instance.message, 'type': instance.type};

SameAsOneOfPreviousPasswordsError _$SameAsOneOfPreviousPasswordsErrorFromJson(
  Map<String, dynamic> json,
) => SameAsOneOfPreviousPasswordsError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$SameAsOneOfPreviousPasswordsErrorToJson(
  SameAsOneOfPreviousPasswordsError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

UserNotFoundError _$UserNotFoundErrorFromJson(Map<String, dynamic> json) =>
    UserNotFoundError(
      message: json['message'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$UserNotFoundErrorToJson(UserNotFoundError instance) =>
    <String, dynamic>{'message': instance.message, 'type': instance.type};

InvalidOtpError _$InvalidOtpErrorFromJson(Map<String, dynamic> json) =>
    InvalidOtpError(
      message: json['message'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$InvalidOtpErrorToJson(InvalidOtpError instance) =>
    <String, dynamic>{'message': instance.message, 'type': instance.type};

InvalidPhoneNumberError _$InvalidPhoneNumberErrorFromJson(
  Map<String, dynamic> json,
) => InvalidPhoneNumberError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$InvalidPhoneNumberErrorToJson(
  InvalidPhoneNumberError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

UserNotActiveError _$UserNotActiveErrorFromJson(Map<String, dynamic> json) =>
    UserNotActiveError(
      message: json['message'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$UserNotActiveErrorToJson(UserNotActiveError instance) =>
    <String, dynamic>{'message': instance.message, 'type': instance.type};

CannotDeactivateInvitedUserError _$CannotDeactivateInvitedUserErrorFromJson(
  Map<String, dynamic> json,
) => CannotDeactivateInvitedUserError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$CannotDeactivateInvitedUserErrorToJson(
  CannotDeactivateInvitedUserError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

CannotDeactivateDeactivatedUserError
_$CannotDeactivateDeactivatedUserErrorFromJson(Map<String, dynamic> json) =>
    CannotDeactivateDeactivatedUserError(
      message: json['message'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$CannotDeactivateDeactivatedUserErrorToJson(
  CannotDeactivateDeactivatedUserError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

CannotDeactivateInactiveUserError _$CannotDeactivateInactiveUserErrorFromJson(
  Map<String, dynamic> json,
) => CannotDeactivateInactiveUserError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$CannotDeactivateInactiveUserErrorToJson(
  CannotDeactivateInactiveUserError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

CannotDeactivateRequestedUserError _$CannotDeactivateRequestedUserErrorFromJson(
  Map<String, dynamic> json,
) => CannotDeactivateRequestedUserError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$CannotDeactivateRequestedUserErrorToJson(
  CannotDeactivateRequestedUserError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

CannotReactivateActiveUserError _$CannotReactivateActiveUserErrorFromJson(
  Map<String, dynamic> json,
) => CannotReactivateActiveUserError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$CannotReactivateActiveUserErrorToJson(
  CannotReactivateActiveUserError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

CannotReactivateInactiveUserError _$CannotReactivateInactiveUserErrorFromJson(
  Map<String, dynamic> json,
) => CannotReactivateInactiveUserError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$CannotReactivateInactiveUserErrorToJson(
  CannotReactivateInactiveUserError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

CannotReactivateRequestedUserError _$CannotReactivateRequestedUserErrorFromJson(
  Map<String, dynamic> json,
) => CannotReactivateRequestedUserError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$CannotReactivateRequestedUserErrorToJson(
  CannotReactivateRequestedUserError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

CannotReactivateInvitedUserError _$CannotReactivateInvitedUserErrorFromJson(
  Map<String, dynamic> json,
) => CannotReactivateInvitedUserError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$CannotReactivateInvitedUserErrorToJson(
  CannotReactivateInvitedUserError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

UserIsNotEligibleForInvitationError
_$UserIsNotEligibleForInvitationErrorFromJson(Map<String, dynamic> json) =>
    UserIsNotEligibleForInvitationError(
      message: json['message'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$UserIsNotEligibleForInvitationErrorToJson(
  UserIsNotEligibleForInvitationError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

SystemAdminUserExistsError _$SystemAdminUserExistsErrorFromJson(
  Map<String, dynamic> json,
) => SystemAdminUserExistsError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$SystemAdminUserExistsErrorToJson(
  SystemAdminUserExistsError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

MobileNumberAlreadyExistsError _$MobileNumberAlreadyExistsErrorFromJson(
  Map<String, dynamic> json,
) => MobileNumberAlreadyExistsError(
  message: json['message'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$MobileNumberAlreadyExistsErrorToJson(
  MobileNumberAlreadyExistsError instance,
) => <String, dynamic>{'message': instance.message, 'type': instance.type};

RoleNotFoundError _$RoleNotFoundErrorFromJson(Map<String, dynamic> json) =>
    RoleNotFoundError(
      message: json['message'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$RoleNotFoundErrorToJson(RoleNotFoundError instance) =>
    <String, dynamic>{'message': instance.message, 'type': instance.type};

RoleNotActiveError _$RoleNotActiveErrorFromJson(Map<String, dynamic> json) =>
    RoleNotActiveError(
      message: json['message'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$RoleNotActiveErrorToJson(RoleNotActiveError instance) =>
    <String, dynamic>{'message': instance.message, 'type': instance.type};
