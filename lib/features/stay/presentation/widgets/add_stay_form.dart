import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:troy_client/features/stay/domain/entities/stay.dart';

import '../../../shared/widgets/custom_form_field.dart';
import '../riverpod/stay/remote/remote_stay_riverpod.dart';
import 'submit_btn.dart';

class AddStayForm extends ConsumerWidget {
  const AddStayForm({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final saveStay = ref.read(saveStayProvider);

    String enteredName = '';
    int enteredPrice = 0;
    String enteredDescription = '';
    final List<String> enteredImages = [];

    void addStay() {
      if (!formKey.currentState!.validate()) {
        return;
      }
      formKey.currentState!.save();
      saveStay(
        Stay(
            name: enteredName,
            price: enteredPrice,
            description: enteredDescription,
            features: const ['test'],
            images: enteredImages),
      );
    }

    return Form(
      key: formKey,
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
                  onSaved: (newValue) => enteredName = newValue!,
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
                  onSaved: (newValue) => enteredPrice = int.parse(newValue!),
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
            onSaved: (newValue) => enteredDescription = newValue!,
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
            onSaved: (newValue) => enteredImages.add(newValue!),
          ),
          const SizedBox(height: 15),
          SubmitBtn(addStay: addStay)
        ],
      ),
    );
  }
}
