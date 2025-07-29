import 'package:app_settings/provider/app_settings_provider.dart';
import 'package:datastore/provider/session/session_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/di/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:login/login.dart';
import 'package:login/presentation/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(Environment.dev);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LoginScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appSettingsProvider = getIt<AppSettingsProvider>();
    final sessionProvider = getIt<SessionProvider>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          doLogin();
        },
        child: const Icon(Icons.run_circle_outlined),
      ),
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          children: [
            Text(
              'App Language: ${appSettingsProvider.getAppLanguage()}\n'
              'App Theme: ${appSettingsProvider.getAppTheme()}',
            ),
            const SizedBox(height: 20),
            Text(
              'Client ID: ${sessionProvider.getClientId()}\n'
              'User ID: ${sessionProvider.getUserId()}\n'
              'Access Token: ${sessionProvider.getAccessToken()}\n'
              'Refresh Token: ${sessionProvider.getRefreshToken()}',
            ),
          ],
        ),
      ),
    );
  }
}
