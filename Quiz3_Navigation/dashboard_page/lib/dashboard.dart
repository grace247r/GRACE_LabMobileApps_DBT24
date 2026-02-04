import 'package:flutter/material.dart';
import 'courses.dart';
import 'messages.dart';
import 'notification.dart';
import 'others.dart';

void main() {
  runApp(
    const MaterialApp(home: Dashboard(), debugShowCheckedModeBanner: false),
  );
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> _pages = [
    const DashboardContent(),
    const Courses(),
    const Messages(),
    NotificationPage(),
    const Others(),
  ];

  final List<String> _titles = [
    "Universitas Prasetiya Mulya",
    "Kursusku",
    "Messages",
    "Notification",
    "Selengkapnya",
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF001351),
        centerTitle: false,
        title: SizedBox(
          width: MediaQuery.of(context).size.width * 0.55,
          child: Text(
            _titles[selectedIndex],
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          GestureDetector(
            onTap: () => _scaffoldKey.currentState!.openEndDrawer(),
            child: const CircleAvatar(
              radius: 15,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                'https://dam.mediacorp.sg/image/upload/s--2t7kYk_Y--/c_crop,h_690,w_1228,x_0,y_27/c_fill,g_auto,h_676,w_1200/f_auto,q_auto/v1/mediacorp/cnabahasa/images/2026-02/lisa-blackpink.jpg?itok=Rc8UWvIB',
              ),
            ),
          ),
          const SizedBox(width: 15),
        ],
      ),
      endDrawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.85,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF001351),
            title: const Text(
              "User Accounts",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://www.prasetiyamulya.ac.id/wp-content/uploads/2020/01/Logo-Universitas-Prasetiya-Mulya.png',
                        height: 60,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.school, size: 50),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Universitas Prasetiya Mulya",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "https://www.prasetiyamulya.ac.id/",
                        style: TextStyle(color: Colors.blue, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                      'https://dam.mediacorp.sg/image/upload/s--2t7kYk_Y--/c_crop,h_690,w_1228,x_0,y_27/c_fill,g_auto,h_676,w_1200/f_auto,q_auto/v1/mediacorp/cnabahasa/images/2026-02/lisa-blackpink.jpg?itok=Rc8UWvIB',
                    ),
                  ),
                  title: const Text("23502410001 Grace L.R. Pangaribuan"),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.chat_sharp),
                  title: const Text("Nilai"),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.folder),
                  title: const Text("Berkas"),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.report),
                  title: const Text("Laporan"),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.badge),
                  title: const Text("Lencana"),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.app_blocking_sharp),
                  title: const Text("Entri Blog"),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.room_preferences),
                  title: const Text("Prefensi"),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.email),
                  title: const Text("Hubungi bantuan situs"),
                  trailing: const Icon(Icons.open_in_browser),
                  onTap: () {},
                ),
                const SizedBox(height: 3),
                ListTile(
                  leading: const Icon(Icons.switch_account),
                  title: const Text("Ganti Akun"),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                const SizedBox(height: 5),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        "Keluar",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: IndexedStack(index: selectedIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF001351),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.speed), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.forum), label: ''),
          BottomNavigationBarItem(
            icon: Badge(label: Text("55"), child: Icon(Icons.notifications)),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: ''),
        ],
      ),
    );
  }
}

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildSectionCard(
            title: 'Kursus yang baru diakses',
            icon: Icons.access_time,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCourseItem("READING AND WRITING...", "S1BM"),
                  _buildCourseItem("AGILE PROJECT MGMT", "S1ESE"),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          _buildSectionCard(
            title: 'Kalender',
            icon: Icons.calendar_month,
            child: const Text(
              "Tidak ada acara mendatang",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionCard({
    required String title,
    required IconData icon,
    required Widget child,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 8),
              Icon(icon, size: 18),
            ],
          ),
          const SizedBox(height: 15),
          child,
        ],
      ),
    );
  }

  Widget _buildCourseItem(String title, String tag) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: double.infinity,
            color: const Color(0xFF59B393),
            child: const Icon(Icons.school, color: Colors.white, size: 40),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFDDE5F4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    tag,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Color(0xFF3E5A99),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
