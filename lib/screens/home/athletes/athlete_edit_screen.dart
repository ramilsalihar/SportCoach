import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_coach/models/athlete_model.dart';
import 'package:sport_coach/providers/athlete_notifier.dart';
import 'package:sport_coach/screens/home/athletes/athlete_form.dart';
import 'package:sport_coach/widgets/layout/custom_app_bar.dart';

@RoutePage()
class AthleteEditScreen extends StatefulWidget {
  final String? title;
  final int? index;
  final bool isEdit;

  const AthleteEditScreen({
    super.key,
    this.title,
    this.index,
    this.isEdit = false,
  });

  @override
  State<AthleteEditScreen> createState() => _AthleteEditScreenState();
}

class _AthleteEditScreenState extends State<AthleteEditScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  final classesController = TextEditingController();
  final durationController = TextEditingController();
  AthleteModel? athlete = AthleteModel.empty();

  @override
  void initState() {
    super.initState();
    final athleteNotifier = context.read<AthleteNotifier>();
    if (widget.isEdit && widget.index != null) {
      athlete =
          athleteNotifier.findByIndex(widget.index!) ?? AthleteModel.empty();
      if (athlete != null) {
        nameController.text = athlete!.name;
        ageController.text = athlete!.age;
        weightController.text = athlete!.weight;
        heightController.text = athlete!.height;
        classesController.text = athlete!.classes;
        durationController.text = athlete!.duration;
      }
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    weightController.dispose();
    heightController.dispose();
    classesController.dispose();
    durationController.dispose();
    super.dispose();
  }

  void _saveAthlete() async {
    if (_formKey.currentState!.validate()) {
      final index = widget.isEdit ? widget.index : (widget.index! + 1);
      final athlete = AthleteModel(
        index: index!,
        imagePath: '',
        name: nameController.text,
        age: ageController.text,
        weight: weightController.text,
        height: heightController.text,
        classes: classesController.text,
        duration: durationController.text,
      );

      final athleteNotifier = context.read<AthleteNotifier>();

      if (widget.isEdit) {
        await athleteNotifier.editAthlete(widget.index!, athlete);
      } else {
        await athleteNotifier.addAthlete(athlete);
        await athleteNotifier.setAthleteIndex(widget.index! + 1);
      }

      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.primaryColor,
      appBar: CustomAppBar(
        title:
            widget.title ?? (athlete == null ? 'New Athlete' : 'Edit Athlete'),
        actions: [
          TextButton(
            onPressed: _formKey.currentState?.validate() ?? false
                ? _saveAthlete
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
              child: AthleteForm(
                nameController: nameController,
                ageController: ageController,
                weightController: weightController,
                heightController: heightController,
                classesController: classesController,
                durationController: durationController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
