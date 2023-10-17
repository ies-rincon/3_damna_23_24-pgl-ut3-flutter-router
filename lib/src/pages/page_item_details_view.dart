import 'package:flutter/material.dart';

/// Displays detailed information about a PageItem.
class PageItemDetailsView extends StatelessWidget {
  const PageItemDetailsView({super.key});

  static const routeName = '/page_item';

  @override
  Widget build(BuildContext context) {
    // Recupera los argumentos pasados desde la pantalla anterior
    final arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final info = arguments['info-page'] ?? "No Info";

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Item Details'),
      ),
      body: Center(
        child: Text('Information Here: from $info'),
      ),
    );
  }
}
