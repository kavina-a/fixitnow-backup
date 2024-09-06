
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fixitnow/screens/widgets/styles.dart';


  class CategoryItem {
    final String image;
    CategoryItem(this.image);
  }

  List<CategoryItem> items = [
    CategoryItem("asset/category1.png"),
    CategoryItem("asset/category2.png"),
    CategoryItem("asset/category3.png"),
    CategoryItem("asset/category4.png"),
    CategoryItem("asset/category5.png"),
  ];

  class HomeCategoriesList extends StatelessWidget {
    const HomeCategoriesList({super.key});

    @override
    Widget build(BuildContext context) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyles.titleLarge,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "View All",
                  style: TextStyle(color: TextStyles.primaryColor),
                ),
              ),
            ],
          ),

          SizedBox(height: 20),

          Container(
            height: 150,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              separatorBuilder: (context, _) => SizedBox(width: 10),
              itemBuilder: (context, index) => buildCard(context, items[index].image),
            ),
          )
        ],
      );
    }

    Widget buildCard(BuildContext context, String image) {
      return Material(
        child: Container(
          margin: EdgeInsets.only(right: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.secondary,
            ),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          width: 140,
          height: 130,
        ),
      );
    }
  }