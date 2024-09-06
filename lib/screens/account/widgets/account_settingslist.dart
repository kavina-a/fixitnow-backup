import 'package:fixitnow/screens/widgets/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountSettingsList extends StatelessWidget {
  const AccountSettingsList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Gets screen size
    Brightness brightness = Theme.of(context).brightness;

    Color backgroundColor = brightness == Brightness.light ? TextStyles.primaryColor.withOpacity(0.2) : Theme.of(context).colorScheme.secondary;

    return SingleChildScrollView(
      child: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 25,left: 20),
            child: Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.account_circle_outlined,color: TextStyles.primaryColor,),
                    title: Text('Profile',style: TextStyles.bodyMedium),
                  ),
                  ListTile(
                    leading: Icon(Icons.directions_car,color: TextStyles.primaryColor),
                    title: Text('Notification Settings',style: TextStyles.bodyMedium),
                  ),
                  ListTile(
                    leading: Icon(Icons.payments_outlined,color: TextStyles.primaryColor,),
                    title: Text('Payment Settings',style: TextStyles.bodyMedium),
                  ),
                  ListTile(
                    leading: Icon(Icons.work_history_outlined,color: TextStyles.primaryColor,),
                    title: Text('Earn by working',style: TextStyles.bodyMedium),
                  ),
                  ListTile(
                    leading: Icon(Icons.language_outlined,color: TextStyles.primaryColor,),
                    title: Text('Language Preferences',style: TextStyles.bodyMedium),
                  ),
                  ListTile(
                      leading: Icon(Icons.support_agent,color: TextStyles.primaryColor),
                      title: Text('Help and Support',style: TextStyles.bodyMedium),
                  ),
                  ListTile(
                    leading: Icon(Icons.policy,color: TextStyles.primaryColor,),
                    title: Text('Terms of Service and Privacy Policy',style: TextStyles.bodyMedium),
                  ),
                  ListTile(
                    leading: Icon(Icons.info_outline,color: TextStyles.primaryColor,),
                    title: Text('About',style: TextStyles.bodyMedium),
                  ),
                  ListTile(
                    leading: Icon(Icons.login_outlined,color: TextStyles.primaryColor,),
                    title: Text('Logout',style: TextStyles.bodyMedium),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}