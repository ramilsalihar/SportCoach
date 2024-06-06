import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_coach/models/athlete_model.dart';
import 'package:sport_coach/models/event_model.dart';
import 'package:sport_coach/providers/event_notifier.dart';
import 'package:sport_coach/screens/home/calendar/event_form.dart';
import 'package:sport_coach/widgets/layout/custom_app_bar.dart';

@RoutePage()
class EventEdit extends StatefulWidget {
  const EventEdit({
    super.key,
    this.index,
    this.title,
    this.isEdit = false,
  });

  final int? index;
  final String? title;
  final bool isEdit;

  @override
  State<EventEdit> createState() => _EventEditState();
}

class _EventEditState extends State<EventEdit> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final locationController = TextEditingController();
  final descriptionController = TextEditingController();
  final athleteController = TextEditingController();
  EventDetail? event = EventDetail.empty();

  @override
  void initState() {
    super.initState();
    final eventNotifier = context.read<EventNotifier>();
    if (widget.isEdit && widget.index != null) {
      event = eventNotifier.findByIndex(widget.index!) ?? EventDetail.empty();
      if (event != null) {
        nameController.text = event!.name;
        locationController.text = event!.location;
        descriptionController.text = event!.description;
      }
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    locationController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  void _saveEvent() async {
    if (_formKey.currentState!.validate()) {
      final index = widget.isEdit ? widget.index : (widget.index! + 1);
      final event = EventDetail(
        index: index!,
        name: nameController.text,
        location: locationController.text,
        description: descriptionController.text,
        date: '',
        time: '',
        athlete: AthleteModel.empty(),
      );

      final eventNotifier = context.read<EventNotifier>();

      if (widget.isEdit) {
        await eventNotifier.editEvent(widget.index!, event);
      } else {
        await eventNotifier.addEvent(event);
        await eventNotifier.setEventIndex(widget.index! + 1);
      }

      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.primaryColor,
      appBar: CustomAppBar(
        title: widget.title ?? (event == null ? 'New Event' : 'Edit Event'),
        actions: [
          TextButton(
            onPressed:
                _formKey.currentState?.validate() ?? false ? _saveEvent : null,
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
      body: Form(
        key: _formKey,
        child: EventForm(
          nameController: nameController,
          locationController: locationController,
          descriptionController: descriptionController,
          athleteController: athleteController,
        ),
      ),
    );
  }
}
