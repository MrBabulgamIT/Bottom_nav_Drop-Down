import 'package:bottom_nav_drop_down/screen/model/model.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Drop_Down extends StatefulWidget {
  Drop_Down({Key? key}) : super(key: key);

  @override
  State<Drop_Down> createState() => _Drop_DownState();
}

class _Drop_DownState extends State<Drop_Down> {
  String? selectvalue = 'Sakib';

  _MyFromValue() {
    selectvalue = countryNameList[1];
  }

  final countryNameList = [
    'Sakib',
    'Tamim',
    'Mahmuddulla',
    'Musfiqur ',
    'Masrafi'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop-Down"),
      ),
      body: Column(
        children: [
          // Expanded(
          //   child: ListView.builder(
          //       itemCount: countryName.modelinfo.length,
          //       itemBuilder: (context, index) {
          //         return Text(countryName.modelinfo[index].country.toString());
          //       }),
          // ),
          DropdownButton(
              value: selectvalue,
              items: countryNameList.map((e) {
                return DropdownMenuItem(
                  child: Text(e),
                  value: e,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectvalue = value.toString();
                  print(value);
                });
              }),

          SizedBox(
            height: 10,
          ),
          Text(
            " Drop Down Botton",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField(
                value: selectvalue,
                decoration: InputDecoration(
                    labelText: "Choice Name",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder()),
                icon: Icon(Icons.arrow_drop_down_circle,
                    color: Colors.deepPurple),
                items: countryNameList.map((e) {
                  return DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  );
                }).toList(),
                hint: Text("data"),
                onChanged: (value) {
                  setState(() {
                    print(value);
                    Get.snackbar('title', ' message');
                  });
                }),
          ),

          SizedBox(
            height: 10,
          ),
          Text(
            "Search Drop Down Botton",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownSearch<String>(
              onChanged: (value) {
                setState(() {
                  Get.snackbar('', value.toString());
                  print(value);
                });
              },
              dropdownDecoratorProps: const DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                      labelText: 'Choice Name',
                      icon: Icon(
                        Icons.arrow_drop_down_circle,
                        color: Colors.blueGrey,
                      ),
                      suffixIconColor: Colors.blueGrey,
                      border: OutlineInputBorder())),
              items: ['Sakib', 'Tamim', 'Mahmuddulla', 'Musfiqur ', 'Masrafi'],
            ),
          ),
        ],
      ),
    );
  }
}
