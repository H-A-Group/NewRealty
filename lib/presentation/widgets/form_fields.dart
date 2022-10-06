import 'package:flutter/material.dart';
import 'package:real_estate/core/utils/app_colors.dart';

Widget defaultFormField({
  required TextEditingController? controller,
  required TextInputType type,
  Function? onSubmit,
  Function? onChange,
  Function? onTap,
  bool isPassword = false,
  required Function validate,
  required String hint,
  IconData? prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable = true,
  Widget? widget,
}) =>
    Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              cursorColor: AppColors.darkBlue,
              style: TextStyle(color: AppColors.darkBlue),
              readOnly: widget == null ? false : true,
              controller: controller,
              keyboardType: type,
              obscureText: isPassword,
              enabled: isClickable,
              onFieldSubmitted: (s) {
                onSubmit!(s);
              },
              onTap: () {},
              validator: (String? s) {
                return validate(s);
              },
              decoration: InputDecoration(
                fillColor: Colors.grey[150],
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.white),
                    borderRadius: BorderRadius.circular(15)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.darkBlue, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: hint,
                prefixIcon: Icon(
                  prefix,
                  color: AppColors.darkBlue,
                ),
                hintStyle: TextStyle(
                    color: AppColors.normalGrey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal),
                border: const OutlineInputBorder(),
              ),
            ),
          ),
          widget ?? Container(),
        ],
      ),
    );
