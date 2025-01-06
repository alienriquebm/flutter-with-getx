import 'package:flutter/material.dart';
import 'package:flutter_getx/features/home/views/home_view.dart';
import 'package:get/get.dart';
import 'package:flutter_getx/features/counter_example/controllers/counter_example_controller.dart';

class CounterExampleView extends StatelessWidget {
  const CounterExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterExampleController cec = Get.put(CounterExampleController());

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
                      cec.decrement();
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
                            "${cec.count}",
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
                      cec.increment();
                    },
                    child: const Icon(Icons.add),
                  ),
                )
              ],
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Get.to(const HomeView());
              },
              child: const Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
