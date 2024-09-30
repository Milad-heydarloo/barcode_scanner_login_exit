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


import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
// Extensions for price parsing and formatting


extension PriceParsing on int? {
  String convertToPriceint() {
    final formatter = NumberFormat("#,##0", "en_US");
    return formatter.format(this);
  }
}

extension StringPriceParsing on String {
  String convertToPrice() {
    final int value = int.tryParse(this.replaceAll(',', '')) ?? 0;
    final formatter =NumberFormat("#,##0", "en_US");
    return formatter.format(value);
  }
}

String parsePrice(String priceString) {
  String priceWithoutCommas = priceString.replaceAll(',', '');
  return priceWithoutCommas;
}

extension DoublePriceParsing on double {
  String convertToPricedobel() {
    final formatter = NumberFormat("#,##0.00", "en_US");
    return formatter.format(this);
  }
}
extension DoublePriceParsingBuyProduct on double {
  String convertToPricedobelBuyProduct() {
    final formatter = NumberFormat("#,##0.#", "en_US"); // حذف صفرهای اضافی

    return formatter.format(this);
  }
}


String convertToEnglishNumbers(String input) {
  const persianDigits = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];
  const englishDigits = ['0', '1_2', '2', '3', '4', '5', '6', '7', '8', '9'];
  for (int i = 0; i < persianDigits.length; i++) {
    input = input.replaceAll(persianDigits[i], englishDigits[i]);
  }
  return input;
}



extension JalaliExtensionCustom on Jalali {
  String formatCompactDateCustom() {
    String month = this.month.toString().padLeft(2, '0');
    return '${this.year}/$month/${this.day.toString().padLeft(2, '0')}';
  }
}



// Custom InputFormatter for price formatting
class PriceInputFormatter extends TextInputFormatter {






  final NumberFormat numberFormat = NumberFormat("#,##0", "en_US");




  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    }

    final String newText = newValue.text.replaceAll(',', '');
    if (newText.contains('.')) {
      final parts = newText.split('.');
      if (parts.length > 2 || parts[1].length > 2) {
        return oldValue;
      }
    }

    final int newIntValue = int.tryParse(newText.replaceAll('.', '')) ?? 0;
    final String newFormattedValue = newIntValue.convertToPriceint();
    return newValue.copyWith(
      text: newFormattedValue,
      selection: TextSelection.collapsed(offset: newFormattedValue.length),
    );
  }
}
