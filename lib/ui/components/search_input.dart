import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key, this.stream, this.onChanged});

  final Stream<String?>? stream;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String?>(
      stream: stream,
      builder: (context, snapshot) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            initialValue: snapshot.data ?? '',
            onChanged: onChanged,
            decoration: InputDecoration(
              fillColor: Colors.grey.shade300,
              filled: true,
              focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
              errorBorder: const OutlineInputBorder(borderSide: BorderSide.none),
              enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
              hintText: "Enter search query",
              errorText: snapshot.hasError ? snapshot.error.toString() : null
          ),),
        );
      }
    );
  }
}
