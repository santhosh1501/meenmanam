// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ApiClient extends ApiClient {
  _$ApiClient([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ApiClient;

  @override
  Future<Response<SignInResponse>> _v1AuthSignInPost({
    required SignInDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/auth/signIn');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<SignInResponse, SignInResponse>($request);
  }

  @override
  Future<Response<SignInResponse>> _v1UserSignUpPost({
    required CreateUserReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/user/signUp');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<SignInResponse, SignInResponse>($request);
  }

  @override
  Future<Response<DeleteUserResponseDto>> _v1UserDeleteUserUserIdPatch({
    required String? userId,
  }) {
    final Uri $url = Uri.parse('/v1/user/deleteUser/${userId}');
    final Request $request = Request('PATCH', $url, client.baseUrl);
    return client.send<DeleteUserResponseDto, DeleteUserResponseDto>($request);
  }

  @override
  Future<Response<UserListResponseDto>> _v1UserUserListGet({
    required num? page,
    required num? limit,
  }) {
    final Uri $url = Uri.parse('/v1/user/userList');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'limit': limit,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<UserListResponseDto, UserListResponseDto>($request);
  }

  @override
  Future<Response<UserListResponseDto>> _v1UserUserDetailsUserIdGet({
    required String? userId,
  }) {
    final Uri $url = Uri.parse('/v1/user/userDetails/${userId}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<UserListResponseDto, UserListResponseDto>($request);
  }

  @override
  Future<Response<CreateOtpResponseDto>> _v1OtpCreatePost({
    required CreateOtpReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/otp/create');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<CreateOtpResponseDto, CreateOtpResponseDto>($request);
  }

  @override
  Future<Response<VerifyOtpByMobileResponseDto>> _v1OtpVerifyPost({
    required VerifyOtpByMobileReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/otp/verify');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<VerifyOtpByMobileResponseDto, VerifyOtpByMobileResponseDto>(
          $request,
        );
  }

  @override
  Future<Response<DeleteOtpResponseDto>> _v1OtpDeleteDelete({
    required DeleteOtpReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/otp/delete');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<DeleteOtpResponseDto, DeleteOtpResponseDto>($request);
  }

  @override
  Future<Response<CreateAddressResponseDto>> _v1AddressCreatePost({
    required CreateAddressReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/address/create');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<CreateAddressResponseDto, CreateAddressResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<UpdateAddressResponseDto>> _v1AddressUpdatePatch({
    required UpdateAddressReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/address/update');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UpdateAddressResponseDto, UpdateAddressResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<DeleteAddressResponseDto>> _v1AddressDeleteDelete({
    required DeleteAddressReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/address/delete');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<DeleteAddressResponseDto, DeleteAddressResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<AddressListResponseDto>> _v1AddressListPost({
    required GetAddressesByUserReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/address/list');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AddressListResponseDto, AddressListResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<CategoryListResponseDto>> _v1CategoryCategoryListGet() {
    final Uri $url = Uri.parse('/v1/category/categoryList');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<CategoryListResponseDto, CategoryListResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<AddCategoryResponse>> _v1CategoryAddCategoryPost({
    required AddCategoryReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/category/addCategory');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AddCategoryResponse, AddCategoryResponse>($request);
  }

  @override
  Future<Response<SubCategoryObjectResponseDto>>
  _v1SubCategoryAddSubCategoryPost({required AddSubCategoryReqDto? body}) {
    final Uri $url = Uri.parse('/v1/subCategory/addSubCategory');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<SubCategoryObjectResponseDto, SubCategoryObjectResponseDto>(
          $request,
        );
  }

  @override
  Future<Response<SubCategoryListResponseDto>>
  _v1SubCategorySubCategoryListGet() {
    final Uri $url = Uri.parse('/v1/subCategory/subCategoryList');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<SubCategoryListResponseDto, SubCategoryListResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<AddProductResponse>> _v1ProductAddProductPost({
    required AddProductReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/product/addProduct');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AddProductResponse, AddProductResponse>($request);
  }

  @override
  Future<Response<AllProductResponse>> _v1ProductProductListGet({
    required num? page,
    required num? limit,
  }) {
    final Uri $url = Uri.parse('/v1/product/productList');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'limit': limit,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AllProductResponse, AllProductResponse>($request);
  }

  @override
  Future<Response<CreateProductSkuResponseDto>> _v1ProductskuCreatePost({
    required CreateProductSkuReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/productsku/create');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<CreateProductSkuResponseDto, CreateProductSkuResponseDto>(
          $request,
        );
  }

  @override
  Future<Response<UpdateProductSkuResponseDto>> _v1ProductskuUpdatePatch({
    required UpdateProductSkuReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/productsku/update');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<UpdateProductSkuResponseDto, UpdateProductSkuResponseDto>(
          $request,
        );
  }

  @override
  Future<Response<DeleteProductSkuResponseDto>> _v1ProductskuDeleteDelete({
    required DeleteProductSkuReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/productsku/delete');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<DeleteProductSkuResponseDto, DeleteProductSkuResponseDto>(
          $request,
        );
  }

  @override
  Future<Response<ProductSkuListResponseDto>>
  _v1ProductskuProductIdProductIdGet({
    required String? productId,
    required GetProductSkusByProductReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/productsku/productId/${productId}');
    final $body = body;
    final Request $request = Request('GET', $url, client.baseUrl, body: $body);
    return client.send<ProductSkuListResponseDto, ProductSkuListResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<ProductSkuListResponseDto>> _v1ProductskuListPost({
    required GetProductSkusByProductReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/productsku/list');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ProductSkuListResponseDto, ProductSkuListResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<CreateFavouriteResponseDto>> _v1FavouriteAddPost({
    required CreateFavouriteReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/favourite/add');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<CreateFavouriteResponseDto, CreateFavouriteResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<DeleteFavouriteResponseDto>>
  _v1FavouriteRemoveFavouriteIdDelete({required String? favouriteId}) {
    final Uri $url = Uri.parse('/v1/favourite/remove/${favouriteId}');
    final Request $request = Request('DELETE', $url, client.baseUrl);
    return client.send<DeleteFavouriteResponseDto, DeleteFavouriteResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<FavouriteListResponseDto>> _v1FavouriteListUserIdGet({
    required String? userId,
    required num? page,
    required num? limit,
  }) {
    final Uri $url = Uri.parse('/v1/favourite/list/${userId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'limit': limit,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<FavouriteListResponseDto, FavouriteListResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<CreateCartResponseDto>> _v1CartCreatePost({
    required CreateCartReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/cart/create');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<CreateCartResponseDto, CreateCartResponseDto>($request);
  }

  @override
  Future<Response<AddCartItemResponseDto>> _v1CartAddItemPost({
    required AddCartItemReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/cart/add-item');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AddCartItemResponseDto, AddCartItemResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<RemoveCartItemResponseDto>> _v1CartRemoveItemDelete({
    required RemoveCartItemReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/cart/remove-item');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<RemoveCartItemResponseDto, RemoveCartItemResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<UpdateCartItemResponseDto>> _v1CartUpdateItemPatch({
    required UpdateCartItemReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/cart/update-item');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UpdateCartItemResponseDto, UpdateCartItemResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<CartDetailsResponseDto>> _v1CartUserIdGet({
    required String? userId,
  }) {
    final Uri $url = Uri.parse('/v1/cart/${userId}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<CartDetailsResponseDto, CartDetailsResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<AddSubCartItemResponseDto>> _v1SubcartAddItemPost({
    required AddSubCartItemReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/subcart/addItem');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AddSubCartItemResponseDto, AddSubCartItemResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<RemoveSubCartItemResponseDto>> _v1SubcartRemoveItemDelete({
    required RemoveSubCartItemReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/subcart/removeItem');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<RemoveSubCartItemResponseDto, RemoveSubCartItemResponseDto>(
          $request,
        );
  }

  @override
  Future<Response<UpdateSubCartItemResponseDto>> _v1SubcartUpdateItemPatch({
    required UpdateSubCartItemReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/subcart/updateItem');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<UpdateSubCartItemResponseDto, UpdateSubCartItemResponseDto>(
          $request,
        );
  }

  @override
  Future<Response<SubCartItemsListResponseDto>> _v1SubcartListItemsPost({
    required GetSubCartItemsByCartReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/subcart/listItems');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<SubCartItemsListResponseDto, SubCartItemsListResponseDto>(
          $request,
        );
  }

  @override
  Future<Response<CreateOrderResponseDto>> _v1OrderCreatePost({
    required CreateOrderReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/order/create');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<CreateOrderResponseDto, CreateOrderResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<AddOrderItemResponseDto>> _v1OrderAddItemPost({
    required AddOrderItemReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/order/add-item');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AddOrderItemResponseDto, AddOrderItemResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<RemoveOrderItemResponseDto>> _v1OrderRemoveItemDelete({
    required RemoveOrderItemReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/order/remove-item');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<RemoveOrderItemResponseDto, RemoveOrderItemResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<UpdateOrderItemResponseDto>> _v1OrderUpdateItemPatch({
    required UpdateOrderItemReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/order/update-item');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UpdateOrderItemResponseDto, UpdateOrderItemResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<OrderListResponseDto>> _v1OrderListPost({
    required GetOrdersByUserReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/order/list');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<OrderListResponseDto, OrderListResponseDto>($request);
  }

  @override
  Future<Response<OrderDetailsResponseDto>> _v1OrderOrderIdGet({
    required String? orderId,
  }) {
    final Uri $url = Uri.parse('/v1/order/${orderId}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<OrderDetailsResponseDto, OrderDetailsResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<CreateOrderItemResponseDto>> _v1OrderitemCreatePost({
    required CreateOrderItemReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/orderitem/create');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<CreateOrderItemResponseDto, CreateOrderItemResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<UpdateOrderItemResponseDto>> _v1OrderitemUpdatePatch({
    required UpdateOrderItemReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/orderitem/update');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UpdateOrderItemResponseDto, UpdateOrderItemResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<DeleteOrderItemResponseDto>> _v1OrderitemDeleteDelete({
    required DeleteOrderItemReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/orderitem/delete');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<DeleteOrderItemResponseDto, DeleteOrderItemResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<OrderItemListResponseDto>> _v1OrderitemListPost({
    required GetOrderItemsByOrderReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/orderitem/list');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<OrderItemListResponseDto, OrderItemListResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<CreatePaymentResponseDto>> _v1PaymentCreatePost({
    required CreatePaymentReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/payment/create');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<CreatePaymentResponseDto, CreatePaymentResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<UpdatePaymentResponseDto>> _v1PaymentUpdatePatch({
    required UpdatePaymentReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/payment/update');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UpdatePaymentResponseDto, UpdatePaymentResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<DeletePaymentResponseDto>> _v1PaymentDeleteDelete({
    required DeletePaymentReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/payment/delete');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<DeletePaymentResponseDto, DeletePaymentResponseDto>(
      $request,
    );
  }

  @override
  Future<Response<PaymentListResponseDto>> _v1PaymentListPost({
    required GetPaymentsByOrderReqDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/payment/list');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<PaymentListResponseDto, PaymentListResponseDto>(
      $request,
    );
  }
}
