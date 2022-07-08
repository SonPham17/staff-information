import 'package:flutter/material.dart';
import 'package:staff_information/features/staff/detail/presentation/widgets/header_detail.dart';
import 'package:staff_information/features/staff/detail/presentation/widgets/history_detail.dart';
import 'package:staff_information/features/staff/detail/presentation/widgets/info_job_detail.dart';
import 'package:staff_information/features/staff/detail/presentation/widgets/left_detail.dart';
import 'package:staff_information/features/staff/list/domain/entities/list_user_entity.dart';

class DetailStaffPage extends StatelessWidget {
  final UserEntity userEntity;

  const DetailStaffPage({Key? key, required this.userEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderDetail(
              userEntity: userEntity,
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: UserInfo(
                      userEntity: userEntity,
                    )),
                const Expanded(flex: 1, child: History()),
                const Expanded(child: InfoJobScreen())
              ],
            ),
          ],
        ),
      ),
    );
  }
}
