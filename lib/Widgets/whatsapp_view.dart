import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
  var whatsappName = [
    "Abdullah",
    "Akash",
    "Junaid",
    "Akasha",
    "Ahmad",
    "Mavia",
    "Usama",
    "Huzaifa",
    "Usman",
    "Rizwan"
  ];

  GlobalKey<ScaffoldState> key1 = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key1,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              key1.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu)),
        title: Text(
          "Whatsapp",
          style: TextStyle(color: Colors.green),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("Setting"),
                value: "setting",
              ),
              PopupMenuItem(
                child: Text("Profiile"),
                value: "profile",
              ),
            ],
          )
        ],
      ),
      // To Display the Data when the Drawer opened
      drawer: Drawer(
        elevation: 1,
        backgroundColor: Colors.green,
        child: Text("Menu Section Appears Here"),
      ),
      body: Container(

          // height: 400,
          child: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewPage(),
                  ));
            },
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/image.png"),
              ),
              title: Text(whatsappName[index]),
              trailing: Text("11:32"),
              subtitle: Text("Messages"),
            ),
          );
        },
        itemCount: whatsappName.length,
      )),
    );
  }
}

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name of The Person"),
      ),
      body: Text(
        "Chats Appeared Here",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

class Updates extends StatelessWidget {
  Updates({super.key});
  var statusImage = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1-e9ONEv2btNnuG0uZGyme7rz925WxfH9qQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5K4phsR9YLT-rLP2mAXr9o2eVgmucWRwA3kbeFwFwdTvU1GCfE69oOvFTi9M6PIB2-W0&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1-e9ONEv2btNnuG0uZGyme7rz925WxfH9qQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5K4phsR9YLT-rLP2mAXr9o2eVgmucWRwA3kbeFwFwdTvU1GCfE69oOvFTi9M6PIB2-W0&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1-e9ONEv2btNnuG0uZGyme7rz925WxfH9qQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5K4phsR9YLT-rLP2mAXr9o2eVgmucWRwA3kbeFwFwdTvU1GCfE69oOvFTi9M6PIB2-W0&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1-e9ONEv2btNnuG0uZGyme7rz925WxfH9qQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5K4phsR9YLT-rLP2mAXr9o2eVgmucWRwA3kbeFwFwdTvU1GCfE69oOvFTi9M6PIB2-W0&usqp=CAU"
  ];
  var statusName = [
    "Abdullah",
    "Akash",
    "Junaid",
    "Akasha",
    "Ahmad",
    "Mavia",
    "Usama",
    "Huzaifa",
  ];
  var channelName = ["Facebook", "Twitter", "Whatsapp"];
  var channelIcon = [
    "assets/images/facebook_Logo.png",
    "assets/images/twitter_logo.png",
    "assets/images/whatsapp_logo.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Updates"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("Status Privacy"),
                value: "status privacy",
              ),
              PopupMenuItem(
                child: Text("Create Channel"),
                value: "Create Channel",
              ),
              PopupMenuItem(
                child: Text("Settings"),
                value: "Settings",
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StatusPage(),
                          ));
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(statusImage[index]),
                            minRadius: 40,
                          ),
                        ),
                        Text(statusName[index]),
                      ],
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: statusImage.length,
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black12,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Channels",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 160,
                ),
                Text(
                  "Explore",
                  style: TextStyle(fontSize: 15),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ))
              ],
            ),
            Container(
              height: 200,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(channelIcon[index]),
                      maxRadius: 20,
                    ),
                    title: Text(channelName[index]),
                    subtitle: Text(channelName[index]),
                    trailing: Text("Yesterday"),
                  );
                },
                itemCount: channelName.length,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Find More Channels to Follows"),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 200,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(channelIcon[index]),
                      maxRadius: 20,
                    ),
                    title: Text(channelName[index]),
                    subtitle: Text(channelName[index]),
                    trailing: Text("Yesterday"),
                  );
                },
                itemCount: channelName.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              color: Colors.white12,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.camera_alt),
                color: Colors.green,
              )),
          Container(
              color: Colors.white12,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.phone),
                color: Colors.green,
              )),
        ],
      ),
    );
  }
}

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Status"),
      ),
      body: Text("This is a Status Page which Will Display The Status"),
    );
  }
}

class Call extends StatelessWidget {
  Call({super.key});
  var whatsappName = [
    "Abdullah",
    "Akash",
    "Junaid",
    "Akasha",
    "Ahmad",
    "Mavia",
    "Usama",
    "Huzaifa",
    "Usman",
    "Rizwan"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calls",
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("Clear Call Logs"),
                value: "clear call logs",
              ),
              PopupMenuItem(
                child: Text("Settings"),
                value: "settings",
              ),
            ],
          )
        ],
      ),
      // To Display the Data when the Drawer opened

      body: Container(
          // height: 400,
          child: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/image.png"),
              ),
              title: Text(whatsappName[index]),
              trailing: Text("11:32"),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.call_received_outlined,
                    color: Colors.red,
                  ),
                  Text("Yesterday, 5:30 pm")
                ],
              ),
            ),
          );
        },
        itemCount: whatsappName.length,
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Card(
            elevation: 5,
            color: Colors.white,
            child: Container(
                color: Colors.white12,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.dialpad),
                  iconSize: 30,
                )),
          ),
          Card(
            elevation: 5,
            color: Colors.green,
            child: Container(
                color: Colors.white12,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.phone),
                  iconSize: 30,
                )),
          ),
        ],
      ),
    );
  }
}
