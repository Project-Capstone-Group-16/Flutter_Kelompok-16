import 'package:capstone/components/color_path.dart';
import 'package:capstone/view/profile/alamat_pengguna.dart';
import 'package:flutter/material.dart';

class BiodataPage extends StatefulWidget {
  const BiodataPage({super.key});

  @override
  State<BiodataPage> createState() => _BiodataPageState();
}

class _BiodataPageState extends State<BiodataPage> {
  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPath.background2,
      body: SafeArea(
          child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0, -0.96),
            child: Text(
              'Biodata',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: ColorPath.background,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.9, -0.99),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 24,
              ),
              color: Colors.black,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.87, -0.84),
            child: Container(
              width: 66,
              height: 66,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                'https://picsum.photos/seed/255/600',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.1, -0.8),
            child: Text(
              'Alfian Adi Septianto',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: ColorPath.background,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.84, -0.65),
            child: Text(
              'Nama Depan',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: ColorPath.background,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, -0.55),
            child: Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Container(
                width: 340,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan Nama Depan',
                    hintStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: ColorPath.hinttext,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.84, -0.42),
            child: Text(
              'Nama Belakang',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: ColorPath.background,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.0, -0.32),
            child: Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Container(
                width: 340,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan Nama Belakang',
                    hintStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: ColorPath.hinttext,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.84, -0.19),
            child: Text(
              'Jenis Kelamin',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: ColorPath.background,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.05, -0.080),
            child: Container(
              width: 340,
              height: 50,
              decoration: BoxDecoration(
                color: ColorPath.background2,
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButtonFormField<String>(
                value: dropdownValue,
                items: <String>['Pria', 'Wanita'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'Pilih Jenis Kelamin',
                  hintStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: ColorPath.hinttext,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.84, 0.04),
            child: Text(
              'Tanggal Lahir',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: ColorPath.background,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.88, 0.155),
            child: Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Container(
                width: 75,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.21, 0.155),
            child: Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Container(
                width: 75,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.85, 0.155),
            child: Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Container(
                width: 135,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.84, 0.260),
            child: Text(
              'No Telepon',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: ColorPath.background,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.84, 0.4),
            child: Container(
              width: 80,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                color: Color(0xFFEEF9F7),
                borderRadius: BorderRadius.circular(8),
                shape: BoxShape.rectangle,
              ),
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Text(
                  '+62',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.75, 0.4),
            child: Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Container(
                width: 240,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.84, 0.5),
            child: Text(
              'Alamat',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: ColorPath.background,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.0, 0.645),
            child: Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Container(
                width: 340,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Masukkan Lokasi',
                      hintStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: ColorPath.hinttext,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16.0),
                      prefixIcon: Icon(
                        Icons.place,
                        color: Color(0xFF02B3FF),
                      )),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.0, 0.88),
            child: Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                color: ColorPath.AppbarProfile,
                borderRadius: BorderRadius.circular(15),
                shape: BoxShape.rectangle,
              ),
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Text(
                  'Tambah',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorPath.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
