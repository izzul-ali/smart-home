import 'package:flutter/material.dart';

class ItemModel {
  final String itemName;
  final IconData itemIcon;
  final int devicesCount;

  ItemModel({
    required this.itemName,
    required this.itemIcon,
    required this.devicesCount,
  });
}

final List<ItemModel> items = [
  ItemModel(
    itemName: 'Lighting',
    itemIcon: Icons.light_outlined,
    devicesCount: 10,
  ),
  ItemModel(
    itemName: 'Sony Bravia Smart TV',
    itemIcon: Icons.tv,
    devicesCount: 1,
  ),
  ItemModel(
    itemName: 'LG AC',
    itemIcon: Icons.ac_unit,
    devicesCount: 2,
  ),
  ItemModel(
    itemName: 'Sony Studio',
    itemIcon: Icons.ad_units_outlined,
    devicesCount: 7,
  ),
];
