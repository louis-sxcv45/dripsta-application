import 'package:dripsta/style_manager/colors_manager.dart';
import 'package:dripsta/style_manager/font_manager.dart';
import 'package:dripsta/style_manager/font_style_manager.dart';
import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';

class FormInput extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final bool isPassword;
  final TextInputType keyboardType;
  final String iconPath;
  const FormInput({
    super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    required this.iconPath
  });

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  bool _obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: primaryTextStyle.copyWith(
            fontSize: AppSize.s16,
            fontWeight: FontWeightManager.regular
          ),
        ),
        SizedBox(
          height: AppSize.s12,
        ),
    
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p16
          ),
          height: 50,
          decoration: BoxDecoration(
            color: ColorsManager.bgColorTwo,
            borderRadius: BorderRadius.circular(AppSize.s12)
          ),
          child: Center(
            child: Row(
              children: [
                Image.asset(
                  widget.iconPath,
                  width: 17,
                  height: 12,
                ),
    
                SizedBox(
                  width: AppSize.s16,
                ),
    
                Expanded(
                  child: TextFormField(
                    style: primaryTextStyle,
                    controller: widget.controller,
                    decoration: InputDecoration( ///collapsed untuk menghilangkan underline nya
                      hintText: widget.hintText,
                      isCollapsed: true,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: AppPadding.p12
                      ),
                      hintStyle: thirdTextStyle.copyWith(
                        fontSize: AppSize.s14,
                        fontWeight: FontWeightManager.regular
                      ),
                      border: InputBorder.none,
                      suffixIcon: widget.isPassword ? IconButton(
                        onPressed: () {
                          setState((){
                            _obsecureText = !_obsecureText;
                          });
                        },
                        icon: Icon(
                          _obsecureText ? Icons.visibility_off : Icons.visibility,
                          color: ColorsManager.bgColorOne,
                        )
                      ) : null
                    ),
                    keyboardType: widget.keyboardType,
                    obscureText: widget.isPassword ? _obsecureText : false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}