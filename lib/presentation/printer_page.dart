import 'package:blue_thermal_printer/blue_thermal_printer.dart';
import 'package:flutter/material.dart';

class PrinterPage extends StatefulWidget {
  const PrinterPage({super.key});

  @override
  State<PrinterPage> createState() => _PrinterPageState();
}

class _PrinterPageState extends State<PrinterPage> {
  List<BluetoothDevice> devices = [];
  BluetoothDevice? selectedDevice;
  BlueThermalPrinter printer = BlueThermalPrinter.instance;

  @override
  void initState() {
    super.initState();
    getDevice();
  }

  void getDevice() async {
    devices = await printer.getBondedDevices();
    setState(() {});
  }

  var data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropdownButton<BluetoothDevice>(
              hint: Text("Select"),
              value: selectedDevice,
              items: devices
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.name!),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedDevice = value;
                  printer.connect(selectedDevice!);
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                printer.connect(selectedDevice!);
              },
              child: Text("Connect"),
            ),
            ElevatedButton(
              onPressed: () {
                printer.connect(selectedDevice!);
              },
              child: Text("Disconnect"),
            ),
            ElevatedButton(
              onPressed: () async {
                if ((await printer.isConnected)!) {
                  printer.printNewLine();
                  printer.printNewLine();
                  // printer.printQRcode("HAII GUYS", 200, 200, 1);
                  printer.printCustom("HAII GUYS", 1, 1);
                  printer.printCustom("BERANTEM YUK", 2, 1);
                  printer.printNewLine();
                  printer.printNewLine();
                  printer.printNewLine();
                }
              },
              child: Text("Cetak"),
            ),
          ],
        ),
      ),
    );
  }
}
