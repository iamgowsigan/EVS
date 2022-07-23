import 'package:evs/bottomNavigationBar.dart';
import 'package:evs/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class secondPage extends StatefulWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Config.themeData,
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: bottomNavigationBar(
            mcontext: context,
            ishome: true,
            order: 2,
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 5, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(Icons.location_pin),
                            iconSize: 25,
                            color: basecolor,
                            onPressed: () {}),
                        Text(
                          'Madurai',
                          style: TextStyle(
                            color: basecolor,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        IconButton(
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 25,
                            color: basecolor,
                            onPressed: () {}),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 25, 15, 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Area",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.65,
                              height: 50,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black45, width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Type your Area",
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Colors.black54),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ), //Crank
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Locality",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.65,
                              height: 50,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black45, width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Type your Locality",
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Colors.black54),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ), //Cam
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Date",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.65,
                              height: 50,
                              child: TextField(
                                controller:
                                    dateinput, //editing controller of this TextField
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      20.0, 15.0, 20.0, 10.0),
                                  hintText: "yyyy-mm-dd",
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Colors.black45),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black45,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black54, width: 1.0),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.date_range_rounded,
                                    color: Colors.black45,
                                  ),
                                ),
                                readOnly:
                                    true, //set it true, so that user will not able to edit text
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(
                                          2000), //DateTime.now() - not to allow to choose before today.
                                      lastDate: DateTime(2101));

                                  if (pickedDate != null) {
                                    print(
                                        pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                    String formattedDate =
                                        DateFormat('yyyy-MM-dd')
                                            .format(pickedDate);
                                    print(formattedDate);

                                    setState(() {
                                      dateinput.text =
                                          formattedDate; //set output date to TextField value.
                                    });
                                  } else {
                                    print("Date is not selected");
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Reason",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.65,
                              height: 50,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black45, width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Type your reason",
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Colors.black54),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ), //Set life
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Image",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.65,
                              height: 50,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black45, width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Choose your image",
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Colors.black54),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ), //Dowel FE
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    padding:
                                        EdgeInsets.fromLTRB(40, 12, 40, 12),
                                    primary: themeColor,
                                  ),
                                  child: Text(
                                    "Submit",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: basecolor,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
