import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckboxSurveyCard extends StatefulWidget {
  final String iconPath;
  final String question;
  final List<dynamic> options;
  final double imageSize;

  const CheckboxSurveyCard({
    super.key,
    required this.iconPath,
    required this.question,
    required this.options,
    this.imageSize = 30,
  });

  @override
  State<CheckboxSurveyCard> createState() => _CheckboxSurveyCardState();
}

class _CheckboxSurveyCardState extends State<CheckboxSurveyCard> {
  final Set<dynamic> selectedItems = {};

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: const BoxDecoration(
                  color: Color(0xFFE8F5F1),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset(widget.iconPath, width: 24, height: 24),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  widget.question,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Column(
            children: List.generate(
              widget.options.length,
              (i) => Column(
                children: [
                  optionItem(widget.options[i]),
                  if (i != widget.options.length - 1)
                    const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget optionItem(dynamic item) {
    final bool isSelected = selectedItems.contains(item);
    final bool isImageOption = item is Map;

    double customImgSize = isImageOption
        ? (item["imgSize"] ?? widget.imageSize)
        : 0;

    double customFontSize = isImageOption ? (item["fontSize"] ?? 14) : 14;

    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedItems.remove(item);
          } else {
            selectedItems.add(item);
          }
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFE6F4EE) : const Color(0xFFF7F8F9),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? const Color(0xFF179778) : Colors.transparent,
            width: 1.8,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: isSelected
                      ? const Color(0xFF179778)
                      : Colors.grey.shade500,
                  width: 2,
                ),
                color: isSelected
                    ? const Color(0xFF179778)
                    : Colors.transparent,
              ),
              child: isSelected
                  ? const Icon(Icons.check, size: 18, color: Colors.white)
                  : null,
            ),

            const SizedBox(width: 12),
            if (isImageOption) ...[
              Image.asset(
                item["img"],
                width: customImgSize,
                height: customImgSize,
              ),
              const SizedBox(width: 48),
              Expanded(
                child: Text(
                  item["text"],
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: customFontSize,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ),
            ] else ...[
              Expanded(
                child: Text(
                  item.toString(),
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
