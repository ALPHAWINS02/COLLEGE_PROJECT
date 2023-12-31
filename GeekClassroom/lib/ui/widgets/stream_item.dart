import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geeclass/data/model/subject_stream.dart';
import 'package:geeclass/ui/theme/app_color.dart';
import 'package:geeclass/ui/widgets/stream_type.dart';
import 'package:intl/intl.dart';

class StreamItem extends StatelessWidget {
  final SubjectStream stream;
  const StreamItem({Key? key, required this.stream}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.black12,
        border: Border.all(color: AppColor.dark, width: 1.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  stream.type == SubjectStreamType.material
                      ? "assets/icons/material.svg"
                      : "assets/icons/quiz.svg",
                  color: const Color.fromARGB(255, 0, 0, 0),
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        stream.title,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        DateFormat("MMM dd").format(stream.postedAt),
                        style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                // Type
                StreamType(type: stream.type),
              ],
            ),
          ),
          InkWell(
            splashColor: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.05),
            highlightColor:
                const Color.fromARGB(255, 0, 0, 0).withOpacity(0.15),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: AppColor.dark,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/comment.svg",
                    color: const Color.fromARGB(255, 0, 0, 0),
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    "Add class's comment",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
