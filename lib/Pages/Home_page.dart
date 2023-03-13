import 'package:flutter/material.dart';
import 'package:whatsapp_ui/main.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    // DateTime now = DateTime.now();

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          backgroundColor: Colors.black,
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(
                Icons.camera_alt,
                size: 20,
              ),
            ),
            Tab(
              child: Text('Chats'),
            ),
            Tab(child: Text('Status')),
            Tab(child: Text('Calls')),
          ]),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (
                  context,
                ) =>
                    const [
                      PopupMenuItem(
                        value: 1,
                        child: Text('New Group'),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text('Settings'),
                      ),
                      PopupMenuItem(
                        value: 3,
                        child: Text('Logout'),
                      ),
                    ]),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        body: TabBarView(children: [
          const Text('Camera'),
          ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://media.licdn.com/dms/image/C4D03AQHu9htTmTJQlg/profile-displayphoto-shrink_800_800/0/1647532530058?e=1684368000&v=beta&t=sy9XzNv0oppchVwwaaxpKZg26H1MXBtzZ7vUlpf76q0'),
                    radius: 25.0,
                  ),
                  title: Text('Aman'),
                  subtitle: Text('Sample text for the app.'),
                  trailing: Text(
                    "12:00 A.M",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }),
          ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Recents'),
                      ],
                    ),
                  );
                } else {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: Colors.blueAccent,
                        ),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
                      ),
                    ),
                    title: const Text('Aman'),
                    subtitle: const Text('21 hr ago'),
                  );
                }
              }),
          ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
                  ),
                  title: const Text('Japneet'),
                  subtitle: const Text('Yesterday, 10:29PM'),
                  trailing: Icon(
                    Icons.phone,
                    // index % 2 == 0 ? Icons.phone : Icons.videocam,
                    color: Colors.blueAccent,
                  ),
                );
              }),
        ]),
      ),
    );
  }
}
