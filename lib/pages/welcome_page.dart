import 'package:flutter/material.dart';
import 'package:travel_app_flutter/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["welcome-1.jpeg", "welcome-2.jpeg", "welcome-3.jpeg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (_, index) {
              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/" + images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 150, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Trips",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Mountain",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 250,
                            child: Text(
                              "Mountain hikes gives you an incredible sense of freedom along with endurance tests. ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                          ResponsiveButton(),
                        ],
                      ),
                      Column(
                        children: List.generate(3, (indexDots) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 2),
                            height: index == indexDots ? 25 : 8,
                            width: 8,
                            decoration: BoxDecoration(
                                color: index == indexDots
                                    ? Color.fromARGB(255, 0, 0, 0)
                                    : Color.fromARGB(255, 105, 105, 105),
                                borderRadius: BorderRadius.circular(8)),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
