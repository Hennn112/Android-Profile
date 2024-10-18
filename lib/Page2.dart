import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the main screen
            Navigator.of(context).pop();
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
            const SizedBox(height: 20),
            ListTile(
              title: const Text('Name'),
              subtitle: const Text('Hendra Rusmana putra'),
              tileColor: Colors.blue[50], // Warna biru muda
            ),
            const SizedBox(height: 20),
            ListTile(
              title: const Text('About'),
              subtitle: const Text(
                  'Saya adalah seorang siswa di SMK Wikrama Bogor dengan mengambil jurusan Pengembangan Perangkat Lunak Dan Gim (PPLG), saya ingin menjadi programmer sukses yang berada di bidang backend'),
              tileColor: Colors.green[50], // Warna hijau muda
            ),
            const SizedBox(height: 20),
            ListTile(
              title: const Text('Skill'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('HTML'),
                  SizedBox(height: 4),
                  Text('CSS'),
                  SizedBox(height: 4),
                  Text('Javascript'),
                  SizedBox(height: 4),
                  Text('PHP'),
                  SizedBox(height: 4),
                  Text('MySQL'),
                ],
              ),
              tileColor: Colors.purple[50], // Warna ungu muda
            ),
          ],
        ),
      ),
    );
  }
}
