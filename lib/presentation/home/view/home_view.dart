import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_getx/core.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(),
              const SizedBox(height: 20.0),
              Stack(
                children: [
                  Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [primaryColor, primaryLight],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: primaryColor.withOpacity(0.3),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/logo/logo.png",
                          width: 120.0,
                          height: 120.0,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(width: 10.0),
                        Text(
                          "Melita Kitchen",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FiturAbsensi(
                    fitur: "Absensi",
                    descripsi: "Klik untuk melakukan Absen",
                    onPressed: () {
                      Get.toNamed(AppRoutes.absensi);
                    },
                    icon: Icons.location_on_outlined,
                  ),
                  FiturAbsensi(
                    fitur: "Lembur",
                    descripsi: "Klik untuk melihat daftar Lembur",
                    onPressed: () => Get.toNamed(AppRoutes.lembur),
                    icon: Icons.timelapse,
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
