import 'package:flutter/material.dart';
import 'package:staff_information/core/themes/common_style.dart';
import 'package:staff_information/features/staff/list/domain/entities/list_user_entity.dart';

class UserInfo extends StatefulWidget {
  final UserEntity userEntity;

  const UserInfo({Key? key, required this.userEntity}) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03),
      color: Colors.grey.shade100,
      child: Column(
        children: [
          _buildUserProfile(context),
        ],
      ),
    );
  }

  Widget _buildUserProfile(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              Icons.person,
              size: 100,
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.userEntity.userLogin.toString(),
                  style: CommonStyle.size14w400(context)
                      .copyWith(color: Colors.black, fontSize: 20),
                ),
                Text("ke toan truong",
                    style: CommonStyle.size14w400Black(context)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Dang hoat dong",
                        style: CommonStyle.size14w400Black(context)),
                    const SizedBox(width: 4,),
                    Row(
                      children: [
                        Text(
                          "tuy chon",
                          style: CommonStyle.size14w400Black(context)
                              .copyWith(color: Colors.red),
                        ),
                        const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInfoUser(
                  context, "Mã nhân viên", widget.userEntity.manv ?? ""),
              _buildInfoUser(
                  context, "Tên Đăng nhập", widget.userEntity.userLogin ?? ""),
              _buildInfoUser(context, "Email", widget.userEntity.email ?? ""),
              _buildInfoUser(context, "Số Điện Thoại",
                  widget.userEntity.phoneNumber ?? ""),
              _buildInfoUser(
                  context, "Ngày Sinh", widget.userEntity.birthday ?? ""),
              _buildInfoUser(context, "Giới yính",
                  widget.userEntity.sex == 1 ? "Nam" : "Nu"),
              _buildInfoUser(
                  context, "Địa chỉ", widget.userEntity.address ?? ""),
              _buildInfoUser(
                  context, "CMDN/CCCD/Hộ chiếu", widget.userEntity.cmnd ?? ""),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfoUser(BuildContext context, String label, String value) {
    return Container(
      padding: EdgeInsets.only(top: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: CommonStyle.size14w400Black(context),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            value,
            style: CommonStyle.size14w400Black(context),
          )
        ],
      ),
    );
  }
}
