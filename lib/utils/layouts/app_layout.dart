// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/utils/constants/sizes.dart';
import '../../features/designer/cart/routes/names.dart';
import '../../features/designer/cart/screens/cart.dart';
import '../../features/designer/dashboard/routes/names.dart';
import '../../features/designer/dashboard/screens/home.dart';
import '../../features/designer/gallery/routes/names.dart';
import '../../features/designer/gallery/screens/gallery.dart';
import '../../features/designer/menu/screens/menu.dart';
import '../../features/designer/profile/routes/names.dart';
import '../../features/designer/profile/screens/profile.dart';
import '../constants/colors.dart';
import '../constants/images.dart';

enum RouteType { Home, Cart, Menu, Gallery, Profile }

// Routes Path
const HOME_INDEX_SCREEN_ROUTE = DASHBOARD_SCREEN_ROUTE;
const CART_INDEX_SCREEN_ROUTE = CART_SCREEN_ROUTE;
const GALLERY_INDEX_SCREEN_ROUTE = GALLERY_SCREEN_ROUTE;
const PROFILE_INDEX_SCREEN_ROUTE = PROFILE_SCREEN_ROUTE;

class AppLayout extends StatefulWidget {
  final RouteType currentRoute;
  final String? currentRoutePathname;
  final Widget childWidget;
  final Color? layoutBodyColor;
  final GlobalKey<NavigatorState>? navKey;
  final Widget? floatingActionButton;

  const AppLayout({
    super.key,
    required this.currentRoute,
    this.currentRoutePathname,
    this.layoutBodyColor = Colors.white,
    required this.childWidget,
    this.navKey,
    this.floatingActionButton
  });

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout>
    with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  bool _isBottomBarVisible = true;

  bool _showBottomSheet = false;

  final List<String> items = List.generate(30, (index) => 'Item ${index + 1}');

  @override
  void initState() {
    super.initState();
    // _scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    // _scrollController.removeListener(_handleScroll);
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // var authProvider = Provider.of<AuthProvider>(AppNavigator
    //     .instance.navigatorKey.currentState?.context as BuildContext);
    return Scaffold(
      backgroundColor: widget.layoutBodyColor,
      bottomNavigationBar: _isBottomBarVisible == false
          ? const SizedBox.shrink()
          : BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        useLegacyColorScheme: false,
        currentIndex: widget.currentRoute == RouteType.Cart
            ? 1
            : widget.currentRoute == RouteType.Menu
            ? 2
            : widget.currentRoute == RouteType.Gallery
            ? 3
            : widget.currentRoute == RouteType.Profile
            ? 4
            : 0,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedIconTheme: const IconThemeData(size: 20.0),
        unselectedIconTheme: const IconThemeData(size: 20.0),
        selectedLabelStyle: const TextStyle(
            fontWeight: TSizes.fontWeight700, fontFamily: 'Lato', color: TColors.activeNavText),
        unselectedLabelStyle: const TextStyle(
            fontWeight: TSizes.fontWeight500, fontFamily: 'Manrope', color: TColors.navText),
        backgroundColor: Colors.white,
        selectedItemColor: TColors.activeNavText,
        unselectedItemColor: TColors.navText,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index) {
          if (index == 1) {
            // Get.to(const SubscribeScreen());

            if (widget.navKey != null) {
              if (widget.currentRoute != RouteType.Cart) {
                widget.navKey!.currentState!
                    .pushNamed(CART_INDEX_SCREEN_ROUTE);
              }
            } else {
              // AppNavigator.instance.navigateToHandler(
              //     CART_INDEX_SCREEN_ROUTE
              // );
              Get.to(() => const CartScreen());
            }
          } else if (index == 2) {
          } else if (index == 3) {
            if (widget.navKey != null) {
              if (widget.currentRoute != RouteType.Menu) {
                widget.navKey!.currentState!
                    .pushNamed(GALLERY_INDEX_SCREEN_ROUTE);
              }
            } else {
              // AppNavigator.instance.navigateToHandler(
              //     GALLERY_INDEX_SCREEN_ROUTE
              // );
              Get.to(() => const GalleryScreen());
            }

          } else if (index == 4) {
            // Get.to(const ProfileScreen());

            if (widget.navKey != null) {
              if (widget.currentRoute != RouteType.Profile) {
                widget.navKey!.currentState!
                    .pushNamed(PROFILE_INDEX_SCREEN_ROUTE);
              }
            } else {
              // AppNavigator.instance.navigateToHandler(
              //     PROFILE_INDEX_SCREEN_ROUTE
              // );
              Get.to(() => const ProfileScreen());
            }
          } else {
            // Get.to(const HomeScreen());

            if (widget.navKey != null) {
              if (widget.currentRoute != RouteType.Home) {
                widget.navKey!.currentState!
                    .pushNamed(HOME_INDEX_SCREEN_ROUTE);
              }
            } else {
              // AppNavigator.instance.navigateToHandler(
              //     HOME_INDEX_SCREEN_ROUTE
          // );
                Get.to(() => const HomeScreen());
            }

          }
        },
        items: [
          BottomNavigationBarItem(backgroundColor: TColors.danger,
            icon: Container(
              height: 20,
              child: const Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage(widget.currentRoute == RouteType.Cart
                ? TImages.activeCart
                : TImages.cart)),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: (){
                  setState(() {
                    _showBottomSheet = !_showBottomSheet;
                    print(_showBottomSheet);
                  });
                },
                style: ButtonStyle(
                  backgroundColor: _showBottomSheet == false 
                      ? MaterialStatePropertyAll(Color(0xFF5E604D))
                      : MaterialStatePropertyAll(Color(0xFFDCDDD5)),
                  fixedSize: MaterialStatePropertyAll(Size(48, 48)),
                  alignment: Alignment.center,
                  iconSize: _showBottomSheet == false
                      ?  MaterialStatePropertyAll(20)
                      : MaterialStatePropertyAll(28),

                ),
                icon: _showBottomSheet == false
                    ? Icon(Icons.add, color: Colors.white,)
                    : Icon(Icons.close, color: Color(0xFF535544),)
            ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage(widget.currentRoute == RouteType.Gallery
                ? TImages.gallery
                : TImages.gallery)),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage(widget.currentRoute == RouteType.Profile
                ? TImages.profile
                : TImages.profile)),
            label: 'Profile',
          ),
        ],
      ),
      // drawer: AppDrawerWidget(),
      body: Stack(
        children: [
          SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            controller: _scrollController,
            child: widget.childWidget,
          ),
          if (_showBottomSheet == true)
          Positioned(
              child: MenuScreen()
          )
        ],
      ),
      floatingActionButton: widget.floatingActionButton,
    );
  }
}
