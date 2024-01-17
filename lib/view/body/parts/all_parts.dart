import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controller/scroll_provider.dart';

class AllPartsPage extends StatelessWidget {
  const AllPartsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: Provider.of<ScrollProvider>(context).scrollController,
        itemBuilder: (context, index) =>Provider.of<ScrollProvider>(context,listen: false).parts[index],
        itemCount: Provider.of<ScrollProvider>(context,listen: false).parts.length);
  }
}
