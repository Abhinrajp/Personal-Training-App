import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'About',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 8, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                'PT Portal App is a comprehensive tool designed to assist personal trainers in effectively managing their clients for personal training purposes. Our app prioritizes privacy and data security to ensure a seamless and secure experience for both trainers and clients.',
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                  'With PT Portal App, personal trainers can effortlessly organize client information, track progress, customize training programs, and communicate with clients, all within one intuitive platform. Our goal is to empower trainers to deliver personalized training services while maintaining the highest standards of privacy and confidentiality.'),
              SizedBox(
                height: 35,
              ),
              Text(
                  'We understand the importance of protecting your personal and client information, which is why we employ stringent security measures to safeguard data against unauthorized access, alteration, or disclosure. While we strive to maintain the utmost security, please note that no method of data transmission over the internet is completely foolproof.'),
              SizedBox(
                height: 35,
              ),
              Text(
                  'At PT Portal App, transparency and accountability are paramount. We are committed to regularly updating and improving our privacy practices to ensure compliance with the latest regulations and industry standards. Any updates or modifications to our Privacy Policy will be promptly communicated to our users.'),
              SizedBox(
                height: 35,
              ),
              Text(
                  '''If you have any questions, concerns, or feedback regarding our app or privacy practices, please don't hesitate to reach out to us at abhnraj8086@gmail.com. Your satisfaction and trust are our top priorities.'''),
              SizedBox(
                height: 35,
              ),
              Text(
                  '''For the plan in it's manily catergorised into  three if the plan is less than 4 month the fee per month is 6000 or the plan is in between 6 to 9 the fee per month 5000 or the plan is above 9 month the fee per month 4500 '''),
              SizedBox(
                height: 35,
              ),
              Text(
                  'Thank you for choosing PT Portal App as your trusted companion in the world of personal training.'),
              SizedBox(
                height: 35,
              ),
              Text(
                'Last Updated: 02/20/2024',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
