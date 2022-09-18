import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fluttermvvmobx/core/feature/posts/viewModel/post_view_model.dart';

class PostView extends StatelessWidget {
  final _viewModel = PostViewModel();

  PostView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _viewModel.incrementCount();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(),
      body: Center(
        child: Observer(builder: (_) {
          return Text(_viewModel.count.toString());
        }),
      ),
    );
  }
}
