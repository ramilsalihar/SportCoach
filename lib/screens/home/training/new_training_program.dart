import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_coach/models/training_model.dart';
import 'package:sport_coach/providers/training_notifier.dart';
import 'package:sport_coach/screens/home/training/training_form.dart';
import 'package:sport_coach/widgets/layout/custom_app_bar.dart';

@RoutePage()
class NewTrainingProgram extends StatefulWidget {
  const NewTrainingProgram({
    super.key,
    this.title,
    this.index,
    this.isEdit = false,
  });

  final String? title;
  final int? index;
  final bool isEdit;

  @override
  State<NewTrainingProgram> createState() => _NewTrainingProgramState();
}

class _NewTrainingProgramState extends State<NewTrainingProgram> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final repetitionsController = TextEditingController();
  final approachesController = TextEditingController();
  final exNameController = TextEditingController();
  final exRepetitionController = TextEditingController();
  final exApproachesController = TextEditingController();
  final exWeightController = TextEditingController();

  TrainingModel? training = TrainingModel.empty();

  @override
  void initState() {
    super.initState();
    final trainingNotifier = context.read<TrainingNotifier>();
    if (widget.isEdit && widget.index != null) {
      training =
          trainingNotifier.findByIndex(widget.index!) ?? TrainingModel.empty();
      if (training != null) {
        nameController.text = training!.name;
        repetitionsController.text = training!.repetition;
        approachesController.text = training!.approaches;
        exNameController.text = training!.exName;
        exRepetitionController.text = training!.exRepetitions;
        exApproachesController.text = training!.exApproaches;
        exWeightController.text = training!.exWeight;
      }
    }
  }

  void _saveTraining() async {
    if (_formKey.currentState!.validate()) {
      final index = widget.isEdit ? widget.index : (widget.index! + 1);
      final training = TrainingModel(
        index: index!,
        imagePath: '',
        name: nameController.text,
        repetition: repetitionsController.text,
        approaches: approachesController.text,
        exName: exNameController.text,
        exRepetitions: exRepetitionController.text,
        exApproaches: exApproachesController.text,
        exWeight: exWeightController.text,
      );

      final trainingNotifier = context.read<TrainingNotifier>();

      if (widget.isEdit) {
        await trainingNotifier.editTraining(widget.index!, training);
      } else {
        await trainingNotifier.addTraining(training);
        await trainingNotifier.setTrainingIndex(widget.index! + 1);
      }

      Navigator.of(context).pop();
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    repetitionsController.dispose();
    approachesController.dispose();
    exNameController.dispose();
    exRepetitionController.dispose();
    exApproachesController.dispose();
    exWeightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.primaryColor,
      appBar: CustomAppBar(
        title: widget.title ??
            (training == null ? 'New Personal Program' : 'Edit Program'),
        actions: [
          TextButton(
            onPressed: _formKey.currentState?.validate() ?? false
                ? _saveTraining
                : null,
            child: Text(
              'Save',
              style: theme.textTheme.headlineMedium!.copyWith(
                color: _formKey.currentState?.validate() ?? false
                    ? Colors.blue
                    : Colors.blue.withOpacity(0.5),
              ),
            ),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: width * 0.9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.grey,
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: TrainingForm(
                nameController: nameController,
                repetitionsController: repetitionsController,
                approachesController: approachesController,
                exNameController: exNameController,
                exRepetitionController: exRepetitionController,
                exApproachesController: exApproachesController,
                exWeightController: exWeightController,
              ),
            )
          ],
        ),
      ),
    );
  }
}
