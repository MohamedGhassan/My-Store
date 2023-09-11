import 'package:flutter/material.dart';
import '../../../constant/colorapp.dart';

class TextSignUpOrSignIn extends StatelessWidget {
  final void Function()? onTap;
  final String textone;
  final String texttwo;

  const TextSignUpOrSignIn(
      {super.key,
        required this.onTap,
        required this.textone,
        required this.texttwo});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textone,
            style: Theme.of(context).textTheme.bodyText2),
        InkWell(
          onTap: onTap,
          child: Text(texttwo,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: AppColor.primaryColor)),
        ),
      ],
    );
  }
}
