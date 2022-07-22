import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CusomBioCard extends StatelessWidget {
  const CusomBioCard({
    required IconData ledingIcon,
    required String title,
    // ignore: non_constant_identifier_names
    required String SubTitle,
    required IconData trailingIcon,
    double marginnBoutom = 0,
    Key? key,
  })  : _ledingIcon = ledingIcon,
        _title = title,
        _SubTitle = SubTitle,
        _trailingIcon = trailingIcon,
        _marginnBoutom = marginnBoutom,
        super(key: key);
  final IconData _ledingIcon;
  final String _title;

  // ignore: non_constant_identifier_names
  final String _SubTitle;
  final IconData _trailingIcon;
  final double _marginnBoutom;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.only(left: 20, right: 20, top: _marginnBoutom),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(_ledingIcon),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _title,
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  _SubTitle,
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w300, fontSize: 12),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                print('we are here');
              },
              icon: Icon(_trailingIcon),
            ),
          ],
        ),
      ),
    );
  }
}
