import 'package:flutter/material.dart';

class VersionWidget extends StatelessWidget {
  final double version;
  const VersionWidget({Key? key, required this.version}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      height: 20, decoration: BoxDecoration(
      color: const Color(0xff763077), borderRadius: BorderRadius.circular(10),),
      child: Center(child: Text("Version $version", style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w500),)),
    );
  }
}
