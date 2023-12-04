import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controller/scrollProvider.dart';

class AllPartsPage extends StatelessWidget {
  const AllPartsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        controller: Provider.of<ScrollProvider>(context).scrollController,
        itemBuilder: (context, index) =>Provider.of<ScrollProvider>(context,listen: false).parts[index],
        separatorBuilder: (context, index) => const SizedBox(
          height: 5,
        ),
        itemCount: Provider.of<ScrollProvider>(context,listen: false).parts.length);
  }
}
