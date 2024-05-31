import 'package:flutter/material.dart';
import 'package:sport_coach/widgets/buttons/app_text_button.dart';
import 'package:sport_coach/widgets/forms/app_text_form_field.dart';

class StatisticsCard extends StatefulWidget {
  const StatisticsCard({super.key});

  @override
  State<StatisticsCard> createState() => _StatisticsCardState();
}

class _StatisticsCardState extends State<StatisticsCard> {
  final playersController = TextEditingController();
  final salaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      color: theme.cardColor,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Statistic',
                  style: theme.textTheme.headlineLarge,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (_) {
                          return Container(
                            height: height * 0.5,
                            width: width,
                            color: theme.cardColor,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  const SizedBox(height: 20),
                                  Text(
                                    'Edit statistic',
                                    style: theme.textTheme.headlineLarge,
                                  ),
                                  const SizedBox(height: 40),
                                  AppTextFormField(
                                    title: 'Amount Players',
                                    hintText: 'Enter',
                                    controller: playersController,
                                  ),
                                  const SizedBox(height: 10),
                                  AppTextFormField(
                                    title: 'Total Salary',
                                    hintText: 'Enter',
                                    controller: salaryController,
                                  ),
                                  const SizedBox(height: 10),
                                  AppTextButton(
                                    title: Text(
                                      'Add',
                                      style: theme.textTheme.displaySmall,
                                    ),
                                    onPressed: () {},
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.edit,
                        color: Colors.blue,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Edit',
                        style: theme.textTheme.headlineSmall!
                            .copyWith(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildColumn('0', 'Amount players', context),
                _buildColumn('\$0', 'Total salary', context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColumn(
    String value,
    String label,
    BuildContext context,
  ) {
    final theme = Theme.of(context).textTheme;
    return Container(
      width: 160,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: theme.displayMedium!.copyWith(
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 4),
          Text(label,
              style: theme.headlineSmall!.copyWith(
                color: Colors.grey,
              )),
        ],
      ),
    );
  }
}
