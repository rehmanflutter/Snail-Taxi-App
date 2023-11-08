import 'package:flutter/material.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';

var Btncol = Color(0xffffbd30);
var bacgroundcol = Colors.white;
var OffBtn = Color(0xffF5F6FA);

Widget lineConainer() {
  return Container(
    height: 5,
    width: 50,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.grey.shade200),
  );
}

// drive_file_rename_outline_sharp        write pance
// chevron_left_outlined
Widget RowBackCustam(BuildContext context, String data) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      CustamContainer(
        hight: 40,
        wigth: 39,
        col: Colors.white,
        depth: 0,
        circular: 15,
        child: Center(
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.chevron_left_outlined,
                //    size: 14,
              )),
        ),
      ),
      Textcustam(
        text: data,
        size: 16,
        weight: FontWeight.w400,
      ),
      SizedBox(
        width: 30,
      )
    ],
  );
}
