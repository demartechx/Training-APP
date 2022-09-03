import 'package:flutter/material.dart';
import 'package:training_app/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Training",
                  style: TextStyle(
                    fontSize: 30,
                    color: AppColor.homePageTitle,
                    fontWeight: FontWeight.w700
                  ),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: AppColor.homePageIcons,
                ),
                const SizedBox(width: 10,),
                Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                  color: AppColor.homePageIcons,
                ),
                const SizedBox(width: 15,),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: AppColor.homePageIcons,
                )
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                Text(
                  "Your program",
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColor.homePageSubtitle,
                    fontWeight: FontWeight.w700
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColor.homePageDetail,
                  ),
                ),
                const SizedBox(width: 5,),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: AppColor.homePageIcons,
                )
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColor.gradientFirst.withOpacity(0.8),
                    AppColor.gradientSecond.withOpacity(0.9),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(80),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(10, 10),
                    blurRadius: 10,
                    color: AppColor.gradientSecond.withOpacity(0.2)

                  )
                ]

              ),
              child: Container(
                padding: const EdgeInsets.only(left:20, top: 25,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next workout",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColor.homePageContainerTextSmall
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      "Legs Toning",
                      style: TextStyle(
                        fontSize: 25,
                        color: AppColor.homePageContainerTextSmall
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      "and Glutes Workout",
                      style: TextStyle(
                        fontSize: 25,
                        color: AppColor.homePageContainerTextSmall
                      ),
                    ),
                  ],
                ),
              ),

            )
          ],
        ),
      ),
      
    );
  }
}