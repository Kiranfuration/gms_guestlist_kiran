import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guestlistvk/features/guestlist/cubit/guestlist_cubit.dart';

import '../../cubit/guestlist_state.dart';

class GuestListss extends StatefulWidget {
  const GuestListss({super.key});

  @override
  State<GuestListss> createState() => _GuestListssState();
}

class _GuestListssState extends State<GuestListss> {
  @override
  void initState() {
    context.read<GuestlistCubit>().getlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GuestlistCubit, GuestlistState>(
      builder: (context, state) {
        if (state.isLoading) {
          return CircularProgressIndicator();
        }
        return ListView.builder(
            shrinkWrap: true,
            itemCount: state.guestlist.length,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 48, top: 12, right: 151, bottom: 12),
                    child: Text(
                      state.guestlist[index].guestName,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(73, 80, 87, 1)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12, right: 128, bottom: 12),
                    child: Text(
                      state.guestlist[index].bookedBy,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(73, 80, 87, 1)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12, right: 104, bottom: 12),
                    child: Text(
                      state.guestlist[index].status,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(73, 80, 87, 1)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12, right: 104, bottom: 12),
                    child: Text(
                      state.guestlist[index].notes,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(73, 80, 87, 1)),
                    ),
                  ),
                ],
              );
            });
      },
    );
  }
}
