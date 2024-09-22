import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

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
//       home: const QRViewExample(),
//     );
//   }
// }
//
// class QRViewExample extends StatefulWidget {
//   const QRViewExample({Key? key}) : super(key: key);
//
//   @override
//   State<StatefulWidget> createState() => _QRViewExampleState();
// }
//
// class _QRViewExampleState extends State<QRViewExample> {
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//   String scannedCode = 'Scan a code';
//   QRViewController? controller;
//
//   @override
//   void reassemble() {
//     super.reassemble();
//     controller?.pauseCamera();
//     controller?.resumeCamera();
//   }
//
//   Future<void> _requestCameraPermission() async {
//     var status = await Permission.camera.status;
//     if (!status.isGranted) {
//       if (await Permission.camera.request().isGranted) {
//         // Permission granted
//       } else {
//         // Permission denied
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Camera permission is required to scan QR codes')),
//         );
//       }
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _requestCameraPermission();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('QR Code Scanner'),
//       ),
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
//             child: Center(
//               child: Text(scannedCode),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               _requestCameraPermission().then((_) {
//                 controller?.resumeCamera();
//               });
//             },
//             child: const Text('Open Camera'),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _onQRViewCreated(QRViewController controller) {
//     this.controller = controller;
//     controller.scannedDataStream.listen((scanData) {
//       setState(() {
//         scannedCode = scanData.code ?? 'Unknown';
//         controller.pauseCamera();
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
// }


import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

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
//       home: const QRViewExample(),
//     );
//   }
// }
//
// class QRViewExample extends StatefulWidget {
//   const QRViewExample({Key? key}) : super(key: key);
//
//   @override
//   State<StatefulWidget> createState() => _QRViewExampleState();
// }
//
// class _QRViewExampleState extends State<QRViewExample> {
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//   String scannedCode = 'Scan a code';
//   QRViewController? controller;
//
//   @override
//   void reassemble() {
//     super.reassemble();
//     controller?.pauseCamera();
//     controller?.resumeCamera();
//   }
//
//   Future<void> _requestCameraPermission() async {
//     var status = await Permission.camera.status;
//     if (!status.isGranted) {
//       if (await Permission.camera.request().isGranted) {
//         // Permission granted
//       } else {
//         // Permission denied
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Camera permission is required to scan QR codes')),
//         );
//       }
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _requestCameraPermission();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('QR Code Scanner'),
//       ),
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
//             child: Center(
//               child: Text(scannedCode),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               _requestCameraPermission().then((_) {
//                 controller?.resumeCamera();
//               });
//             },
//             child: const Text('Open Camera'),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _onQRViewCreated(QRViewController controller) {
//     this.controller = controller;
//     controller.scannedDataStream.listen((scanData) {
//       setState(() {
//         scannedCode = scanData.code ?? 'Unknown';
//         controller.pauseCamera();
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
// }































//
// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';
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
//       home: const QRViewExample(),
//     );
//   }
// }
//
// class QRViewExample extends StatefulWidget {
//   const QRViewExample({Key? key}) : super(key: key);
//
//   @override
//   State<StatefulWidget> createState() => _QRViewExampleState();
// }
//
// class _QRViewExampleState extends State<QRViewExample> {
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//   String scannedCode = 'Scan a code';
//   QRViewController? controller;
//   bool isFlashOn = false; // متغیر برای ذخیره وضعیت فلش
//
//   @override
//   void reassemble() {
//     super.reassemble();
//     controller?.pauseCamera();
//     controller?.resumeCamera();
//   }
//
//   Future<void> _requestCameraPermission() async {
//     var status = await Permission.camera.status;
//     if (!status.isGranted) {
//       if (await Permission.camera.request().isGranted) {
//         // Permission granted
//       } else {
//         // Permission denied
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Camera permission is required to scan QR codes')),
//         );
//       }
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _requestCameraPermission();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('QR Code Scanner'),
//       ),
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
//                 Text(scannedCode),
//                 const SizedBox(height: 16),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         _requestCameraPermission().then((_) {
//                           controller?.resumeCamera();
//                         });
//                       },
//                       child: const Text('Open Camera'),
//                     ),
//                     const SizedBox(width: 16),
//                     ElevatedButton(
//                       onPressed: () async {
//                         await controller?.toggleFlash();
//                         setState(() {
//                           isFlashOn = !isFlashOn; // وضعیت فلش را تغییر می‌دهد
//                         });
//                       },
//                       child: Text(isFlashOn ? 'Turn Flash Off' : 'Turn Flash On'),
//                     ),
//                   ],
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
//       setState(() {
//         scannedCode = scanData.code ?? 'Unknown';
//         controller.pauseCamera();
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
// }


import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const OrdersPage(),
    );
  }
}

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  List<Order> orders = [
    Order(orderName: "Order 1", products: [
      Product(name: "Product A", quantity: 5),
      Product(name: "Product B", quantity: 3),
    ]),
    Order(orderName: "Order 2", products: [
      Product(name: "Product C", quantity: 4),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Orders')),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(orders[index].orderName),
            onTap: () => _showOrderDialog(orders[index]),
          );
        },
      ),
    );
  }

  void _showOrderDialog(Order order) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(order.orderName),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: order.products.map((product) {
            return ListTile(
              title: Text(product.name),
              subtitle: Text(
                  'Total: ${product.quantity}, Entered: ${product.enteredQuantity}'),
              onTap: () => _showProductDialog(product),
            );
          }).toList(),
        ),
      ),
    );
  }

  void _showProductDialog(Product product) {
    showDialog(
      context: context,
      builder: (context) => ProductDialog(product: product),
    );
  }
}





class ProductDialog extends StatefulWidget {
  final Product product;

  const ProductDialog({Key? key, required this.product}) : super(key: key);

  @override
  _ProductDialogState createState() => _ProductDialogState();
}

class _ProductDialogState extends State<ProductDialog> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  String scannedCode = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('${widget.product.name} - ${widget.product.quantity} items'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Scanned: ${widget.product.enteredQuantity}'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _openScanner,
            child: const Text('Add Scan'),
          ),
          const SizedBox(height: 16),
          Text('Serials: ${widget.product.serials.join(', ')}'),
        ],
      ),
      actions: [
        if (widget.product.enteredQuantity == widget.product.quantity)
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Confirm'),
          ),
      ],
    );
  }

  void _openScanner() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => QRScanner(onScan: (code) {
        setState(() {
          widget.product.serials.add(code);
          widget.product.enteredQuantity += 1;
        });
        Navigator.of(context).pop();
      })),
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
