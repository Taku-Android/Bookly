import 'package:bookly/feature/search/presentation/manager/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({super.key});

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 16),
      child: TextField(
        controller: searchController ,
          decoration: InputDecoration(
              enabledBorder: buildOutlineInputBorder(),
              focusedBorder: buildOutlineInputBorder(),
              hintText: 'Search by category',
              suffixIcon: IconButton(
                  onPressed: (){
                    search();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 24,
                  )))),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
            color: Colors.white
        )
    );
  }

  search(){

    if(searchController.text.isEmpty){
      return ;
    }

    BlocProvider.of<SearchCubit>(context).searchByCategory(searchController.text);

  }

}