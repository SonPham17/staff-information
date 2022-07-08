import 'package:flutter/material.dart';
import 'package:staff_information/features/staff/list/domain/entities/list_user_entity.dart';

class HeaderDetail extends StatefulWidget {
  final UserEntity userEntity;

  HeaderDetail({Key? key, required this.userEntity}) : super(key: key);

  @override
  State<HeaderDetail> createState() => _HeaderDetailState();
}

class _HeaderDetailState extends State<HeaderDetail> {
  List<MenuItem> _list = [];

  // add list item
  _addListItem() {
    _list.add(MenuItem("Quản lý dự án"));
    _list.add(MenuItem("Quản lý bộ phận cấp tập trung"));
    _list.add(MenuItem("Quản lý nhân sự cấp tập trung"));
    _list.add(MenuItem("Cấu hình"));
  }

  @override
  void initState() {
    _addListItem();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Wrap(
            children: _list
                .map((item) => _buildMenuItemWidget(context, item))
                .toList(),
          ),
          Row(
            children: [
              const Icon(
                Icons.notification_important,
                color: Colors.white,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CircleAvatar(
                  child: Icon(Icons.person),
                ),
              ),
              Text(widget.userEntity.userLogin.toString()),
              const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget _buildMenuItemWidget(BuildContext context, MenuItem menuItem) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Text(menuItem.title),
  );
}

class MenuItem {
  String title;

  MenuItem(this.title);
}
