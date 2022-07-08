import 'package:flutter/material.dart';
import 'package:staff_information/core/themes/common_style.dart';

class InfoJobScreen extends StatefulWidget {
  const InfoJobScreen({Key? key}) : super(key: key);

  @override
  State<InfoJobScreen> createState() => _InfoJobsCREENState();
}

class _InfoJobsCREENState extends State<InfoJobScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03),
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Thông tin công việc",
            style: CommonStyle.size14w400Black(context)
                .copyWith(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 16,
          ),
          _buildRowItemJob(context, "Bộ phận", "Quyền hạn"),
          _buildRowItemJob(context, "Phòng kết toán", "Quản lý"),
          _buildRowItemJob(context, "Phòng CSKH", "Nhân viên"),
          const SizedBox(
            height: 24,
          ),
          Text(
            "Phụ trách dự án và phân quyền",
            style: CommonStyle.size14w400Black(context)
                .copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 16,
          ),
          _buildJob(context),
          const SizedBox(
            height: 16,
          ),
          _buildJob(context),
        ],
      ),
    );
  }

  // build item job
  Widget _buildRowItemJob(BuildContext context, String title, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: CommonStyle.size14w400Black(context),
              ),
              Text(
                value,
                style: CommonStyle.size14w400Black(context),
              ),
            ],
          ),
          const Divider(
            height: 2,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

// build job
  Widget _buildJob(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Dự án 1",
          style: CommonStyle.size14w400Black(context),
        ),
        const SizedBox(
          height: 4,
        ),
        Text("Dự án A", style: CommonStyle.size14w400Black(context)),
        const SizedBox(
          height: 16,
        ),
        Text("Phân quyền", style: CommonStyle.size14w400Black(context)),
        const SizedBox(
          height: 4,
        ),
        Text("Kế toán trưởng", style: CommonStyle.size14w400Black(context)),
        const SizedBox(
          height: 4,
        ),
        Text("Dự án 1", style: CommonStyle.size14w400Black(context)),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              "Các module,tính năg đươc phép cập",
              style: CommonStyle.size14w400Black(context)
                  .copyWith(color: Colors.red),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.red,
            )
          ],
        )
      ],
    );
  }
}
