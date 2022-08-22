import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tcc/screens/home/components/category_card.dart';
import 'package:tcc/screens/home/components/doctor_card.dart';
import 'package:tcc/screens/home/drawer.dart';
import 'package:tcc/screens/login/controller/auth_controller.dart';
import 'package:tcc/themes/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: kBackgroundColor,
      drawer: DrawerHome(),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                        child: SvgPicture.asset('assets/icons/menu.svg')),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Procure o serviço desejado',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: kTitleTextColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Serviços',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              buildCategoryList(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Principais faculdades',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              buildDoctorList(),
            ],
          ),
        ),
      ),
    );
  }

  buildCategoryList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          const SizedBox(
            width: 30,
          ),
          CategoryCard(
            'Odontologia',
            'assets/icons/dental_surgeon.png',
            kBlueColor,
          ),
          const SizedBox(
            width: 10,
          ),
          CategoryCard(
            'Fisioterapia',
            'assets/icons/heart_surgeon.png',
            kYellowColor,
          ),
          const SizedBox(
            width: 10,
          ),
          CategoryCard(
            'Nutrição',
            'assets/icons/eye_specialist.png',
            kOrangeColor,
          ),
          const SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }

  buildDoctorList() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          DoctorCard(
            'UNIP - Vila Guilherme',
            'R. Amazonas da Silva, 737,\nVila Guilherme',
            'assets/images/doctor1.png',
            kBlueColor,
          ),
          const SizedBox(
            height: 20,
          ),
          DoctorCard(
            'UNIP - Tatuapé',
            'R. Antônio Macedo, 505,\nParque São Jorge',
            'assets/images/doctor2.png',
            kYellowColor,
          ),
          const SizedBox(
            height: 20,
          ),
          DoctorCard(
            'UNIP - Marquês',
            'Av. Marquês de São Vicente, 3001,\nÁgua Branca',
            'assets/images/doctor3.png',
            kOrangeColor,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
