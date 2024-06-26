import 'package:coopartilhar/app/features/request_details/entities/user_request_details_entity.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class RequestDetailsCardUserDetails extends StatelessWidget {
  const RequestDetailsCardUserDetails({
    super.key,
    required this.user,
    required this.city,
    required this.phoneNumber,
  });

  final UserRequestDetailsEntity user;
  final String city;
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    final colors = CoopartilharColors.of(context);
    final textThemes = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          user.name,
          style: textThemes.headlineMedium?.copyWith(
            fontWeight: FontWeight.w500,
            color: colors.textColor,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Text(
                city,
                style: textThemes.bodySmall
                    ?.copyWith(fontSize: 14.0, color: const Color(0xff595959)),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Telefone: ',
              style: textThemes.bodySmall
                  ?.copyWith(fontSize: 14.0, color: colors.textColor),
            ),
            Flexible(
              child: Text(
                phoneNumber,
                style: textThemes.bodySmall
                    ?.copyWith(fontSize: 14.0, color: colors.textColor),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
