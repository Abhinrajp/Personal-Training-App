import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Privacy Policy',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.black,
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
          padding: const EdgeInsets.only(left: 15, right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                  'This Privacy Policy governs the manner in which the PT Portall App collects, uses, maintains, and discloses information collected from personal trainers who use the PT Portal App to manage their clients for personal training purposes.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey)),
              SizedBox(
                height: 25,
              ),
              Text(
                '1. Information Collection :',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                  'The PT Portal App collects certain information to facilitate the management of clients for personal training purposes. This may include : '),
              SizedBox(
                height: 25,
              ),
              Text(
                  'Personal Information: The PT Portal App may collect personal information such as your name, contact details, and professional credentials to create and manage your account.'),
              SizedBox(
                height: 25,
              ),
              Text(
                  'Client Information: You may input and manage information about your clients, including their names, contact details, health information, fitness goals, progress tracking data, and any other relevant information necessary for personal training purposes.'),
              SizedBox(
                height: 25,
              ),
              Text('2. Use of Information :',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 25,
              ),
              Text(
                  'The information collected by the PT Portal App is used for the following purposes :'),
              SizedBox(
                height: 25,
              ),
              Text(
                  'Account Management: Your personal information is used to create and manage your account on the PT Portal App.'),
              SizedBox(
                height: 25,
              ),
              Text(
                  '''Client Management: The PT Portal App utilizes client information to help you manage and track your clients' progress, customize training programs, communicate with clients, and provide personalized training services.'''),
              SizedBox(
                height: 25,
              ),
              Text(
                  'Communication: The contact information provided may be used to communicate with you and your clients regarding training schedules, progress updates, appointment reminders, and other relevant information.'),
              SizedBox(
                height: 25,
              ),
              Text('3. Data Security :',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 25,
              ),
              Text(
                  'The PT Portal App prioritizes the security of your personal and client information and employs appropriate measures to safeguard it against unauthorized access, alteration, disclosure, or destruction. However, please be aware that no method of transmission over the internet or electronic storage is 100% secure, and while we strive to protect your information, we cannot guarantee its absolute security.'),
              SizedBox(
                height: 25,
              ),
              Text('4. Disclosure of Information :',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 25,
              ),
              Text(
                  'Your personal and client information may be disclosed in the following circumstances.'),
              SizedBox(
                height: 25,
              ),
              Text(
                  'With your Consent: Information may be disclosed to third parties with your explicit consent.'),
              SizedBox(
                height: 25,
              ),
              Text(
                  'Legal Compliance: We may disclose information if required to do so by law or in response to valid legal requests, such as court orders or subpoenas.'),
              SizedBox(
                height: 25,
              ),
              Text('5. Changes to this Privacy Policy :',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 25,
              ),
              Text(
                  'The PT Portal App reserves the right to update or modify this Privacy Policy at any time. Any changes will be posted on this page, and we encourage you to review this Privacy Policy periodically for any updates.'),
              SizedBox(
                height: 25,
              ),
              Text('6. Contact Us :',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 25,
              ),
              Text(
                  'If you have any questions or concerns about this Privacy Policy or the practices of the PT Portal App, please contact us at '),
              Text('abhinraj8086@gmail.com',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 25,
              ),
              Text(
                  'By using the PT Portal App, you signify your acceptance of this Privacy Policy. If you do not agree to this Privacy Policy, please do not use the Gym Trainer App.'),
              SizedBox(
                height: 25,
              ),
              Text('Last Updated : 02/20/2024',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
