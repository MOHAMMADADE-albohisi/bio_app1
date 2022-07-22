import 'package:bio_app1/widgest/custom_list_title_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class bioscreen extends StatelessWidget {
  const bioscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BIO Testing',
          style: TextStyle(color: Colors.black87),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.topEnd,
            colors: [
              Color(0xFFC9BBCF),
              Color(0xFFD6EFED),
            ],
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1j8aJ6bZ5OpcmFnw6eRfLGTbK5MUJqJ_zWFDED6E8Q3DcFZ5nogKplWjIHrtDm4PFTV8&usqp=CAU'),
            ),

            const SizedBox(height: 10),

            Text(
              'Flutter Test - 2022',
              style: GoogleFonts.cairo(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Template Flutter',
              style: GoogleFonts.cairo(
                fontSize: 16,
                height: 1,
                fontWeight: FontWeight.w300,
              ),
            ),
            const Divider(

              thickness: 0.6,
              color: Color(0xFF898AA6),
              indent: 40,
              endIndent: 40,
              height: 50,
            ),

            CustomListTitleCard(
              ledingIcon: Icons.location_on_rounded,
              title: 'location',
              subTitle: 'Gazza',
              onActionPressed: () {
                print('location');
                _showMassege(context, message: 'location in Gazza');
              },
              trailingIcon: Icons.location_on_outlined,
              marginBotem: 10,
            ),

            CustomListTitleCard(
              ledingIcon: Icons.phone_android_outlined,
              title: 'Mobile',
              subTitle: 'flutterelancer@app.com',
              onActionPressed: () {
                print('phone Numper');
                _showMassege(context, message: 'phone Numper Call');
              },
              trailingIcon: Icons.phone,
              marginBotem: 10,
            ),

            CustomListTitleCard(
              ledingIcon: Icons.email,
              title: 'Email',
              subTitle: 'flutterelancer@app.com',
              onActionPressed: () {
                print('send email addres');
                _showMassege(context, message: 'send email addres');
              },
              trailingIcon: Icons.send,
            ),
            const Spacer(),

            const Text(
              'UCASIT',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black38,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showMassege(BuildContext context, {required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.blue,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
        // padding: EdgeInsets.all(20),
        elevation: 10,
        // dismissDirection: DismissDirection.vertical,
        dismissDirection: DismissDirection.horizontal,
        action: SnackBarAction(
          label: 'Delete',
          onPressed: () {
            print('Delete');
          },
          textColor: Colors.white,
        ),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
