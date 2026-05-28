import 'package:flutter/material.dart';

class UmumPage extends StatelessWidget {
  const UmumPage({super.key});

  void showDialogJanji(BuildContext context) {

    showDialog(
      context: context,
      barrierColor: Colors.black54,

      builder: (_) {
        return AlertDialog(

          backgroundColor: const Color(0xFFFFF7FF),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),

          content: Column(
            mainAxisSize: MainAxisSize.min,

            children: [

              const CircleAvatar(
                radius: 28,
                backgroundColor: Color(0xFFBDEBFF),

                child: Icon(
                  Icons.calendar_month,
                  color: Colors.blue,
                  size: 28,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Konfirmasi Janji Temu',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 14),

              const Text(
                'Ingin konsultasi dengan dr. Ahmad Hidayat?',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 24),

              Row(
                children: [

                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFBDEBFF),
                        foregroundColor: Colors.black,
                      ),

                      child: const Text('Batal'),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),

                      child: const Text('OK'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xFFFFF7FF),

      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF7FF),
        elevation: 0,

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },

          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Container(
              width: double.infinity,
              height: 190,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),

                image: const DecorationImage(
                  image: AssetImage('assets/umum.webp'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 22),

            const Row(
              children: [

                Expanded(
                  child: Text(
                    'dr. Ahmad Hidayat',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                  size: 30,
                ),
              ],
            ),

            const Text(
              'Dokter Umum',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 28),

            const Text(
              'JADWAL PRAKTIK',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Senin - Jumat, 08.00 - 17.00',
            ),

            const SizedBox(height: 28),

            const Text(
              'BIOGRAFI SINGKAT',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Dokter umum dengan pengalaman lebih dari 8 tahun dalam menangani pasien.',
            ),

            const SizedBox(height: 28),

            const Row(
              children: [

                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star_half, color: Colors.amber),

                SizedBox(width: 8),

                Text(
                  '4.5',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 58,

              child: ElevatedButton(
                onPressed: () {
                  showDialogJanji(context);
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),

                child: const Text(
                  'Buat Janji Temu',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 28),
          ],
        ),
      ),
    );
  }
}