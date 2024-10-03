import 'package:flutter/material.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:flutter/foundation.dart';

class GeneralCategoryController extends GetxController {
  final PocketBaseManager _pocketBaseManager;

  GeneralCategoryController()
      : _pocketBaseManager =
  PocketBaseManager(url: 'https://saater.liara.run', lang: 'en-US');

  PocketBase get pb => _pocketBaseManager.client;

  List<OrderBuyProduct> orderBuyProducts = [];

  Future<List<OrderBuyProduct>> fetch_order_buy_product() async {
    orderBuyProducts.clear();

    print('///////////////////');
    int page = 1;
    try {
      while (true) {
        final resultList = await pb.collection('order_buy_product').getList(
          page: page,
          perPage: 50,
          expand: 'supplier,buy_product,buy_product.sn_buy_product_login',
        );

        if (resultList.items.isEmpty) {
          break;
        }

        List<OrderBuyProduct> fetchedOrderBuyProducts = [];

        for (var record in resultList.items) {
          var recordData = record.toJson() as Map<String, dynamic>;

          // چاپ داده‌های خام
          print('Record Data: $recordData');

          List<BuyProduct> buyProductstoclass = [];
          var buyProductsData = recordData['expand']?['buy_product'];

          if (buyProductsData is List) {
            buyProductstoclass = buyProductsData.map((productJson) {
              List<login_buy_product_SN> snBuyProductLogin = [];
              var snData = productJson['expand']?['sn_buy_product_login'];

              if (snData is List) {
                snBuyProductLogin = snData
                    .map((snJson) => login_buy_product_SN.fromJson(snJson))
                    .toList();
              }

              return BuyProduct.fromJson(
                Map<String, dynamic>.from(productJson),
                snBuyProductLogin,
              );
            }).toList();
          }

          var supplierData = recordData['expand']?['supplier'] ?? {};

          OrderBuyProduct orderBuyProduct = OrderBuyProduct(
            companyname: supplierData['companyname']?.toString() ?? '',
            phonenumber: supplierData['phonenumber']?.toString() ?? '',
            mobilenumber: supplierData['mobilenumber']?.toString() ?? '',
            address: supplierData['address']?.toString() ?? '',
            location: supplierData['location']?.toString() ?? '',
            buy_product: buyProductstoclass,
            id: recordData['id']?.toString() ?? '',
            pricefactor: recordData['pricefactor']?.toString() ?? '',
          );

          fetchedOrderBuyProducts.add(orderBuyProduct);
        }

        orderBuyProducts.addAll(fetchedOrderBuyProducts);
        page++;
      }
      update(['updatebuyproduct']);
    } catch (error) {
      print('Error fetching order buy products: $error');
    }

    return orderBuyProducts;
  }

  // var buyProducts = <BuyProduct>[];
  //
  // Future<void> fetchBuyProductsById(String id) async {
  //   try {
  //     // گرفتن لیست کامل از جدول name_product_category
  //     final resultList =
  //     await pb.collection('name_product_category').getFullList(
  //       filter: 'id = "$id"',
  //       expand:
  //       'buy_product.sn_buy_product_login', // مشخص کردن جداول مورد نظر در expand
  //     );
  //
  //     print("Result List: ${resultList.map((r) => r.toJson()).toList()}");
  //
  //     for (var record in resultList) {
  //       // تبدیل داده‌های رکورد به Map
  //       var recordData = record.toJson() as Map<String, dynamic>;
  //       print("Record Data: $recordData");
  //
  //       // پردازش داده‌های SN_BUY_PRODUCT_LOGIN
  //       var buyProductData = recordData['expand']?['buy_product'] as List?;
  //       print("Buy Product Data: $buyProductData");
  //
  //       List<BuyProduct> buyProducts = [];
  //
  //       if (buyProductData != null) {
  //         for (var buyProductJson in buyProductData) {
  //           var snBuyProductLoginData =
  //           buyProductJson['expand']?['sn_buy_product_login'];
  //           print(
  //               "SN_BUY_PRODUCT_LOGIN Data for product ${buyProductJson['id']}: $snBuyProductLoginData");
  //
  //           List<login_buy_product_SN> snBuyProductLogins = [];
  //
  //           if (snBuyProductLoginData is List) {
  //             snBuyProductLogins =
  //                 snBuyProductLoginData.map((loginBuyProductJson) {
  //                   return login_buy_product_SN
  //                       .fromJson(Map<String, dynamic>.from(loginBuyProductJson));
  //                 }).toList();
  //           }
  //
  //           // ایجاد یک شیء BuyProduct
  //           BuyProduct product = BuyProduct.fromJson(
  //             Map<String, dynamic>.from(buyProductJson),
  //             snBuyProductLogins,
  //           );
  //
  //           // لاگ‌گذاری اطلاعات محصول
  //           print("Product Title: ${product.title}");
  //           print(
  //               "Number of SN_BUY_PRODUCT_LOGIN: ${product.snBuyProductLogin.length}");
  //
  //           // اضافه کردن به لیست محصولات
  //           buyProducts.add(product);
  //         }
  //       }
  //
  //       // ذخیره محصولات در متغیر buyProducts
  //       this.buyProducts = buyProducts;
  //       print("Total Products: ${this.buyProducts.length}");
  //
  //       update(['productbuy']);
  //     }
  //   } catch (e) {
  //     print("Error fetching data: $e");
  //   }
  // }
  BuyProduct? product;
  bool isLoading = true;

  Future<void> fetchBuyProductsById(String id) async {
    //  update(); // به‌روزرسانی ویو

    try {
      final resultList = await pb.collection('buy_product').getFullList(
        filter: 'id = "$id"',
        expand: 'sn_buy_product_login',
      );

      if (resultList.isEmpty) {
        product = null;
      } else {
        var record = resultList.first;
        var recordData = record.toJson() as Map<String, dynamic>;

        var snBuyProductLoginData =
        recordData['expand']?['sn_buy_product_login'];
        List<login_buy_product_SN> snBuyProductLogins = [];

        if (snBuyProductLoginData is List) {
          snBuyProductLogins = snBuyProductLoginData.map((loginBuyProductJson) {
            return login_buy_product_SN
                .fromJson(Map<String, dynamic>.from(loginBuyProductJson));
          }).toList();
        }

        product = BuyProduct.fromJson(recordData, snBuyProductLogins);
      }
    } catch (e) {
      print("Error fetching data: $e");
      product = null;
    }

    isLoading = false;
    update(['updatebuyproduct']); // به‌روزرسانی ویو پس از دریافت اطلاعات
  }

  Future<void> addProductToBuyProductByGaranty({
    required String title,
    required String sn,
    required String buy_product,
    required String name_product_category,
  }) async {
    isLoading = true;
    try {
      final productRecord = await pb
          .collection('name_product_category')
          .getOne(name_product_category);

      String currentNumberStr =
          productRecord.data['number'].toString() ?? "0"; // تبدیل به رشته
      int Number_mojodi = int.tryParse(currentNumberStr) ?? 0;
      print('Current number in name_product_category: $Number_mojodi');

      int update_Number_mojodi = Number_mojodi++;




      // دریافت تاریخ شمسی
      Jalali jalaliDate = Jalali.now();
      print('تاریخ شمسی: ${jalaliDate.year}/${jalaliDate.month}/${jalaliDate.day}');

      // دریافت زمان (ساعت، دقیقه، ثانیه) جاری
      DateTime now = DateTime.now();
      String hour = now.hour.toString().padLeft(2, '0');
      String minute = now.minute.toString().padLeft(2, '0');
      String second = now.second.toString().padLeft(2, '0');
      String time = '$hour:$minute:$second';
      print('زمان جاری: $time');

      // تبدیل تاریخ شمسی به میلادی
      Gregorian gregorianDate = jalaliDate.toGregorian();
      print('تاریخ میلادی: ${gregorianDate.year}/${gregorianDate.month}/${gregorianDate.day}');



      final record = await pb.collection('login_buy_product_sn').create(
        body: {
          "title": title,
          "login_exit": 'ورود',
          "login": true,
          "sn": sn,
          "date_sh": '${jalaliDate.year}/${jalaliDate.month}/${jalaliDate.day} : ${time}',
          "date_ad": '${gregorianDate.year}/${gregorianDate.month}/${gregorianDate.day} : ${time}',
          "inventory": Number_mojodi,
          "Number_of_inventory": 1,
          "number_now": update_Number_mojodi,
          "buy_product": buy_product,
          "name_product_category": name_product_category,

          // "name": '${user!.name}',
          //  "family": '${user!.family}',
        },
      );

      await pb
          .collection('name_product_category')
          .update(name_product_category, body: {
        "number": Number_mojodi, // تبدیل عدد به رشته
      });

      final productRecords =
      await pb.collection('buy_product').getOne(buy_product);
      List<dynamic> existingBuyProductCategory =
          productRecords.data['sn_buy_product_login'] ?? [];
      existingBuyProductCategory.add(record.id);

      final body = <String, dynamic>{
        "sn_buy_product_login": existingBuyProductCategory,
      };
      await pb.collection('buy_product').update(buy_product, body: body);

      //  fetch_order_buy_product();
      //  update(['dialogupdate']);
      // update(['updatebuyproduct']);
      await fetchBuyProductsById(buy_product);
      print('Product added successfully: ${productRecords.id}');
    } catch (error) {
      print('Error adding product: $error');
    }
  }

  Future<void> deleteBuyId_BuyProdut(
      {required String idproductSN,
        required String name_product_category,
        required String productid}) async {
    isLoading = true;
    try {
      final productRecord = await pb
          .collection('name_product_category')
          .getOne(name_product_category);
      String currentNumberStr =
          productRecord.data['number'].toString() ?? "0"; // تبدیل به رشته
      int currentNumber = int.tryParse(currentNumberStr) ?? 0;
      int updatedNumber = currentNumber - 1;

      final body = <String, dynamic>{
        "number": updatedNumber,
      };
      await pb
          .collection('name_product_category')
          .update(name_product_category, body: body);

      await pb.collection('login_buy_product_sn').delete(idproductSN);
      Get.snackbar(' موفق', 'سفارش شما با موفقیت حذف شد.',
          backgroundColor: Colors.green);
      // fetch_order_buy_product(); // Refresh the list after update
      //   update(['dialogupdate']);
      // update(['updatebuyproduct']);
      await fetchBuyProductsById(productid);
    } catch (e) {
      print('Error updating category: $e');
    }
  }
}

class OrderBuyProduct {
  final String id;
  final String companyname;
  final String phonenumber;
  final String mobilenumber;
  final String address;
  final String location;
  final String pricefactor;
  final List<BuyProduct> buy_product;

  OrderBuyProduct({
    required this.companyname,
    required this.id,
    required this.phonenumber,
    required this.mobilenumber,
    required this.address,
    required this.location,
    required this.buy_product,
    required this.pricefactor,
  });

  factory OrderBuyProduct.fromJson(
      Map<String, dynamic> json, List<BuyProduct> buy_product) {
    return OrderBuyProduct(
      id: json['id'].toString(),
      companyname: json['companyname'].toString(),
      pricefactor: json['pricefactor'].toString(),
      phonenumber: json['phonenumber'].toString(),
      // تغییر نام کلید به titlefa
      mobilenumber: json['mobilenumber'].toString(),
      // تغییر نام کلید به titlefa
      address: json['address'].toString(),
      // تغییر نام کلید به titlefa
      location: json['location'].toString(),
      // تغییر نام کلید به titlefa
      buy_product: buy_product,
    );
  }

  @override
  String toString() {
    return 'GeneralCategory(id: $companyname, titleFa: $phonenumber, productCategories: ${buy_product.length})';
  }
}

class BuyProduct {
  final String id;
  final String title;
  final String number;
  final String purchaseprice;
  final String saleprice;
  final String name_product_category;
  final List<login_buy_product_SN> snBuyProductLogin; // لیست ساب‌آیتم‌ها
  BuyProduct(
      {required this.id,
        required this.title,
        required this.snBuyProductLogin,
        required this.number,
        required this.purchaseprice,
        required this.saleprice,
        required this.name_product_category});

  // فرض کنید یک متد برای ایجاد یک شیء از JSON دارید
  factory BuyProduct.fromJson(Map<String, dynamic> json,
      List<login_buy_product_SN> login_buy_product_SN) {
    return BuyProduct(
      id: json['id'],
      title: json['title'],
      number: json['number'],
      purchaseprice: json['purchaseprice'],
      saleprice: json['saleprice'],
      snBuyProductLogin: login_buy_product_SN,
      name_product_category: json['name_product_category'],
    );
  }
}

class login_buy_product_SN {
  final String id;
  final String sn;
  final String title;
  final String buy_product;
  final String name_product_category;
  final String inventory;
  final String Number_of_inventory;
  final String number_now;

  login_buy_product_SN({
    required this.id,
    required this.sn,
    required this.title,
    required this.buy_product,
    required this.name_product_category,
    required this.inventory,
    required this.Number_of_inventory,
    required this.number_now,
  });

  // فرض کنید یک متد برای ایجاد یک شیء از JSON دارید
  factory login_buy_product_SN.fromJson(Map<String, dynamic> json) {
    return login_buy_product_SN(
      id: json['id'],
      sn: json['sn'],
      title: json['title'],
      buy_product: json['buy_product'],
      name_product_category: json['name_product_category'],
      inventory: json['inventory'],
      Number_of_inventory: json['Number_of_inventory'],
      number_now: json['number_now'],
    );
  }
}

Client getClient() {
  return Client();
}

class PocketBaseManager {
  static final PocketBaseManager _instance = PocketBaseManager._internal();
  late PocketBase _pb; // استفاده از late برای متغیر
  bool _isInitialized = false; // پرچم برای بررسی اینیشیالیزیشن

  factory PocketBaseManager({required String url, required String lang}) {
    if (!_instance._isInitialized) {
      _instance._pb = PocketBase(
        url,
        lang: lang,
        httpClientFactory: kIsWeb ? () => getClient() : null,
      );
      _instance._isInitialized = true; // تنظیم پرچم به true
    }
    return _instance;
  }

  PocketBaseManager._internal();

  PocketBase get client => _pb; // دسترسی به نمونه PocketBase
}
