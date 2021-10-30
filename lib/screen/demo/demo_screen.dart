import 'package:flutter/material.dart';
import 'package:sliver_demo/widget/spinner/spinner.dart';

/// Screen for demonstration sliver.
class DemoScreen extends StatelessWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (ctx, index) => _ListChildWidget(index: index),
              childCount: 20,
            ),
          ),
          Spinner(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://www.stockvault.net/data/2018/12/30/258501/preview16.jpg',
                fit: BoxFit.cover,
                height: 300,
              ),
            ),
          ),
          Spinner(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://www.stockvault.net/data/2010/10/01/115175/preview16.jpg',
                fit: BoxFit.cover,
                height: 300,
              ),
            ),
          ),
          Spinner(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://www.stockvault.net/data/2011/04/18/122242/preview16.jpg',
                fit: BoxFit.cover,
                height: 300,
              ),
            ),
          ),
          Spinner(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://www.stockvault.net/data/2014/03/26/155336/preview16.jpg',
                fit: BoxFit.cover,
                height: 300,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (ctx, index) => _ListChildWidget(index: index),
              childCount: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class _ListChildWidget extends StatelessWidget {
  final int index;

  const _ListChildWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: index.isOdd ? Colors.blue : Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          'List element #$index',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
