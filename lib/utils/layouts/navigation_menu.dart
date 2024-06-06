import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/features/cart/screens/cart.dart';
import 'package:sytle_to_perfection/features/gallery/screens/gallery.dart';
import 'package:sytle_to_perfection/utils/constants/colors.dart';
import '../../features/dashboard/screens/home.dart';
import '../../features/profile/screens/profile.dart';
import '../constants/images.dart';
import '../constants/sizes.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
            () => NavigationBar(
          height: TSizes.bottomNavBar,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          indicatorColor: Colors.transparent,
          destinations: [
            NavigationDestination(
              icon: Container(
                height: 20,
                child: Image(image: AssetImage(controller.selectedIndex.value == 0 ? TImages.activeHome : TImages.home))
              ),
              label: 'Home',
            ),
            NavigationDestination(
                icon: SizedBox(
                  height: 20,
                  child: Image(image: AssetImage(controller.selectedIndex.value == 1 ? TImages.activeCart : TImages.cart))
                ),
                label: 'Cart'
            ),
            NavigationDestination(
              icon: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle
                ),
                margin: EdgeInsets.only(top: 20),
                child: Icon(
                  Icons.add,
                  color: TColors.white,
                ),
              ),
              label: '',
            ),
            NavigationDestination(
                icon: SizedBox(
                    height: 20,
                    child: Image(image: AssetImage(controller.selectedIndex.value == 3 ? TImages.gallery : TImages.gallery))
                ),
                label: 'Gallery'
            ),
            NavigationDestination(
                icon: SizedBox(
                    height: 20,
                    child: Image(image: AssetImage(controller.selectedIndex.value == 4 ? TImages.profile : TImages.profile))
                ),
                label: 'Profile'
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [const HomeScreen(), const CartScreen(), const CartScreen(), const GalleryScreen(), const ProfileScreen()];
}

