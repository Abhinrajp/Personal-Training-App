import 'dart:io';
import 'package:flutter/material.dart';
import 'package:personal_training_app/controller/db_contoller/dbfuntions.dart';
import 'package:personal_training_app/model/client_model.dart';
import 'package:personal_training_app/view/screens/edit_screen/screen_edit_profile.dart';
import 'package:personal_training_app/view/screens/profile_screen/workout_stack.dart';
import 'package:personal_training_app/widgets/custom_textfield.dart';

class Search extends SearchDelegate {
  Search({
    super.searchFieldLabel,
    super.searchFieldStyle,
    super.searchFieldDecorationTheme,
    super.keyboardType,
    super.textInputAction,
  });

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      inputDecorationTheme: InputDecorationTheme(
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20.0),
          )),
      hintColor: Colors.grey,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        toolbarTextStyle: TextStyle(color: Colors.black),
      ),
    );
  }

  List clinetdata = [];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ValueListenableBuilder(
          valueListenable: allClientsNotifier,
          builder: (BuildContext context, List<ClientModelM> clientmodelm,
              Widget? child) {
            final listed = clientmodelm.toList();
            final filtered = listed
                .where((element) =>
                    element.name.toLowerCase().contains(query.toLowerCase()))
                .toList();
            if (filtered.isEmpty) {
              return const Center(
                child:
                    Text('No Clients', style: TextStyle(color: Colors.black)),
              );
            }
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemBuilder: (ctx, index) {
                final clinetdata = filtered[index];

                String nameval = clinetdata.name.toLowerCase();

                if ((nameval).contains(query.toLowerCase().trim())) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScreenDetails(
                                clientdata: clinetdata,
                                category: clinetdata.category,
                                index: index,
                              ),
                            ));
                      },
                      child: Card(
                        elevation: 5,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                              image: FileImage(File(clinetdata.image)),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                clinetdata.name,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              // planbadge(clientdata: clinetdata),
                              PlanBadge(clientdata: clinetdata),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    clinetdata.category,
                                    style: const TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  Column(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ScreenEditProfile(
                                                clientdata: clinetdata,
                                                index: index,
                                                categorytitle: '',
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
                            ],
                          ),
                        ),
                      ));
                }
                return null;
              },
              itemCount: filtered.length,
            );
          }),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }
}

//   @override
//   Widget buildResults(BuildContext context) {
//     return ValueListenableBuilder(
//         valueListenable: clientlistnotifier,
//         builder: (BuildContext context, List<ClientModelM> clientmodelm,
//             Widget? child) {
//           final listed = clientmodelm.toList();
//           final filtered = listed
//               .where((element) =>
//                   element.name.toLowerCase().contains(query.toLowerCase()))
//               .toList();
//           return ListView.builder(
//             itemBuilder: (ctx, index) {
//               final data = filtered[index];
//               String nameval = data.name.toLowerCase();
//               if ((nameval).contains((query.toLowerCase().trim()))) {
//                 return Card(
//                     color: Colors.grey,
//                     elevation: 5,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(18.0),
//                     ),
//                     child: ListTile(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => ScreenDetails(
//                                     clientdata: data,
//                                     category: '',
//                                     index: index)));
//                       },
//                       leading: CircleAvatar(
//                         radius: 34,
//                         backgroundImage: FileImage(File(data.image)),
//                       ),
//                       title: Text(
//                         data.name,
//                         style: const TextStyle(
//                             fontWeight: FontWeight.bold, color: Colors.black),
//                       ),
//                       subtitle: Text(
//                         data.phone,
//                         style: const TextStyle(
//                           color: Colors.grey,
//                         ),
//                       ),
//                       trailing: SizedBox(
//                         width: 96,
//                         child: SingleChildScrollView(
//                           child: Column(
//                             children: [
//                               FittedBox(
//                                 fit: BoxFit.scaleDown,
//                                 child: Text(
//                                   'Week ${weeks(data.id, data.plan)}',
//                                   style: const TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 children: [
//                                   IconButton(
//                                     onPressed: () {
//                                       Navigator.pushReplacement(
//                                           context,
//                                           MaterialPageRoute(
//                                             builder: (context) =>
//                                                 ScreenEditProfile(
//                                               clientdata: data,
//                                               index: index,
//                                               categorytitle: '',
//                                             ),
//                                           ));
//                                     },
//                                     icon: const Icon(Icons.edit),
//                                     color: Colors.black,
//                                   ),
//                                   IconButton(
//                                       onPressed: () {
//                                         deletemsg(context, data.id);
//                                       },
//                                       icon: const Icon(
//                                         Icons.delete,
//                                         color: Colors.black,
//                                       ))
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ));
//               }

//               return null;
//             },
//             itemCount: filtered.length,
//           );
//         });
//   }
// }
