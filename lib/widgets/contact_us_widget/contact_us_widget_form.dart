import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:validators/validators.dart';

import 'bloc/contact_us_widget_bloc.dart';

class ContactUsWidgetForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();

  ContactUsWidgetForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  controller: _name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Name field cannot be blank.';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  controller: _email,
                  validator: (value) {
                    if (!(value == null || value.isEmpty)) {
                      print(value);
                      if (!isEmail(value)) {
                        return 'Invalid email address.';
                      }
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Email address',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  controller: _phone,
                  validator: (value) {
                    if (!(value == null || value.isEmpty)) {
                      print(value);
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Phone number',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                      onPressed: () async {
                        Navigator.of(context).pop({"state": "cancel"});
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.background,
                          foregroundColor:
                              Theme.of(context).colorScheme.primary),
                      child: const Text('Cancel'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          BlocProvider.of<ContactUsWidgetBloc>(context)
                              .add(ContactUsSubmitEvent(
                            name: _name.text,
                            email: _email.text,
                            phone: _phone.text,
                          ));
                        }
                      },
                      child: const Text('Send'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
