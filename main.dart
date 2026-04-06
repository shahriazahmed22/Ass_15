import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),

            /// PROFILE CARD
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade300, blurRadius: 10),
                ],
              ),
              child: Column(
                children: [
                  /// PROFILE IMAGE
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      "https://scontent-bom5-1.xx.fbcdn.net/v/t1.6435-9/70849308_2596775180386137_8617394847659065344_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=1d70fc&_nc_eui2=AeEfaJOwBJ7kS-ZHQW-Q8TQ42hk8XU2qw9raGTxdTarD2pRt77_WNRKgUnp3ueyw50XYjA5DXkgVTW8XlddQFiMF&_nc_ohc=KDWRrLzcuM0Q7kNvwFtkEzS&_nc_oc=AdqziG87MZne-hOgmS5VY-FHVzKcz00OetZr1rCejqueCnisonpyJn5Fjq_xoklOW7AskGSe23TOk2rwXhDDcDm1&_nc_zt=23&_nc_ht=scontent-bom5-1.xx&_nc_gid=JZTTcqcg7g1EDKw1pLZlvw&_nc_ss=7a3a8&oh=00_Af2j1mlkkAZjOLRpl7DgYA8vTm5NY98s40Zkh3tVF6opcA&oe=69FB29A2",
                    ),
                  ),

                  const SizedBox(height: 15),

                  /// NAME
                  const Text(
                    "Shahriaz Ahmed",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 5),

                  /// SUBTITLE
                  const Text(
                    "Flutter Developer",
                    style: TextStyle(color: Colors.grey),
                  ),

                  const SizedBox(height: 12),

                  /// BIO
                  const Text(
                    "Flutter Developer 📱 | Building seamless cross-platform experiences with Dart 🚀 | Firebase ✨ | Clean Code 🛠️",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),

                  const SizedBox(height: 15),
                  const Divider(),

                  /// EMAIL
                  Row(
                    children: const [
                      Icon(Icons.email, color: Colors.grey),
                      SizedBox(width: 10),
                      Text("shahriazahmed22@gmail.com"),
                    ],
                  ),

                  const SizedBox(height: 10),

                  /// PHONE
                  Row(
                    children: const [
                      Icon(Icons.phone, color: Colors.grey),
                      SizedBox(width: 10),
                      Text(" 01748510635 "),
                    ],
                  ),

                  const SizedBox(height: 20),

                  /// BUTTONS
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text("Follow"),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text("Message"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// INTERESTS TITLE
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Interests",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            /// CARDS SECTION
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: buildCard(
                      image:
                          "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
                      title: "Travel",
                      subtitle:
                          "“📸 Solo adventures | 🌟 Capturing moments alone | 🗺️ Worldwide wanderings | #SoloAdventures”",
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: buildCard(
                      image:
                          "https://images.unsplash.com/photo-1565004569929-4f400c11e9ef?q=80&w=1209&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      title: "Photography",
                      subtitle:
                          "Freelance Photographer • Capture Your Deep Soul.",
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  /// CARD WIDGET
  Widget buildCard({
    required String image,
    required String title,
    required String subtitle,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 8)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// IMAGE
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              image,
              height: 110,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          /// TEXT
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
