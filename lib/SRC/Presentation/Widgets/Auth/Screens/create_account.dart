import 'package:app_links/app_links.dart';
import 'package:tf_ecommerce/SRC/Data/app_data/app_secrets.dart';
import 'package:tf_ecommerce/SRC/Data/app_data/data.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/Auth/controller/vipps_controller.dart';
import 'package:tf_ecommerce/SRC/exports.dart';
import 'package:url_launcher/url_launcher.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  @override
  void initState() {
    _appLinksListeners();

    // TODO: implement initState
    super.initState();
  }
  Future<void> _appLinksListeners() async {
    if(VipsController.listenerInternalAppLinks !=  null )
    {
      await   VipsController.listenerInternalAppLinks?.cancel();

    }
    final AppLinks appLinks = AppLinks();


    VipsController.listenerAppLinks = appLinks.uriLinkStream.listen((uri) async {
      String query = uri.query;

      print("URI>>> $uri");
      if (query.contains("code")) {
        final code = uri.queryParameters;
        print("code>>> ${code}");


        VipsController().sendCode('https://dialog.modish.no/api/user/vippsMember/${code["code"]}?client_token=${Data().clientId}&redirect_uri=$redirectUriPrd');

      }
      if (query.contains("resume_uri")) {
        print("resume_uri>>> ${Uri.parse(Uri.decodeFull(query.split('resume_uri=').last))}");
        await launchUrl(
            Uri.parse(Uri.decodeFull(query.split('resume_uri=').last)));
      } else {}
    });

    // appLinksListerner.cancel();
  }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SizedBox(
          height: double.infinity,
          child: Stack(
            children: [
              // const BubbleThree(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      80.y,
                      AppText(
                        text: AppStrings.createAccount,
                        style: theme.textTheme.headlineLarge,
                        maxLines: 2,
                      ),
                      // 30.h,
                      // const CameraContainer(),
                      80.y,
                      CustomTextField(
                        hintText: AppStrings.emailAddress,
                        controller: TextEditingController(),
                      ),
                      10.y,
                      CustomTextField(
                        hintText: AppStrings.password,
                        isPassword: true,
                        controller: TextEditingController(),
                      ),
                      10.y,
                      PhoneNumber(
                        hintText: AppStrings.phoneNumber,
                        controller: TextEditingController(),
                      ),
                      20.y,
                      CommonButton(
                        // color: ,
                        onTap: () {
                          context.pushReplacement(const SignInScreen());
                        },
                        text: AppStrings.done,
                      ),
                      10.y,
                      Center(
                          child: AppText(
                        text: AppStrings.or,
                        style: theme.textTheme.displayMedium,
                      )),
                      10.y,

                      CommonButton(
                        backgroundColor: theme.indicatorColor,
                        onTap:_onLoginOrRegisterVeep,
                        text: "Register deg Med",

                        trailingSvg: AppAssets.vippsIcon,
                      ),
                      10.y,
                      Center(
                          child: AppText(
                        text: AppStrings.cancel,
                        style: theme.textTheme.bodyMedium,
                      ))
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Future<void> _onLoginOrRegisterVeep() async {


    print("urlllllllllloginnn");

    String logUri=loginUrl;
    print(logUri);

    await launchUrl(
      Uri.parse(logUri),
      mode: LaunchMode.externalNonBrowserApplication,
    );

  }
}
