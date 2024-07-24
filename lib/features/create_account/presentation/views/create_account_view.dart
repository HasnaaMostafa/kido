import 'package:flutter/material.dart';
import 'package:kido/features/create_account/presentation/views/widgets/create_account_view_body.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: const CreateAccountViewBody(),
    );
  }
}
