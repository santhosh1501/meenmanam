// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:collection/collection.dart';
import 'dart:convert';

import 'swagger.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
export 'swagger.models.swagger.dart';

part 'swagger.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Swagger extends ChopperService {
  static Swagger create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$Swagger(client);
    }

    final newClient = ChopperClient(
      services: [_$Swagger()],
      converter: converter ?? $JsonSerializableConverter(),
      interceptors: interceptors ?? [],
      client: httpClient,
      authenticator: authenticator,
      errorConverter: errorConverter,
      baseUrl: baseUrl ?? Uri.parse('http://'),
    );
    return _$Swagger(newClient);
  }

  ///
  Future<chopper.Response<SignInResponse>> v1AuthSignInPost({
    required SignInDto? body,
  }) {
    generatedMapping.putIfAbsent(
      SignInResponse,
      () => SignInResponse.fromJsonFactory,
    );

    return _v1AuthSignInPost(body: body);
  }

  ///
  @POST(path: '/v1/auth/signIn', optionalBody: true)
  Future<chopper.Response<SignInResponse>> _v1AuthSignInPost({
    @Body() required SignInDto? body,
  });

  ///
  Future<chopper.Response<SignInResponse>> v1UserSignUpPost({
    required CreateUserReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      SignInResponse,
      () => SignInResponse.fromJsonFactory,
    );

    return _v1UserSignUpPost(body: body);
  }

  ///
  @POST(path: '/v1/user/signUp', optionalBody: true)
  Future<chopper.Response<SignInResponse>> _v1UserSignUpPost({
    @Body() required CreateUserReqDto? body,
  });

  ///
  ///@param userId
  Future<chopper.Response<DeleteUserResponseDto>> v1UserDeleteUserUserIdPatch({
    required String? userId,
  }) {
    generatedMapping.putIfAbsent(
      DeleteUserResponseDto,
      () => DeleteUserResponseDto.fromJsonFactory,
    );

    return _v1UserDeleteUserUserIdPatch(userId: userId);
  }

  ///
  ///@param userId
  @PATCH(path: '/v1/user/deleteUser/{userId}', optionalBody: true)
  Future<chopper.Response<DeleteUserResponseDto>> _v1UserDeleteUserUserIdPatch({
    @Path('userId') required String? userId,
  });

  ///
  ///@param page
  ///@param limit
  Future<chopper.Response<UserListResponseDto>> v1UserUserListGet({
    required num? page,
    required num? limit,
  }) {
    generatedMapping.putIfAbsent(
      UserListResponseDto,
      () => UserListResponseDto.fromJsonFactory,
    );

    return _v1UserUserListGet(page: page, limit: limit);
  }

  ///
  ///@param page
  ///@param limit
  @GET(path: '/v1/user/userList')
  Future<chopper.Response<UserListResponseDto>> _v1UserUserListGet({
    @Query('page') required num? page,
    @Query('limit') required num? limit,
  });

  ///
  ///@param userId
  Future<chopper.Response<UserListResponseDto>> v1UserUserDetailsUserIdGet({
    required String? userId,
  }) {
    generatedMapping.putIfAbsent(
      UserListResponseDto,
      () => UserListResponseDto.fromJsonFactory,
    );

    return _v1UserUserDetailsUserIdGet(userId: userId);
  }

  ///
  ///@param userId
  @GET(path: '/v1/user/userDetails/{userId}')
  Future<chopper.Response<UserListResponseDto>> _v1UserUserDetailsUserIdGet({
    @Path('userId') required String? userId,
  });

  ///
  Future<chopper.Response<CreateOtpResponseDto>> v1OtpCreatePost({
    required CreateOtpReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      CreateOtpResponseDto,
      () => CreateOtpResponseDto.fromJsonFactory,
    );

    return _v1OtpCreatePost(body: body);
  }

  ///
  @POST(path: '/v1/otp/create', optionalBody: true)
  Future<chopper.Response<CreateOtpResponseDto>> _v1OtpCreatePost({
    @Body() required CreateOtpReqDto? body,
  });

  ///
  Future<chopper.Response<VerifyOtpByMobileResponseDto>> v1OtpVerifyPost({
    required VerifyOtpByMobileReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      VerifyOtpByMobileResponseDto,
      () => VerifyOtpByMobileResponseDto.fromJsonFactory,
    );

    return _v1OtpVerifyPost(body: body);
  }

  ///
  @POST(path: '/v1/otp/verify', optionalBody: true)
  Future<chopper.Response<VerifyOtpByMobileResponseDto>> _v1OtpVerifyPost({
    @Body() required VerifyOtpByMobileReqDto? body,
  });

  ///
  Future<chopper.Response<DeleteOtpResponseDto>> v1OtpDeleteDelete({
    required DeleteOtpReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      DeleteOtpResponseDto,
      () => DeleteOtpResponseDto.fromJsonFactory,
    );

    return _v1OtpDeleteDelete(body: body);
  }

  ///
  @DELETE(path: '/v1/otp/delete')
  Future<chopper.Response<DeleteOtpResponseDto>> _v1OtpDeleteDelete({
    @Body() required DeleteOtpReqDto? body,
  });

  ///
  Future<chopper.Response<CreateAddressResponseDto>> v1AddressCreatePost({
    required CreateAddressReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      CreateAddressResponseDto,
      () => CreateAddressResponseDto.fromJsonFactory,
    );

    return _v1AddressCreatePost(body: body);
  }

  ///
  @POST(path: '/v1/address/create', optionalBody: true)
  Future<chopper.Response<CreateAddressResponseDto>> _v1AddressCreatePost({
    @Body() required CreateAddressReqDto? body,
  });

  ///
  Future<chopper.Response<UpdateAddressResponseDto>> v1AddressUpdatePatch({
    required UpdateAddressReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      UpdateAddressResponseDto,
      () => UpdateAddressResponseDto.fromJsonFactory,
    );

    return _v1AddressUpdatePatch(body: body);
  }

  ///
  @PATCH(path: '/v1/address/update', optionalBody: true)
  Future<chopper.Response<UpdateAddressResponseDto>> _v1AddressUpdatePatch({
    @Body() required UpdateAddressReqDto? body,
  });

  ///
  Future<chopper.Response<DeleteAddressResponseDto>> v1AddressDeleteDelete({
    required DeleteAddressReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      DeleteAddressResponseDto,
      () => DeleteAddressResponseDto.fromJsonFactory,
    );

    return _v1AddressDeleteDelete(body: body);
  }

  ///
  @DELETE(path: '/v1/address/delete')
  Future<chopper.Response<DeleteAddressResponseDto>> _v1AddressDeleteDelete({
    @Body() required DeleteAddressReqDto? body,
  });

  ///
  Future<chopper.Response<AddressListResponseDto>> v1AddressListPost({
    required GetAddressesByUserReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      AddressListResponseDto,
      () => AddressListResponseDto.fromJsonFactory,
    );

    return _v1AddressListPost(body: body);
  }

  ///
  @POST(path: '/v1/address/list', optionalBody: true)
  Future<chopper.Response<AddressListResponseDto>> _v1AddressListPost({
    @Body() required GetAddressesByUserReqDto? body,
  });

  ///
  Future<chopper.Response<CategoryListResponseDto>>
  v1CategoryCategoryListGet() {
    generatedMapping.putIfAbsent(
      CategoryListResponseDto,
      () => CategoryListResponseDto.fromJsonFactory,
    );

    return _v1CategoryCategoryListGet();
  }

  ///
  @GET(path: '/v1/category/categoryList')
  Future<chopper.Response<CategoryListResponseDto>>
  _v1CategoryCategoryListGet();

  ///
  Future<chopper.Response<AddCategoryResponse>> v1CategoryAddCategoryPost({
    required AddCategoryReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      AddCategoryResponse,
      () => AddCategoryResponse.fromJsonFactory,
    );

    return _v1CategoryAddCategoryPost(body: body);
  }

  ///
  @POST(path: '/v1/category/addCategory', optionalBody: true)
  Future<chopper.Response<AddCategoryResponse>> _v1CategoryAddCategoryPost({
    @Body() required AddCategoryReqDto? body,
  });

  ///
  Future<chopper.Response<SubCategoryObjectResponseDto>>
  v1SubCategoryAddSubCategoryPost({required AddSubCategoryReqDto? body}) {
    generatedMapping.putIfAbsent(
      SubCategoryObjectResponseDto,
      () => SubCategoryObjectResponseDto.fromJsonFactory,
    );

    return _v1SubCategoryAddSubCategoryPost(body: body);
  }

  ///
  @POST(path: '/v1/subCategory/addSubCategory', optionalBody: true)
  Future<chopper.Response<SubCategoryObjectResponseDto>>
  _v1SubCategoryAddSubCategoryPost({
    @Body() required AddSubCategoryReqDto? body,
  });

  ///
  Future<chopper.Response<SubCategoryListResponseDto>>
  v1SubCategorySubCategoryListGet() {
    generatedMapping.putIfAbsent(
      SubCategoryListResponseDto,
      () => SubCategoryListResponseDto.fromJsonFactory,
    );

    return _v1SubCategorySubCategoryListGet();
  }

  ///
  @GET(path: '/v1/subCategory/subCategoryList')
  Future<chopper.Response<SubCategoryListResponseDto>>
  _v1SubCategorySubCategoryListGet();

  ///
  Future<chopper.Response<AddProductResponse>> v1ProductAddProductPost({
    required AddProductReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      AddProductResponse,
      () => AddProductResponse.fromJsonFactory,
    );

    return _v1ProductAddProductPost(body: body);
  }

  ///
  @POST(path: '/v1/product/addProduct', optionalBody: true)
  Future<chopper.Response<AddProductResponse>> _v1ProductAddProductPost({
    @Body() required AddProductReqDto? body,
  });

  ///
  ///@param page
  ///@param limit
  Future<chopper.Response<AllProductResponse>> v1ProductProductListGet({
    required num? page,
    required num? limit,
  }) {
    generatedMapping.putIfAbsent(
      AllProductResponse,
      () => AllProductResponse.fromJsonFactory,
    );

    return _v1ProductProductListGet(page: page, limit: limit);
  }

  ///
  ///@param page
  ///@param limit
  @GET(path: '/v1/product/productList')
  Future<chopper.Response<AllProductResponse>> _v1ProductProductListGet({
    @Query('page') required num? page,
    @Query('limit') required num? limit,
  });

  ///
  Future<chopper.Response<CreateProductSkuResponseDto>> v1ProductskuCreatePost({
    required CreateProductSkuReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      CreateProductSkuResponseDto,
      () => CreateProductSkuResponseDto.fromJsonFactory,
    );

    return _v1ProductskuCreatePost(body: body);
  }

  ///
  @POST(path: '/v1/productsku/create', optionalBody: true)
  Future<chopper.Response<CreateProductSkuResponseDto>>
  _v1ProductskuCreatePost({@Body() required CreateProductSkuReqDto? body});

  ///
  Future<chopper.Response<UpdateProductSkuResponseDto>>
  v1ProductskuUpdatePatch({required UpdateProductSkuReqDto? body}) {
    generatedMapping.putIfAbsent(
      UpdateProductSkuResponseDto,
      () => UpdateProductSkuResponseDto.fromJsonFactory,
    );

    return _v1ProductskuUpdatePatch(body: body);
  }

  ///
  @PATCH(path: '/v1/productsku/update', optionalBody: true)
  Future<chopper.Response<UpdateProductSkuResponseDto>>
  _v1ProductskuUpdatePatch({@Body() required UpdateProductSkuReqDto? body});

  ///
  Future<chopper.Response<DeleteProductSkuResponseDto>>
  v1ProductskuDeleteDelete({required DeleteProductSkuReqDto? body}) {
    generatedMapping.putIfAbsent(
      DeleteProductSkuResponseDto,
      () => DeleteProductSkuResponseDto.fromJsonFactory,
    );

    return _v1ProductskuDeleteDelete(body: body);
  }

  ///
  @DELETE(path: '/v1/productsku/delete')
  Future<chopper.Response<DeleteProductSkuResponseDto>>
  _v1ProductskuDeleteDelete({@Body() required DeleteProductSkuReqDto? body});

  ///
  ///@param productId
  Future<chopper.Response<ProductSkuListResponseDto>>
  v1ProductskuProductIdProductIdGet({
    required String? productId,
    required GetProductSkusByProductReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      ProductSkuListResponseDto,
      () => ProductSkuListResponseDto.fromJsonFactory,
    );

    return _v1ProductskuProductIdProductIdGet(productId: productId, body: body);
  }

  ///
  ///@param productId
  @GET(path: '/v1/productsku/productId/{productId}')
  Future<chopper.Response<ProductSkuListResponseDto>>
  _v1ProductskuProductIdProductIdGet({
    @Path('productId') required String? productId,
    @Body() required GetProductSkusByProductReqDto? body,
  });

  ///
  Future<chopper.Response<ProductSkuListResponseDto>> v1ProductskuListPost({
    required GetProductSkusByProductReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      ProductSkuListResponseDto,
      () => ProductSkuListResponseDto.fromJsonFactory,
    );

    return _v1ProductskuListPost(body: body);
  }

  ///
  @POST(path: '/v1/productsku/list', optionalBody: true)
  Future<chopper.Response<ProductSkuListResponseDto>> _v1ProductskuListPost({
    @Body() required GetProductSkusByProductReqDto? body,
  });

  ///
  Future<chopper.Response<CreateFavouriteResponseDto>> v1FavouriteAddPost({
    required CreateFavouriteReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      CreateFavouriteResponseDto,
      () => CreateFavouriteResponseDto.fromJsonFactory,
    );

    return _v1FavouriteAddPost(body: body);
  }

  ///
  @POST(path: '/v1/favourite/add', optionalBody: true)
  Future<chopper.Response<CreateFavouriteResponseDto>> _v1FavouriteAddPost({
    @Body() required CreateFavouriteReqDto? body,
  });

  ///
  ///@param favouriteId
  Future<chopper.Response<DeleteFavouriteResponseDto>>
  v1FavouriteRemoveFavouriteIdDelete({required String? favouriteId}) {
    generatedMapping.putIfAbsent(
      DeleteFavouriteResponseDto,
      () => DeleteFavouriteResponseDto.fromJsonFactory,
    );

    return _v1FavouriteRemoveFavouriteIdDelete(favouriteId: favouriteId);
  }

  ///
  ///@param favouriteId
  @DELETE(path: '/v1/favourite/remove/{favouriteId}')
  Future<chopper.Response<DeleteFavouriteResponseDto>>
  _v1FavouriteRemoveFavouriteIdDelete({
    @Path('favouriteId') required String? favouriteId,
  });

  ///
  ///@param userId
  ///@param page
  ///@param limit
  Future<chopper.Response<FavouriteListResponseDto>> v1FavouriteListUserIdGet({
    required String? userId,
    required num? page,
    required num? limit,
  }) {
    generatedMapping.putIfAbsent(
      FavouriteListResponseDto,
      () => FavouriteListResponseDto.fromJsonFactory,
    );

    return _v1FavouriteListUserIdGet(userId: userId, page: page, limit: limit);
  }

  ///
  ///@param userId
  ///@param page
  ///@param limit
  @GET(path: '/v1/favourite/list/{userId}')
  Future<chopper.Response<FavouriteListResponseDto>> _v1FavouriteListUserIdGet({
    @Path('userId') required String? userId,
    @Query('page') required num? page,
    @Query('limit') required num? limit,
  });

  ///
  Future<chopper.Response<CreateCartResponseDto>> v1CartCreatePost({
    required CreateCartReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      CreateCartResponseDto,
      () => CreateCartResponseDto.fromJsonFactory,
    );

    return _v1CartCreatePost(body: body);
  }

  ///
  @POST(path: '/v1/cart/create', optionalBody: true)
  Future<chopper.Response<CreateCartResponseDto>> _v1CartCreatePost({
    @Body() required CreateCartReqDto? body,
  });

  ///
  Future<chopper.Response<AddCartItemResponseDto>> v1CartAddItemPost({
    required AddCartItemReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      AddCartItemResponseDto,
      () => AddCartItemResponseDto.fromJsonFactory,
    );

    return _v1CartAddItemPost(body: body);
  }

  ///
  @POST(path: '/v1/cart/add-item', optionalBody: true)
  Future<chopper.Response<AddCartItemResponseDto>> _v1CartAddItemPost({
    @Body() required AddCartItemReqDto? body,
  });

  ///
  Future<chopper.Response<RemoveCartItemResponseDto>> v1CartRemoveItemDelete({
    required RemoveCartItemReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      RemoveCartItemResponseDto,
      () => RemoveCartItemResponseDto.fromJsonFactory,
    );

    return _v1CartRemoveItemDelete(body: body);
  }

  ///
  @DELETE(path: '/v1/cart/remove-item')
  Future<chopper.Response<RemoveCartItemResponseDto>> _v1CartRemoveItemDelete({
    @Body() required RemoveCartItemReqDto? body,
  });

  ///
  Future<chopper.Response<UpdateCartItemResponseDto>> v1CartUpdateItemPatch({
    required UpdateCartItemReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      UpdateCartItemResponseDto,
      () => UpdateCartItemResponseDto.fromJsonFactory,
    );

    return _v1CartUpdateItemPatch(body: body);
  }

  ///
  @PATCH(path: '/v1/cart/update-item', optionalBody: true)
  Future<chopper.Response<UpdateCartItemResponseDto>> _v1CartUpdateItemPatch({
    @Body() required UpdateCartItemReqDto? body,
  });

  ///
  ///@param userId
  Future<chopper.Response<CartDetailsResponseDto>> v1CartUserIdGet({
    required String? userId,
  }) {
    generatedMapping.putIfAbsent(
      CartDetailsResponseDto,
      () => CartDetailsResponseDto.fromJsonFactory,
    );

    return _v1CartUserIdGet(userId: userId);
  }

  ///
  ///@param userId
  @GET(path: '/v1/cart/{userId}')
  Future<chopper.Response<CartDetailsResponseDto>> _v1CartUserIdGet({
    @Path('userId') required String? userId,
  });

  ///
  Future<chopper.Response<AddSubCartItemResponseDto>> v1SubcartAddItemPost({
    required AddSubCartItemReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      AddSubCartItemResponseDto,
      () => AddSubCartItemResponseDto.fromJsonFactory,
    );

    return _v1SubcartAddItemPost(body: body);
  }

  ///
  @POST(path: '/v1/subcart/addItem', optionalBody: true)
  Future<chopper.Response<AddSubCartItemResponseDto>> _v1SubcartAddItemPost({
    @Body() required AddSubCartItemReqDto? body,
  });

  ///
  Future<chopper.Response<RemoveSubCartItemResponseDto>>
  v1SubcartRemoveItemDelete({required RemoveSubCartItemReqDto? body}) {
    generatedMapping.putIfAbsent(
      RemoveSubCartItemResponseDto,
      () => RemoveSubCartItemResponseDto.fromJsonFactory,
    );

    return _v1SubcartRemoveItemDelete(body: body);
  }

  ///
  @DELETE(path: '/v1/subcart/removeItem')
  Future<chopper.Response<RemoveSubCartItemResponseDto>>
  _v1SubcartRemoveItemDelete({@Body() required RemoveSubCartItemReqDto? body});

  ///
  Future<chopper.Response<UpdateSubCartItemResponseDto>>
  v1SubcartUpdateItemPatch({required UpdateSubCartItemReqDto? body}) {
    generatedMapping.putIfAbsent(
      UpdateSubCartItemResponseDto,
      () => UpdateSubCartItemResponseDto.fromJsonFactory,
    );

    return _v1SubcartUpdateItemPatch(body: body);
  }

  ///
  @PATCH(path: '/v1/subcart/updateItem', optionalBody: true)
  Future<chopper.Response<UpdateSubCartItemResponseDto>>
  _v1SubcartUpdateItemPatch({@Body() required UpdateSubCartItemReqDto? body});

  ///
  Future<chopper.Response<SubCartItemsListResponseDto>> v1SubcartListItemsPost({
    required GetSubCartItemsByCartReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      SubCartItemsListResponseDto,
      () => SubCartItemsListResponseDto.fromJsonFactory,
    );

    return _v1SubcartListItemsPost(body: body);
  }

  ///
  @POST(path: '/v1/subcart/listItems', optionalBody: true)
  Future<chopper.Response<SubCartItemsListResponseDto>>
  _v1SubcartListItemsPost({@Body() required GetSubCartItemsByCartReqDto? body});

  ///
  Future<chopper.Response<CreateOrderResponseDto>> v1OrderCreatePost({
    required CreateOrderReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      CreateOrderResponseDto,
      () => CreateOrderResponseDto.fromJsonFactory,
    );

    return _v1OrderCreatePost(body: body);
  }

  ///
  @POST(path: '/v1/order/create', optionalBody: true)
  Future<chopper.Response<CreateOrderResponseDto>> _v1OrderCreatePost({
    @Body() required CreateOrderReqDto? body,
  });

  ///
  Future<chopper.Response<AddOrderItemResponseDto>> v1OrderAddItemPost({
    required AddOrderItemReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      AddOrderItemResponseDto,
      () => AddOrderItemResponseDto.fromJsonFactory,
    );

    return _v1OrderAddItemPost(body: body);
  }

  ///
  @POST(path: '/v1/order/add-item', optionalBody: true)
  Future<chopper.Response<AddOrderItemResponseDto>> _v1OrderAddItemPost({
    @Body() required AddOrderItemReqDto? body,
  });

  ///
  Future<chopper.Response<RemoveOrderItemResponseDto>> v1OrderRemoveItemDelete({
    required RemoveOrderItemReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      RemoveOrderItemResponseDto,
      () => RemoveOrderItemResponseDto.fromJsonFactory,
    );

    return _v1OrderRemoveItemDelete(body: body);
  }

  ///
  @DELETE(path: '/v1/order/remove-item')
  Future<chopper.Response<RemoveOrderItemResponseDto>>
  _v1OrderRemoveItemDelete({@Body() required RemoveOrderItemReqDto? body});

  ///
  Future<chopper.Response<UpdateOrderItemResponseDto>> v1OrderUpdateItemPatch({
    required UpdateOrderItemReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      UpdateOrderItemResponseDto,
      () => UpdateOrderItemResponseDto.fromJsonFactory,
    );

    return _v1OrderUpdateItemPatch(body: body);
  }

  ///
  @PATCH(path: '/v1/order/update-item', optionalBody: true)
  Future<chopper.Response<UpdateOrderItemResponseDto>> _v1OrderUpdateItemPatch({
    @Body() required UpdateOrderItemReqDto? body,
  });

  ///
  Future<chopper.Response<OrderListResponseDto>> v1OrderListPost({
    required GetOrdersByUserReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      OrderListResponseDto,
      () => OrderListResponseDto.fromJsonFactory,
    );

    return _v1OrderListPost(body: body);
  }

  ///
  @POST(path: '/v1/order/list', optionalBody: true)
  Future<chopper.Response<OrderListResponseDto>> _v1OrderListPost({
    @Body() required GetOrdersByUserReqDto? body,
  });

  ///
  ///@param orderId
  Future<chopper.Response<OrderDetailsResponseDto>> v1OrderOrderIdGet({
    required String? orderId,
  }) {
    generatedMapping.putIfAbsent(
      OrderDetailsResponseDto,
      () => OrderDetailsResponseDto.fromJsonFactory,
    );

    return _v1OrderOrderIdGet(orderId: orderId);
  }

  ///
  ///@param orderId
  @GET(path: '/v1/order/{orderId}')
  Future<chopper.Response<OrderDetailsResponseDto>> _v1OrderOrderIdGet({
    @Path('orderId') required String? orderId,
  });

  ///
  Future<chopper.Response<CreateOrderItemResponseDto>> v1OrderitemCreatePost({
    required CreateOrderItemReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      CreateOrderItemResponseDto,
      () => CreateOrderItemResponseDto.fromJsonFactory,
    );

    return _v1OrderitemCreatePost(body: body);
  }

  ///
  @POST(path: '/v1/orderitem/create', optionalBody: true)
  Future<chopper.Response<CreateOrderItemResponseDto>> _v1OrderitemCreatePost({
    @Body() required CreateOrderItemReqDto? body,
  });

  ///
  Future<chopper.Response<UpdateOrderItemResponseDto>> v1OrderitemUpdatePatch({
    required UpdateOrderItemReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      UpdateOrderItemResponseDto,
      () => UpdateOrderItemResponseDto.fromJsonFactory,
    );

    return _v1OrderitemUpdatePatch(body: body);
  }

  ///
  @PATCH(path: '/v1/orderitem/update', optionalBody: true)
  Future<chopper.Response<UpdateOrderItemResponseDto>> _v1OrderitemUpdatePatch({
    @Body() required UpdateOrderItemReqDto? body,
  });

  ///
  Future<chopper.Response<DeleteOrderItemResponseDto>> v1OrderitemDeleteDelete({
    required DeleteOrderItemReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      DeleteOrderItemResponseDto,
      () => DeleteOrderItemResponseDto.fromJsonFactory,
    );

    return _v1OrderitemDeleteDelete(body: body);
  }

  ///
  @DELETE(path: '/v1/orderitem/delete')
  Future<chopper.Response<DeleteOrderItemResponseDto>>
  _v1OrderitemDeleteDelete({@Body() required DeleteOrderItemReqDto? body});

  ///
  Future<chopper.Response<OrderItemListResponseDto>> v1OrderitemListPost({
    required GetOrderItemsByOrderReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      OrderItemListResponseDto,
      () => OrderItemListResponseDto.fromJsonFactory,
    );

    return _v1OrderitemListPost(body: body);
  }

  ///
  @POST(path: '/v1/orderitem/list', optionalBody: true)
  Future<chopper.Response<OrderItemListResponseDto>> _v1OrderitemListPost({
    @Body() required GetOrderItemsByOrderReqDto? body,
  });

  ///
  Future<chopper.Response<CreatePaymentResponseDto>> v1PaymentCreatePost({
    required CreatePaymentReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      CreatePaymentResponseDto,
      () => CreatePaymentResponseDto.fromJsonFactory,
    );

    return _v1PaymentCreatePost(body: body);
  }

  ///
  @POST(path: '/v1/payment/create', optionalBody: true)
  Future<chopper.Response<CreatePaymentResponseDto>> _v1PaymentCreatePost({
    @Body() required CreatePaymentReqDto? body,
  });

  ///
  Future<chopper.Response<UpdatePaymentResponseDto>> v1PaymentUpdatePatch({
    required UpdatePaymentReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      UpdatePaymentResponseDto,
      () => UpdatePaymentResponseDto.fromJsonFactory,
    );

    return _v1PaymentUpdatePatch(body: body);
  }

  ///
  @PATCH(path: '/v1/payment/update', optionalBody: true)
  Future<chopper.Response<UpdatePaymentResponseDto>> _v1PaymentUpdatePatch({
    @Body() required UpdatePaymentReqDto? body,
  });

  ///
  Future<chopper.Response<DeletePaymentResponseDto>> v1PaymentDeleteDelete({
    required DeletePaymentReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      DeletePaymentResponseDto,
      () => DeletePaymentResponseDto.fromJsonFactory,
    );

    return _v1PaymentDeleteDelete(body: body);
  }

  ///
  @DELETE(path: '/v1/payment/delete')
  Future<chopper.Response<DeletePaymentResponseDto>> _v1PaymentDeleteDelete({
    @Body() required DeletePaymentReqDto? body,
  });

  ///
  Future<chopper.Response<PaymentListResponseDto>> v1PaymentListPost({
    required GetPaymentsByOrderReqDto? body,
  }) {
    generatedMapping.putIfAbsent(
      PaymentListResponseDto,
      () => PaymentListResponseDto.fromJsonFactory,
    );

    return _v1PaymentListPost(body: body);
  }

  ///
  @POST(path: '/v1/payment/list', optionalBody: true)
  Future<chopper.Response<PaymentListResponseDto>> _v1PaymentListPost({
    @Body() required GetPaymentsByOrderReqDto? body,
  });
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
    chopper.Response response,
  ) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
        body:
            DateTime.parse((response.body as String).replaceAll('"', ''))
                as ResultType,
      );
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
      body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType,
    );
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
