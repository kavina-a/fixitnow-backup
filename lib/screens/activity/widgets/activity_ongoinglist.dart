import 'package:fixitnow/screens/widgets/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivityOngoingList extends StatelessWidget {
  const ActivityOngoingList({super.key});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 24),
      child: Column(
        children: [
          ongoing(
            'Ongoing',
            '6000 LKR',
            'asset/workerpic1.jpg',
            'Ashen',
            4.9,
            'Today, 4:10',
            '4.00pm',
            'Still Ongoing',
            context,
          ),

          SizedBox(height: 40,),

          ongoing(
            'Ongoing',
            '7000 LKR',
            'asset/workerpic3.jpg',
            'Bhanuka',
            4.8,
            'Today, 11:20',
            '11.00am',
            'Still Ongoing',
            context,
          ),
        ],
      ),
    );
  }


  Widget ongoing(String title, String amount, String imagePath,
      String name, double rating, String todayTime, String arrivalTime,
      String completedTime,BuildContext context) {

    Color borderColor = Theme.of(context).colorScheme.onSurface.withOpacity(0.5);
    Color backgroundColor = Theme.of(context).colorScheme.primary.withOpacity(0.3);

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12.0), // Rounded corners
        border: Border.all(
          color: borderColor, // Border color
          width: 1.0, // Border width
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: TextStyles.primaryColor.withOpacity(0.3),
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 8),

                const Divider(height: 1, thickness: 0.3),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      const Text('Arrival Time:'),

                      Expanded(
                        child: Text(
                          arrivalTime,
                          textAlign: TextAlign.right,
                          style: TextStyles.bodyMedium,
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
                          style: TextStyles.bodyMedium,
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
