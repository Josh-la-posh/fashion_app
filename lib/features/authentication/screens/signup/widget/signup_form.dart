import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/common/widgets/buttons/elevated_button.dart';
import 'package:sytle_to_perfection/common/widgets/buttons/outlined_button.dart';
import 'package:sytle_to_perfection/utils/constants/colors.dart';

import '../../../../../utils/constants/sizes.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  @override
  Widget build(BuildContext context) {
    bool? checkboxValue = false;
    return Form(
      child: Column(
        children: [
          TextFormField(
            style: Theme.of(context).textTheme.bodyMedium,
            decoration: const InputDecoration(
                hintText: 'xyz@sop.com',
                labelText: 'Email'
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),
          TextFormField(
            style: Theme.of(context).textTheme.bodyMedium,
            decoration: const InputDecoration(
                hintText: '8 digits password',
                labelText: 'Password'
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),
          TextFormField(
            style: Theme.of(context).textTheme.bodyMedium,
            decoration: const InputDecoration(
                hintText: '8 digits password',
                labelText: 'Confirm Password'
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwElements,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: TColors.textWhite,
                  border: Border.all(
                    color: TColors.black,
                    width: 1
                  )
                ),
                child: Checkbox(
                    value: checkboxValue,
                    onChanged: (value){
                      setState(() {
                        print('check $checkboxValue');
                        checkboxValue = value;
                      });
                    }
                ),
              ),
              SizedBox(width: TSizes.spaceBtwButtons,),
              RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: [
                      TextSpan(
                        text: 'Remember me',
                        style: TextStyle(
                          color: TColors.authGreyText
                        )
                      )
                    ]
                  )
              )
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwElements,),
          TElevatedButton(onTap: (){}, buttonText: 'SIGN UP')
        ],
      ),
    );
  }
}
