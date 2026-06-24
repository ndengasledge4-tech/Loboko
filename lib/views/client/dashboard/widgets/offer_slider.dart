import 'package:flutter/material.dart';

class OfferSlider extends StatelessWidget {
  const OfferSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,

      child: Stack(
        children: [

          Positioned(
            bottom: 0,
            left: 20,
            right: 20,

            child: Container(
              height: 18,

              decoration: BoxDecoration(
                color: const Color(0xFFAEE3DB),
                borderRadius:
                BorderRadius.circular(20),
              ),
            ),
          ),

          Container(
            height: 150,

            decoration: BoxDecoration(
              color: const Color(0xFF26B6A6),

              borderRadius:
              BorderRadius.circular(20),

              boxShadow: [
                BoxShadow(
                  color:
                  Colors.black.withOpacity(0.12),
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),

            child: Row(
              children: [

                Expanded(
                  flex: 4,

                  child: Padding(
                    padding: const EdgeInsets.all(10),

                    child: Image.asset(
                      "assets/images/prestataire.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                Expanded(
                  flex: 6,

                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 15,
                    ),

                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,

                      mainAxisAlignment:
                      MainAxisAlignment.center,

                      children: [

                        const Text(
                          "Offre Spéciale",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),

                        const SizedBox(height: 4),

                        const Text(
                          "30% OFF",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight:
                            FontWeight.bold,
                            height: 1,
                          ),
                        ),

                        const SizedBox(height: 4),

                        const Text(
                          "Temps limité",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),

                        const SizedBox(height: 12),

                        SizedBox(
                          height: 38,

                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                "/services",
                              );
                            },

                            style:
                            ElevatedButton.styleFrom(
                              backgroundColor:
                              Colors.white,

                              foregroundColor:
                              Colors.black,

                              elevation: 0,

                              padding:
                              const EdgeInsets.symmetric(
                                horizontal: 14,
                              ),

                              shape:
                              RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(
                                  20,
                                ),
                              ),
                            ),

                            child: const Row(
                              mainAxisSize:
                              MainAxisSize.min,

                              children: [

                                Text(
                                  "Réserver maintenant",
                                  style: TextStyle(
                                    fontWeight:
                                    FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),

                                SizedBox(width: 6),

                                CircleAvatar(
                                  radius: 9,
                                  backgroundColor:
                                  Colors.black,

                                  child: Icon(
                                    Icons.arrow_forward,
                                    color:
                                    Colors.white,
                                    size: 11,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}