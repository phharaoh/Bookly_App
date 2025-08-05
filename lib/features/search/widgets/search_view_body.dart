import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../core/utils/styles.dart';
import 'package:bookly_app/features/search/widgets/search_resualt_list_view.dart';
import 'package:bookly_app/features/search/widgets/custom_search_text_feild.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomSearchTextField(),
          SizedBox(height: 16),
          Text('Search Result', style: Styles.textStyle18),
          SizedBox(height: 16),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}


