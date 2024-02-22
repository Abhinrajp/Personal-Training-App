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
                    ),
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
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                image: DecorationImage(
                                  image: FileImage(File(clientdata.image)),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    clientdata.name,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  planbadge(clientdata: clientdata),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        clientdata.category,
                                        style: const TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
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
                                        icon: const Icon(Icons.edit),
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
    if (dayDiff == 0 && dayDiff % 30 == 0) {
      await LocalNotification.showNotification(
        title: 'Fee pending !',
        body: 'Fee of Mr ${clientModelM.name} is pending',
        payload: clientModelM,
        id: clientModelM.id,
      );
    }
  }
}
