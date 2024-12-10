import 'package:flutter/services.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class FourDigitCodeInput extends StatefulWidget {
  const FourDigitCodeInput({super.key});

  @override
  _FourDigitCodeInputState createState() => _FourDigitCodeInputState();
}

class _FourDigitCodeInputState extends State<FourDigitCodeInput> {
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _focusNodes = List<FocusNode>.generate(4, (int index) => FocusNode());
    _controllers = List<TextEditingController>.generate(
        4, (int index) => TextEditingController());
  }

  @override
  void dispose() {
    _focusNodes.forEach((focusNode) => focusNode.dispose());
    _controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  void _nextField(String value, int index) {
    if (value.length == 1 && index < 3) {
      _focusNodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }
    setState(() {}); // Update the UI to reflect the changes in input
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(4, (index) {
        return SizedBox(
          width: 25,
          height: 25,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _controllers[index].text.isNotEmpty
                      ? Theme.of(context).indicatorColor // Black when filled
                      : Theme.of(context).shadowColor, // Light grey when empty
                ),
              ),
              TextFormField(
                showCursor: false,
                controller: _controllers[index],
                focusNode: _focusNodes[index],
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLength: 1,
                style: const TextStyle(
                  fontSize: 20, // Hidden text style
                  color: Colors.transparent, // Make input text invisible
                ),
                decoration: InputDecoration(
                  counterText: "",
                  border: InputBorder.none, // Remove border
                  focusedBorder: InputBorder.none, // Remove focus indicator
                  enabledBorder: InputBorder.none, // Remove enabled border
                  contentPadding: const EdgeInsets.all(0),
                ),
                onChanged: (value) => _nextField(value, index),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(1),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
