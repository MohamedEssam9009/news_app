import 'package:flutter/material.dart';
import 'package:news_app/models/news_item.dart';
import 'package:news_app/views/widgets/app_bar_icon.dart';
import 'package:news_app/views/widgets/custom_carousel_slider.dart';
import 'package:news_app/views/widgets/home_title_widget.dart';

import '../widgets/recommendation_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppBarIcon(icon: Icons.menu),
                    Row(
                      children: [
                        AppBarIcon(icon: Icons.search),
                        SizedBox(width: 6.0),
                        AppBarIcon(icon: Icons.notifications),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                const HomeTitleWidget(title: 'Breaking News'),
                const SizedBox(height: 8.0),
                const CustomCarouselSlider(),
                const SizedBox(height: 16.0),
                const HomeTitleWidget(title: 'Recommendation'),
                const SizedBox(height: 8.0),
                ...news.map(
                  (newsItem) => Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: RecommendationItem(newsItem: newsItem),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
