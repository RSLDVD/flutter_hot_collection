import 'package:flutter/material.dart';

class CodeItemExecute extends StatelessWidget {
  final String codeData;

  const CodeItemExecute({Key? key, required this.codeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic result;
    try {
      result = Function.apply(() => _buildWidgetFromCode(codeData), []);
    } catch (e) {
      result = Text('Error: $e'); // Display error message if code execution fails
    }

    return result as Widget;
  }

  static Widget _buildWidgetFromCode(String codeData) {
    final Function? codeFunction = eval(codeData);
    if (codeFunction != null && codeFunction is Widget Function()) {
      return codeFunction();
    } else {
      throw Exception('Invalid code function');
    }
  }

  static Function? eval(String codeData) {
    return Function.apply(
      Function.apply(
        Function.apply(() {}, []),
        [],
        <Symbol, dynamic>{#code: codeData},
      ),
      [],
      {},
    );
  }
}
