/*
 * This file is part of the Wuzei (https://github.com/sealjp/wuzei.git or 
 * git@github.com:sealjp/wuzei.git).
 * 
 * Copyright (C) 2022-2023 Zhang Xi (sealnippon@gmail.com)
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

import '../../lib.dart';

extension ScreenSize on double {
  //デザイン：390px / 844px
  double get wPt => this * Get.width / 390;
  double get hPt => this * Get.height / 844;
}

extension ScreenSize2 on int {
  //デザイン：390px / 844p
  double get wPt => this * Get.width / 390;
  double get hPt => this * Get.height / 844;
}
