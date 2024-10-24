import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_test1/provider/ui_provider.dart';
import 'package:ui_test1/widgets/custom_header.dart';
import 'package:ui_test1/widgets/deal.dart';
import 'package:ui_test1/widgets/recommended/recommended.dart';
import 'package:ui_test1/widgets/search_bar.dart';
import 'package:ui_test1/widgets/top_rate/top_rate.dart';
import 'package:ui_test1/widgets/top_service/top_service.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final icons = ref.watch(dummyImageIcon);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: ImageIcon(
            AssetImage(icons['menu']!),
          ),
          onPressed: () {},
        ),
        title: Image(
          image: AssetImage(icons['logo']!),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.1),
            ),
            child: IconButton(
              padding: const EdgeInsets.only(top: 5),
              splashColor: Colors.red,
              onPressed: () {},
              icon: ImageIcon(
                AssetImage(icons['notification']!),
                size: 30,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.3),
            ),
            child: IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage(icons['shopping_cart']!),
                size: 28,
              ),
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverPersistentHeader(
            floating: true,
            delegate: _SliverAppBarDeleage(
              child: SearchBarCustom(imageIcon: icons['sort']!),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const SliverToBoxAdapter(child: Deal()),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const SectionWidget(
            child1: TopRate(),
            child: CustomHeader(title: 'Top Rated Freelances'),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const SectionWidget(
            child1: TopService(),
            child: CustomHeader(title: 'Top Service'),
          ),
          const SectionWidget(
            child1: Recommended(),
            child: CustomHeader(title: 'Recommended Workshops'),
          ),
        ],
      ),
    );
  }
}

class SectionWidget extends StatelessWidget {
  final Widget child;
  final Widget child1;

  const SectionWidget({
    super.key,
    required this.child,
    required this.child1,
  });

  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(
      slivers: <Widget>[
        SliverAppBar(
          // title: child,
          flexibleSpace: child,
          pinned: true,
        ),
        SliverToBoxAdapter(
          child: child1,
        )
      ],
    );
  }
}

class _SliverAppBarDeleage extends SliverPersistentHeaderDelegate {
  final Widget child;

  _SliverAppBarDeleage({required this.child});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => kToolbarHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
