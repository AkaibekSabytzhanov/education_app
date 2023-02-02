import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List catNames = [
      "Category",
      "Classes",
      "Free Course",
      "BookStore",
      "Live Course",
      "LeaderBoard",
    ];
    List<Color> catColors = const [
      Color(0xFFFFCF2F),
      Color(0xFF6FE08D),
      Color(0xFF61BDFD),
      Color(0xFFFCFF7F),
      Color(0xFFCB84FB),
      Color(0xFF78E667),
    ];
    List<Icon> catIcons = const [
      Icon(Icons.category, color: Colors.white, size: 30.0),
      Icon(Icons.video_library, color: Colors.white, size: 30.0),
      Icon(Icons.assignment, color: Colors.white, size: 30.0),
      Icon(Icons.store, color: Colors.white, size: 30.0),
      Icon(Icons.play_circle_fill, color: Colors.white, size: 30.0),
      Icon(Icons.emoji_events, color: Colors.white, size: 30.0),
    ];
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 15.0, left: 15.0, right: 15.0, bottom: 10.0),
            decoration: const BoxDecoration(
              color: Color(0xFF674AEF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.dashboard,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30.0,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Padding(
                  padding: EdgeInsets.only(left: 3.0, bottom: 15.0),
                  child: Text(
                    'Hi, Programmer',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                  width: MediaQuery.of(context).size.width,
                  height: 55.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search here...",
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 25.0,
                        )),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            color: catColors[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: catIcons[index],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          catNames[index],
                        )
                      ],
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
