import 'package:fixitnow/screens/widgets/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivityCompletedList extends StatelessWidget {
  const ActivityCompletedList({super.key});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Column(
        children: [
          completedList(
            'Completed',
            '12000 LKR',
            'asset/workerpic1.jpg',
            'Ashen',
            '4.9',
            'June 24th,',
            '4.00pm',
            '8.00pm',
          ),
          SizedBox(height: 40,),
          completedList(
            'Completed',
            '6000 LKR',
            'asset/workerpic3.jpg',
            'Bhanuka',
            '4.8',
            'May 31st,',
            '6.00am',
            '5.28pm',
          ),
        ],
      ),
    );
  }


  Widget completedList(String title, String amount, String imagePath,
      String name, String rating, String todayTime, String arrivalTime,
      String completedTime) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0), // Rounded corners
        border: Border.all(
          color: Colors.grey.withOpacity(0.5), // Border color
          width: 1.0, // Border width
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.lightGreen.withOpacity(0.3),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
            ),
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyles.customTextStyle,
                ),
                Text(
                  amount,
                  style: TextStyles.customTextStyle,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(imagePath),
                    ),
                    SizedBox(width: 10),
                    Text(
                      name,
                      style: TextStyles.bodyLarge,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Text(
                      rating.toString(),
                      style: TextStyles.customTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(todayTime),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                Divider(height: 1, thickness: 0.3),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Arrival Time:'),
                      Expanded(
                        child: Text(
                          arrivalTime,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Completed Time'),
                      Expanded(
                        child: Text(
                          completedTime,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}