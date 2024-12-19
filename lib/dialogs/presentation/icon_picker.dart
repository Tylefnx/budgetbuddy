import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class IconPicker extends HookWidget {
  const IconPicker({super.key, required this.onIconSelected});
  final IconData Function(IconData) onIconSelected;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height / 3),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Please select an icon',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: size.width / 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  IconButton(
                    iconSize: size.width / 10,
                    icon: const Icon(Icons.shopping_cart),
                    onPressed: () {
                      AutoRouter.of(context).maybePop();
                      onIconSelected(Icons.shopping_cart);
                    },
                  ),
                  IconButton(
                    iconSize: size.width / 10,
                    icon: const Icon(Icons.house_rounded),
                    onPressed: () {
                      AutoRouter.of(context).maybePop();
                      onIconSelected(Icons.house_rounded);
                    },
                  ),
                  IconButton(
                    iconSize: size.width / 10,
                    icon: const Icon(Icons.food_bank_rounded),
                    onPressed: () {
                      AutoRouter.of(context).maybePop();
                      onIconSelected(Icons.food_bank_rounded);
                    },
                  ),
                  IconButton(
                    iconSize: size.width / 10,
                    icon: const Icon(Icons.person),
                    onPressed: () {
                      AutoRouter.of(context).maybePop();
                      onIconSelected(Icons.person);
                    },
                  ),
                  IconButton(
                    iconSize: size.width / 10,
                    icon: const Icon(Icons.school_rounded),
                    onPressed: () {
                      AutoRouter.of(context).maybePop();
                      onIconSelected(Icons.school_rounded);
                    },
                  ),
                  IconButton(
                    iconSize: size.width / 10,
                    icon: const Icon(Icons.directions_bus_filled_rounded),
                    onPressed: () {
                      AutoRouter.of(context).maybePop();
                      onIconSelected(Icons.directions_bus_filled_rounded);
                    },
                  ),
                  IconButton(
                    iconSize: size.width / 10,
                    icon: const Icon(Icons.car_repair),
                    onPressed: () {
                      AutoRouter.of(context).maybePop();
                      onIconSelected(Icons.car_repair);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
