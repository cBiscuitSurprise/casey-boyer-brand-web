import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:validators/validators.dart';

import 'bloc/contact_us_widget_bloc.dart';

class ContactUsWidgetForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();
  final _message = TextEditingController();

  final EdgeInsets _padding = const EdgeInsets.only(
    top: 12,
    bottom: 16,
    right: 24,
    left: 24,
  );

  ContactUsWidgetForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SimpleDialog(
        title: const Text("Contact Casey"),
        children: [
          buildNameBox(context),
          buildEmailBox(context),
          buildPhoneNumberBox(context),
          buildMessageBox(context),
          buildButtons(context),
        ],
      ),
    );
  }

  Widget buildNameBox(context) {
    return Padding(
      padding: _padding,
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
    );
  }

  Widget buildEmailBox(context) {
    return Padding(
      padding: _padding,
      child: TextFormField(
        controller: _email,
        validator: (value) {
          if (!(value == null || value.isEmpty)) {
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
    );
  }

  Widget buildPhoneNumberBox(context) {
    return Padding(
      padding: _padding,
      child: TextFormField(
        controller: _phone,
        decoration: const InputDecoration(
          labelText: 'Phone number',
        ),
      ),
    );
  }

  Widget buildMessageBox(context) {
    return Padding(
      padding: _padding,
      child: TextFormField(
        controller: _message,
        keyboardType: TextInputType.multiline,
        minLines: 1,
        maxLines: 3,
        decoration: const InputDecoration(
          labelText: 'Message',
        ),
      ),
    );
  }

  Widget buildButtons(context) {
    return Padding(
      padding: _padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: () async {
                Navigator.of(context).pop({"state": "cancel"});
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  foregroundColor: Theme.of(context).colorScheme.primary),
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
                    message: _message.text,
                  ));
                }
              },
              child: const Text('Send'),
            ),
          ),
        ],
      ),
    );
  }
}
