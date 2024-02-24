import 'package:flutter/material.dart';

class TermsandCondionPage extends StatelessWidget {
  const TermsandCondionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Terms & CConditions',
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
              Text('Terms and Conditions for Trainers',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)),
              SizedBox(
                height: 35,
              ),
              Text(
                '1. Acceptance of Terms :',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                  'By accessing or using the PT Portal platform as a trainer, you agree to be bound by these Terms and Conditions. If you do not agree with all of the provisions of these terms, you may not access or use the platform'),
              SizedBox(
                height: 25,
              ),
              Text('2. Eligibility :',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 25,
              ),
              Text(
                  'To use the PT Portal platform as a trainer, you must be at least 18 years old and legally able to enter into contracts. By using the platform, you represent and warrant that you meet these eligibility requirements'),
              SizedBox(
                height: 25,
              ),
              Text('3. Trainer Responsibilities :',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 15,
              ),
              Text('As a trainer on the PT Portal platform, you agree to.'),
              SizedBox(
                height: 25,
              ),
              Text(
                  'Provide accurate information about your qualifications, experience, and services offered.'),
              SizedBox(
                height: 25,
              ),
              Text('Communicate professionally and respectfully with clients.'),
              SizedBox(
                height: 25,
              ),
              Text(
                  'Adhere to all applicable laws and regulations regarding personal training services.'),
              SizedBox(
                height: 25,
              ),
              Text(
                  'Maintain the confidentiality of client information and respect their privacy.'),
              SizedBox(
                height: 25,
              ),
              Text('4. Service Fees :',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 25,
              ),
              Text(
                  'Trainers may be subject to service fees for using the PT Portal platform. These fees will be outlined in a separate agreement between the trainer and Mr Abhinraj.'),
              SizedBox(
                height: 25,
              ),
              Text('5. Intellectual Property :',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 25,
              ),
              Text(
                  'All content and materials provided by [Your Company Name] on the platform, including but not limited to text, graphics, logos, images, and software, are the intellectual property of [Your Company Name] and protected by copyright laws.'),
              SizedBox(
                height: 25,
              ),
              Text('6. Modifications to Terms :',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 25,
              ),
              Text(
                  'Mr Abhinraj reserves the right to modify or replace these Terms and Conditions at any time. Changes will be effective immediately upon posting to the platform. Continued use of the platform following any such changes constitutes your acceptance of the revised terms'),
              SizedBox(
                height: 25,
              ),
              Text('7. Governing Law :',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                  'These Terms and Conditions shall be governed by and construed in accordance with the laws of Your Country, without regard to its conflict of law provisions.'),
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
