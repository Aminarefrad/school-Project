import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:main/model/catrgorylist.dart';

class ExpandedList extends StatefulWidget {
  // const ExpandedList({super.key});

  @override
  State<ExpandedList> createState() => _ExpandedListState();
}

class _ExpandedListState extends State<ExpandedList> {
  List<item> itemlist = [
    item(
        header: "محمدامین",
        body:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
    item(
        header: "امیر محمد",
        body:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
    item(
        header: "امیر علی",
        body:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
    item(
        header: "امیر طاها",
        body:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
    item(
        header: "امیر رضا",
        body:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
  ];
  double height = 50;
  int? selected;
  slectedraudio(int value) {
    setState(() {
      selected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("ExpandedList"),
        ),
        body: SingleChildScrollView(
          child: ExpansionPanelList.radio(
            children: itemlist
                .map((item) => ExpansionPanelRadio(
                    value: item.header!,
                    headerBuilder: (context, isExpanded) => ListTile(
                            title: Row(
                          children: [
                            Text(
                              item.header!,
                              style: TextStyle(fontSize: 15),
                            ),
                            Radio(
                              value: 1,
                              groupValue: selected,
                              onChanged: (value) {
                                setState(() {
                                  selected = value;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 80,
                            ),
                            Radio(
                              value: 2,
                              groupValue: selected,
                              onChanged: (value) {
                                setState(() {
                                  selected = value;
                                });
                              },
                            )
                          ],
                        )),
                    body: bodelist()))
                .toList(),
          ),
        ),
      ),
    );
  }
}

class bodelist extends StatelessWidget {
  const bodelist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Column(
      children: [
        Row(
          children: [
            const Text(
              "دلایل :",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              width: 12,
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "دلیل",
                    hintStyle: TextStyle(fontSize: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            )
          ],
        ),
        SizedBox(
          height: 13,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("ثبت")),
            SizedBox(
              width: 13,
            ),
            ElevatedButton(onPressed: () {}, child: Text("ویرایش"))
          ],
        )
      ],
    ));
  }
}
