import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staff_information/features/login/presentation/blocs/login_state.dart';
import 'package:staff_information/features/staff/detail/presentation/pages/detail_staff_page.dart';
import 'package:staff_information/features/staff/list/domain/entities/list_user_entity.dart';
import 'package:staff_information/features/staff/list/presentation/blocs/list_user_bloc.dart';
import 'package:staff_information/features/staff/list/presentation/blocs/list_user_event.dart';
import 'package:staff_information/features/staff/list/presentation/blocs/list_user_state.dart';
import 'package:staff_information/features/staff/list/presentation/widgets/item_list_user.dart';

class ListUserScreen extends StatefulWidget {
  const ListUserScreen({Key? key}) : super(key: key);

  @override
  State<ListUserScreen> createState() => _ListUserScrennState();
}

class _ListUserScrennState extends State<ListUserScreen> {
  
  List<UserEntity> _userList = [];

  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<UserBloc>(context).add(GetListUserEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<UserBloc, UserState>(
      builder: (context, state) => _buildUI(context),
      listener: (context , state) {
        if(state is UserLoading) {
        } else if( state is GetUserSuccess) {
          _userList = state.listUser;
        } else if (state is LoginError) {
        }
      },
    );
    
  }
  
  _buildUI(BuildContext context) {
    return Scaffold(
      body: _userList.length > 0 ? ListView.builder(
        itemCount: _userList.length,
        itemBuilder: (context, i) {
          return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  DetailStaffPage(userEntity: _userList[i],)),
                );
              },
              child: ItemListUser(userEntity: _userList[i],));
        },
      ) : const Center(child: CircularProgressIndicator(),)
    );
  }

}

