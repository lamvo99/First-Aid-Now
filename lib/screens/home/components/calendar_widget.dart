import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/model/personal_event/personal_event.dart';
import 'package:first_aid/screens/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uuid/uuid.dart';

import '../../../app_common_data/export.dart';
import '../../../shared_customization/export.dart';
import '../../../shared_customization/widgets/texts/app_text.dart';
import 'calendar_header.dart';
import 'day_cell.dart';
import 'personal_event_content_widget.dart';
import 'personal_event_item.dart';

class CalendarWidget extends StatefulWidget {
  final HomeState state;

  const CalendarWidget({super.key, required this.state});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget>
    with TickerProviderStateMixin {
  late BuildContext _context;
  late DateTime _selectedDate;
  late DateTime _displayedMonth;
  late PageController _pageController;
  static const _initialPage = 1200;

  TabController? _tabController;
  List<String> titleTabs = [i18n.Home.General, i18n.Home.Personal];
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    _selectedDate = DateTime.now();

    // Hiển thị tháng chứa ngày được chọn
    _displayedMonth = DateTime(_selectedDate.year, _selectedDate.month, 1);

    // Tính toán trang ban đầu dựa trên sự chênh lệch tháng
    final now = DateTime.now();
    final monthDiff = (_displayedMonth.year - now.year) * 12 +
        (_displayedMonth.month - now.month);
    _pageController = PageController(initialPage: _initialPage + monthDiff);

    _tabController = TabController(length: titleTabs.length, vsync: this);

    _tabController!.addListener(() {
      if (_tabController!.index != selectedIndex) {
        setState(() {
          selectedIndex = _tabController!.index;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    if (_tabController != null) {
      _tabController!.dispose();
    }
    super.dispose();
  }

  DateTime _getMonthForPage(int page) {
    final monthDiff = page - _initialPage;
    return DateTime(
      DateTime.now().year,
      DateTime.now().month + monthDiff,
    );
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    return AppContainer(
      padding: EdgeInsets.all(8),
      color: AppColors.white,
      borderRadius: BorderRadius.circular(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ///
          /// CALENDAR HEADER
          ///
          CalendarHeader(
            displayedMonth: _displayedMonth,
            onMonthChanged: (date) {
              // final monthDiff = (date.year - _displayedMonth.year) * 12 +
              //     date.month -
              //     _displayedMonth.month;
              // _pageController.animateToPage(
              //   _pageController.page!.round() + monthDiff,
              //   duration: const Duration(milliseconds: 300),
              //   curve: Curves.easeInOut,
              // );
              setState(() {
                _displayedMonth = date;
              });
            },
            onTodayPressed: () {
              final now = DateTime.now();
              setState(() {
                _selectedDate = now;
                _displayedMonth = now;
              });

              // _pageController.jumpToPage(_initialPage);
            },
          ),

          ///
          /// WEEK DAY HEADER
          ///
          _buildWeekdayHeader(),

          ///
          /// MONTH VIEW
          ///
          Builder(builder: (context) {
            final month = _displayedMonth;

            List<PersonalEvent> personalEvents = widget.state.listPersonalEvent
                .where((event) =>
                    event.dateTime?.month == month.month &&
                    (event.isRepeat == true ||
                        event.dateTime?.year == month.year))
                .toList();
            return _buildMonthView(
              personalEvents,
              month,
              50,
              250,
            );
          }),

          ///
          /// TITLE
          ///
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 8,
            children: [
              Expanded(
                child: AppText(
                  i18n.Home.EventDate(date: _selectedDate.toDayMonthYear()),
                  style: AppTextStyle.textSecondary14W500,
                ),
              ),
              InkWell(
                onTap: () {
                  showPersonalEventBottom(
                    context,
                    event: PersonalEvent(
                      id: Uuid().v4(),
                      eventType: PersonalEventType.ANNIVERSARY,
                      dateType: DateType.LUNAR,
                      dateTime: DateTime.now(),
                      isRepeat: false,
                      isReminder: true,
                      advanceDays: 3,
                      hour: 8,
                      minute: 0,
                    ),
                  );
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  spacing: 4,
                  children: [
                    Assets.icons.icAddRound.svg(),
                    AppText(
                      i18n.Event.Add,
                      style: AppTextStyle.textGray90014W500.copyWith(
                        decorationColor: AppColors.gray900,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                      decoration: TextDecoration.underline,
                    ),
                  ],
                ),
              ),
            ],
          ),

          ///
          /// LIST EVENTS
          ///
          AppContainer(
            width: double.infinity,
            color: AppColors.white,
            child: TabBar(
              dividerColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: AppColors.gray900,
              indicatorWeight: 2,
              controller: _tabController,
              isScrollable: false,
              labelPadding: EdgeInsets.zero,
              onTap: (value) {
                if (selectedIndex != value) {
                  setState(() {
                    selectedIndex = value;
                  });
                  _tabController!.animateTo(
                    value,
                    duration: const Duration(seconds: 5),
                  );
                }
              },
              tabs: titleTabs.asMap().entries.map((e) {
                return Tab(
                  child: Container(
                    width: double.infinity, // Chiếm toàn bộ chiều ngang
                    alignment: Alignment.center,
                    child: AppText(
                      e.value,
                      color: e.key == selectedIndex
                          ? AppColors.gray700
                          : AppColors.gray500,
                      fontWeight: FontWeight.w600,
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 12),
          if (selectedIndex == 0) ...[
            Builder(builder: (context) {
              final month = _displayedMonth;
              final lunarDate = LunarUtils.solarToLunar(_selectedDate);

              return AppContainer(
                width: 1.sw,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 8,

                ),
              );
            }),
          ] else ...[
            Builder(builder: (context) {
              final month = _displayedMonth;
              final lunarDate = LunarUtils.solarToLunar(_selectedDate);
              List<PersonalEvent> personalEvent = widget.state.listPersonalEvent
                  .where((event) =>
                      (event.dateType == DateType.SOLAR &&
                          (event.dateTime?.month == _selectedDate.month &&
                              event.dateTime?.day == _selectedDate.day) &&
                          (event.isRepeat == true ||
                              event.dateTime?.year == _selectedDate.year)) ||
                      (event.dateType == DateType.LUNAR &&
                              (event.dateTime?.month == month.month &&
                                  event.dateTime?.day == lunarDate.day)) &&
                          (event.isRepeat == true ||
                              event.dateTime?.year == lunarDate.year))
                  .toList();

              return AppContainer(
                width: 1.sw,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 8,
                  children: [
                    /// Khoong co sự kiện nào
                    if (personalEvent.isEmptyOrNull) ...[
                      AppContainer(
                        width: 1.sw,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 40),
                            Assets.icons.icNoData.svg(width: 150, height: 150),
                            const SizedBox(height: 8),
                            AppText(
                              i18n.Home.NoEvent,
                              style: AppTextStyle.textGray90014W500,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )
                    ],

                    ///
                    /// Có Sự kiện
                    ///
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 8,
                      children: personalEvent.map((event) {
                        return PersonalEventItem(
                          event: event,
                          gregorianDate: _selectedDate,
                          lunarDate: lunarDate,
                          onEdit: () {
                            showPersonalEventBottom(
                              context,
                              event: event,
                              isAdd: false,
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ],
                ),
              );
            }),
          ]
        ],
      ),
    );
  }

  ///
  /// MONTH VIEW
  ///
  Widget _buildMonthView(
    List<PersonalEvent> personalEvents,
    DateTime month,
    double calendarHeight,
    double heightOfCell,
  ) {
    final days = DateLunarUtils.daysInMonth(month);
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7,
        childAspectRatio: 0.6,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
      ),
      shrinkWrap: true,
      itemCount: days.length,
      itemBuilder: (context, index) {
        final date = days[index];
        final lunarDate = LunarUtils.solarToLunar(date);
        final isCurrentMonth = date.month == month.month;
        List<PersonalEvent> personalEventsForDate = [];
        personalEventsForDate = personalEvents
            .where((events) =>
                (events.dateType == DateType.SOLAR &&
                    events.dateTime?.day == date.day) ||
                (events.dateType == DateType.LUNAR &&
                    events.dateTime?.day == lunarDate.day))
            .toList();
        return DayCell(
          date: date,
          lunarDate: lunarDate,
          selectedDate: _selectedDate,
          isCurrentMonth: isCurrentMonth,
          onDateSelected: (date) => _onDateTapped(date),
          personalEvents: personalEventsForDate,
        );
      },
    );
  }

  void _onDateTapped(DateTime date) {
    setState(() => _selectedDate = date);
    final lunarDate = LunarUtils.solarToLunar(date);
  }

  ///
  /// WEEK HEADER
  ///
  Widget _buildWeekdayHeader() {
    return AppContainer(
      padding: const EdgeInsets.symmetric(vertical: 8),
      constraints: BoxConstraints(maxWidth: 1.sw),
      border: Border(
        bottom: BorderSide(
          color: AppColors.gray500.withOpacity(0.1),
        ),
      ),
      child: Row(
        children: List.generate(7, (index) {
          final date = DateTime(2024, 1, index + 1);
          return Expanded(
            child: AppText(
              DateLunarUtils.weekdayName(
                date,
                short: true,
              ),
              style: TextStyle(
                color: date.getDayColor,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          );
        }),
      ),
    );
  }

  ///
  ///  Add/Edit Personal Event
  ///
  Future<void> showPersonalEventBottom(
    BuildContext context, {
    required PersonalEvent event,
    bool isAdd = true,
  }) async {
    return showModalBottomSheet(
        isDismissible: true,
        isScrollControlled: true,
        context: context,
        backgroundColor: AppColors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        builder: (_) {
          return StatefulBuilder(builder: (context, setStater) {
            return AppContainer(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: Colors.white,
              width: 1.sw,
              child: PersonalEventContentWidget(
                personalEvent: event,
                isAdd: isAdd,
                onDelete: () {
                  List<PersonalEvent> personalEvents =
                      List.from(widget.state.listPersonalEvent);
                  personalEvents.removeWhere((e) => e.id == event.id);
                  _context.read<HomeCubit>().updateState((state) =>
                      state.copyWith(listPersonalEvent: personalEvents));
                  appDatabase.putPersonalEvent(personalEvents);
                  notificationHelper.flutterLocalNotificationsPlugin
                      .cancel(event.id!.hashCode);
                  Navigator.pop(_context);
                  showSuccessBanner(content: i18n.Event.DeleteSuccess);
                },
                onPersonalEventChanged: (PersonalEvent? personalEvent) {
                  if (personalEvent != null) {
                    if (isAdd) {
                      List<PersonalEvent> personalEvents =
                          List.from(widget.state.listPersonalEvent);
                      personalEvents.add(personalEvent);
                      _context.read<HomeCubit>().updateState((state) =>
                          state.copyWith(listPersonalEvent: personalEvents));
                      appDatabase.putPersonalEvent(personalEvents);

                      // List<int> list = LunarUtils.lunarToSolar(
                      //     personalEvent.dateTime!.year,
                      //     personalEvent.dateTime!.month,
                      //     personalEvent.dateTime!.day,
                      //     LunarUtils.getLeapMonth(
                      //         personalEvent.dateTime!.year, 7),
                      //     7);
                      // print(list);

                      Navigator.pop(_context);
                      showSuccessBanner(content: i18n.Event.AddSuccess);
                    } else {
                      List<PersonalEvent> personalEvents =
                          List.from(widget.state.listPersonalEvent);
                      int index = personalEvents
                          .indexWhere((e) => e.id == personalEvent.id);
                      if (index != -1) {
                        personalEvents[index] = personalEvent;
                        _context.read<HomeCubit>().updateState((state) =>
                            state.copyWith(listPersonalEvent: personalEvents));
                        appDatabase.putPersonalEvent(personalEvents);

                        // DateTime dateTime = personalEvent.dateType == DateType.SOLAR
                        //     ? personalEvent.dateTime!
                        //     : LunarUtils.lunarToSolar(
                        //         personalEvent.dateTime!,
                        //         month: personalEvent.dateTime!.month,
                        //         day: personalEvent.dateTime!.day);

                        // notificationHelper.scheduleEventNotification(
                        //   id: personalEvent.id,
                        //   title: personalEvent.title,
                        //   body: personalEvent.description,
                        //   dateTime: personalEvent.dateTime!,
                        // );
                        Navigator.pop(_context);
                        showSuccessBanner(content: i18n.Event.EditSuccess);
                      }
                    }
                  }
                },
              ),
            );
          });
        });
  }
}
