import 'package:flutter/material.dart';
import 'package:staff_information/features/staff/detail/presentation/widgets/header_detail.dart';

class DetailStaffPage extends StatelessWidget {
  const DetailStaffPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HeaderDetail()
          ],
        ),
      ),
    );
  }
}
