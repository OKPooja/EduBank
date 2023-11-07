import 'package:flutter/material.dart';
import 'bankingPages/bankingHome.dart';

class BankingPage extends StatefulWidget {
  const BankingPage({super.key});

  @override
  State<BankingPage> createState() => _BankingPageState();
}

class _BankingPageState extends State<BankingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: BankingHome());
  }
}
