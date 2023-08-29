import 'package:flutter/material.dart';

class ViewItems extends StatelessWidget {
  const ViewItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (ctx, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11.5, vertical: 10),
        child: Container(
          width: 375,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                spreadRadius: 1,
                blurRadius: 0.8,
                offset: Offset(0, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
