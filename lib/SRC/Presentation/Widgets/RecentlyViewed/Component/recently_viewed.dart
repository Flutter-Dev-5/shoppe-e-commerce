import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:tf_ecommerce/SRC/Presentation/Common/Buttons/arrow_down.dart';
import 'package:tf_ecommerce/SRC/Presentation/Common/Buttons/arrow_up.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/RecentlyViewed/component/Tile/select_day_of_recently.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class RecentlyViewedOfRecentScreen extends StatelessWidget {
  RecentlyViewedOfRecentScreen({super.key});

  final ValueNotifier<bool> showContainer = ValueNotifier<bool>(false);
  final ValueNotifier<int> selectedIndex =
      ValueNotifier<int>(-1); // Moved ValueNotifier here

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);

    return ValueListenableBuilder<bool>(
      valueListenable: showContainer,
      builder: (context, show, _) {
        return show
            ? Container(
                height: size.height / 3,
                color: theme.scaffoldBackgroundColor,
                child: Stack(
                  children: [
                    Container(
                      height: size.height / 3.2,
                      color: theme.scaffoldBackgroundColor,
                      child: Card(
                        color: theme.scaffoldBackgroundColor,
                        child: SfCalendar(
                          selectionDecoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Theme.of(context).primaryColorDark,
                              )),
                          headerDateFormat: "LLLL",
                          headerStyle: CalendarHeaderStyle(
                              backgroundColor: theme.scaffoldBackgroundColor,
                              textStyle: theme.textTheme.labelMedium),
                          cellBorderColor: theme.scaffoldBackgroundColor,
                          showNavigationArrow: true,
                          todayHighlightColor: theme.primaryColorDark,
                          view: CalendarView.month,
                          monthViewSettings: MonthViewSettings(
                              numberOfWeeksInView: 4,
                              monthCellStyle: MonthCellStyle(
                                  todayBackgroundColor: theme.canvasColor,
                                  backgroundColor: theme.canvasColor),
                              appointmentDisplayMode:
                                  MonthAppointmentDisplayMode.appointment),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: size.width / 2.5,
                      child: ArrowUp(
                        onTap: () {
                          showContainer.value = false;
                        },
                      ),
                    ),
                  ],
                ),
              )
            : Row(
                children: [
                  SelectDayOfRecently(
                    index: 0,
                    text: AppStrings.today,
                    selectedIndex: selectedIndex, // Pass selectedIndex
                  ),
                  5.x,
                  SelectDayOfRecently(
                    index: 1,
                    text: AppStrings.yesterday,
                    selectedIndex: selectedIndex, // Pass selectedIndex
                  ),
                  5.x,
                  ArrowDown(
                    onTap: () {
                      showContainer.value = true;
                    },
                  ),
                ],
              );
      },
    );
  }
}
