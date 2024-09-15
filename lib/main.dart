import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/navigation/routes.dart';
import 'core/theme/theme.dart';
import 'core/utils/services/injections.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';

void main() {
  setup();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<AuthBloc>(),
      child: MaterialApp.router(
        title: 'Example',
        debugShowCheckedModeBanner: false,
        routerConfig: Routes.configurations,
        theme: theme,
      ),
    );
  }
}
