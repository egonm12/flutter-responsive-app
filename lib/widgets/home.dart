import 'package:flutter/material.dart';
import 'package:flutter_theme_extension_poc/theme/layout/spacings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'My responsive app',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: Theme.of(context).extension<AppSpacings>()!.l,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Click here!'))
          ],
        ),
      ),
    );
  }
}
