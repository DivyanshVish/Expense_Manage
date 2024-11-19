import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projects/constant/custom_text_field.dart';

class AddExpenceScreen extends StatelessWidget {
  const AddExpenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Theme.of(context).colorScheme.surface,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0 * 2),
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Add Expense',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8 * 2),
                const CustomTextField(
                  icon: FontAwesomeIcons.rupeeSign,
                ),
                const SizedBox(height: 16),
                const CustomTextField(
                  icon: FontAwesomeIcons.list,
                  hintText: 'Catergory',
                  radius: 12,
                ),
                const SizedBox(height: 16),
                const CustomTextField(
                  icon: FontAwesomeIcons.rupeeSign,
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Add Expense'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
