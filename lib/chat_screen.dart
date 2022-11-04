import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int selectedTab = 0;
  List<String> listContact = [
    "Khadooj",
    "Aia'a",
    "Noha",
    "Kamalia",
    "Rokia",
    "Aia'a",
    "Noha",
    "Kamalia",
    "Rokia",
    "Aia'a",
    "Noha",
    "Kamalia",
    "Rokia",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.add_circle_outline,
                color: Theme.of(context).colorScheme.primary,
              ),
            )
          ],
          leadingWidth: 200,
          leading: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Edit",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:
                  Text("Chats", style: Theme.of(context).textTheme.headline2),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  contentPadding: EdgeInsets.zero,
                  fillColor: Theme.of(context).colorScheme.onSecondary,
                  hintStyle: Theme.of(context).textTheme.headline5,
                  hintText: "Search",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: listContact.length,
              itemBuilder: (context, index) => conversation(context,
                  name: listContact[index],
                  image: "assets/img.png",
                  desc: "Don't mask or call special attention"),
            ))
          ],
        ),
        extendBody: true,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 5, spreadRadius: 5)
                ]),
            child: BottomNavigationBar(
              backgroundColor: Colors.white.withOpacity(0.0),
              currentIndex: selectedTab,
              onTap: (index) {
                setState(() {
                  selectedTab = index;
                });
              },
              elevation: 0.0,
              items: [
                BottomNavigationBarItem(
                  backgroundColor: Colors.white.withOpacity(0.0),
                  icon: Icon(
                    Icons.home,
                    color: selectedTab == 0
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.secondary,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat,
                    color: selectedTab == 1
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.secondary,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: selectedTab == 2
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.secondary,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    color: selectedTab == 3
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.secondary,
                  ),
                  label: "",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget conversation(BuildContext context,
      {required String name, required String image, required String desc}) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Theme.of(context).colorScheme.onSecondary))),
      child: MaterialButton(
        highlightColor: Colors.transparent,
        onPressed: () {},
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  shape: BoxShape.circle),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Column(
                children: [
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(
                        child: Text(
                          name,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          "08:46 AM",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      )
                    ],
                  )),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Text(
                          desc,
                          style: Theme.of(context).textTheme.headline4,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Flexible(
                        child: false
                            ? const Icon(
                                Icons.check,
                                size: 25,
                              )
                            : Container(
                                height: 25,
                                width: 25,
                                alignment: AlignmentDirectional.centerEnd,
                                decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    shape: BoxShape.circle),
                                child: Center(
                                    child: Text(
                                  "3",
                                  style: Theme.of(context)
                                      .textTheme
                                      .overline
                                      ?.copyWith(fontFamily: "", fontSize: 12),
                                )),
                              ),
                      )
                    ],
                  )),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
