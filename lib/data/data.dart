import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> transationData = [
  {
    'icon': const FaIcon(
      FontAwesomeIcons.bowlRice,
      color: Colors.white,
    ),
    'color': const Color(0xffFFC47E),
    'name': 'Food & Drinks',
    'amount': '- ₹ 500.00',
    'date': 'Today',
  },
  {
    'icon': const FaIcon(
      FontAwesomeIcons.bagShopping,
      color: Colors.white,
    ),
    'color': const Color(0xffDC84F3),
    'name': 'Shopping',
    'amount': '- ₹ 2000.00',
    'date': 'Today',
  },
  {
    'icon': const FaIcon(
      FontAwesomeIcons.heart,
      color: Colors.white,
    ),
    'color': const Color(0xffB2A4FF),
    'name': 'Health',
    'amount': '- ₹ 100.00',
    'date': 'Yesterday',
  },
  {
    'icon': const FaIcon(
      FontAwesomeIcons.plane,
      color: Colors.white,
    ),
    'color': const Color(0xff9FC088),
    'name': 'Travel',
    'amount': '- ₹ 350.00',
    'date': 'Yesterday',
  },
  {
    'icon': const FaIcon(
      FontAwesomeIcons.person,
      color: Colors.white,
    ),
    'color': const Color(0xffFFADAD),
    'name': 'Transfer',
    'amount': '- ₹ 50.00',
    'date': 'Day Before',
  },
];
