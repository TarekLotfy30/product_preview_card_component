import 'package:flutter/material.dart';
import 'package:product_preview_card_component/view_model/utiles/colors.dart';

import '../../component/testx_custom.dart';

class ProductPreview extends StatelessWidget {
  const ProductPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cream,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          margin:
              const EdgeInsets.only(left: 15, right: 15, bottom: 40, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                  child: Image(
                    image: AssetImage(
                      "assets/images/image-product-mobile.jpg",
                    ),
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, top: 20, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextCustom(
                        data: "PERFUME",
                        fontFamily: "Montserrat",
                        letterSpacing: 3,
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      const TextCustom(
                        data: "Gabrielle Essence Eau De Parfum",
                        fontFamily: "Fraunces",
                        fontSize: 32,
                        color: AppColors.veryDarkBlue,
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      const TextCustom(
                        data: "A floral, solar and voluptuous interpretations "
                            "composed by Olivier Polge, Perfumer-Creator for "
                            "the House of CHANEL",
                        fontFamily: "Montserrat",
                        fontSize: 15,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          TextCustom(
                            data: r"$149.99",
                            color: AppColors.darkCyan,
                            fontFamily: "Fraunces",
                            fontSize: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          TextCustom(
                            data: r"$169.99",
                            decoration: TextDecoration.lineThrough,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.darkCyan,
                            elevation: 0,
                            minimumSize: const Size(double.infinity, 60),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            )),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_shopping_cart_outlined,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            TextCustom(
                              data: "Add to Cart",
                              color: AppColors.white,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
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
