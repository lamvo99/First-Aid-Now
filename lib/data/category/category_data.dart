

import 'package:first_aid/app_common_data/common_data/global_variable.dart';
import 'package:first_aid/app_common_data/enum_new/learn_category.dart';

import '../../model/export.dart';

List<Category> learnCategories = [
  firstAidCategory,
  injuryManagement,
  specificAccidents,
  survivalSkills,
  generalPrinciplesPrevention,
  medicalEmergencies,
];

Category firstAidCategory = Category(
  numLesson: 6,
  name: "Sơ cứu tức thời",
  learnCategory: LearnCategory.immediateLifeSupport,
  logo_path: "https://i.imghippo.com/files/OJz2775sAA.jpg",
  shortDescription: "Bao gồm các kỹ thuật sơ cứu khẩn cấp nhất được thực hiện trong những phút đầu tiên khi nạn nhân ngừng thở, ngừng tim hoặc bị nghẹt thở do dị vật. Thành thạo các kỹ năng này là yếu tố then chốt để duy trì sự sống trong khi chờ đội ngũ y tế chuyên nghiệp tới hiện trường."
);

Category injuryManagement = Category(
    numLesson: 7,
    name: "Chấn thương & Chảy máu",
    learnCategory: LearnCategory.injuryBleedingManagement,
    logo_path: "injury_bleeding",
    shortDescription: "Kỹ năng xử lý chảy máu, gãy xương, bong gân và các chấn thương phổ biến."
);

Category specificAccidents  = Category(
    numLesson: 9,
    name: "Tai nạn & Vết thương đặc thù",
    learnCategory: LearnCategory.specificAccidentsWounds,
    logo_path: "specific_accidents_wounds",
    shortDescription: "Xử trí các tình huống tai nạn thường gặp như đuối nước, bỏng, tai nạn giao thông, ngộ độc và vết cắn."
);


Category survivalSkills = Category(
    numLesson: 7,
    name: "Kỹ năng Sinh tồn cơ bản",
    learnCategory: LearnCategory.survivalSkills,
    logo_path: "basic_survival_skills",
    shortDescription: "Các kỹ năng tự cứu khi bị lạc hoặc trong môi trường hoang dã: định hướng, trú ẩn, tìm nước, tín hiệu cầu cứu."
);

Category generalPrinciplesPrevention = Category(
    numLesson: 6,
    name: "Nguyên tắc Chung & Phòng ngừa",
    learnCategory: LearnCategory.generalPrinciplesPrevention,
    logo_path: "general_principles_prevention",
    shortDescription: "Kiến thức nền tảng giúp sơ cứu an toàn, khi nào cần gọi cấp cứu và cách chuẩn bị tốt nhất."
);

Category medicalEmergencies = Category(
    numLesson: 6,
    name: "Tình huống Y tế Khẩn cấp",
    learnCategory: LearnCategory.medicalEmergencies,
    logo_path: "medical_emergencies",
    shortDescription: "Xử lý các vấn đề y tế đột ngột như đột quỵ, nhồi máu cơ tim, dị ứng nặng, hen suyễn và tiểu đường."
);

