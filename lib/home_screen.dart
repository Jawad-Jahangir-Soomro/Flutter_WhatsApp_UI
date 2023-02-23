import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          actions: [
            const Icon(Icons.search),
            const SizedBox(width: 15,),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert),
                itemBuilder: (context,) => const [
                  PopupMenuItem(
                      value: 1,
                      child: Text("New Group")
                  ),
                  PopupMenuItem(
                      value: 2,
                      child: Text("Settings")
                  ),
                  PopupMenuItem(
                      value: 3,
                      child: Text("LogOut")
                  ),
                ]
            ),
            const SizedBox(width: 10,),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Calls"),
              )
            ],
          ),
          backgroundColor: Colors.teal,
        ),
        body: TabBarView(
          children: [
            const Text("Camera"),
            ListView.builder(
              itemCount: 20,
                itemBuilder: (context, index){
                  if ((index%2 == 0)) {
                    return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                    title: Text("Jawad Soomro"),
                    subtitle: Text("Hello! Jawad, Flutter Sikha do"),
                    trailing: Text("6:35 AM"),

                  );
                  } else {
                    return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                    title: Text("John Wick"),
                    subtitle: Text("Hello! Johnny, Java Sikha do"),
                    trailing: Text("8:22 PM"),

                  );
                  }
                }
            ),
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index){
                  if ((index%2 == 0)) {
                    return const ListTile(
                      leading: CircleAvatar(
                        radius: 23,
                        backgroundColor: Colors.teal,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage("https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        ),
                      ),
                      title: Text("Jawad Soomro"),
                      subtitle: Text("10 minutes ago"),

                    );
                  } else {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.teal,
                        radius: 23,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        ),
                      ),
                      title: Text("John Wick"),
                      subtitle: Text("Today, 10:11"),

                    );
                  }
                }
            ),
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index){
                  if ((index%2 == 0)) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage("https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      ),
                      title: Text("Jawad Soomro"),
                      subtitle: Text("Missed a call at 6:43"),
                      trailing: Icon(Icons.call),

                    );
                  } else {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      ),
                      title: Text("John Wick"),
                      subtitle: Text("Video Call at 8:56 for 9 minutes"),
                      trailing: Icon(Icons.video_call),

                    );
                  }
                }
            ),
          ],
        ),
      ),
    );
  }
}
