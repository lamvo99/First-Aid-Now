import 'package:first_aid/model/export.dart';
import 'package:uuid/uuid.dart';

import '../app_common_data/enum/supplies_catgory.dart';

List<SupplyModel> suppliesData = [
  // Nhóm Essential
  SupplyModel(
      name: "Găng tay dùng một lần",
      note: "(Nitril, không latex)",
      supplyCategory: SuppliesCategory.ESSENTIAL,
      isChecked: false,
      isImportant: true
  ),
  SupplyModel(
      name: "Băng gạc vô trùng",
      note: "Kích thước 10x10 cm",
      supplyCategory: SuppliesCategory.ESSENTIAL,
      isChecked: false,
      isImportant: true
  ),
  SupplyModel(
      name: "Băng cuộn",
      note: "Ống băng elastic",
      supplyCategory: SuppliesCategory.ESSENTIAL,
      isChecked: false,
      isImportant: true
  ),

  // Nhóm Dressing
  SupplyModel(
      name: "Băng dán y tế",
      note: "Nhiều kích cỡ",
      supplyCategory: SuppliesCategory.DRESSING,
      isChecked: false,
      isImportant: false
  ),
  SupplyModel(
      name: "Băng tam giác",
      note: "Đa năng: băng treo tay, băng ép",
      supplyCategory: SuppliesCategory.DRESSING,
      isChecked: false,
      isImportant: true
  ),

  // Nhóm Medication
  SupplyModel(
      name: "Nước muối sinh lý",
      note: "Chai nhỏ",
      supplyCategory: SuppliesCategory.MEDICATION,
      isChecked: false,
      isImportant: false
  ),
  SupplyModel(
      name: "Dung dịch sát khuẩn",
      note: "Povidone-iodine hoặc dạng xịt",
      supplyCategory: SuppliesCategory.MEDICATION,
      isChecked: false,
      isImportant: false
  ),
  SupplyModel(
      name: "Cồn khử trùng",
      note: "Dạng khăn lau hoặc chai nhỏ",
      supplyCategory: SuppliesCategory.MEDICATION,
      isChecked: false,
      isImportant: false
  ),
  SupplyModel(
      name: "Thuốc giảm đau, hạ sốt",
      note: "Paracetamol",
      supplyCategory: SuppliesCategory.MEDICATION,
      isChecked: false,
      isImportant: false
  ),
  SupplyModel(
      name: "Kem bôi chống dị ứng",
      note: "Ví dụ: Phenergan gel",
      supplyCategory: SuppliesCategory.MEDICATION,
      isChecked: false,
      isImportant: false
  ),

  // Nhóm Tools
  SupplyModel(
      name: "Kéo y tế",
      note: "Đầu tù",
      supplyCategory: SuppliesCategory.TOOLS,
      isChecked: false,
      isImportant: false
  ),
  SupplyModel(
      name: "Nhíp",
      note: "Để gắp dị vật",
      supplyCategory: SuppliesCategory.TOOLS,
      isChecked: false,
      isImportant: false
  ),
  SupplyModel(
      name: "Nhiệt kế",
      note: "Điện tử",
      supplyCategory: SuppliesCategory.TOOLS,
      isChecked: false,
      isImportant: false
  ),

  // Nhóm Custom
  SupplyModel(
      name: "Đèn pin nhỏ",
      note: "Dự phòng",
      supplyCategory: SuppliesCategory.CUSTOM,
      isChecked: false,
      isImportant: false
  ),
  SupplyModel(
      name: "Danh sách số điện thoại khẩn cấp",
      note: "115, người thân, bác sĩ",
      supplyCategory: SuppliesCategory.CUSTOM,
      isChecked: false,
      isImportant: true
  ),
];