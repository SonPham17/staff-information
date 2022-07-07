import 'package:flutter/material.dart';

class HeaderDetail extends StatelessWidget {
  const HeaderDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: double.infinity,
      child: Wrap(
        children: const [
          Icon(Icons.broadcast_on_personal),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Quản lý dự án'),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Quản lý bộ phận cấp tập trung'),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Quản lý nhân sự cấp tập trung'),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Cấu hình'),
          ),
        ],
      ),
    );
  }
}
