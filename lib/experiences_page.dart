import 'package:flutter/material.dart';
import 'package:ppm_3/sidemenu.dart';

class ExperiencesPage extends StatelessWidget {
  const ExperiencesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experiences Page'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Staff Divisi Edukasi HMIF 2022'),
            subtitle: Text('Seorang staff Divisi Edukasi pada HMIF'),
            leading: Icon(Icons.star), // You can change the icon as needed.
          ),
          ListTile(
            title: Text('KP ISC 2022'),
            subtitle: Text(
                'Menjadi seorang ketua pelaksana pada proker Informatics Study Club pada tahun 2022, pada kesempatan ini saya memimpin dan mengkoordinir kegiatan ISC tersebut'),
            leading: Icon(Icons.star),
          ),
          ListTile(
            title: Text('Sekretaris Divisi Edukasi HMIF 2023'),
            subtitle: Text(
                'Saya berkesempatan menjadi sekretaris divisi edukasi pada tahun 2023'),
            leading: Icon(Icons.star),
          ),
          ListTile(
            title: Text('Staff Kementrian Riset dan Data BEM Unsoed 2023'),
            subtitle: Text(
                'Saya berkesempatan menjadi bagian dari Kementrian Riset dan Data di ditjen analisis data'),
            leading: Icon(Icons.star),
          ),
          ListTile(
            title: Text('KP Kunjungan Lembaga'),
            subtitle: Text(
                'Menjadi Ketua Pelaksana kunjungan lembaga dengan lembaga yang masih berkaitan dengan riset dan data'),
            leading: Icon(Icons.star),
          ),
        ],
      ),
      drawer: const Sidemenu(),
    );
  }
}
