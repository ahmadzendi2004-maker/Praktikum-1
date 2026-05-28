import 'package:flutter/material.dart';
import 'umum.dart';
import 'confirm.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void pindahHalaman(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const UmumPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFFFF7FF),

      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF7FF),
        elevation: 0,
        centerTitle: true,

        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),

        title: const Text(
          'HealthHub',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),

        child: Column(
          children: [

            const SizedBox(height: 10),

            Container(
              width: double.infinity,
              height: 145,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),

                image: const DecorationImage(
                  image: AssetImage('assets/dokter.jpg'),
                  fit: BoxFit.cover,

                  colorFilter: ColorFilter.mode(
                    Colors.black26,
                    BlendMode.darken,
                  ),
                ),
              ),

              child: const Padding(
                padding: EdgeInsets.all(18),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    Text(
                      'HealthHub:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 6),

                    Text(
                      'Your health partner',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 28),

            ConfirmCard(
              icon: Icons.local_hospital,
              title: 'Dokter Umum',
              onTap: () {
                pindahHalaman(context);
              },
            ),

            const ConfirmCard(
              icon: Icons.medical_services,
              title: 'Dokter Gigi',
            ),

            const ConfirmCard(
              icon: Icons.child_care,
              title: 'Dokter Anak',
            ),

            const ConfirmCard(
              icon: Icons.pets,
              title: 'Dokter Hewan',
            ),
          ],
        ),
      ),
    );
  }
}