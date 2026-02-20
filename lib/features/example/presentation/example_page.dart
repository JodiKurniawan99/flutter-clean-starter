import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/widgets/app_scaffold.dart';
import 'providers/example_provider.dart';

class ExamplePage extends ConsumerWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final message = ref.watch(exampleMessageProvider);

    return AppScaffold(
      title: AppConstants.appTitle,
      body: Center(
        child: message.when(
          data: Text.new,
          error: (_, __) => const Text('Something went wrong'),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
