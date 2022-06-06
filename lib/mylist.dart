import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var m_width = MediaQuery.of(context).size.width * 0.6;

    var titleList = [
      'Dentist',
      'Pharmacist',
      'School teacher',
      'IT manager',
      'Account',
      'Lawyer',
      'Hairdresser',
      'Physician',
      'Web developer',
      'Medical Secretary'
    ];

    var numList = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

    var description = [
      '1.There are different types of careers you can pursue in your life. Which one will it be?',
      '2.There are different types of careers you can pursue in your life. Which one will it be?',
      '3.There are different types of careers you can pursue in your life. Which one will it be?',
      '4.There are different types of careers you can pursue in your life. Which one will it be?',
      '5.There are different types of careers you can pursue in your life. Which one will it be?',
      '6.There are different types of careers you can pursue in your life. Which one will it be?',
      '7.There are different types of careers you can pursue in your life. Which one will it be?',
      '8.There are different types of careers you can pursue in your life. Which one will it be?',
      '9.There are different types of careers you can pursue in your life. Which one will it be?',
      '10.There are different types of careers you can pursue in your life. Which one will it be?'
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Listview')),
      body: ListView.builder(
        itemCount: titleList.length,
        itemBuilder: (context, index) {
          return Card(
            // child: Text(titleList[index]),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Text(numList[index]),
                ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: m_width,
                      child: Text(titleList[index]),
                    ),
                    Container(
                      width: m_width,
                      child: Text(description[index]),
                    ),
                    
                    
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
