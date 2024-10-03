// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';
//
// // void main() {
// //   runApp(const MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: const QRViewExample(),
// //     );
// //   }
// // }
// //
// // class QRViewExample extends StatefulWidget {
// //   const QRViewExample({Key? key}) : super(key: key);
// //
// //   @override
// //   State<StatefulWidget> createState() => _QRViewExampleState();
// // }
// //
// // class _QRViewExampleState extends State<QRViewExample> {
// //   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
// //   String scannedCode = 'Scan a code';
// //   QRViewController? controller;
// //
// //   @override
// //   void reassemble() {
// //     super.reassemble();
// //     controller?.pauseCamera();
// //     controller?.resumeCamera();
// //   }
// //
// //   Future<void> _requestCameraPermission() async {
// //     var status = await Permission.camera.status;
// //     if (!status.isGranted) {
// //       if (await Permission.camera.request().isGranted) {
// //         // Permission granted
// //       } else {
// //         // Permission denied
// //         ScaffoldMessenger.of(context).showSnackBar(
// //           const SnackBar(content: Text('Camera permission is required to scan QR codes')),
// //         );
// //       }
// //     }
// //   }
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _requestCameraPermission();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('QR Code Scanner'),
// //       ),
// //       body: Column(
// //         children: <Widget>[
// //           Expanded(
// //             flex: 5,
// //             child: QRView(
// //               key: qrKey,
// //               onQRViewCreated: _onQRViewCreated,
// //             ),
// //           ),
// //           Expanded(
// //             flex: 1,
// //             child: Center(
// //               child: Text(scannedCode),
// //             ),
// //           ),
// //           ElevatedButton(
// //             onPressed: () {
// //               _requestCameraPermission().then((_) {
// //                 controller?.resumeCamera();
// //               });
// //             },
// //             child: const Text('Open Camera'),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// //
// //   void _onQRViewCreated(QRViewController controller) {
// //     this.controller = controller;
// //     controller.scannedDataStream.listen((scanData) {
// //       setState(() {
// //         scannedCode = scanData.code ?? 'Unknown';
// //         controller.pauseCamera();
// //       });
// //     });
// //   }
// //
// //   @override
// //   void dispose() {
// //     controller?.dispose();
// //     super.dispose();
// //   }
// // }
//
//
// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';
//
// // void main() {
// //   runApp(const MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: const QRViewExample(),
// //     );
// //   }
// // }
// //
// // class QRViewExample extends StatefulWidget {
// //   const QRViewExample({Key? key}) : super(key: key);
// //
// //   @override
// //   State<StatefulWidget> createState() => _QRViewExampleState();
// // }
// //
// // class _QRViewExampleState extends State<QRViewExample> {
// //   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
// //   String scannedCode = 'Scan a code';
// //   QRViewController? controller;
// //
// //   @override
// //   void reassemble() {
// //     super.reassemble();
// //     controller?.pauseCamera();
// //     controller?.resumeCamera();
// //   }
// //
// //   Future<void> _requestCameraPermission() async {
// //     var status = await Permission.camera.status;
// //     if (!status.isGranted) {
// //       if (await Permission.camera.request().isGranted) {
// //         // Permission granted
// //       } else {
// //         // Permission denied
// //         ScaffoldMessenger.of(context).showSnackBar(
// //           const SnackBar(content: Text('Camera permission is required to scan QR codes')),
// //         );
// //       }
// //     }
// //   }
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _requestCameraPermission();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('QR Code Scanner'),
// //       ),
// //       body: Column(
// //         children: <Widget>[
// //           Expanded(
// //             flex: 5,
// //             child: QRView(
// //               key: qrKey,
// //               onQRViewCreated: _onQRViewCreated,
// //             ),
// //           ),
// //           Expanded(
// //             flex: 1,
// //             child: Center(
// //               child: Text(scannedCode),
// //             ),
// //           ),
// //           ElevatedButton(
// //             onPressed: () {
// //               _requestCameraPermission().then((_) {
// //                 controller?.resumeCamera();
// //               });
// //             },
// //             child: const Text('Open Camera'),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// //
// //   void _onQRViewCreated(QRViewController controller) {
// //     this.controller = controller;
// //     controller.scannedDataStream.listen((scanData) {
// //       setState(() {
// //         scannedCode = scanData.code ?? 'Unknown';
// //         controller.pauseCamera();
// //       });
// //     });
// //   }
// //
// //   @override
// //   void dispose() {
// //     controller?.dispose();
// //     super.dispose();
// //   }
// // }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// //
// // import 'package:flutter/material.dart';
// // import 'package:permission_handler/permission_handler.dart';
// // import 'package:qr_code_scanner/qr_code_scanner.dart';
// //
// // void main() {
// //   runApp(const MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: const QRViewExample(),
// //     );
// //   }
// // }
// //
// // class QRViewExample extends StatefulWidget {
// //   const QRViewExample({Key? key}) : super(key: key);
// //
// //   @override
// //   State<StatefulWidget> createState() => _QRViewExampleState();
// // }
// //
// // class _QRViewExampleState extends State<QRViewExample> {
// //   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
// //   String scannedCode = 'Scan a code';
// //   QRViewController? controller;
// //   bool isFlashOn = false; // متغیر برای ذخیره وضعیت فلش
// //
// //   @override
// //   void reassemble() {
// //     super.reassemble();
// //     controller?.pauseCamera();
// //     controller?.resumeCamera();
// //   }
// //
// //   Future<void> _requestCameraPermission() async {
// //     var status = await Permission.camera.status;
// //     if (!status.isGranted) {
// //       if (await Permission.camera.request().isGranted) {
// //         // Permission granted
// //       } else {
// //         // Permission denied
// //         ScaffoldMessenger.of(context).showSnackBar(
// //           const SnackBar(content: Text('Camera permission is required to scan QR codes')),
// //         );
// //       }
// //     }
// //   }
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _requestCameraPermission();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('QR Code Scanner'),
// //       ),
// //       body: Column(
// //         children: <Widget>[
// //           Expanded(
// //             flex: 5,
// //             child: QRView(
// //               key: qrKey,
// //               onQRViewCreated: _onQRViewCreated,
// //             ),
// //           ),
// //           Expanded(
// //             flex: 1,
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Text(scannedCode),
// //                 const SizedBox(height: 16),
// //                 Row(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: [
// //                     ElevatedButton(
// //                       onPressed: () {
// //                         _requestCameraPermission().then((_) {
// //                           controller?.resumeCamera();
// //                         });
// //                       },
// //                       child: const Text('Open Camera'),
// //                     ),
// //                     const SizedBox(width: 16),
// //                     ElevatedButton(
// //                       onPressed: () async {
// //                         await controller?.toggleFlash();
// //                         setState(() {
// //                           isFlashOn = !isFlashOn; // وضعیت فلش را تغییر می‌دهد
// //                         });
// //                       },
// //                       child: Text(isFlashOn ? 'Turn Flash Off' : 'Turn Flash On'),
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// //
// //   void _onQRViewCreated(QRViewController controller) {
// //     this.controller = controller;
// //     controller.scannedDataStream.listen((scanData) {
// //       setState(() {
// //         scannedCode = scanData.code ?? 'Unknown';
// //         controller.pauseCamera();
// //       });
// //     });
// //   }
// //
// //   @override
// //   void dispose() {
// //     controller?.dispose();
// //     super.dispose();
// //   }
// // }
//
//
// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';
//
// import 'model.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: const OrdersPage(),
//     );
//   }
// }
//
// class OrdersPage extends StatefulWidget {
//   const OrdersPage({Key? key}) : super(key: key);
//
//   @override
//   _OrdersPageState createState() => _OrdersPageState();
// }
//
// class _OrdersPageState extends State<OrdersPage> {
//   List<Order> orders = [
//     Order(orderName: "Order 1", products: [
//       Product(name: "Product A", quantity: 5),
//       Product(name: "Product B", quantity: 3),
//     ]),
//     Order(orderName: "Order 2", products: [
//       Product(name: "Product C", quantity: 4),
//     ]),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Orders')),
//       body: ListView.builder(
//         itemCount: orders.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(orders[index].orderName),
//             onTap: () => _showOrderDialog(orders[index]),
//           );
//         },
//       ),
//     );
//   }
//
//   void _showOrderDialog(Order order) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text(order.orderName),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: order.products.map((product) {
//             return ListTile(
//               title: Text(product.name),
//               subtitle: Text(
//                   'Total: ${product.quantity}, Entered: ${product.enteredQuantity}'),
//               onTap: () => _showProductDialog(product),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
//
//   void _showProductDialog(Product product) {
//     showDialog(
//       context: context,
//       builder: (context) => ProductDialog(product: product),
//     );
//   }
// }
//
//
//
//
//
// class ProductDialog extends StatefulWidget {
//   final Product product;
//
//   const ProductDialog({Key? key, required this.product}) : super(key: key);
//
//   @override
//   _ProductDialogState createState() => _ProductDialogState();
// }
//
// class _ProductDialogState extends State<ProductDialog> {
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//   QRViewController? controller;
//   String scannedCode = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Text('${widget.product.name} - ${widget.product.quantity} items'),
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text('Scanned: ${widget.product.enteredQuantity}'),
//           const SizedBox(height: 16),
//           ElevatedButton(
//             onPressed: _openScanner,
//             child: const Text('Add Scan'),
//           ),
//           const SizedBox(height: 16),
//           Text('Serials: ${widget.product.serials.join(', ')}'),
//         ],
//       ),
//       actions: [
//         if (widget.product.enteredQuantity == widget.product.quantity)
//           ElevatedButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: const Text('Confirm'),
//           ),
//       ],
//     );
//   }
//
//   void _openScanner() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => QRScanner(onScan: (code) {
//         setState(() {
//           widget.product.serials.add(code);
//           widget.product.enteredQuantity += 1;
//         });
//         Navigator.of(context).pop();
//       })),
//     );
//   }
// }
//
// class QRScanner extends StatefulWidget {
//   final Function(String) onScan;
//
//   const QRScanner({Key? key, required this.onScan}) : super(key: key);
//
//   @override
//   _QRScannerState createState() => _QRScannerState();
// }
//
// class _QRScannerState extends State<QRScanner> {
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//   QRViewController? controller;
//
//   @override
//   void reassemble() {
//     super.reassemble();
//     controller?.pauseCamera();
//     controller?.resumeCamera();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('QR Code Scanner')),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             flex: 5,
//             child: QRView(
//               key: qrKey,
//               onQRViewCreated: _onQRViewCreated,
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     controller?.resumeCamera();
//                   },
//                   child: const Text('Retry Scan'),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _onQRViewCreated(QRViewController controller) {
//     this.controller = controller;
//     controller.scannedDataStream.listen((scanData) {
//       controller.pauseCamera();
//       widget.onScan(scanData.code ?? 'Unknown');
//     });
//   }
//
//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
// }




import 'package:barcode_scanner_login_exit/model.dart';
import 'package:barcode_scanner_login_exit/run.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

void main() {
  Get.put(GeneralCategoryController()); // ثبت کنترلر
  final GeneralCategoryController controller =
  Get.find<GeneralCategoryController>();
  controller.fetch_order_buy_product();
  runApp(
    GetMaterialApp(
      home: OrderBuyProductPage(),
    ),
  );
}

class OrderBuyProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('ورود انبار'),
      ),
      body: GetBuilder<GeneralCategoryController>(
        id: 'updatebuyproduct', // شناسه‌ای که در متد update استفاده می‌شود
        //   initState: (state) async => await controller.fetch_order_buy_product(),
        builder: (controller) {
          if (controller.orderBuyProducts.isEmpty) {
            return Center(
              child: Text('هیچ خریدی موجود نیست',style:TextStyle()),
            );
          }





          return ListView.builder(
            itemCount: controller.orderBuyProducts.length,
            itemBuilder: (context, index) {
              final order = controller.orderBuyProducts[index];
              return Card(
                margin: EdgeInsets.all(8.0),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Company Name: ${order.companyname}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text('Phone: ${order.phonenumber}'),
                      Text('Mobile: ${order.mobilenumber}'),
                      Text('Address: ${order.address}'),
                      Text(
                          'مبلغ فاکتور :   ${order.pricefactor.convertToPrice()}'),
                      SizedBox(height: 16.0),

                      // لیست محصولات خریداری شده
                      ...order.buy_product.map((product) {
                        return ExpansionTile(
                          collapsedBackgroundColor:   product.snBuyProductLogin.length == int.parse(product.number)
                              ? Colors.green // در صورت برابر بودن تعداد، سبز شود
                              : Colors.orange,
                          title: Row(
                            children: [
                              Text(
                                '${product.title} نام محصول ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // نمایش دیالوگ برای مدیریت SN های اسکن شده
                                //   showProductDialog(context, product,controller);
                                _showProductDialog(context, product);
                              },
                              child: Text('مشاهده و اسکن SN'),
                            ),
                          ],
                        );
                      }).toList(),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Future<void> _showProductDialog(
      BuildContext context, BuyProduct product) async {
    await showDialog(
      context: context,
      builder: (context) => ProductDialog( productId: product.id,),
    );
    //  setState(() {}); // بروزرسانی وضعیت پس از بازگشت از دیالوگ
  }
}

// class ProductDialog extends StatefulWidget {
//   final BuyProduct product;
//
//   const ProductDialog({Key? key, required this.product}) : super(key: key);
//
//   @override
//   _ProductDialogState createState() => _ProductDialogState();
// }
//
// class _ProductDialogState extends State<ProductDialog> {
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//   QRViewController? controller;
//   final TextEditingController _manualInputController = TextEditingController();
//   final GeneralCategoryController controllers =
//   Get.find<GeneralCategoryController>();
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Column(children: [
//         Text('${widget.product.title} : نام محصول  '),
//         Text(' تعداد : ${int.parse(widget.product.number)} ')
//       ]),
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//               ' تعداد ورود به انبار خورده : ${widget.product.snBuyProductLogin.length}'),
//           const SizedBox(height: 16),
//           Row(children: [
//             ElevatedButton(
//               onPressed: widget.product.snBuyProductLogin.length ==
//                   int.parse(widget.product.number)
//                   ? null
//                   : _openScanner,
//               child: const Text('اسکن'),
//             ),
//             const SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: widget.product.snBuyProductLogin.length ==
//                   int.parse(widget.product.number)
//                   ? null
//                   : _openManualInputDialog,
//               child: const Text('دستی'),
//             ),
//           ]),
//           const SizedBox(height: 16),
//           Column(
//             children: widget.product.snBuyProductLogin.map((serial) {
//               return Card(
//                 child: ListTile(
//                   title: Text('Serial: ${serial.title}'),
//                   trailing: IconButton(
//                     icon: const Icon(Icons.delete),
//                     onPressed: () {
//                       setState(() {
//                         controllers.deleteBuyId_BuyProdut(
//                             idproductSN: serial.id,
//                             name_product_category:
//                             serial.name_product_category);
//                           controllers.update();// به‌روزرسانی دیالوگ
//                         // widget.product.snBuyProductLogin.remove(serial);
//                         // widget.product.snBuyProductLogin.length--;
//                       });
//                     },
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//       actions: [
//         if (widget.product.snBuyProductLogin.length ==
//             int.parse(widget.product.number))
//           ElevatedButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: const Text('Confirm'),
//           ),
//       ],
//     );
//   }
//
//   void _openScanner() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//           builder: (context) => QRScanner(onScan: (code) {
//             setState(() {
//               print('haji');
//               print(code);
//               var newSn = login_buy_product_SN(
//                   id: 'new_id',
//                   sn: code,
//                   title: widget.product.title,
//                   buy_product: widget.product.id,
//                   name_product_category:
//                   widget.product.name_product_category,
//                   inventory: '',
//                   Number_of_inventory: '1',
//                   number_now: '');
//               controllers.addProductToBuyProductByGaranty(
//                   title: newSn.title,
//                   sn: newSn.sn,
//                   buy_product: newSn.buy_product,
//                   name_product_category: newSn.name_product_category);
//               controllers.update();
//
//               //      controllers.update(['dialogupdate']); // به‌روزرسانی دیالوگ
//               // widget.product.snBuyProductLogin.add(code );
//               //  widget.product.snBuyProductLogin.length += 1;
//             });
//             Navigator.of(context).pop();
//           })),
//     );
//   }
//
//   void _openManualInputDialog() {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('Enter Serial Number'),
//           content: TextField(
//             controller: _manualInputController,
//             decoration: const InputDecoration(hintText: 'Serial Number'),
//           ),
//           actions: [
//             ElevatedButton(
//               onPressed: () {
//                 if (_manualInputController.text.isNotEmpty) {
//                   setState(() {
//                     // widget.product.snBuyProductLogin.add(_manualInputController.text as login_buy_product_SN);
//                     // widget.product.snBuyProductLogin.length++;
//                     // _manualInputController.clear(); // Clear the input field
//                     print('haji');
//                     print(_manualInputController.text);
//                     var newSn = login_buy_product_SN(
//                         id: 'new_id',
//                         sn: _manualInputController.text,
//                         title: widget.product.title,
//                         buy_product: widget.product.id,
//                         name_product_category:
//                         widget.product.name_product_category,
//                         inventory: '',
//                         Number_of_inventory: '1',
//                         number_now: '');
//                     controllers.addProductToBuyProductByGaranty(
//                         title: newSn.title,
//                         sn: newSn.sn,
//                         buy_product: newSn.buy_product,
//                         name_product_category: newSn.name_product_category);
//                     //  controllers.update(['dialogupdate']); // به‌روزرسانی دیالوگ
//
//                     _manualInputController.clear();
//                   });
//                   Navigator.of(context).pop();
//                 }
//               },
//               child: const Text('Add'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Cancel'),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   @override
//   void dispose() {
//     controller?.dispose();
//     _manualInputController.dispose();
//     super.dispose();
//   }
// }
class ProductDialog extends StatelessWidget {
  final String productId;

  const ProductDialog({Key? key, required this.productId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GeneralCategoryController controllers = Get.find<GeneralCategoryController>();

    // فراخوانی متد دریافت محصول
    controllers.fetchBuyProductsById(productId);

    return AlertDialog(
      title: const Text('نام محصول'),
      // contentPadding: const EdgeInsets.symmetric(horizontal: 2), // پدینگ 10 از چپ و راست
      content: SizedBox(
          width: MediaQuery.of(context).size.width - 20, // کل عرض صفحه با 10 پدینگ از هر طرف
          child:
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              GetBuilder<GeneralCategoryController>(
                id: 'updatebuyproduct',
                builder: (controller) {
                  if (controller.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (controller.product == null) {
                    return const Center(child: Text('No product found'));
                  } else {
                    BuyProduct product = controller.product!;
                    return
                      Column( children:[
                        Text('${product.title} : نام محصول'),
                        Text('تعداد: ${int.parse(product.number)}'),
                        Text('تعداد ورود به انبار خورده: ${product.snBuyProductLogin.length}'),
                      ]);
                  }
                },
              ),

              const SizedBox(height: 16),
              Row(
                children: [


                  GetBuilder<GeneralCategoryController>(
                    id: 'updatebuyproduct',
                    builder: (controller) {
                      if (controller.isLoading) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (controller.product == null) {
                        return const Center(child: Text('No product found'));
                      } else {
                        BuyProduct product = controller.product!;
                        return
                          ElevatedButton(
                            onPressed: product.snBuyProductLogin.length == int.parse(product.number)
                                ? null
                                : () => _openScanner(
                                product.title, product.id, product.name_product_category, controller, context),
                            child: const Text('اسکن'),
                          );
                      }
                    },
                  ),



                  const SizedBox(width: 16),


                  GetBuilder<GeneralCategoryController>(
                    id: 'updatebuyproduct',
                    builder: (controller) {
                      if (controller.isLoading) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (controller.product == null) {
                        return const Center(child: Text('No product found'));
                      } else {
                        BuyProduct product = controller.product!;
                        return
                          ElevatedButton(
                            onPressed: product.snBuyProductLogin.length == int.parse(product.number)
                                ? null
                                : () => _openManualInputDialog(
                                product.title, product.id, product.name_product_category, controller, context),
                            child: const Text('دستی'),
                          );
                      }
                    },
                  ),


                ],
              ),
              const SizedBox(height: 16),
              // اسکرول با سایز مناسب برای لیست


              GetBuilder<GeneralCategoryController>(
                id: 'updatebuyproduct',
                builder: (controller) {
                  if (controller.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (controller.product == null) {
                    return const Center(child: Text('No product found'));
                  } else {
                    BuyProduct product = controller.product!;
                    return
                      SizedBox(
                        height: 230, // ارتفاع محدود برای اسکرول
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: product.snBuyProductLogin.length,
                          itemBuilder: (context, index) {
                            var serial = product.snBuyProductLogin[index];
                            return Card(
                              child: ListTile(
                                title: Text('Serial: ${serial.title}'),
                                trailing: IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () {
                                    // بررسی اینکه آیا این سریال آخرین سریال در لیست است
                                    if (serial == product.snBuyProductLogin.last) {
                                      // اگر سریال آخرین بود، آن را حذف کن
                                      controller.deleteBuyId_BuyProdut(
                                        idproductSN: serial.id,
                                        name_product_category: product.name_product_category,
                                        productid: product.id,
                                      );
                                    } else {
                                      // اگر سریال آخرین نبود، یک پیام هشدار نشان بده
                                      Get.snackbar(
                                        'خطا',
                                        'لطفا ابتدا از آخرین ورود حذف کنید',
                                        snackPosition: SnackPosition.BOTTOM,
                                        backgroundColor: Colors.red,
                                        colorText: Colors.white,
                                      );
                                    }
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      );
                  }
                },
              ),


            ],
          )

      ),
      actions: [
        GetBuilder<GeneralCategoryController>(
          id: 'updatebuyproduct',
          builder: (controller) {
            final product = controller.product;
            if (product != null && product.snBuyProductLogin.length == int.parse(product.number)) {
              return ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Confirm'),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );

  }

  void _openScanner(String title, String id, String name_product_category, GeneralCategoryController controller, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QRScanner(onScan: (code) {
          controller.addProductToBuyProductByGaranty(
            title: title,
            sn: code,
            buy_product: id,
            name_product_category: name_product_category,
          );
          Navigator.of(context).pop(); // بستن اسکنر
        }),
      ),
    );
  }

  void _openManualInputDialog(
      String title, String id, String name_product_category, GeneralCategoryController controller, BuildContext context) {
    final TextEditingController _manualInputController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Enter Serial Number'),
          content: TextField(
            controller: _manualInputController,
            decoration: const InputDecoration(hintText: 'Serial Number'),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                if (_manualInputController.text.isNotEmpty) {
                  controller.addProductToBuyProductByGaranty(
                    title: title,
                    sn: _manualInputController.text,
                    buy_product: id,
                    name_product_category: name_product_category,
                  );
                  _manualInputController.clear();
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Add'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // بستن دیالوگ
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}

class QRScanner extends StatefulWidget {
  final Function(String) onScan;

  const QRScanner({Key? key, required this.onScan}) : super(key: key);

  @override
  _QRScannerState createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
    controller?.pauseCamera();
    controller?.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QR Code Scanner')),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller?.resumeCamera();
                  },
                  child: const Text('Retry Scan'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      controller.pauseCamera();
      widget.onScan(scanData.code ?? 'Unknown');
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}

//
// void showProductDialog(BuildContext context, BuyProduct product, GeneralCategoryController controller) {
//
//
//   Get.dialog(
//     AlertDialog(
//       title: Text('${product.title} - تعداد محصول: ${product.number} ${product.name_product_category} + ${product.id}'),
//       content: GetBuilder<GeneralCategoryController>(
//         id: 'didi', // شناسه برای ردیابی تغییرات
//         builder: (controller) {
//           return Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               ...product.snBuyProductLogin.map((snLogin) {
//                 return ListTile(
//                   title: Text(snLogin.title),
//                   subtitle: Text(snLogin.sn),
//                   tileColor: product.snBuyProductLogin.length == int.parse(product.number)
//                       ? Colors.green // در صورت برابر بودن تعداد، سبز شود
//                       : Colors.orange, // در غیر این صورت نارنجی
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete, color: Colors.red),
//                     onPressed: () {
//                       // حذف SN از لیست
//                       controller.deleteBuyId_BuyProdut(idproductSN: snLogin.id, name_product_category: snLogin.name_product_category);
//                       controller.update(['dialogupdate']); // به‌روزرسانی دیالوگ
//                     },
//                   ),
//                 );
//               }).toList(),
//
//               SizedBox(height: 20),
//
//               ElevatedButton(
//                 onPressed: product.snBuyProductLogin.length == int.parse(product.number)
//                     ? null
//                     : () {
//                   var newSn = login_buy_product_SN(
//                       id: 'new_id',
//                       sn: 'new_sn',
//                       title: 'SN جدید',
//                       buy_product: product.id,
//                       name_product_category: product.name_product_category,
//                       inventory: '',
//                       Number_of_inventory: '1',
//                       number_now: ''
//                   );
//                   controller.addProductToBuyProductByGaranty(
//                       title: newSn.title,
//                       sn: newSn.sn,
//                       buy_product: newSn.buy_product,
//                       name_product_category: newSn.name_product_category
//                   );
//                   controller.update(['dialogupdate']); // به‌روزرسانی دیالوگ
//                 },
//                 child: Text('اسکن بارکد'),
//               ),
//             ],
//           );
//         },
//       ),
//       actions: [
//         if (product.snBuyProductLogin.length == int.parse(product.number))
//           ElevatedButton(
//             onPressed: () {
//               print('ثبت محصول ${product.title} با SN های ${product.snBuyProductLogin}');
//               Get.back(); // بستن دیالوگ
//             },
//             child: Text('ثبت'),
//           ),
//       ],
//     ),
//   );
// }




