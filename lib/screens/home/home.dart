import 'package:fixitnow/screens/home/widgets/home_appbar.dart';
import 'package:fixitnow/screens/home/widgets/home_categorieslist.dart';
import 'package:fixitnow/screens/home/widgets/home_jobcard.dart';
import 'package:fixitnow/screens/home/widgets/home_searchcard.dart';
import 'package:fixitnow/screens/widgets/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          children: const [

            HomeAppBar(),

            SizedBox(height: 60,),

            HomeSearchCard(),

            SizedBox(height: 60,),

            HomeCategoriesList(),

            SizedBox(height: 40,),

            Divider(),

            SizedBox(height: 20,),

            JobCard(),

          ],
        ),
      ),

    );
  }
}
