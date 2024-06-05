import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/common/widgets/buttons/elevated_button.dart';
import 'package:sytle_to_perfection/common/widgets/buttons/outlined_button.dart';

import '../../../../../utils/constants/sizes.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
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
          TElevatedButton(onTap: (){}, buttonText: 'SIGN UP')
        ],
      ),
    );
  }
}
