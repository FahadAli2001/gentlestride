import 'package:flutter/material.dart';
import 'package:gentlestride/const/colors/colors.dart';
import 'package:gentlestride/const/images/images.dart';
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
              padding: const EdgeInsets.all(8.0),
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
                          color: const Color(0xff606060),
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
                        child:   Center(
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
            
          ],
        ),
      ),
    );
  }
}
