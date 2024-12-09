import 'package:tf_ecommerce/SRC/Presentation/Widgets/Chat/Component/Tiles/chat_app_bar.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final bool isSelected = true;
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      UserQuestionsBottomSheet.whatIsYourIssueBottomSheet(context);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          context.back();
        }
      },
      child: Scaffold(
        backgroundColor: theme.canvasColor,
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: false,
                floating: true,
                snap: true,
                stretch: false,
                leadingWidth: size.width,
                collapsedHeight: 70,
                expandedHeight: 70,
                toolbarHeight: 70,
                backgroundColor: theme.scaffoldBackgroundColor,
                surfaceTintColor: Colors.transparent,
                leading: const ChatAppBar(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: size.height - 75,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: ListView.builder(
                            itemCount: UserSelectedData.userSelectedData.length,
                            itemBuilder: (context, index) {
                              return index == 0
                                  ? CommonChatContainer(
                                      isChatBot: true,
                                      text:
                                          UserSelectedData.userSelectedData[0],
                                    )
                                  : CommonChatContainer(
                                      isChatBot: false,
                                      text: UserSelectedData
                                          .userSelectedData[index],
                                    );
                            }),
                      ),
                      Container(
                        height: 80,
                        width: size.width,
                        color: theme.primaryColorDark.withOpacity(0.2),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 70,
                              width: size.width / 1.3,
                              child: TextField(
                                controller: TextEditingController(),
                                onSubmitted: (val) {},
                                style: theme.textTheme.labelSmall,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  hintStyle: theme.textTheme.labelSmall!
                                      .copyWith(color: theme.primaryColorDark),
                                  hintText: "Message",
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    UserQuestionsBottomSheet.getImage(
                                        context, () {});
                                  },
                                  icon: Icon(
                                    Icons.image,
                                    color: theme.primaryColorDark,
                                    size: 30,
                                  ),
                                ),
                                5.x,
                                const DisplayImage(
                                  imageAddress:AppAssets.categoriesPNG,
                                  imageHeight: 25,
                                  imageWidth: 25,
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
