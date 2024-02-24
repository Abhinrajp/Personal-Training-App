import 'dart:io';
import 'package:flutter/material.dart';
import 'package:personal_training_app/controller/db_contoller/dbfuntions.dart';
import 'package:personal_training_app/model/client_model.dart';
import 'package:personal_training_app/notification/local_notification.dart';
import 'package:personal_training_app/view/screens/edit_screen/screen_edit_profile.dart';
import 'package:personal_training_app/view/screens/home_screen/search_screen.dart';
import 'package:personal_training_app/view/screens/profile_screen/profile_stack.dart';
import 'package:personal_training_app/view/screens/profile_screen/workout_stack.dart';
import 'package:personal_training_app/widgets/custom_textfield.dart';

class FullClientScreen extends StatefulWidget {
  const FullClientScreen({super.key});

  @override
  State<FullClientScreen> createState() => _FullClientScreenState();
}

class _FullClientScreenState extends State<FullClientScreen> {
  @override
  void initState() {
    getAllClientsFromAllBoxes();
    totalclient();
    listenNotification();
    super.initState();
  }

  listenNotification() {
    LocalNotification.onclicknotification.stream.listen((event) {
      print("Notification clicked: $event");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ScreenProfileStack(clientdata: event),
        ),
      );
    });
    print("Notification listener setup complete.");
  }

  @override
  Widget build(BuildContext context) {
    checkFeesForAllClients(allClientsNotifier.value);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: Icon(Icons.group_outlined),
              backgroundColor: Colors.grey.shade300,
              floating: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  totalclient(),
                  IconButton(
                    onPressed: () {
                      showSearch(context: context, delegate: Search());
                    },
                    icon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: ValueListenableBuilder(
                valueListenable: allClientsNotifier,
                builder: (context, value, child) {
                  return SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            mainAxisExtent: 250),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final clientdata = value[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ScreenDetails(
                                  clientdata: clientdata,
                                  category: clientdata.category,
                                  index: index,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          // topLeft: Radius.circular(18),
                                          topRight: Radius.circular(18),
                                        ),
                                        image: DecorationImage(
                                          image:
                                              FileImage(File(clientdata.image)),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        padding: const EdgeInsets.all(12.0),
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.6),
                                          borderRadius: BorderRadius.only(),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              clientdata.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                            Container(
                                              constraints:
                                                  BoxConstraints(maxWidth: 38),
                                              child: PlanBadge(
                                                  clientdata: clientdata),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(18),
                                      // topRight: Radius.circular(18),
                                    ),
                                    color: Colors.black,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          clientdata.category,
                                          style: TextStyle(
                                            color: Colors.purple.shade300,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ScreenEditProfile(
                                                clientdata: clientdata,
                                                index: index,
                                                categorytitle:
                                                    clientdata.category,
                                              ),
                                            ),
                                          );
                                        },
                                        icon: Icon(Icons.edit),
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      childCount: value.length,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text totalclient() {
    return Text(
      "Total Clients: ${allClientsNotifier.value.length}",
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.blueGrey,
      ),
    );
  }

  Future<void> checkFeesForAllClients(List<ClientModelM> clients) async {
    for (final client in clients) {
      await fees(client);
    }
  }

  Future<void> fees(ClientModelM clientModelM) async {
    final joinedDate = DateTime.parse(clientModelM.id);
    final currentDate = DateTime.now();
    final dayDiff = currentDate.difference(joinedDate).inDays;
    if (dayDiff != 0 && dayDiff % 30 == 0) {
      await LocalNotification.showNotification(
        title: 'Fee pending !',
        body: 'Fee of Mr ${clientModelM.name} is pending',
        payload: clientModelM,
        id: clientModelM.id,
      );
    }
  }
}
