// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:mybel/application/auth_cubit.dart';

// import '../../injectable.dart';

// class SplashScreen extends StatelessWidget {
//   SplashScreen({super.key});

//   final authCubit = getIt<AuthCubit>();
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => authCubit,
//       child: BlocConsumer<AuthCubit, AuthState>(
//         listener: (context, state) {
//           // TODO: implement listener
//         },
//         builder: (context, state) {
//           return Scaffold();
//         },
//       ),
//     );
//   }
// }
