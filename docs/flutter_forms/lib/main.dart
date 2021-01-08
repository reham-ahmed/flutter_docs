import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 100,),
          // TextFormField wraps a TextField and integrates it with the enclosing Form. This provides additional functionality,
          // such as validation and integration with other FormField widgets.
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'Enter your username',
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              fillColor: Colors.amber,
              floatingLabelBehavior: FloatingLabelBehavior.never, // always // auto
              // border: InputBorder.none,
              errorBorder:OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.redAccent)),
              focusedBorder:OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.green)),
              enabledBorder :OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.yellow)),
              prefixIcon: Icon(Icons.text_rotate_up),
              suffixIcon: Icon(Icons.text_rotate_vertical),
              filled: true,
              // hoverColor: Colors.lightBlue,
              errorStyle: TextStyle(color: Colors.orange),
              // isDense: true
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: OutlineButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
