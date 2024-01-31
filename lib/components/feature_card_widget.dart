import 'package:flutter/material.dart';
import 'package:smart_home_app/constant/colors.dart';

import '../models/item_model.dart';

class FeatureCard extends StatefulWidget {
  final ItemModel item;

  const FeatureCard({
    super.key,
    required this.item,
  });

  @override
  State<FeatureCard> createState() => _FeatureCardState();
}

class _FeatureCardState extends State<FeatureCard> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isActive ? COLORS.primaryDarkBg : COLORS.primaryLightBg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: const Color(0xff2E2E2E),
                child: Icon(
                  widget.item.itemIcon,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              isActive
                  ? const Icon(
                      Icons.star,
                      size: 30,
                      color: COLORS.primaryIconColor,
                    )
                  : const SizedBox.shrink(),
            ],
          ),
          const Spacer(),
          Text(
            widget.item.itemName,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: isActive ? Colors.white : COLORS.primaryTextColor,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            '${widget.item.devicesCount} Devices',
            style: const TextStyle(
              fontSize: 13,
              color: COLORS.secondaryTextColor,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                isActive ? 'On' : 'Off',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: isActive ? Colors.white : COLORS.secondaryTextColor,
                ),
              ),
              Switch(
                value: isActive,
                activeColor: COLORS.primaryIconColor,
                activeTrackColor: COLORS.primaryDarkBg,
                inactiveTrackColor: const Color(0xffD6D6D6),
                inactiveThumbColor: Colors.white,
                trackOutlineColor: MaterialStatePropertyAll(
                  isActive ? COLORS.primaryIconColor : Colors.transparent,
                ),
                onChanged: (value) {
                  setState(() {
                    isActive = value;
                  });
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
