import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3cove_housecleaning/presentation/resources/value_manager.dart';

class AddOperationForm extends StatefulWidget {
  const AddOperationForm({super.key});

  @override
  State<AddOperationForm> createState() => AadOoperationFormState();
}

class AadOoperationFormState extends State<AddOperationForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSize.s16),
        child: Padding(
          padding: const EdgeInsets.only(top: AppSize.s24),
          child: Column(
            children: [
              Flexible(
                child: TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Nome'),
                  ),
                ),
              ),
              const SizedBox(height: AppSize.s16),
              Flexible(
                child: TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Nome'),
                  ),
                ),
              ),
              const SizedBox(height: AppSize.s16),
              Flexible(
                child: TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Nome'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
