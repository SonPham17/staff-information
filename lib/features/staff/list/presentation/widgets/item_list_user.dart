import 'package:flutter/material.dart';
import 'package:staff_information/core/themes/common_style.dart';
import 'package:staff_information/features/staff/list/domain/entities/list_user_entity.dart';
class ItemListUser extends StatelessWidget {
  final UserEntity userEntity;

   ItemListUser({required this.userEntity});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      color: Colors.green.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(userEntity.userLogin ?? "",style: CommonStyle.size14w400(context).copyWith(color: Colors.black),),
          Text(userEntity.manv ?? "",style: CommonStyle.size14w400(context).copyWith(color: Colors.black)),
        ],
      ),
    );
  }
}
