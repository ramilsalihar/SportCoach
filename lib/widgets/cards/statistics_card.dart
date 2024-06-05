import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_coach/models/statistics_model.dart';
import 'package:sport_coach/providers/athlete_notifier.dart';
import 'package:sport_coach/widgets/buttons/app_text_button.dart';
import 'package:sport_coach/widgets/forms/app_text_form_field.dart';

class StatisticsCard extends StatefulWidget {
  const StatisticsCard({super.key});

  @override
  State<StatisticsCard> createState() => _StatisticsCardState();
}

class _StatisticsCardState extends State<StatisticsCard> {
  final playersController = TextEditingController(text: '0');
  final salaryController = TextEditingController(text: '0');
  late AthleteNotifier athleteNotifier;

  @override
  void initState() {
    super.initState();
    athleteNotifier = Provider.of<AthleteNotifier>(context, listen: false);
    _initializeStats();
  }

  Future<void> _initializeStats() async {
    final stats = await athleteNotifier.getStats();
    if (stats.isNotEmpty) {
      setState(() {
        playersController.text = stats['players']!;
        salaryController.text = stats['totalSalary']!;
      });
    }
  }

  @override
  void dispose() {
    playersController.dispose();
    salaryController.dispose();
    super.dispose();
  }

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
            _buildHeader(context, theme, width, height),
            const SizedBox(height: 20),
            _buildStatistics(theme),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(
    BuildContext context,
    ThemeData theme,
    double width,
    double height,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Statistic', style: theme.textTheme.headlineLarge),
        GestureDetector(
          onTap: () {
            _showEditModal(context, theme, width, height);
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
                style: theme.textTheme.headlineSmall!.copyWith(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStatistics(ThemeData theme) {
    return Consumer<AthleteNotifier>(
      builder: (context, athleteNotifier, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildStatisticColumn(
              athleteNotifier.players,
              'Amount players',
              theme,
            ),
            _buildStatisticColumn(
              '\$${athleteNotifier.totalSalary}',
              'Total salary',
              theme,
            ),
          ],
        );
      },
    );
  }

  Widget _buildStatisticColumn(String value, String label, ThemeData theme) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: theme.textTheme.displayMedium!.copyWith(
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: theme.textTheme.headlineSmall!.copyWith(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  void _showEditModal(
    BuildContext context,
    ThemeData theme,
    double width,
    double height,
  ) {
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
                Text('Edit statistic', style: theme.textTheme.headlineLarge),
                const SizedBox(height: 40),
                AppTextFormField(
                  title: 'Amount Players',
                  hintText: 'Enter',
                  controller: playersController,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
                AppTextFormField(
                  title: 'Total Salary',
                  hintText: 'Enter',
                  controller: salaryController,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
                AppTextButton(
                  title: Text('Add', style: theme.textTheme.displaySmall),
                  onPressed: () {
                    final stats = context.read<AthleteNotifier>();

                    stats.updateStats(
                      StatisticsModel(
                        players: playersController.text,
                        totalSalary: salaryController.text,
                      ),
                    );
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
