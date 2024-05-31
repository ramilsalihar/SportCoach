import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport_coach/navigation/app_router.gr.dart';
import 'package:sport_coach/widgets/cards/app_card.dart';

@RoutePage()
class AthleteScreen extends StatelessWidget {
  const AthleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.primaryColor,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.blue,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text('Athlete', style: theme.textTheme.displaySmall),
          centerTitle: true,
          actions: [
            IconButton(
                icon: const Icon(
                  Icons.edit,
                  color: Colors.blue,
                ),
                onPressed: () {
                  context.router.push(
                    AthleteEditRoute(title: 'Edit Athlete'),
                  );
                }),
            IconButton(
              icon: const Icon(
                Icons.delete,
                color: Colors.blue,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 15,
            right: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppCard(
                child: Row(
                  children: [
                    SizedBox(
                      width: 130,
                      height: 145,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/athlete.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mario Smith',
                          style: theme.textTheme.displayMedium,
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 1,
                          width: 200,
                          color: Colors.blue,
                        ),
                        const SizedBox(height: 10),
                        _buildDetail(context, 'Age', '25'),
                        const SizedBox(height: 10),
                        _buildDetail(context, 'Weight', '140'),
                        const SizedBox(height: 10),
                        _buildDetail(context, 'Height', '6.2'),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  _buildCard(context, '20', 'Classes per month'),
                  const SizedBox(width: 15),
                  _buildCard(context, '40', 'Duration'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetail(
    BuildContext context,
    String title,
    String value,
  ) {
    final theme = Theme.of(context);
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$title   ',
            style: theme.textTheme.headlineSmall!.copyWith(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          TextSpan(
            text: value,
            style: theme.textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, String value, String text) {
    final theme = Theme.of(context).textTheme;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: (width - 45) * 0.5,
      height: 90,
      child: AppCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value,
              style: theme.displayLarge!.copyWith(color: Colors.blue),
            ),
            Text(
              text,
              style: theme.headlineSmall!.copyWith(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
