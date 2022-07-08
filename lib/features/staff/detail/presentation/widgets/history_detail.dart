import 'package:flutter/material.dart';
import 'package:staff_information/core/themes/common_style.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildHeader(context),
          const SizedBox(
            height: 24,
          ),
          _buildCalendarItem(context, "Hôm nay, 16/03/2022"),
          const SizedBox(
            height: 16,
          ),
          _buildItem(context, "16:30:24, 16/03/2022",
              "Chỉnh sửa thông tin bất động sản"),
          _buildItem(context, "16:30:24, 16/03/2022",
              "Chỉnh sửa thông tin bất động sản"),
          const SizedBox(
            height: 24,
          ),
          _buildCalendarItem(context, "Hôm qua, 15/03/2022"),
          const SizedBox(
            height: 16,
          ),
          _buildItem(context, "16:30:24, 15/03/2022",
              "Chỉnh sửa thông tin bất động sản"),
          _buildItem(context, "16:30:24, 15/03/2022", "Thêm mới bất đông sản"),
          _buildItem(context, "16:30:24, 15/03/2022", "Đăng nhập hệ thống"),
        ],
      ),
    );
  }

  // build header
  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        const FittedBox(child:  Text("Tìm kiếm theo hành động")),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: TextFormField(
              decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ))),
        ),
        const SizedBox(width: 4,),
        FittedBox(
          child: Text(
            "Thời gian",
            style: CommonStyle.size14w400Black(context),
          ),
        ),
        const SizedBox(width: 4,),
        FittedBox(
          child: Text(
            "Tất cả",
            style:
                CommonStyle.size14w400Black(context).copyWith(color: Colors.red),
          ),
        ),
        const Icon(
          Icons.arrow_drop_down,
          color: Colors.red,
        )
      ],
    );
  }

  // build calendar
  Widget _buildCalendarItem(BuildContext context, String day) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              Icons.calendar_today_sharp,
              color: Colors.black,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(day),
          ],
        ),
      ],
    );
  }

  // build item
  Widget _buildItem(BuildContext context, String timeAndDay, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(timeAndDay),
        Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 8),
            color: Colors.grey.shade100,
            padding: const EdgeInsets.all(16),
            child: Text(value)),
      ],
    );
  }
}
