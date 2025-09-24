///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsVi = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final i18n = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.vi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <vi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	String get Name => 'FirstAid Now';
	late final TranslationsSplashVi Splash = TranslationsSplashVi.internal(_root);
	late final TranslationsCategoryVi Category = TranslationsCategoryVi.internal(_root);
	late final TranslationsMainTabVi MainTab = TranslationsMainTabVi.internal(_root);
	late final TranslationsSeverityLevelVi SeverityLevel = TranslationsSeverityLevelVi.internal(_root);
	late final TranslationsAgeGroupVi AgeGroup = TranslationsAgeGroupVi.internal(_root);
	late final TranslationsEmergencyNumberVi EmergencyNumber = TranslationsEmergencyNumberVi.internal(_root);
	late final TranslationsMainVi Main = TranslationsMainVi.internal(_root);
	late final TranslationsLearnVi Learn = TranslationsLearnVi.internal(_root);
	late final TranslationsToolVi Tool = TranslationsToolVi.internal(_root);
	late final TranslationsSuppliesVi Supplies = TranslationsSuppliesVi.internal(_root);
	late final TranslationsEmergencyInfoVi EmergencyInfo = TranslationsEmergencyInfoVi.internal(_root);
	late final TranslationsRelationShipVi RelationShip = TranslationsRelationShipVi.internal(_root);
	late final TranslationsGenderTypeVi GenderType = TranslationsGenderTypeVi.internal(_root);
	late final TranslationsMeritTypeVi MeritType = TranslationsMeritTypeVi.internal(_root);
	late final TranslationsMeritJournalVi MeritJournal = TranslationsMeritJournalVi.internal(_root);
	late final TranslationsEventTypeVi EventType = TranslationsEventTypeVi.internal(_root);
	late final TranslationsSutrasVi Sutras = TranslationsSutrasVi.internal(_root);
	late final TranslationsTraditionVi Tradition = TranslationsTraditionVi.internal(_root);
	late final TranslationsSchoolVi School = TranslationsSchoolVi.internal(_root);
	late final TranslationsEventVi Event = TranslationsEventVi.internal(_root);
	late final TranslationsLunarVi Lunar = TranslationsLunarVi.internal(_root);
	late final TranslationsHomeVi Home = TranslationsHomeVi.internal(_root);
	late final TranslationsPrayerVi Prayer = TranslationsPrayerVi.internal(_root);
	late final TranslationsWoodenFishVi WoodenFish = TranslationsWoodenFishVi.internal(_root);
	late final TranslationsCommonActionVi CommonAction = TranslationsCommonActionVi.internal(_root);
	late final TranslationsCommonDataVi CommonData = TranslationsCommonDataVi.internal(_root);
	late final TranslationsCommonNotiActionVi CommonNotiAction = TranslationsCommonNotiActionVi.internal(_root);
	late final TranslationsCommonValidationVi CommonValidation = TranslationsCommonValidationVi.internal(_root);
	late final TranslationsPermissionVi Permission = TranslationsPermissionVi.internal(_root);
	late final TranslationsLostConnectionVi LostConnection = TranslationsLostConnectionVi.internal(_root);
	late final TranslationsPlaceholderVi Placeholder = TranslationsPlaceholderVi.internal(_root);
	late final TranslationsErrorVi Error = TranslationsErrorVi.internal(_root);
	late final TranslationsUpdateVi Update = TranslationsUpdateVi.internal(_root);
	late final TranslationsDateTimeVi DateTime = TranslationsDateTimeVi.internal(_root);
	late final TranslationsLanguageVi Language = TranslationsLanguageVi.internal(_root);
}

// Path: Splash
class TranslationsSplashVi {
	TranslationsSplashVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Name => 'FirstAid Now ~ Sơ cứu & Sinh tồn';
	String get Title => 'Sơ cứu & Sinh tồn – Luôn sẵn sàng';
	String get Subtitle => 'Ứng dụng hướng dẫn sơ cứu và kỹ năng sinh tồn toàn diện, dễ sử dụng cho mọi người.';
}

// Path: Category
class TranslationsCategoryVi {
	TranslationsCategoryVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Immediate => 'Sơ cứu';
	String get ImmediateDesc => 'Đây là những kỹ năng cần thực hiện ngay lập tức để duy trì sự sống.';
	String get Injury => 'Chấn thương & Chảy máu';
	String get InjuryDesc => 'Xử trí các chấn thương vật lý phổ biến, tập trung cầm máu và bất động.';
	String get Special => 'Tai nạn & Vết thương đặc thù';
	String get SpecialDesc => 'Tình huống tai nạn thường gặp trong đời sống hàng ngày.';
	String get Survival => 'Kỹ năng Sinh tồn cơ bản';
	String get SurvivalDesc => 'Khi bị lạc hoặc trong môi trường hoang dã, tập trung tự cứu.';
	String get General => ' Nguyên tắc Chung & Phòng ngừa';
	String get GeneralDesc => 'Kiến thức nền tảng giúp xử trí hiệu quả và an toàn.';
	String get Emergencies => 'Kỹ năng Sinh tồn cơ bản';
	String get EmergenciesDesc => 'Xử lý các vấn đề sức khỏe đột ngột, phổ biến ở người lớn tuổi hoặc có bệnh nền.';
}

// Path: MainTab
class TranslationsMainTabVi {
	TranslationsMainTabVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Home => 'Trang chủ';
	String get Learn => 'Học';
	String get Quiz => 'Trắc nghiệm';
	String get Settings => 'Cài đặt';
	String get Tool => 'Công cụ';
}

// Path: SeverityLevel
class TranslationsSeverityLevelVi {
	TranslationsSeverityLevelVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Emergency => 'Nguy cấp';
	String get High => 'Cao';
	String get Medium => 'Trung';
	String get Low => 'Thấp';
}

// Path: AgeGroup
class TranslationsAgeGroupVi {
	TranslationsAgeGroupVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Adult => 'Người lớn';
	String get Child => 'Trẻ em';
	String get Infant => 'Trẻ sơ sinh';
}

// Path: EmergencyNumber
class TranslationsEmergencyNumberVi {
	TranslationsEmergencyNumberVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Africa => 'Châu Phi';
	String get Caribbean => 'Vùng Caribe';
	String get CentralAmerica => 'Trung Mỹ';
	String get NorthAmerica => 'Bắc Mỹ';
	String get SouthAmerica => 'Nam Mỹ';
	String get Asia => 'Châu Á';
	String get Europe => 'Châu Âu';
	String get Oceania => 'Châu Đại Dương';
	String get Police => 'Cảnh sát';
	String get Ambulance => 'Xe cứu thương';
	String get Fire => 'Xe cứu hoả';
	String get Number => 'Số điện thoại khẩn cấp';
	String get List => 'DS số điện thoại khẩn cấp';
}

// Path: Main
class TranslationsMainVi {
	TranslationsMainVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Emergency => 'Tình huống khẩn cấp';
	String get LearnCategory => 'Học theo chủ đề';
	String get Favorites => 'Yêu thích của bạn';
	String get Tips => 'Mẹo nhanh';
	String get ContinueLearn => 'Bài học gần đây';
	String get NoLesson => 'Bạn chưa có bài học nào';
	String get GoLearn => 'Đi đến học tập';
}

// Path: Learn
class TranslationsLearnVi {
	TranslationsLearnVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Library => 'Thư viện Bài học';
	String get Search => 'Tìm kiếm bài học';
	String get Continue => 'Tiếp tục học';
	String get Category => 'Danh mục';
	String Lessons({required Object num}) => '${num} bài học';
	String get Complete => 'hoàn thành';
	String get Of => 'Thuộc';
	String get ForYou => 'Dành cho bạn';
}

// Path: Tool
class TranslationsToolVi {
	TranslationsToolVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Title => 'Bộ công cụ';
	String get Quick => 'Công cụ khẩn cấp';
	String get Flashlight => 'Đèn pin';
	String get Sos => 'Còi SOS';
	String get Card => 'Thẻ cứu thương';
	String get FirstAidKit => 'Công cụ sơ cứu và y tế';
	String get Cpr => 'CPR Metronome';
	String get Timer => 'Tourniquet Timer';
	String get Kit => 'Danh sách dụng cụ';
	String get Survival => 'Công cụ định hướng và sinh tồn';
	String get Compass => 'La bàn';
	String get Ruler => 'Thước kẽ';
	String get SoundMeter => 'Thước đo âm thanh';
	String get Thermometer => 'Nhiệt kế';
	String get Support => 'Công cụ Hỗ trợ & Ghi chép';
	String get NotePad => 'Ghi chú Nhanh (Notepad)';
	String get NoteVoice => 'Ghi chú Thoại (Voice Memo)';
	String get Alarm => 'Báo thức/Bộ hẹn giờ';
	String get Latitude => 'Kinh độ';
	String get Longitude => 'Vĩ độ';
	String get Elevation => 'Độ cao';
	String get Atmospheric => 'áp suất khí quyển';
	String get LocationRequired => 'Bạn cần có quyền truy cập vị trí để lấy được vị trí chính sác';
	String get RequiredPermission => 'Cấp quyền';
	String get OpenSetting => 'Mở cài đặt ứng dụng';
	String get NoSensor => 'Thiết bị không có cảm biến !';
	String get Start => 'Bất đầu';
	String get Stop => 'Dừng';
	String get Mean => 'Trung bình';
	String get Max => 'Tối đa';
	String get Current => 'Hiện tại';
}

// Path: Supplies
class TranslationsSuppliesVi {
	TranslationsSuppliesVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get List => 'Danh sách vật tư';
	String get Title => 'Bộ sơ cứu';
	String get Add => 'Thêm vật tư';
	String get AddSuccess => 'Thêm vật tư thành công';
	String get EditSuccess => 'Cập nhật thông tin vật tư thành công';
	String get DeleteConfirm => 'Xác nhận xoá thông tin vật dụng';
	String get DeleteSuccess => 'Xoá thông tin vật tư thành công';
	String get Sort => 'Sắp xếp';
	String get Search => 'Tìm vật tư';
	String get Essential => 'Thiết yếu';
	String get Dressing => 'Băng bó';
	String get Medication => 'Thuốc men';
	String get Tools => 'Dụng cụ';
	String get Custom => 'Tuỳ chỉnh';
	String get FastCheck => 'Kiểm tra nhanh';
	String get Name => 'Tên vật tư';
	String get NamePlace => 'Nhập tên vật tư';
	String get Category => 'Danh mục';
	String get Quantity => 'Số lượng';
	String get QuantityNum => 'Nhập số lượng';
	String get DateAdd => 'Ngày thêm';
	String get DateExpired => 'Ngày hết hạn';
	String get Note => 'Ghi chú';
	String get NotePlaceholder => 'Nhập ghi chú';
	String get Important => 'Vật tư quan trọng';
	String get Default => 'Mặc định';
	String get SortName => 'A-Z';
	String get SortCategory => 'Danh mục';
	String get SortChecked => 'Thiếu trước';
	String get SortExpired => 'Sắp hết hạn';
	String get SortImportant => 'Quan trọng';
	String get Check => 'Kiêm tra danh sách';
	String get CheckConfirm => 'Xác nhận kiểm tra danh sách vật tư';
	String get CheckSuccess => 'Kiểm tra danh sách vật tư thành công';
	String get QuantityNumError => 'Số lượng vật tư phải lớn hơn 0';
	String get Edit => 'Chỉnh sửa vật tư';
	String get Delete => 'Xoá vật tư';
	String get Contain => 'Đã có';
	String get LastChecked => 'Lần kiểm tra cuối';
	String get UpdateAt => 'Cập nhật lúc';
	String get Detail => 'Chi tiết vật tư';
}

// Path: EmergencyInfo
class TranslationsEmergencyInfoVi {
	TranslationsEmergencyInfoVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Title => 'Thông tin khẩn cấp';
	String get Edit => 'Chỉnh sửa thông tin';
	String get Info => 'Thông tin cá nhân';
	String get Name => 'Họ và tên';
	String get NamePlace => 'Nhập họ và tên';
	String get DateOfBirth => 'Ngày sinh';
	String get DateOfBirthPlace => 'Chọn ngày sinh';
	String get Gender => 'Giới tính';
	String get MedicalInfo => 'Thông tin y tế';
	String get BloodType => 'Nhóm máu';
	String get BloodTypePlace => 'Chọn nhóm máu';
	String get Allergy => 'Dị ứng';
	String get AllergyPlace => 'Nhập dị ứng (nếu có)';
	String get AllergyList => 'Danh sách dị ứng';
	String get UnderlyingDiseases => 'Bệnh nền';
	String get UnderlyingDiseasesPlace => 'Nhập tiền sử bệnh (nếu có)';
	String get Medication => 'Thuốc đang dùng';
	String get MedicationPlace => 'Nhập thuốc đang dùng (nếu có)';
	String get MedicationList => 'Danh sách thuốc';
	String get MedicalCondition => 'Tình trạng sức khoẻ';
	String get MedicalConditionPlace => 'Nhập tình trạng sức khoẻ (nếu có)';
	String get MedicalConditionList => 'Các loại bệnh';
	String get OrganDonation => 'Hiến tạng';
	String EmergencyContactNum({required Object num}) => 'Người liên hệ khẩn cấp số ${num}';
	String get EmergencyContact => 'Người liên hệ khẩn cấp';
	String get EmergencyContactPlace => 'Nhập người liên hệ khẩn cấp';
	String get EmergencyPhone => 'Số điện thoại liên hệ khẩn cấp';
	String get EmergencyPhonePlace => 'Nhập số điện thoại liên hệ khẩn cấp';
	String get Relationship => 'Mối quan hệ';
	String get SaveSuccess => 'Lưu thông tin khẩn cấp thành công';
	String get NoteSpecific => 'Ghi chú đặc biệt';
	String get Setting => 'Cài đặt hiển thị';
	String get UpdateSuccess => 'Cập nhật thông tin thành công';
	String get NoNote => 'Chưa có ghi chú đặc biệt nào';
	String get LastUpdated => 'Cập nhật lần cuối';
	String get Export => 'Xuất thông tin thành công';
	String get ExportError => 'Xuất thông tin không thành công';
}

// Path: RelationShip
class TranslationsRelationShipVi {
	TranslationsRelationShipVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Father => 'Cha';
	String get Mother => 'Mẹ';
	String get Son => 'Con trai';
	String get Daughter => 'Con gái';
	String get Brother => 'Anh/Em trai';
	String get Sister => 'Chị/Em gái';
	String get Grandfather => 'Ông';
	String get Grandmother => 'Bà';
	String get Uncle => 'Chú/Bác trai/Cậu';
	String get Aunt => 'Cô/Dì/Bác gái';
	String get Cousin => 'Anh/Chị/Em họ';
	String get Nephew => 'Cháu trai (con của anh/chị/em ruột)';
	String get Niece => 'Cháu gái (con của anh/chị/em ruột)';
	String get Husband => 'Chồng';
	String get Wife => 'Vợ';
	String get Friend => 'Bạn bè';
	String get Colleague => 'Đồng nghiệp';
	String get Other => 'Khác';
}

// Path: GenderType
class TranslationsGenderTypeVi {
	TranslationsGenderTypeVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Male => 'Nam';
	String get Female => 'Nữ';
}

// Path: MeritType
class TranslationsMeritTypeVi {
	TranslationsMeritTypeVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Other => 'Khác';
	String get Liberation => 'Phóng sinh';
	String get Giving => 'Bố thí';
	String get Offerings => 'Cúng dường';
	String get GoodDeed => 'Việc thiện';
	String get Practice => 'Tu tập';
	String get BloodDonation => 'Hiến máu';
	String get Penitence => 'Sám hối';
}

// Path: MeritJournal
class TranslationsMeritJournalVi {
	TranslationsMeritJournalVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get List => 'Danh sách công đức';
	String get Title => 'Sổ công đức';
	String get Add => 'Thêm công đức';
	String get Date => 'Ngày';
	String get Type => 'Loại công đức';
	String get Note => 'Ghi chú';
	String get Name => 'Tên công đức';
	String get NamePlaceholder => 'Nhập tên công đức';
	String get Description => 'Mô tả';
	String get DescriptionPlaceholder => 'Nhập mô tả về công đức';
	String get CreatedAt => 'Ngày tạo';
	String get Recipient => 'Người nhận';
	String get NotePlaceholder => 'Nhập ghi chú về công đức';
	String get AddSuccess => 'Thêm công đức thành công';
	String get EditSuccess => 'Sửa công đức thành công';
	String get DeleteSuccess => 'Xóa công đức thành công';
}

// Path: EventType
class TranslationsEventTypeVi {
	TranslationsEventTypeVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Festival => 'Lễ hội lớn';
	String get Observance => 'Ngày tưởng niệm';
	String get Uposatha => 'Ngày Bồ tát';
	String get Retreat => 'Khoá tu';
	String get Other => 'Khác';
}

// Path: Sutras
class TranslationsSutrasVi {
	TranslationsSutrasVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Basic => 'Kinh căn bản';
	String get Daily => 'Kinh hàng ngày';
	String get Long => 'Kinh dài';
	String get Reference => 'Sách tham khảo';
	String get Specialized => 'Kinh chuyên tu';
}

// Path: Tradition
class TranslationsTraditionVi {
	TranslationsTraditionVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Theravada => 'Nam truyền';
	String get Mahayana => 'Bắc truyền';
}

// Path: School
class TranslationsSchoolVi {
	TranslationsSchoolVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get TinhDo => 'Tinh Độ tông';
	String get Thien => 'Thiền tông';
	String get Mat => 'Mật tông';
	String get PhapHoa => 'Pháp Hoa tông';
	String get General => 'Tổng hợp';
}

// Path: Event
class TranslationsEventVi {
	TranslationsEventVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Title => 'Sự kiện';
	String get Add => 'Thêm sự kiện';
	String get Name => 'Tên sự kiện';
	String get NamePlaceholder => 'Nhập tên sự kiện';
	String get Type => 'Loại sự kiện';
	String get DateType => 'Loại ngày';
	String get Date => 'Ngày';
	String get Repeat => 'Lặp lại';
	String get Note => 'Ghi chú';
	String get NotePlaceholder => 'Nhập ghi chú';
	String get Reminder => 'Nhắc nhở';
	String AdvanceDays({required Object days}) => 'Nhắc trước ${days} ngày';
	String get NotificationTime => 'Giờ thông báo';
	String get Lunar => 'Âm lịch';
	String get Georgian => 'Dương lịch';
	late final TranslationsEventEventTypeVi EventType = TranslationsEventEventTypeVi.internal(_root);
	String get AddSuccess => 'Thêm sự kiện thành công';
	String get EditSuccess => 'Sửa sự kiện thành công';
	String get DeleteSuccess => 'Xóa sự kiện thành công';
}

// Path: Lunar
class TranslationsLunarVi {
	TranslationsLunarVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Month => 'Tháng';
	String get Year => 'Năm';
	String get Monday => 'Thứ 2';
	String get Tuesday => 'Thứ 3';
	String get Wednesday => 'Thứ 4';
	String get Thursday => 'Thứ 5';
	String get Friday => 'Thứ 6';
	String get Saturday => 'Thứ 7';
	String get Sunday => 'Chủ nhật';
	String get Lunar => 'Âm lịch';
	String get Solar => 'Dương lịch';
	String get Today => 'Hôm nay';
	String get GoodDay => 'Ngày hoàng đạo';
	String get BadDay => 'Ngày hắc đạo';
	String get NewEvent => 'Sự kiện mới';
	String get EditEvent => 'Sửa sự kiện';
	String get DeleteEvent => 'Xóa sự kiện';
	String get EventTitle => 'Tên sự kiện';
	String get EventDescription => 'Mô tả';
	String get Save => 'Lưu';
	String get Cancel => 'Hủy';
	String get ConfirmDelete => 'Bạn có chắc muốn xóa sự kiện này?';
	String get YearlyRecurring => 'Lặp lại hàng năm';
	String get MonthlyRecurring => 'Lặp lại hàng tháng';
	String get SetReminder => 'Đặt nhắc nhở';
	String get Month1 => 'Tháng 1';
	String get Month2 => 'Tháng 2';
	String get Month3 => 'Tháng 3';
	String get Month4 => 'Tháng 4';
	String get Month5 => 'Tháng 5';
	String get Month6 => 'Tháng 6';
	String get Month7 => 'Tháng 7';
	String get Month8 => 'Tháng 8';
	String get Month9 => 'Tháng 9';
	String get Month10 => 'Tháng 10';
	String get Month11 => 'Tháng 11';
	String get Month12 => 'Tháng 12';
	String get Can => 'Giáp,Ất,Bính,Đinh,Mậu,Kỷ,Canh,Tân,Nhâm,Quý';
	String get Chi => 'Tý,Sửu,Dần,Mão,Thìn,Tỵ,Ngọ,Mùi,Thân,Dậu,Tuất,Hợi';
	String get MonthChi => 'Dần,Mão,Thìn,Tỵ,Ngọ,Mùi,Thân,Dậu,Tuất,Hợi,Tý,Sửu';
	String get HourTy => 'Tý';
	String get HourDan => 'Dần';
	String get HourMao => 'Mão';
	String get SolarTerms => 'Xuân phân,Thanh minh,Cốc vũ,Lập hạ,Tiểu mãn,Mang chủng,Hạ chí,Tiểu thử,Đại thử,Lập thu,Xử thử,Bạch lộ,Thu phân,Hàn lộ,Sương giáng,Lập đông,Tiểu tuyết,Đại tuyết,Đông chí,Tiểu hàn,Đại hàn,Lập xuân,Vũ thủy,Kinh trập';
	String get Festival11 => 'Tết Nguyên Đán';
	String get Festival151 => 'Rằm tháng Giêng';
	String get Festival103 => 'Giỗ Tổ Hùng Vương';
	String get MondayShort => 'T2';
	String get TuesdayShort => 'T3';
	String get WednesdayShort => 'T4';
	String get ThursdayShort => 'T5';
	String get FridayShort => 'T6';
	String get SaturdayShort => 'T7';
	String get SundayShort => 'CN';
	String get AllDay => 'cả ngày';
	String get Calendar => 'Lịch';
	String get Inbox => 'Hộp thư đến';
	String get Events => 'Sự kiện';
	String get SelectDate => 'Chọn ngày';
	String get SolarCalendar => 'Lịch dương';
	String get LunarCalendar => 'Lịch âm';
	String get Confirm => 'Xác nhận';
	String get ChooseDate => 'Chọn ngày';
	String get SelectedDate => 'Ngày đã chọn';
	String get Day => 'Ngày';
	String get LeapMonth => 'Nhuận';
}

// Path: Home
class TranslationsHomeVi {
	TranslationsHomeVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String EventDate({required Object date}) => 'Sự kiện ngày ${date}';
	String get NoEvent => 'Không có sự kiện nào trong ngày này';
	String get LunarCalendar => 'Âm lịch';
	String get Reference => 'Kinh tham khảo';
	String get Description => 'Mô tả';
	String get Content => 'Nội dung sự kiện';
	String get Significance => 'Ý nghĩa';
	String get Location => 'Địa điểm';
	String get ImageDescription => 'Mô tả hình ảnh';
	String get General => 'Phật giáo';
	String get Personal => 'Cá nhân';
}

// Path: Prayer
class TranslationsPrayerVi {
	TranslationsPrayerVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Title => 'Niệm phật';
	String get Note => 'Xin Quý vị hãy tịnh tâm và chấp tay niệm "Nam Mô A Di Đà Phật" (108 lần) sau khi niệm xong xin Qúy vị tụng hồi hướng "Nguyện đem công đức này, Hướng về khắp tất cả, Đệ tử và chúng sanh, Đều trọn thành Phật đạo."';
}

// Path: WoodenFish
class TranslationsWoodenFishVi {
	TranslationsWoodenFishVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Title => 'Gõ mõ';
	String get Setting => 'Cấu hình chung';
	String get MediaWooden => 'Âm thanh mõ';
	String get MediaBell => 'Âm chuông';
	String get Background => 'Giao diện';
	String get Dark => 'Tối';
	String get Light => 'Sáng';
	String get Auto => 'Tự động gõ mõ giúp bạn( Tốc độ 1 lần/giây)';
	String get AutoClick => 'Tự động gõ';
	String get Image => 'Ảnh mõ';
}

// Path: CommonAction
class TranslationsCommonActionVi {
	TranslationsCommonActionVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get MainNavigation => 'Điều hướng chính';
	String get EditFunction => 'Chỉnh sửa chức năng';
	String get Ok => 'Đồng ý';
	String get Close => 'Đóng';
	String get Confirm => 'Xác nhận';
	String get Cancel => 'Hủy';
	String get Canceled => 'Hủy bỏ';
	String get Skip => 'Bỏ qua';
	String get Back => 'Quay lại';
	String get Continue => 'Tiếp tục';
	String get Delete => 'Xóa';
	String get Edit => 'Tùy chỉnh';
	String get Complete => 'Hoàn tất';
	String get Update => 'Lưu chỉnh sửa';
	String get Save => 'Lưu';
	String get Resend => 'Gửi lại';
	String get Submit => 'Đồng ý';
	String get NoSubmit => 'Không đồng ý';
	String get Copy => 'Sao chép';
	String get Copied => 'Đã sao chép';
	String get CopyLink => 'Sao chép liên kết';
	String get Search => 'Tìm kiếm';
	String get Sending => 'Đang gửi';
	String get EnterText => 'Nhập văn bản';
	String get Dismiss => 'Loại bỏ';
	String get ViewDetail => 'Xem chi tiết';
	String get Add => 'Thêm';
	String get Download => 'Tải xuống';
	String get Login => 'Đăng nhập';
	String get Register => 'Đăng ký';
	String get Logout => 'Đăng xuất';
	String get ShowMore => 'Xem thêm';
	String get ShowLess => 'Thu gọn';
	String get TapOnUpload => 'Chạm để tải lên';
	String get ConfirmBeforeLeaveForm => 'Bạn có những thay đổi chưa được lưu. Bạn có chắc chắn muốn rời khỏi trang này không?';
	String get Share => 'Chia sẻ';
	String get DeleteFilter => 'Xoá bộ lọc';
}

// Path: CommonData
class TranslationsCommonDataVi {
	TranslationsCommonDataVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Required => 'Bắt buộc';
	String get Menu => 'Thực đơn';
	String get Account => 'Tài khoản';
	String get Setting => 'Cài đặt';
	String get Email => 'Email';
	String get Password => 'Mật khẩu';
	String get NotUpdate => 'Không cập nhật';
	String get Today => 'Hôm nay';
	String get Yesterday => 'Hôm qua';
	String get Now => 'Hiện nay';
	String Minute({required Object value}) => '${value}phút';
	String Hour({required Object value}) => '${value}giờ';
	String Day({required Object value}) => '${value}ngày';
	String Week({required Object value}) => '${value}tuần';
	String Month({required Object value}) => '${value}tháng';
	String Year({required Object value}) => '${value}năm';
	String TimeToday({required Object value}) => '${value} thời gian trong ngày';
	String TimeYesterday({required Object value}) => '${value} thời gian ngày hôm qua';
	String get To => 'Giá trị';
	String get Error => 'Lỗi';
	String get UploadAFile => 'Tải lên một tài liệu';
	String get SelectImageOrVideo => 'Chọn hình ảnh hoặc video';
	String get TakeAPhoto => 'Chụp ảnh';
	String get UploadFrom => 'Tải lên từ';
	String get LoadingMore => 'Tải thêm';
	String get JapanCurrency => 'Yên';
	String get Gallery => 'Bộ sưu tập';
	String get GetBackWithoutSaveConfirm => 'Dữ liệu hiện tại chưa được lưu. ';
	String get ListDataIsEmpty => 'Chưa có dữ liệu';
	String get HasErrorOccurr => 'một lỗi đã xảy ra';
	String get CantLoadData => 'Không thể tải dữ liệu';
	String get PleaseFillFullInfo => 'Không thể tải xuống dữ liệu';
	String get About => 'Về';
	String get FeaturePending => 'Tính năng này đang được phát triển';
	String get Currency => 'VNĐ';
	String get Male => 'Nam giới';
	String get Female => 'Nữ giới';
	String get OtherGender => 'Giới tính khác';
	String get Gender => 'Giới tính';
	String get Job => 'Công việc';
	String get Visa => 'Hộ chiếu';
	String get Passport => 'Hộ chiếu';
	String get Credentials => 'Thông tin xác thực';
	String get Manage => 'Quản lý';
	String get ManageNote => 'Bạn đã cấp cho ứng quyền truy cập vào một số ảnh và video';
	String get LoginExpried => 'Phiên đăng nhập đã hết hạn. Vui lòng đăng nhập để tiếp tục.';
	String get ErrorFileSelect => 'Vui lòng chỉ tải lên các tệp PDF và JPEG';
	String get PleaseSelect => 'Vui lòng chọn';
	String get NoData => 'Không có dữ liệu';
}

// Path: CommonNotiAction
class TranslationsCommonNotiActionVi {
	TranslationsCommonNotiActionVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Success => 'Thành công';
	String get YourActionMakingSuccessfully => 'Hành động của bạn đã được hoàn thành thành công!';
	String get Failed => 'Thất bại';
	String get YourActionMakingFailed => 'Hành động của bạn đã không thành công!';
	String get DownloadFile => 'Bạn có chắc chắn muốn tải xuống tệp này không?';
	String DownloadFileSuccessfully({required Object filename}) => 'Tải xuống tệp (${filename}) thành công!';
	String get CopySuccess => 'Bạn đã sao chép thành công';
}

// Path: CommonValidation
class TranslationsCommonValidationVi {
	TranslationsCommonValidationVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get InvalidEmailFormat => 'Định dạng email không chính xác.';
	String get InvalidEmailEmpty => 'Nhập địa chỉ email';
	String get EmailAlreadyInUse => 'Địa chỉ email này đã được sử dụng.';
	String get InvalidPasswordFormat => 'Mật khẩu của bạn phải có ít nhất 8 ký tự, 1 ký tự số, 1 chữ hoa, 1 chữ thường.';
	String get PasswordConfirmationNotMatch => 'Xác nhận mật khẩu không khớp.';
	String get NewPasswordConfirmationNotMatch => 'Xác nhận mật khẩu mới không khớp.';
	String get NewPasswordCanNotSameOldPassword => 'Mật khẩu mới không được giống với mật khẩu cũ.';
	String MaxLength({required Object fieldName, required Object value}) => '${fieldName} không được nhiều hơn ${value} ký tự.';
	String MinLength({required Object fieldName, required Object value}) => '${fieldName} phải chứa ít nhất ${value} ký tự.';
	String MaxValue({required Object fieldName, required Object value}) => '${fieldName} không được vượt quá ${value}.';
	String MinValue({required Object fieldName, required Object value}) => '${fieldName} không thể nhỏ hơn ${value}.';
	String Required({required Object fieldName}) => '${fieldName} là bắt buộc.';
	String get CommonRequired => 'Trường dữ liệu này là bắt buộc.';
	String FieldInvalidate({required Object fieldName}) => '${fieldName} không có định dạng đúng.';
	String OnlyNumberAllow({required Object fieldName}) => '${fieldName} chỉ có thể nhập số.';
	String get DateTimeFormatIsInvalid => 'Dữ liệu đã nhập không đúng định dạng ngày.';
	String get PleaseChooseDifferenceImage => 'Vui lòng không chọn hình ảnh trùng lặp';
	String get FileSizeMustLessThan10MB => 'Kích thước tệp không được vượt quá 10Mb.';
	String get ListFileHasOneOrMoreFileSizeBiggerThan10MB => 'Danh sách file bạn chọn chứa 1 hoặc nhiều file có dung lượng lớn hơn 10Mb, những file này sẽ bị xóa.';
	String get ImageSizeMustLessThan10MB => 'Kích thước hình ảnh không được vượt quá 10Mb.';
	String get TotalFileSizeMustLessThan10MB => 'Tổng kích thước tệp không thể vượt quá 10Mb.';
	String get TotalImageSizeMustLessThan10MB => 'Tổng kích thước hình ảnh không được vượt quá 10Mb.';
}

// Path: Permission
class TranslationsPermissionVi {
	TranslationsPermissionVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get NotAnyVisibleCamera => 'Không có máy ảnh nào khả dụng';
	String get PleaseAcceptCameraPermission => 'Vui lòng cho phép quyền truy cập vào camera của thiết bị';
	String get CameraPermissionPurpose => 'Ứng dụng dùng camera của thiết bị để chụp ảnh';
	String get PleaseAcceptContactPermission => 'Vui lòng cho phép quyền truy cập vào danh sách liên hệ của thiết bị';
	String get ContactPermissionPurpose => 'Ứng dụng dùng danh sách liên hệ của thiết bị để tạo danh sách khách hàng thân thiết';
	String get No => 'Không';
	String get Yes => 'Đồng ý';
	String get GalleryPermissionPurpose => 'Ứng dụng sử dụng ảnh trong thư viện';
	String get CanNotAccessGalleryPermission => 'Không thể truy cập thư viện ảnh vì quyền truy cập bị từ chối';
	String get PleaseAccessGalleryPermission => 'Vui lòng cho phép quyền truy cập vào thư viện ảnh';
	String get PermissionRequired => 'Quyền cần thiết';
	String get PleaseAcceptPermission => 'Vui lòng chấp nhận quyền';
}

// Path: LostConnection
class TranslationsLostConnectionVi {
	TranslationsLostConnectionVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get LostConnection => 'Mất kết nối';
	String get PleaseCheckConnection => 'Vui lòng kiểm tra kết nối mạng của bạn hoặc thử lại.';
	String get Retry => 'Kết nối lại';
}

// Path: Placeholder
class TranslationsPlaceholderVi {
	TranslationsPlaceholderVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String InputFieldPlaceholder({required Object fieldName}) => 'Nhập ${fieldName}';
	String SelectFieldPlaceholder({required Object fieldName}) => 'Lựa chọn ${fieldName}';
	String get DateTimeFieldPlaceholder => 'Chọn ngày';
	String SearchPlaceHolder({required Object fieldName}) => 'Tìm kiếm ${fieldName}';
	String get UploadFilePlaceHolder => 'Chọn tệp';
}

// Path: Error
class TranslationsErrorVi {
	TranslationsErrorVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Errtb0101 => 'Thời gian đặt lịch không hợp lệ.';
	String get Valbqr0108 => 'Thời gian kết thúc không được để trống';
	String get Valatr0601 => 'Số lượng không được để trống';
	String get UnexpectedError => 'Một lỗi không mong muốn đã xảy ra.';
	String get SendTimeoutError => 'Đã xảy ra lỗi thời gian chờ truyền khi kết nối với máy chủ API.';
	String get ConnectionTimeoutError => 'Hết thời gian kết nối với máy chủ API.';
	String get CancalledApiError => 'Yêu cầu tới máy chủ API đã bị hủy.';
	String get ConnectionError => 'Kết nối với máy chủ API không thành công do kết nối Internet.';
	String get ReceiveTimeoutError => 'Lỗi nhận thời gian chờ khi kết nối với máy chủ API.';
}

// Path: Update
class TranslationsUpdateVi {
	TranslationsUpdateVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get UpdateAvailable => 'Cập nhật mới có sẵn';
	String get UpdateNow => 'Cập nhật ngay';
	String get UpdateLater => 'Cập nhật sau';
	String get UpdateDescription => 'Phiên bản mới của ứng dụng đã sẵn sàng. Vui lòng cập nhật để trải nghiệm các tính năng mới và sửa lỗi.';
	String get UpdateError => 'Cập nhật không thành công. Vui lòng thử lại sau.';
}

// Path: DateTime
class TranslationsDateTimeVi {
	TranslationsDateTimeVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ToDay => 'Hôm nay';
	String get Yesterday => 'Hôm qua';
	String get YouCanNotSelectAPastDateTime => 'Bạn không thể chọn một thời gian trong quá khứ';
	String get Hour => 'Giờ';
	String get Month => 'Tháng';
	String get Day => 'Ngày';
	String get Weekend => 'Thứ';
	String get Monday => 'Thứ 2';
	String get Tuesday => 'Thứ 3';
	String get Wednesday => 'Thứ 4';
	String get Thursday => 'Thứ 5';
	String get Friday => 'Thứ 6';
	String get Saturday => 'Thứ 7';
	String get Sunday => 'Chủ nhật';
	String get InputTime => 'Chọn giờ';
}

// Path: Language
class TranslationsLanguageVi {
	TranslationsLanguageVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Vi => 'Tiếng Việt';
	String get En => 'Tiếng Anh';
	String get Ja => 'Tiếng Nhật';
	String get ChangeLanguage => 'Chuyển ngôn ngữ';
}

// Path: Event.EventType
class TranslationsEventEventTypeVi {
	TranslationsEventEventTypeVi.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Anniversary => 'Giỗ, kỵ nhật';
	String get DharmaPractice => 'Buổi tu tập';
	String get VowDay => 'Ngày phát nguyện';
	String get PrayerSession => 'Buổi lễ cầu an/cầu siêu';
	String get SutraStudy => 'Buổi học kinh';
	String get MeditationDay => 'Ngày thiền';
	String get DanaActivity => 'Ngày làm phước, bố thí';
	String get TempleVisit => 'Đi lễ chùa';
	String get DharmaTalk => 'Nghe thuyết pháp';
	String get PersonalReflection => 'Ngày tự suy ngẫm';
	String get Custom => 'Tùy chỉnh';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'Name': return 'FirstAid Now';
			case 'Splash.Name': return 'FirstAid Now ~ Sơ cứu & Sinh tồn';
			case 'Splash.Title': return 'Sơ cứu & Sinh tồn – Luôn sẵn sàng';
			case 'Splash.Subtitle': return 'Ứng dụng hướng dẫn sơ cứu và kỹ năng sinh tồn toàn diện, dễ sử dụng cho mọi người.';
			case 'Category.Immediate': return 'Sơ cứu';
			case 'Category.ImmediateDesc': return 'Đây là những kỹ năng cần thực hiện ngay lập tức để duy trì sự sống.';
			case 'Category.Injury': return 'Chấn thương & Chảy máu';
			case 'Category.InjuryDesc': return 'Xử trí các chấn thương vật lý phổ biến, tập trung cầm máu và bất động.';
			case 'Category.Special': return 'Tai nạn & Vết thương đặc thù';
			case 'Category.SpecialDesc': return 'Tình huống tai nạn thường gặp trong đời sống hàng ngày.';
			case 'Category.Survival': return 'Kỹ năng Sinh tồn cơ bản';
			case 'Category.SurvivalDesc': return 'Khi bị lạc hoặc trong môi trường hoang dã, tập trung tự cứu.';
			case 'Category.General': return ' Nguyên tắc Chung & Phòng ngừa';
			case 'Category.GeneralDesc': return 'Kiến thức nền tảng giúp xử trí hiệu quả và an toàn.';
			case 'Category.Emergencies': return 'Kỹ năng Sinh tồn cơ bản';
			case 'Category.EmergenciesDesc': return 'Xử lý các vấn đề sức khỏe đột ngột, phổ biến ở người lớn tuổi hoặc có bệnh nền.';
			case 'MainTab.Home': return 'Trang chủ';
			case 'MainTab.Learn': return 'Học';
			case 'MainTab.Quiz': return 'Trắc nghiệm';
			case 'MainTab.Settings': return 'Cài đặt';
			case 'MainTab.Tool': return 'Công cụ';
			case 'SeverityLevel.Emergency': return 'Nguy cấp';
			case 'SeverityLevel.High': return 'Cao';
			case 'SeverityLevel.Medium': return 'Trung';
			case 'SeverityLevel.Low': return 'Thấp';
			case 'AgeGroup.Adult': return 'Người lớn';
			case 'AgeGroup.Child': return 'Trẻ em';
			case 'AgeGroup.Infant': return 'Trẻ sơ sinh';
			case 'EmergencyNumber.Africa': return 'Châu Phi';
			case 'EmergencyNumber.Caribbean': return 'Vùng Caribe';
			case 'EmergencyNumber.CentralAmerica': return 'Trung Mỹ';
			case 'EmergencyNumber.NorthAmerica': return 'Bắc Mỹ';
			case 'EmergencyNumber.SouthAmerica': return 'Nam Mỹ';
			case 'EmergencyNumber.Asia': return 'Châu Á';
			case 'EmergencyNumber.Europe': return 'Châu Âu';
			case 'EmergencyNumber.Oceania': return 'Châu Đại Dương';
			case 'EmergencyNumber.Police': return 'Cảnh sát';
			case 'EmergencyNumber.Ambulance': return 'Xe cứu thương';
			case 'EmergencyNumber.Fire': return 'Xe cứu hoả';
			case 'EmergencyNumber.Number': return 'Số điện thoại khẩn cấp';
			case 'EmergencyNumber.List': return 'DS số điện thoại khẩn cấp';
			case 'Main.Emergency': return 'Tình huống khẩn cấp';
			case 'Main.LearnCategory': return 'Học theo chủ đề';
			case 'Main.Favorites': return 'Yêu thích của bạn';
			case 'Main.Tips': return 'Mẹo nhanh';
			case 'Main.ContinueLearn': return 'Bài học gần đây';
			case 'Main.NoLesson': return 'Bạn chưa có bài học nào';
			case 'Main.GoLearn': return 'Đi đến học tập';
			case 'Learn.Library': return 'Thư viện Bài học';
			case 'Learn.Search': return 'Tìm kiếm bài học';
			case 'Learn.Continue': return 'Tiếp tục học';
			case 'Learn.Category': return 'Danh mục';
			case 'Learn.Lessons': return ({required Object num}) => '${num} bài học';
			case 'Learn.Complete': return 'hoàn thành';
			case 'Learn.Of': return 'Thuộc';
			case 'Learn.ForYou': return 'Dành cho bạn';
			case 'Tool.Title': return 'Bộ công cụ';
			case 'Tool.Quick': return 'Công cụ khẩn cấp';
			case 'Tool.Flashlight': return 'Đèn pin';
			case 'Tool.Sos': return 'Còi SOS';
			case 'Tool.Card': return 'Thẻ cứu thương';
			case 'Tool.FirstAidKit': return 'Công cụ sơ cứu và y tế';
			case 'Tool.Cpr': return 'CPR Metronome';
			case 'Tool.Timer': return 'Tourniquet Timer';
			case 'Tool.Kit': return 'Danh sách dụng cụ';
			case 'Tool.Survival': return 'Công cụ định hướng và sinh tồn';
			case 'Tool.Compass': return 'La bàn';
			case 'Tool.Ruler': return 'Thước kẽ';
			case 'Tool.SoundMeter': return 'Thước đo âm thanh';
			case 'Tool.Thermometer': return 'Nhiệt kế';
			case 'Tool.Support': return 'Công cụ Hỗ trợ & Ghi chép';
			case 'Tool.NotePad': return 'Ghi chú Nhanh (Notepad)';
			case 'Tool.NoteVoice': return 'Ghi chú Thoại (Voice Memo)';
			case 'Tool.Alarm': return 'Báo thức/Bộ hẹn giờ';
			case 'Tool.Latitude': return 'Kinh độ';
			case 'Tool.Longitude': return 'Vĩ độ';
			case 'Tool.Elevation': return 'Độ cao';
			case 'Tool.Atmospheric': return 'áp suất khí quyển';
			case 'Tool.LocationRequired': return 'Bạn cần có quyền truy cập vị trí để lấy được vị trí chính sác';
			case 'Tool.RequiredPermission': return 'Cấp quyền';
			case 'Tool.OpenSetting': return 'Mở cài đặt ứng dụng';
			case 'Tool.NoSensor': return 'Thiết bị không có cảm biến !';
			case 'Tool.Start': return 'Bất đầu';
			case 'Tool.Stop': return 'Dừng';
			case 'Tool.Mean': return 'Trung bình';
			case 'Tool.Max': return 'Tối đa';
			case 'Tool.Current': return 'Hiện tại';
			case 'Supplies.List': return 'Danh sách vật tư';
			case 'Supplies.Title': return 'Bộ sơ cứu';
			case 'Supplies.Add': return 'Thêm vật tư';
			case 'Supplies.AddSuccess': return 'Thêm vật tư thành công';
			case 'Supplies.EditSuccess': return 'Cập nhật thông tin vật tư thành công';
			case 'Supplies.DeleteConfirm': return 'Xác nhận xoá thông tin vật dụng';
			case 'Supplies.DeleteSuccess': return 'Xoá thông tin vật tư thành công';
			case 'Supplies.Sort': return 'Sắp xếp';
			case 'Supplies.Search': return 'Tìm vật tư';
			case 'Supplies.Essential': return 'Thiết yếu';
			case 'Supplies.Dressing': return 'Băng bó';
			case 'Supplies.Medication': return 'Thuốc men';
			case 'Supplies.Tools': return 'Dụng cụ';
			case 'Supplies.Custom': return 'Tuỳ chỉnh';
			case 'Supplies.FastCheck': return 'Kiểm tra nhanh';
			case 'Supplies.Name': return 'Tên vật tư';
			case 'Supplies.NamePlace': return 'Nhập tên vật tư';
			case 'Supplies.Category': return 'Danh mục';
			case 'Supplies.Quantity': return 'Số lượng';
			case 'Supplies.QuantityNum': return 'Nhập số lượng';
			case 'Supplies.DateAdd': return 'Ngày thêm';
			case 'Supplies.DateExpired': return 'Ngày hết hạn';
			case 'Supplies.Note': return 'Ghi chú';
			case 'Supplies.NotePlaceholder': return 'Nhập ghi chú';
			case 'Supplies.Important': return 'Vật tư quan trọng';
			case 'Supplies.Default': return 'Mặc định';
			case 'Supplies.SortName': return 'A-Z';
			case 'Supplies.SortCategory': return 'Danh mục';
			case 'Supplies.SortChecked': return 'Thiếu trước';
			case 'Supplies.SortExpired': return 'Sắp hết hạn';
			case 'Supplies.SortImportant': return 'Quan trọng';
			case 'Supplies.Check': return 'Kiêm tra danh sách';
			case 'Supplies.CheckConfirm': return 'Xác nhận kiểm tra danh sách vật tư';
			case 'Supplies.CheckSuccess': return 'Kiểm tra danh sách vật tư thành công';
			case 'Supplies.QuantityNumError': return 'Số lượng vật tư phải lớn hơn 0';
			case 'Supplies.Edit': return 'Chỉnh sửa vật tư';
			case 'Supplies.Delete': return 'Xoá vật tư';
			case 'Supplies.Contain': return 'Đã có';
			case 'Supplies.LastChecked': return 'Lần kiểm tra cuối';
			case 'Supplies.UpdateAt': return 'Cập nhật lúc';
			case 'Supplies.Detail': return 'Chi tiết vật tư';
			case 'EmergencyInfo.Title': return 'Thông tin khẩn cấp';
			case 'EmergencyInfo.Edit': return 'Chỉnh sửa thông tin';
			case 'EmergencyInfo.Info': return 'Thông tin cá nhân';
			case 'EmergencyInfo.Name': return 'Họ và tên';
			case 'EmergencyInfo.NamePlace': return 'Nhập họ và tên';
			case 'EmergencyInfo.DateOfBirth': return 'Ngày sinh';
			case 'EmergencyInfo.DateOfBirthPlace': return 'Chọn ngày sinh';
			case 'EmergencyInfo.Gender': return 'Giới tính';
			case 'EmergencyInfo.MedicalInfo': return 'Thông tin y tế';
			case 'EmergencyInfo.BloodType': return 'Nhóm máu';
			case 'EmergencyInfo.BloodTypePlace': return 'Chọn nhóm máu';
			case 'EmergencyInfo.Allergy': return 'Dị ứng';
			case 'EmergencyInfo.AllergyPlace': return 'Nhập dị ứng (nếu có)';
			case 'EmergencyInfo.AllergyList': return 'Danh sách dị ứng';
			case 'EmergencyInfo.UnderlyingDiseases': return 'Bệnh nền';
			case 'EmergencyInfo.UnderlyingDiseasesPlace': return 'Nhập tiền sử bệnh (nếu có)';
			case 'EmergencyInfo.Medication': return 'Thuốc đang dùng';
			case 'EmergencyInfo.MedicationPlace': return 'Nhập thuốc đang dùng (nếu có)';
			case 'EmergencyInfo.MedicationList': return 'Danh sách thuốc';
			case 'EmergencyInfo.MedicalCondition': return 'Tình trạng sức khoẻ';
			case 'EmergencyInfo.MedicalConditionPlace': return 'Nhập tình trạng sức khoẻ (nếu có)';
			case 'EmergencyInfo.MedicalConditionList': return 'Các loại bệnh';
			case 'EmergencyInfo.OrganDonation': return 'Hiến tạng';
			case 'EmergencyInfo.EmergencyContactNum': return ({required Object num}) => 'Người liên hệ khẩn cấp số ${num}';
			case 'EmergencyInfo.EmergencyContact': return 'Người liên hệ khẩn cấp';
			case 'EmergencyInfo.EmergencyContactPlace': return 'Nhập người liên hệ khẩn cấp';
			case 'EmergencyInfo.EmergencyPhone': return 'Số điện thoại liên hệ khẩn cấp';
			case 'EmergencyInfo.EmergencyPhonePlace': return 'Nhập số điện thoại liên hệ khẩn cấp';
			case 'EmergencyInfo.Relationship': return 'Mối quan hệ';
			case 'EmergencyInfo.SaveSuccess': return 'Lưu thông tin khẩn cấp thành công';
			case 'EmergencyInfo.NoteSpecific': return 'Ghi chú đặc biệt';
			case 'EmergencyInfo.Setting': return 'Cài đặt hiển thị';
			case 'EmergencyInfo.UpdateSuccess': return 'Cập nhật thông tin thành công';
			case 'EmergencyInfo.NoNote': return 'Chưa có ghi chú đặc biệt nào';
			case 'EmergencyInfo.LastUpdated': return 'Cập nhật lần cuối';
			case 'EmergencyInfo.Export': return 'Xuất thông tin thành công';
			case 'EmergencyInfo.ExportError': return 'Xuất thông tin không thành công';
			case 'RelationShip.Father': return 'Cha';
			case 'RelationShip.Mother': return 'Mẹ';
			case 'RelationShip.Son': return 'Con trai';
			case 'RelationShip.Daughter': return 'Con gái';
			case 'RelationShip.Brother': return 'Anh/Em trai';
			case 'RelationShip.Sister': return 'Chị/Em gái';
			case 'RelationShip.Grandfather': return 'Ông';
			case 'RelationShip.Grandmother': return 'Bà';
			case 'RelationShip.Uncle': return 'Chú/Bác trai/Cậu';
			case 'RelationShip.Aunt': return 'Cô/Dì/Bác gái';
			case 'RelationShip.Cousin': return 'Anh/Chị/Em họ';
			case 'RelationShip.Nephew': return 'Cháu trai (con của anh/chị/em ruột)';
			case 'RelationShip.Niece': return 'Cháu gái (con của anh/chị/em ruột)';
			case 'RelationShip.Husband': return 'Chồng';
			case 'RelationShip.Wife': return 'Vợ';
			case 'RelationShip.Friend': return 'Bạn bè';
			case 'RelationShip.Colleague': return 'Đồng nghiệp';
			case 'RelationShip.Other': return 'Khác';
			case 'GenderType.Male': return 'Nam';
			case 'GenderType.Female': return 'Nữ';
			case 'MeritType.Other': return 'Khác';
			case 'MeritType.Liberation': return 'Phóng sinh';
			case 'MeritType.Giving': return 'Bố thí';
			case 'MeritType.Offerings': return 'Cúng dường';
			case 'MeritType.GoodDeed': return 'Việc thiện';
			case 'MeritType.Practice': return 'Tu tập';
			case 'MeritType.BloodDonation': return 'Hiến máu';
			case 'MeritType.Penitence': return 'Sám hối';
			case 'MeritJournal.List': return 'Danh sách công đức';
			case 'MeritJournal.Title': return 'Sổ công đức';
			case 'MeritJournal.Add': return 'Thêm công đức';
			case 'MeritJournal.Date': return 'Ngày';
			case 'MeritJournal.Type': return 'Loại công đức';
			case 'MeritJournal.Note': return 'Ghi chú';
			case 'MeritJournal.Name': return 'Tên công đức';
			case 'MeritJournal.NamePlaceholder': return 'Nhập tên công đức';
			case 'MeritJournal.Description': return 'Mô tả';
			case 'MeritJournal.DescriptionPlaceholder': return 'Nhập mô tả về công đức';
			case 'MeritJournal.CreatedAt': return 'Ngày tạo';
			case 'MeritJournal.Recipient': return 'Người nhận';
			case 'MeritJournal.NotePlaceholder': return 'Nhập ghi chú về công đức';
			case 'MeritJournal.AddSuccess': return 'Thêm công đức thành công';
			case 'MeritJournal.EditSuccess': return 'Sửa công đức thành công';
			case 'MeritJournal.DeleteSuccess': return 'Xóa công đức thành công';
			case 'EventType.Festival': return 'Lễ hội lớn';
			case 'EventType.Observance': return 'Ngày tưởng niệm';
			case 'EventType.Uposatha': return 'Ngày Bồ tát';
			case 'EventType.Retreat': return 'Khoá tu';
			case 'EventType.Other': return 'Khác';
			case 'Sutras.Basic': return 'Kinh căn bản';
			case 'Sutras.Daily': return 'Kinh hàng ngày';
			case 'Sutras.Long': return 'Kinh dài';
			case 'Sutras.Reference': return 'Sách tham khảo';
			case 'Sutras.Specialized': return 'Kinh chuyên tu';
			case 'Tradition.Theravada': return 'Nam truyền';
			case 'Tradition.Mahayana': return 'Bắc truyền';
			case 'School.TinhDo': return 'Tinh Độ tông';
			case 'School.Thien': return 'Thiền tông';
			case 'School.Mat': return 'Mật tông';
			case 'School.PhapHoa': return 'Pháp Hoa tông';
			case 'School.General': return 'Tổng hợp';
			case 'Event.Title': return 'Sự kiện';
			case 'Event.Add': return 'Thêm sự kiện';
			case 'Event.Name': return 'Tên sự kiện';
			case 'Event.NamePlaceholder': return 'Nhập tên sự kiện';
			case 'Event.Type': return 'Loại sự kiện';
			case 'Event.DateType': return 'Loại ngày';
			case 'Event.Date': return 'Ngày';
			case 'Event.Repeat': return 'Lặp lại';
			case 'Event.Note': return 'Ghi chú';
			case 'Event.NotePlaceholder': return 'Nhập ghi chú';
			case 'Event.Reminder': return 'Nhắc nhở';
			case 'Event.AdvanceDays': return ({required Object days}) => 'Nhắc trước ${days} ngày';
			case 'Event.NotificationTime': return 'Giờ thông báo';
			case 'Event.Lunar': return 'Âm lịch';
			case 'Event.Georgian': return 'Dương lịch';
			case 'Event.EventType.Anniversary': return 'Giỗ, kỵ nhật';
			case 'Event.EventType.DharmaPractice': return 'Buổi tu tập';
			case 'Event.EventType.VowDay': return 'Ngày phát nguyện';
			case 'Event.EventType.PrayerSession': return 'Buổi lễ cầu an/cầu siêu';
			case 'Event.EventType.SutraStudy': return 'Buổi học kinh';
			case 'Event.EventType.MeditationDay': return 'Ngày thiền';
			case 'Event.EventType.DanaActivity': return 'Ngày làm phước, bố thí';
			case 'Event.EventType.TempleVisit': return 'Đi lễ chùa';
			case 'Event.EventType.DharmaTalk': return 'Nghe thuyết pháp';
			case 'Event.EventType.PersonalReflection': return 'Ngày tự suy ngẫm';
			case 'Event.EventType.Custom': return 'Tùy chỉnh';
			case 'Event.AddSuccess': return 'Thêm sự kiện thành công';
			case 'Event.EditSuccess': return 'Sửa sự kiện thành công';
			case 'Event.DeleteSuccess': return 'Xóa sự kiện thành công';
			case 'Lunar.Month': return 'Tháng';
			case 'Lunar.Year': return 'Năm';
			case 'Lunar.Monday': return 'Thứ 2';
			case 'Lunar.Tuesday': return 'Thứ 3';
			case 'Lunar.Wednesday': return 'Thứ 4';
			case 'Lunar.Thursday': return 'Thứ 5';
			case 'Lunar.Friday': return 'Thứ 6';
			case 'Lunar.Saturday': return 'Thứ 7';
			case 'Lunar.Sunday': return 'Chủ nhật';
			case 'Lunar.Lunar': return 'Âm lịch';
			case 'Lunar.Solar': return 'Dương lịch';
			case 'Lunar.Today': return 'Hôm nay';
			case 'Lunar.GoodDay': return 'Ngày hoàng đạo';
			case 'Lunar.BadDay': return 'Ngày hắc đạo';
			case 'Lunar.NewEvent': return 'Sự kiện mới';
			case 'Lunar.EditEvent': return 'Sửa sự kiện';
			case 'Lunar.DeleteEvent': return 'Xóa sự kiện';
			case 'Lunar.EventTitle': return 'Tên sự kiện';
			case 'Lunar.EventDescription': return 'Mô tả';
			case 'Lunar.Save': return 'Lưu';
			case 'Lunar.Cancel': return 'Hủy';
			case 'Lunar.ConfirmDelete': return 'Bạn có chắc muốn xóa sự kiện này?';
			case 'Lunar.YearlyRecurring': return 'Lặp lại hàng năm';
			case 'Lunar.MonthlyRecurring': return 'Lặp lại hàng tháng';
			case 'Lunar.SetReminder': return 'Đặt nhắc nhở';
			case 'Lunar.Month1': return 'Tháng 1';
			case 'Lunar.Month2': return 'Tháng 2';
			case 'Lunar.Month3': return 'Tháng 3';
			case 'Lunar.Month4': return 'Tháng 4';
			case 'Lunar.Month5': return 'Tháng 5';
			case 'Lunar.Month6': return 'Tháng 6';
			case 'Lunar.Month7': return 'Tháng 7';
			case 'Lunar.Month8': return 'Tháng 8';
			case 'Lunar.Month9': return 'Tháng 9';
			case 'Lunar.Month10': return 'Tháng 10';
			case 'Lunar.Month11': return 'Tháng 11';
			case 'Lunar.Month12': return 'Tháng 12';
			case 'Lunar.Can': return 'Giáp,Ất,Bính,Đinh,Mậu,Kỷ,Canh,Tân,Nhâm,Quý';
			case 'Lunar.Chi': return 'Tý,Sửu,Dần,Mão,Thìn,Tỵ,Ngọ,Mùi,Thân,Dậu,Tuất,Hợi';
			case 'Lunar.MonthChi': return 'Dần,Mão,Thìn,Tỵ,Ngọ,Mùi,Thân,Dậu,Tuất,Hợi,Tý,Sửu';
			case 'Lunar.HourTy': return 'Tý';
			case 'Lunar.HourDan': return 'Dần';
			case 'Lunar.HourMao': return 'Mão';
			case 'Lunar.SolarTerms': return 'Xuân phân,Thanh minh,Cốc vũ,Lập hạ,Tiểu mãn,Mang chủng,Hạ chí,Tiểu thử,Đại thử,Lập thu,Xử thử,Bạch lộ,Thu phân,Hàn lộ,Sương giáng,Lập đông,Tiểu tuyết,Đại tuyết,Đông chí,Tiểu hàn,Đại hàn,Lập xuân,Vũ thủy,Kinh trập';
			case 'Lunar.Festival11': return 'Tết Nguyên Đán';
			case 'Lunar.Festival151': return 'Rằm tháng Giêng';
			case 'Lunar.Festival103': return 'Giỗ Tổ Hùng Vương';
			case 'Lunar.MondayShort': return 'T2';
			case 'Lunar.TuesdayShort': return 'T3';
			case 'Lunar.WednesdayShort': return 'T4';
			case 'Lunar.ThursdayShort': return 'T5';
			case 'Lunar.FridayShort': return 'T6';
			case 'Lunar.SaturdayShort': return 'T7';
			case 'Lunar.SundayShort': return 'CN';
			case 'Lunar.AllDay': return 'cả ngày';
			case 'Lunar.Calendar': return 'Lịch';
			case 'Lunar.Inbox': return 'Hộp thư đến';
			case 'Lunar.Events': return 'Sự kiện';
			case 'Lunar.SelectDate': return 'Chọn ngày';
			case 'Lunar.SolarCalendar': return 'Lịch dương';
			case 'Lunar.LunarCalendar': return 'Lịch âm';
			case 'Lunar.Confirm': return 'Xác nhận';
			case 'Lunar.ChooseDate': return 'Chọn ngày';
			case 'Lunar.SelectedDate': return 'Ngày đã chọn';
			case 'Lunar.Day': return 'Ngày';
			case 'Lunar.LeapMonth': return 'Nhuận';
			case 'Home.EventDate': return ({required Object date}) => 'Sự kiện ngày ${date}';
			case 'Home.NoEvent': return 'Không có sự kiện nào trong ngày này';
			case 'Home.LunarCalendar': return 'Âm lịch';
			case 'Home.Reference': return 'Kinh tham khảo';
			case 'Home.Description': return 'Mô tả';
			case 'Home.Content': return 'Nội dung sự kiện';
			case 'Home.Significance': return 'Ý nghĩa';
			case 'Home.Location': return 'Địa điểm';
			case 'Home.ImageDescription': return 'Mô tả hình ảnh';
			case 'Home.General': return 'Phật giáo';
			case 'Home.Personal': return 'Cá nhân';
			case 'Prayer.Title': return 'Niệm phật';
			case 'Prayer.Note': return 'Xin Quý vị hãy tịnh tâm và chấp tay niệm "Nam Mô A Di Đà Phật" (108 lần) sau khi niệm xong xin Qúy vị tụng hồi hướng "Nguyện đem công đức này, Hướng về khắp tất cả, Đệ tử và chúng sanh, Đều trọn thành Phật đạo."';
			case 'WoodenFish.Title': return 'Gõ mõ';
			case 'WoodenFish.Setting': return 'Cấu hình chung';
			case 'WoodenFish.MediaWooden': return 'Âm thanh mõ';
			case 'WoodenFish.MediaBell': return 'Âm chuông';
			case 'WoodenFish.Background': return 'Giao diện';
			case 'WoodenFish.Dark': return 'Tối';
			case 'WoodenFish.Light': return 'Sáng';
			case 'WoodenFish.Auto': return 'Tự động gõ mõ giúp bạn( Tốc độ 1 lần/giây)';
			case 'WoodenFish.AutoClick': return 'Tự động gõ';
			case 'WoodenFish.Image': return 'Ảnh mõ';
			case 'CommonAction.MainNavigation': return 'Điều hướng chính';
			case 'CommonAction.EditFunction': return 'Chỉnh sửa chức năng';
			case 'CommonAction.Ok': return 'Đồng ý';
			case 'CommonAction.Close': return 'Đóng';
			case 'CommonAction.Confirm': return 'Xác nhận';
			case 'CommonAction.Cancel': return 'Hủy';
			case 'CommonAction.Canceled': return 'Hủy bỏ';
			case 'CommonAction.Skip': return 'Bỏ qua';
			case 'CommonAction.Back': return 'Quay lại';
			case 'CommonAction.Continue': return 'Tiếp tục';
			case 'CommonAction.Delete': return 'Xóa';
			case 'CommonAction.Edit': return 'Tùy chỉnh';
			case 'CommonAction.Complete': return 'Hoàn tất';
			case 'CommonAction.Update': return 'Lưu chỉnh sửa';
			case 'CommonAction.Save': return 'Lưu';
			case 'CommonAction.Resend': return 'Gửi lại';
			case 'CommonAction.Submit': return 'Đồng ý';
			case 'CommonAction.NoSubmit': return 'Không đồng ý';
			case 'CommonAction.Copy': return 'Sao chép';
			case 'CommonAction.Copied': return 'Đã sao chép';
			case 'CommonAction.CopyLink': return 'Sao chép liên kết';
			case 'CommonAction.Search': return 'Tìm kiếm';
			case 'CommonAction.Sending': return 'Đang gửi';
			case 'CommonAction.EnterText': return 'Nhập văn bản';
			case 'CommonAction.Dismiss': return 'Loại bỏ';
			case 'CommonAction.ViewDetail': return 'Xem chi tiết';
			case 'CommonAction.Add': return 'Thêm';
			case 'CommonAction.Download': return 'Tải xuống';
			case 'CommonAction.Login': return 'Đăng nhập';
			case 'CommonAction.Register': return 'Đăng ký';
			case 'CommonAction.Logout': return 'Đăng xuất';
			case 'CommonAction.ShowMore': return 'Xem thêm';
			case 'CommonAction.ShowLess': return 'Thu gọn';
			case 'CommonAction.TapOnUpload': return 'Chạm để tải lên';
			case 'CommonAction.ConfirmBeforeLeaveForm': return 'Bạn có những thay đổi chưa được lưu. Bạn có chắc chắn muốn rời khỏi trang này không?';
			case 'CommonAction.Share': return 'Chia sẻ';
			case 'CommonAction.DeleteFilter': return 'Xoá bộ lọc';
			case 'CommonData.Required': return 'Bắt buộc';
			case 'CommonData.Menu': return 'Thực đơn';
			case 'CommonData.Account': return 'Tài khoản';
			case 'CommonData.Setting': return 'Cài đặt';
			case 'CommonData.Email': return 'Email';
			case 'CommonData.Password': return 'Mật khẩu';
			case 'CommonData.NotUpdate': return 'Không cập nhật';
			case 'CommonData.Today': return 'Hôm nay';
			case 'CommonData.Yesterday': return 'Hôm qua';
			case 'CommonData.Now': return 'Hiện nay';
			case 'CommonData.Minute': return ({required Object value}) => '${value}phút';
			case 'CommonData.Hour': return ({required Object value}) => '${value}giờ';
			case 'CommonData.Day': return ({required Object value}) => '${value}ngày';
			case 'CommonData.Week': return ({required Object value}) => '${value}tuần';
			case 'CommonData.Month': return ({required Object value}) => '${value}tháng';
			case 'CommonData.Year': return ({required Object value}) => '${value}năm';
			case 'CommonData.TimeToday': return ({required Object value}) => '${value} thời gian trong ngày';
			case 'CommonData.TimeYesterday': return ({required Object value}) => '${value} thời gian ngày hôm qua';
			case 'CommonData.To': return 'Giá trị';
			case 'CommonData.Error': return 'Lỗi';
			case 'CommonData.UploadAFile': return 'Tải lên một tài liệu';
			case 'CommonData.SelectImageOrVideo': return 'Chọn hình ảnh hoặc video';
			case 'CommonData.TakeAPhoto': return 'Chụp ảnh';
			case 'CommonData.UploadFrom': return 'Tải lên từ';
			case 'CommonData.LoadingMore': return 'Tải thêm';
			case 'CommonData.JapanCurrency': return 'Yên';
			case 'CommonData.Gallery': return 'Bộ sưu tập';
			case 'CommonData.GetBackWithoutSaveConfirm': return 'Dữ liệu hiện tại chưa được lưu. ';
			case 'CommonData.ListDataIsEmpty': return 'Chưa có dữ liệu';
			case 'CommonData.HasErrorOccurr': return 'một lỗi đã xảy ra';
			case 'CommonData.CantLoadData': return 'Không thể tải dữ liệu';
			case 'CommonData.PleaseFillFullInfo': return 'Không thể tải xuống dữ liệu';
			case 'CommonData.About': return 'Về';
			case 'CommonData.FeaturePending': return 'Tính năng này đang được phát triển';
			case 'CommonData.Currency': return 'VNĐ';
			case 'CommonData.Male': return 'Nam giới';
			case 'CommonData.Female': return 'Nữ giới';
			case 'CommonData.OtherGender': return 'Giới tính khác';
			case 'CommonData.Gender': return 'Giới tính';
			case 'CommonData.Job': return 'Công việc';
			case 'CommonData.Visa': return 'Hộ chiếu';
			case 'CommonData.Passport': return 'Hộ chiếu';
			case 'CommonData.Credentials': return 'Thông tin xác thực';
			case 'CommonData.Manage': return 'Quản lý';
			case 'CommonData.ManageNote': return 'Bạn đã cấp cho ứng quyền truy cập vào một số ảnh và video';
			case 'CommonData.LoginExpried': return 'Phiên đăng nhập đã hết hạn. Vui lòng đăng nhập để tiếp tục.';
			case 'CommonData.ErrorFileSelect': return 'Vui lòng chỉ tải lên các tệp PDF và JPEG';
			case 'CommonData.PleaseSelect': return 'Vui lòng chọn';
			case 'CommonData.NoData': return 'Không có dữ liệu';
			case 'CommonNotiAction.Success': return 'Thành công';
			case 'CommonNotiAction.YourActionMakingSuccessfully': return 'Hành động của bạn đã được hoàn thành thành công!';
			case 'CommonNotiAction.Failed': return 'Thất bại';
			case 'CommonNotiAction.YourActionMakingFailed': return 'Hành động của bạn đã không thành công!';
			case 'CommonNotiAction.DownloadFile': return 'Bạn có chắc chắn muốn tải xuống tệp này không?';
			case 'CommonNotiAction.DownloadFileSuccessfully': return ({required Object filename}) => 'Tải xuống tệp (${filename}) thành công!';
			case 'CommonNotiAction.CopySuccess': return 'Bạn đã sao chép thành công';
			case 'CommonValidation.InvalidEmailFormat': return 'Định dạng email không chính xác.';
			case 'CommonValidation.InvalidEmailEmpty': return 'Nhập địa chỉ email';
			case 'CommonValidation.EmailAlreadyInUse': return 'Địa chỉ email này đã được sử dụng.';
			case 'CommonValidation.InvalidPasswordFormat': return 'Mật khẩu của bạn phải có ít nhất 8 ký tự, 1 ký tự số, 1 chữ hoa, 1 chữ thường.';
			case 'CommonValidation.PasswordConfirmationNotMatch': return 'Xác nhận mật khẩu không khớp.';
			case 'CommonValidation.NewPasswordConfirmationNotMatch': return 'Xác nhận mật khẩu mới không khớp.';
			case 'CommonValidation.NewPasswordCanNotSameOldPassword': return 'Mật khẩu mới không được giống với mật khẩu cũ.';
			case 'CommonValidation.MaxLength': return ({required Object fieldName, required Object value}) => '${fieldName} không được nhiều hơn ${value} ký tự.';
			case 'CommonValidation.MinLength': return ({required Object fieldName, required Object value}) => '${fieldName} phải chứa ít nhất ${value} ký tự.';
			case 'CommonValidation.MaxValue': return ({required Object fieldName, required Object value}) => '${fieldName} không được vượt quá ${value}.';
			case 'CommonValidation.MinValue': return ({required Object fieldName, required Object value}) => '${fieldName} không thể nhỏ hơn ${value}.';
			case 'CommonValidation.Required': return ({required Object fieldName}) => '${fieldName} là bắt buộc.';
			case 'CommonValidation.CommonRequired': return 'Trường dữ liệu này là bắt buộc.';
			case 'CommonValidation.FieldInvalidate': return ({required Object fieldName}) => '${fieldName} không có định dạng đúng.';
			case 'CommonValidation.OnlyNumberAllow': return ({required Object fieldName}) => '${fieldName} chỉ có thể nhập số.';
			case 'CommonValidation.DateTimeFormatIsInvalid': return 'Dữ liệu đã nhập không đúng định dạng ngày.';
			case 'CommonValidation.PleaseChooseDifferenceImage': return 'Vui lòng không chọn hình ảnh trùng lặp';
			case 'CommonValidation.FileSizeMustLessThan10MB': return 'Kích thước tệp không được vượt quá 10Mb.';
			case 'CommonValidation.ListFileHasOneOrMoreFileSizeBiggerThan10MB': return 'Danh sách file bạn chọn chứa 1 hoặc nhiều file có dung lượng lớn hơn 10Mb, những file này sẽ bị xóa.';
			case 'CommonValidation.ImageSizeMustLessThan10MB': return 'Kích thước hình ảnh không được vượt quá 10Mb.';
			case 'CommonValidation.TotalFileSizeMustLessThan10MB': return 'Tổng kích thước tệp không thể vượt quá 10Mb.';
			case 'CommonValidation.TotalImageSizeMustLessThan10MB': return 'Tổng kích thước hình ảnh không được vượt quá 10Mb.';
			case 'Permission.NotAnyVisibleCamera': return 'Không có máy ảnh nào khả dụng';
			case 'Permission.PleaseAcceptCameraPermission': return 'Vui lòng cho phép quyền truy cập vào camera của thiết bị';
			case 'Permission.CameraPermissionPurpose': return 'Ứng dụng dùng camera của thiết bị để chụp ảnh';
			case 'Permission.PleaseAcceptContactPermission': return 'Vui lòng cho phép quyền truy cập vào danh sách liên hệ của thiết bị';
			case 'Permission.ContactPermissionPurpose': return 'Ứng dụng dùng danh sách liên hệ của thiết bị để tạo danh sách khách hàng thân thiết';
			case 'Permission.No': return 'Không';
			case 'Permission.Yes': return 'Đồng ý';
			case 'Permission.GalleryPermissionPurpose': return 'Ứng dụng sử dụng ảnh trong thư viện';
			case 'Permission.CanNotAccessGalleryPermission': return 'Không thể truy cập thư viện ảnh vì quyền truy cập bị từ chối';
			case 'Permission.PleaseAccessGalleryPermission': return 'Vui lòng cho phép quyền truy cập vào thư viện ảnh';
			case 'Permission.PermissionRequired': return 'Quyền cần thiết';
			case 'Permission.PleaseAcceptPermission': return 'Vui lòng chấp nhận quyền';
			case 'LostConnection.LostConnection': return 'Mất kết nối';
			case 'LostConnection.PleaseCheckConnection': return 'Vui lòng kiểm tra kết nối mạng của bạn hoặc thử lại.';
			case 'LostConnection.Retry': return 'Kết nối lại';
			case 'Placeholder.InputFieldPlaceholder': return ({required Object fieldName}) => 'Nhập ${fieldName}';
			case 'Placeholder.SelectFieldPlaceholder': return ({required Object fieldName}) => 'Lựa chọn ${fieldName}';
			case 'Placeholder.DateTimeFieldPlaceholder': return 'Chọn ngày';
			case 'Placeholder.SearchPlaceHolder': return ({required Object fieldName}) => 'Tìm kiếm ${fieldName}';
			case 'Placeholder.UploadFilePlaceHolder': return 'Chọn tệp';
			case 'Error.Errtb0101': return 'Thời gian đặt lịch không hợp lệ.';
			case 'Error.Valbqr0108': return 'Thời gian kết thúc không được để trống';
			case 'Error.Valatr0601': return 'Số lượng không được để trống';
			case 'Error.UnexpectedError': return 'Một lỗi không mong muốn đã xảy ra.';
			case 'Error.SendTimeoutError': return 'Đã xảy ra lỗi thời gian chờ truyền khi kết nối với máy chủ API.';
			case 'Error.ConnectionTimeoutError': return 'Hết thời gian kết nối với máy chủ API.';
			case 'Error.CancalledApiError': return 'Yêu cầu tới máy chủ API đã bị hủy.';
			case 'Error.ConnectionError': return 'Kết nối với máy chủ API không thành công do kết nối Internet.';
			case 'Error.ReceiveTimeoutError': return 'Lỗi nhận thời gian chờ khi kết nối với máy chủ API.';
			case 'Update.UpdateAvailable': return 'Cập nhật mới có sẵn';
			case 'Update.UpdateNow': return 'Cập nhật ngay';
			case 'Update.UpdateLater': return 'Cập nhật sau';
			case 'Update.UpdateDescription': return 'Phiên bản mới của ứng dụng đã sẵn sàng. Vui lòng cập nhật để trải nghiệm các tính năng mới và sửa lỗi.';
			case 'Update.UpdateError': return 'Cập nhật không thành công. Vui lòng thử lại sau.';
			case 'DateTime.ToDay': return 'Hôm nay';
			case 'DateTime.Yesterday': return 'Hôm qua';
			case 'DateTime.YouCanNotSelectAPastDateTime': return 'Bạn không thể chọn một thời gian trong quá khứ';
			case 'DateTime.Hour': return 'Giờ';
			case 'DateTime.Month': return 'Tháng';
			case 'DateTime.Day': return 'Ngày';
			case 'DateTime.Weekend': return 'Thứ';
			case 'DateTime.Monday': return 'Thứ 2';
			case 'DateTime.Tuesday': return 'Thứ 3';
			case 'DateTime.Wednesday': return 'Thứ 4';
			case 'DateTime.Thursday': return 'Thứ 5';
			case 'DateTime.Friday': return 'Thứ 6';
			case 'DateTime.Saturday': return 'Thứ 7';
			case 'DateTime.Sunday': return 'Chủ nhật';
			case 'DateTime.InputTime': return 'Chọn giờ';
			case 'Language.Vi': return 'Tiếng Việt';
			case 'Language.En': return 'Tiếng Anh';
			case 'Language.Ja': return 'Tiếng Nhật';
			case 'Language.ChangeLanguage': return 'Chuyển ngôn ngữ';
			default: return null;
		}
	}
}

