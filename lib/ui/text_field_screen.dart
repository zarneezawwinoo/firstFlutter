import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class TextFieldScreen extends StatefulWidget {
  @override
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  bool _numberInputIsValid=true;
  final _controller=TextEditingController();
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.cyan,
    body:   ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        const ListTile(
          title: Text('Number Text Field'),
        ),
        _buildNumberTextField(),
        _buildMultilineTextField(),
        _buildPasswordTextField(),
        _buildBorderlessTextField(),

      ],
    ),
  );
  Widget _buildNumberTextField() =>
      TextField(
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.headline4,
        decoration: InputDecoration(
            icon: Icon(Icons.attach_money),
            labelText: 'Enter an integer',
            errorText: _numberInputIsValid ? null : 'Please enter an integer',
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            )
        ),
        onSubmitted: (val)=>
        Fluttertoast.showToast(msg: 'You entered: ${int.parse(val)}',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.amber,
          textColor: Colors.black,
          webPosition: val,
        ), onChanged: (val) {

        var v = int.tryParse(val);
        debugPrint('parsed value=$v');
        if (v == null) {
          setState(() =>
            _numberInputIsValid = false
          );
        }
        else{
          setState(() =>
              _numberInputIsValid=true
          );
        }
      },
      );
  Widget _buildMultilineTextField()=> TextField(
      controller: _controller,
      maxLines: 10,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counterText: '${_controller.text.split(' ').length} words',
        labelText: 'Enter multiline text',
        hintText: 'type somethings...',
        border: const OutlineInputBorder(),
      ),
    onChanged: (text) {
      setState((){});
      print(_controller.text);
    },

    );
  bool _showPassword=false;
  Widget _buildPasswordTextField()
  => TextField(
      obscureText: !_showPassword,
      decoration:  InputDecoration(
        labelText: 'password',
        prefixIcon: Icon(Icons.security),
        suffixIcon: IconButton(
          icon: Icon(
            Icons.remove_red_eye,
            color: _showPassword ? Colors.blue:Colors.grey,
          ),
          onPressed: ()
          {
            setState(() {
          _showPassword=!_showPassword;
            });
          },
        )
      )
    );
  Widget _buildBorderlessTextField()
  => const TextField(
      maxLines: 3,
    decoration: InputDecoration.collapsed(hintText: 'borderless input'),
    );

  
}


