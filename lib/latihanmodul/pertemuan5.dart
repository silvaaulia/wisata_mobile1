import 'package:flutter/material.dart';

class pertemuan5 extends StatefulWidget {
  const pertemuan5({super.key});

  @override
  State<pertemuan5> createState() => _pertemuan5State();
}

class _pertemuan5State extends State<pertemuan5> {
  bool switchValue = false;
  String selectedRadio = '';
  bool olahraga = false;
  bool seni = false;
  String nama = '';
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pertemuaan 5 Widget'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(labelText: 'Masukan Nama'),
              onChanged: (String value) {
                setState(() {
                  nama = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text('Jenis Kelamin:'),
                Radio(
                    value: 'Laki-Laki',
                    groupValue: selectedRadio,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = value.toString();
                      });
                    }),
                Text('Laki-Laki'),
                Radio(
                    value: 'Perempuan',
                    groupValue: selectedRadio,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = value.toString();
                      });
                    }),
                Text('Perempuan'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CheckboxListTile(
                title: Text('Olahraga'),
                value: olahraga,
                onChanged: (value) {
                  setState(() {
                    olahraga = value!;
                  });
                }),
            CheckboxListTile(
                title: Text('Seni'),
                value: seni,
                onChanged: (value) {
                  setState(() {
                    seni = value!;
                  });
                }),
            SizedBox(
              height: 20,
            ),
            SwitchListTile(
                title: Text('Lulus'),
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                })
          ],
        ),
      ),
    );
  }
}
