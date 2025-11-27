import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [CustomSearchTextField()],
      ),
    );
  }
}

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Image.asset(AssetsData.search, fit: BoxFit.fill),
          ),
          hintText: 'search',
          border: bulidOutlineInputBorder(),
          focusedBorder: bulidOutlineInputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder bulidOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
