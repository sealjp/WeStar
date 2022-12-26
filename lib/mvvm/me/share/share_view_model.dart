/*
 * This file is part of the Wuzei (https://github.com/sealjp/wuzei.git or 
 * git@github.com:sealjp/wuzei.git).
 * 
 * Copyright (C) 2022 Zhang Xi (sealnippon@gmail.com)
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import '../../../lib.dart';
import 'package:share_plus/share_plus.dart';

class ShareViewModel extends GetxController {
  late UserBox me;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    me = Get.arguments.first;
  }

  void share() {
    final String message = 'me_shareContent'
        .trParams({'name': me.nameStr, 'publicKey': me.publicKey!});
    debugPrint(message);
    Share.share(
      message,
      sharePositionOrigin: Rect.fromCenter(
          center: const Offset(100, 100), width: 100, height: 100),
    );
  }
}