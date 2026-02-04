import 'package:flutter/material.dart';

class Others extends StatefulWidget {
  const Others({super.key});

  @override
  State<Others> createState() => _OthersState();
}

class _OthersState extends State<Others> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(
                Icons.calendar_today_outlined,
                color: Color(0xFF001351),
              ),
              title: const Text("Kalender"),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.local_offer_outlined,
                color: Color(0xFF001351),
              ),
              title: const Text("Tagar"),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),

           
            const Spacer(),

            const Divider(), 
            
            ListTile(
              leading: const Icon(
                Icons.settings_outlined,
                color: Color(0xFF001351),
              ),
              title: const Text("Setelan aplikasi"),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
