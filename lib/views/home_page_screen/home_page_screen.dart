import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gentlestride/const/colors/colors.dart';
import 'package:gentlestride/const/images/images.dart';
import 'package:gentlestride/widgets/custom_treat_widget/custom_treat_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBlue,
        actions: [
          RichText(
            text: const TextSpan(
              text: 'Call Now ',
              style: TextStyle(color: white, fontWeight: FontWeight.w900),
              children: <TextSpan>[
                TextSpan(
                    text: '0161 393 267',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, color: white)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              whatsappLogo,
              width: 30,
              height: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    logo,
                    fit: BoxFit.fill,
                    height: 100,
                    width: 250,
                  ),
                  const Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            Container(
              width: size.width,
              height: size.height * 1.4,
              color: whiteBg,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.06,
                    ),
                    Text(
                      "Welcome To",
                      style: GoogleFonts.ramaraja(
                          color: green,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    Text(
                      "Gentle Stride Podiatry",
                      style: GoogleFonts.ramaraja(
                          color: darkBlue,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text(
                      "Experience a future where pain is relieved, mobility is effortless, and routine care is a breeze. At Gentle Stride Podiatry, we will be providing comprehensive podiatrist services from Corn, Athletes Foot to Thickened Toenails and ensure you step forward with confidence. Our passion for cleanliness ensures that your foot hygiene is prioritized, because good health starts with healthy feet, and healthy feet start with Gentle Stride Podiatry. What sets us apart is our unwavering dedication to delivering personalized care with a gentle touch. We understand that every patient is unique, which is why we take the time to listen attentively to your concerns and craft customized treatment plans that address your specific goals.",
                      style: GoogleFonts.roboto(
                          letterSpacing: 1,
                          color: grey,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        width: size.width * 0.6,
                        height: size.height * 0.08,
                        decoration: BoxDecoration(
                            color: darkBlue,
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                          child: Text(
                            "Book an Appointment",
                            style: GoogleFonts.roboto(
                                color: white,
                                fontSize: 16,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.06,
                    ),
                    Image.asset(homePageImage)
                  ],
                ),
              ),
            ),
            //
            SizedBox(
              height: size.height * 0.03,
            ),
            //
            Center(
              child: Text(
                "Gentle Stride Podiatry",
                style: GoogleFonts.ramaraja(
                    color: darkBlue, fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                "We Can Help!",
                style: GoogleFonts.ramaraja(
                    color: green, fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                "We Treat",
                style: GoogleFonts.ramaraja(
                    color: darkBlue, fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            //
            CustomTreatWidget(
              image: corns,
              heading: "Corns",
              detail:
                  'Got down because of uncomfortable bumps? We provide relief and prevent them from coming back',
            ),
            CustomTreatWidget(
                heading: "Athelets Foot",
                detail:
                    "Burning, itchy feet? We provide efficient care to help you get back into cozy shoes.",
                image: athleteFoot),
            CustomTreatWidget(
                heading: "Nail Surgery",
                detail:
                    "Painful or infected nails after nail surgery? We carry out minimally invasive treatments to provide long-lasting fixes.",
                image: nail),
            CustomTreatWidget(
                heading: "Callus",
                detail:
                    "Our podiatrists offer safe callus removal and recommend strategies to make your feet feel smooth and comfortable.",
                image: callus),
            CustomTreatWidget(
                heading: "Verruca",
                detail:
                    "Say goodbye to verrucas with Gentle Stride Podiatry. Expert care for healthier, happier feet.",
                image: verruca),
            CustomTreatWidget(
                heading: "Ankle, Knee And Hip Pain",
                detail:
                    "Does foot pain affect your entire body? We’ll identify the underlying issue and get you moving without any pain",
                image: knee),
            CustomTreatWidget(
                heading: "Hard Skin",
                detail:
                    "Is discomfort caused by dry, cracked skin? We can smooth things out and prevent future buildup.",
                image: skin),
            CustomTreatWidget(
                heading: "Fungal Nails",
                detail:
                    "We offer treatment procedures to restore a healthy nail appearance.",
                image: fungal),
            CustomTreatWidget(
                heading: "Thickened Toenails",
                detail:
                    "Are you having trouble trimming or cutting your toenails? We’ll safely take care of them to enhance foot health.",
                image: thekened),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                width: size.width,
                height: size.height * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: darkBlue),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Text(
                          "We also provide advice on the benefits of routine podiatry treatment and the sidnificance of healthy feet",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Center(
                          child: Container(
                        width: size.width * 0.5,
                        height: size.height * 0.07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: green),
                        child: Center(
                          child: Text(
                            "See All",
                            style: GoogleFonts.poppins(
                                fontSize: 19,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
