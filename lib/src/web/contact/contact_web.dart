import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContactWeb extends ConsumerStatefulWidget {
  const ContactWeb({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ContactWebState();
}

class _ContactWebState extends ConsumerState<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
    );
  }
}
