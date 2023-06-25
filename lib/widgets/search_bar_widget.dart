import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF2F2F2),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(width: 0),
        ),
        hintText: 'Search',
        prefixIcon: const Icon(
          Icons.search,
          color: Color(0xff3d3d3d),
          size: 24,
        ),
        contentPadding: const EdgeInsets.all(4),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(width: 0),
        ),
        hintStyle: const TextStyle(
          color: Color(0xFF3D3D3D),
          fontSize: 16,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          letterSpacing: 0.50,
        ),
      ),
    );
  }
}
