import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:meenmanam/navigation/router.dart';
import 'package:meenmanam/themes/colors.dart';
import 'package:meenmanam/utils/snackbar_utils.dart';
import 'package:meenmanam/service/notification_service.dart';
import 'package:meenmanam/store/notification_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Initialize Firebase first
    await Firebase.initializeApp();

    // Initialize notification service
    await NotificationService().initialize();
  } catch (e) {
    debugPrint("Firebase initialization failed: $e");
    debugPrint("Warning: Notifications will not work without valid Firebase configuration.");
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotificationStore(),
      child: MaterialApp.router(
        scaffoldMessengerKey: SnackbarUtils.scaffoldMessengerKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          useMaterial3: true,
        ),
        routerConfig: AppRoutes.router,
      ),
    );
  }
}
