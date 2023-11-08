import 'package:flutter/material.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';

class Textfiledcustam extends StatelessWidget {
  // final formKey = GlobalKey<FormState>();

  final String? hinttext;
  final String? labeltext;
  final Icon? starticon;
  final Widget? lasticon;
  final bool? obscur;
  final VoidCallback? fun;
  final bool? focus;
  final Widget? prefix;

  final TextInputType? keyboardType;
  final TextEditingController? controller;

  Textfiledcustam(
      {this.hinttext,
      this.controller,
      this.labeltext,
      this.lasticon,
      this.obscur = false,
      this.starticon,
      this.keyboardType,
      this.fun,
      this.focus = false,
      this.prefix});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Container(
      height: 62,
      width: 289,
      child: TextFormField(
        autofocus: focus!,
        // key: formKey,
        obscureText: obscur!,
        keyboardType: keyboardType,
        style: TextStyle(),
        controller: controller,
        decoration: InputDecoration(
          hintText: hinttext,
          labelText: labeltext,
          //  prefixText: '| ',

          // prefix: Container(
          //   height: 27,
          //   width: 27,
          //   color: Colors.amber,
          // ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 9.0),
            child: Container(
              height: 27,
              width: 50,
              //  color: Colors.amber,
              child: Row(
                children: [
                  starticon!,
                  Textcustam(
                    text: '   |',
                    col: Colors.grey,
                  )
                ],
              ),
            ),
          ),
          // prefixIcon: starticon,

          suffixIcon: lasticon,

          // border: InputBorder.none,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return ' ';
          } else
            return null;
        },
        onChanged: (value) {
          fun;
        },
      ),
    );
  }
}

class SimpleTextfiled extends StatelessWidget {
  // final formKey = GlobalKey<FormState>();

  final String? hinttext;
  final String? labeltext;
  final Icon? starticon;
  final Widget? lasticon;
  final bool? obscur;
  final VoidCallback? fun;
  final bool? focus;

  final TextInputType? keyboardType;
  final TextEditingController? controller;

  SimpleTextfiled({
    this.hinttext,
    this.controller,
    this.labeltext,
    this.lasticon,
    this.obscur = false,
    this.starticon,
    this.keyboardType,
    this.fun,
    this.focus = false,
  });

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return TextFormField(
      autofocus: focus!,
      // key: formKey,
      obscureText: obscur!,
      keyboardType: keyboardType,
      style: TextStyle(),
      controller: controller,
      decoration: InputDecoration(
        hintText: hinttext,
        labelText: labeltext,
        prefixIcon: starticon,
        suffixIcon: lasticon,

        border: InputBorder.none,
        //   border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        prefixText: '   ',
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return ' ';
        } else
          return null;
      },
      onChanged: (value) {
        fun;
      },
    );
  }
}

class Textfiledcs extends StatelessWidget {
  // final formKey = GlobalKey<FormState>();

  final String? hinttext;
  final String? labeltext;
  final Icon? starticon;
  final Widget? lasticon;
  final bool? obscur;
  final VoidCallback? fun;
  final bool? focus;

  final TextInputType? keyboardType;
  final TextEditingController? controller;

  Textfiledcs({
    this.hinttext,
    this.controller,
    this.labeltext,
    this.lasticon,
    this.obscur = false,
    this.starticon,
    this.keyboardType,
    this.fun,
    this.focus = false,
  });

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return TextFormField(
      autofocus: focus!,
      // key: formKey,
      obscureText: obscur!,
      keyboardType: keyboardType,
      style: TextStyle(),
      controller: controller,
      decoration: InputDecoration(
        hintText: hinttext,
        labelText: labeltext,
        prefixIcon: starticon,
        suffixIcon: lasticon,

        // border: InputBorder.none,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
        prefixText: '   ',
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return ' ';
        } else
          return null;
      },
      onChanged: (value) {
        fun;
      },
    );
  }
}
