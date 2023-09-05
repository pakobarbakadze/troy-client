import 'package:flutter/material.dart';

import '../../../shared/widgets/custom_form_field.dart';
import 'submit_btn.dart';

class AddStayForm extends StatefulWidget {
  const AddStayForm({
    super.key,
  });

  @override
  State<AddStayForm> createState() => _AddStayFormState();
}

class _AddStayFormState extends State<AddStayForm> {
  final _formKey = GlobalKey<FormState>();

  String _enteredName = '';
  int _enteredPrice = 0;
  String _enteredDescription = '';
  final List<String> _enteredImages = [];

  void _addStay() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
    print(_enteredName);
    print(_enteredPrice);
    print(_enteredDescription);
    print(_enteredImages);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomFormField(
                  labelText: 'Hotel name',
                  validator: (value) {
                    if (value == null || value == '') {
                      return "Enter hotel name";
                    }
                    return null;
                  },
                  onSaved: (newValue) => _enteredName = newValue!,
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: CustomFormField(
                  labelText: 'Price per night',
                  validator: (value) {
                    if (value == null ||
                        int.tryParse(value) == null ||
                        int.parse(value) <= 0) {
                      return "Enter valid price";
                    }
                    return null;
                  },
                  onSaved: (newValue) => _enteredPrice = int.parse(newValue!),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          CustomFormField(
            labelText: 'Hotel description',
            validator: (value) {
              if (value == null || value == '') {
                return "Enter hotel description";
              }
              return null;
            },
            onSaved: (newValue) => _enteredDescription = newValue!,
          ),
          const SizedBox(height: 15),
          CustomFormField(
            labelText: 'Hotel images',
            validator: (value) {
              if (value == null || value == '') {
                return "Enter hotel images";
              }
              return null;
            },
            onSaved: (newValue) => _enteredImages.add(newValue!),
          ),
          const SizedBox(height: 15),
          SubmitBtn(addStay: _addStay)
        ],
      ),
    );
  }
}
