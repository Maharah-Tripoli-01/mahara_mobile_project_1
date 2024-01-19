import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maharah_project/application/cart_cubit.dart';
import 'package:maharah_project/application/cart_state.dart';
import 'package:maharah_project/models/course_details_model.dart';
import 'package:maharah_project/router_app.dart';
import 'package:maharah_project/ui/screens/course_details/course_details_info.dart';
import 'package:maharah_project/ui/screens/course_details/course_title_and_icon.dart';
import 'package:maharah_project/ui/widgets/scaffold_with_floating_panel.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void showSnackBar() {
      const snackBar = SnackBar(
        content: Text('Added Item'),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 3),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    final courseDetailsModel =
        ModalRoute.of(context)!.settings.arguments as CourseDetailsModel;
    final theme = Theme.of(context);

    return ScaffoldWithFloatingPanel(
      body: Scaffold(
        appBar: const _CustomAppBar(),
        body: BlocListener<CartBloc, CartState>(
          listener: (context, state) {
            if (state.showSnackBar) {
              showSnackBar();
            }
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _CourseImage(imageUrl: courseDetailsModel.image),
                  const SizedBox(height: 16),
                  CourseTitleAndIcon(courseDetails: courseDetailsModel),
                  const SizedBox(height: 16),
                  Divider(color: theme.highlightColor),
                  const SizedBox(height: 16),
                  CourseDetailsInfo(
                      courseDetails: courseDetailsModel, theme: theme),
                ],
              ),
            ),
          ),
        ),
      ),
      panel: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                context.read<CartBloc>().addItem(
                      Item(
                        name: courseDetailsModel.name,
                        id: courseDetailsModel.id,
                        quantity: 0,
                        price: courseDetailsModel.price,
                      ),
                    );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Add to cart',
                    style: theme.textTheme.bodyLarge?.copyWith(
                        color: theme.primaryColor, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Icon(Icons.add)
                ],
              ),
            ),
          ),
        ),
      ),
      // Panel code remains the same
    );
  }
}

class _CourseImage extends StatelessWidget {
  final String imageUrl;

  const _CourseImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageUrl,
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
    );
  }
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Course details", style: TextStyle(fontSize: 16)),
      centerTitle: true,
      leading: InkWell(
        onTap: () => Navigator.of(context).pop(),
        child: const Icon(Icons.arrow_back_ios, size: 18),
      ),
      actions: [
        IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).pushNamed(RouteGenerator.cartScreen);
            })
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
