import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers.dart';
import 'package:get/get.dart';

void main() => runApp(const GetMaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.blue, // Color de fondo del botón
                    border: Border(
                      top: BorderSide(color: Colors.grey, width: 2.0), // Borde superior
                      left: BorderSide(color: Colors.grey, width: 2.0), // Borde derecho
                      bottom: BorderSide(color: Colors.grey, width: 2.0), // Borde inferior
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: FilledButton(
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(0)),
                      backgroundColor:
                          WidgetStateProperty.all<Color>(Colors.transparent), // Fondo transparente
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero), // Sin bordes adicionales
                      ),
                    ),
                    onPressed: () {
                      c.decrement();
                    },
                    child: const Icon(Icons.remove),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(
                          color: Colors.grey, // Color del borde superior
                          width: 2.0, // Ancho del borde superior
                        ),
                        bottom: BorderSide(
                          color: Colors.grey, // Color del borde inferior
                          width: 2.0, // Ancho del borde inferior
                        )),
                    color: Colors.white,
                  ),
                  child: Center(
                      child: Obx(() => Text(
                            "${c.count}",
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
                          ))),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.blue, // Color de fondo del botón
                    border: Border(
                      top: BorderSide(color: Colors.grey, width: 2.0),
                      right: BorderSide(color: Colors.grey, width: 2.0),
                      bottom: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: FilledButton(
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(0)),
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                      ),
                    ),
                    onPressed: () {
                      c.increment();
                    },
                    child: const Icon(Icons.add),
                  ),
                )
              ],
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Get.to(const Second());
              },
              child: const Text('Go to Second'),
            ),
          ],
        ),
      ),
    );
  }
}

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('Back to Home'),
        ),
      ),
    );
  }
}
