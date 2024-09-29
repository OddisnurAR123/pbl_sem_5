import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ActivityPage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF01274E),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
    );
  }
}

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
          child: Container(
            color: const Color(0xFF01274E),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/Icon_logo.png',
                      width: 40, 
                      height: 40, 
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 10), 
                    Image.asset(
                      'assets/icons/Icon_jti.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 50), 
                          const Text(
                            'Sistem Manajemen Sumber Daya Manusia',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w800,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Jurusan Teknologi Informasi',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w800,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Politeknik Negeri Malang',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w800,
                            ),
                            textAlign: TextAlign.left,
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xFF01274E),
                borderRadius: BorderRadius.circular(0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/Icon_kegiatan.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Kegiatan',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          const SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // Padding khusus untuk icon pencarian
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0), // Padding khusus untuk icon
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF01274E),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(6),
                          child: Image.asset(
                            'assets/icons/Icon_pencarian.png',
                            width: 28,
                            height: 28,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            width: 250,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'Pencarian',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, 
                                  horizontal: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),

                  const SizedBox(height: 16),
                  Container(
                  width: 300,
                  padding: const EdgeInsets.only(left: 16.0),
                  child: const Text(
                    'Temukan Penawaran Kegiatan',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                      color: Color(0xFF01274E),
                    ),
                  ),
                ),
                  const SizedBox(height: 8),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const ActivityCard();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF01274E),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/Icon_home.png',
              width: 30, 
              height: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/Icon_profil.png',
              width: 30,
              height: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/Icon_history.png',
              width: 30, 
              height: 30,
            ),
            label: '',
          ),
        ],
        selectedItemColor: Colors.white,   
        unselectedItemColor: Colors.white,  
        showSelectedLabels: false,        
        showUnselectedLabels: false,       
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFD9D9D9),
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Nama Kegiatan',
                  style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w600, fontFamily: 'Inter'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Selengkapnya',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Inter',
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              'Bidang Ilmu Kegiatan',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter',
                  color: Colors.black),
            ),
            const SizedBox(height: 4),
            Text(
              'Tanggal Kegiatan',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Inter',
                  color: Colors.black),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 30,
                  width: 120,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF01274E),
                      backgroundColor: Colors.white,
                      side: BorderSide.none,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero, 
                      ),
                    ),
                    child: const Text(
                      'Tolak',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xFF01274E),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero, 
                      ),
                    ),
                    child: const Text(
                      'Terima',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}