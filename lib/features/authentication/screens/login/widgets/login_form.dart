import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/common/widgets/buttons/elevated_button.dart';
import 'package:sytle_to_perfection/utils/constants/sizes.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../designer/dashboard/screens/home.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
                  hintText: 'your password ...',
                  labelText: 'Password'
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
                const SizedBox(width: TSizes.spaceBtwButtons,),
                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: const [
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
            SizedBox(
              height: 40,
              child: TElevatedButton(
                  onTap: (){Get.to(() => const HomeScreen());},
                  buttonText: 'SIGN IN'
              ),
            )
          ],
        ),
    );
  }
}
