import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/screens/home/components/title_component_widget.dart';
import 'package:first_aid/screens/home/cubit/home_cubit.dart';
import 'package:first_aid/shared_customization/export.dart';
import 'package:flutter/material.dart';

class TipsWidget extends StatefulWidget {
  final HomeState state;

  const TipsWidget({
    super.key,
    required this.state,
  });

  @override
  State<TipsWidget> createState() => _TipsWidgetState();
}

class _TipsWidgetState extends State<TipsWidget> {
  @override
  Widget build(BuildContext context) {
    return TitleComponentWidget(
        title: i18n.Main.Tips,
        child: Column(
          children: [
            AppContainer(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              child: Row(
                children: [
                  SizedBox(width: 6),
                  AppImage(
                    url:
                        "https://prod-cdn.pharmacity.io/blog/mau-cam-1.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAUYXZVMJMURHIYJSN%2F20240805%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20240805T074823Z&X-Amz-SignedHeaders=host&X-Amz-Expires=600&X-Amz-Signature=2d07ba1e69a778ce387031a4a6a164e0420065d30dac50bca15e7a0d9516a711",
                    borderRadius: BorderRadius.circular(8),
                    width: 50,
                    height: 50,
                  ),
                  Expanded(
                    child: AppContainer(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                      child: Center(
                        child: AppText(
                            "Đừng nghiêng đầu ra sau khi chảy máu cam. Thay vào haãy cúi người về phái trươ và bóp chặt mũi"),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
