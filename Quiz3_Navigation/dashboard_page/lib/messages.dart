import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.contact_mail),
                SizedBox(width: 30),
                Text("Contacts", style: TextStyle(fontSize: 15)),
                SizedBox(width: 230),
                Icon(Icons.chevron_right),
              ],
            ),
            SizedBox(height: 20),

            Row(
              children: [
                Icon(Icons.keyboard_arrow_down),
                SizedBox(width: 30),
                Text("Bertanda bintang (1)",
                style: TextStyle(fontWeight: FontWeight.w600),)
              ],
            ),
            SizedBox(height: 20),

            Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                    'https://dam.mediacorp.sg/image/upload/s--2t7kYk_Y--/c_crop,h_690,w_1228,x_0,y_27/c_fill,g_auto,h_676,w_1200/f_auto,q_auto/v1/mediacorp/cnabahasa/images/2026-02/lisa-blackpink.jpg?itok=Rc8UWvIB',
                  ),
                ),
                SizedBox(width: 10),
                Text("23502410001 Grace L.R. Pangaribuan",
                style: TextStyle(fontWeight: FontWeight.bold),)
            ],),
            SizedBox(height: 20),

            Row(
              children: [
                Icon(Icons.chevron_right),
                SizedBox(width: 20),
                Text("Grup (1)",
                style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(height: 20),

            Row(
              children: [
                Icon(Icons.chevron_right),
                SizedBox(width: 20),
                Text("Privat (0)", style: TextStyle(fontWeight: FontWeight.w600)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
