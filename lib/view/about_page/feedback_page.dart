import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Feedback',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('abhinraj8086@gmail.com'),
                IconButton(
                    onPressed: () async {
                      String? encodeQueryParameters(
                          Map<String, String> params) {
                        return params.entries
                            .map((MapEntry<String, String> e) =>
                                '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                            .join('&');
                      }

                      final Uri emailuri = Uri(
                        scheme: 'mailto',
                        path: 'abhinraj8086@gmail.com',
                        query: encodeQueryParameters(<String, String>{
                          'subject': 'Tell about your valuable feedback',
                          'body': 'say to us'
                        }),
                      );
                      if (await canLaunchUrl(emailuri)) {
                        launchUrl(emailuri);
                      } else {
                        throw Exception('error to laucnh $emailuri');
                      }
                    },
                    icon: Icon(Icons.outgoing_mail))
              ],
            )
          ],
        ),
      ),
    );
  }
}
