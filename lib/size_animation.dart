import 'package:flutter/material.dart';

class SizeAnimation extends StatefulWidget {
  const SizeAnimation({super.key});

  @override
  State<SizeAnimation> createState() => _SizeAnimationState();
}

class _SizeAnimationState extends State<SizeAnimation>
    with TickerProviderStateMixin {
  late AnimationController animationController = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 200));
  late AnimationController divisonAnimationController = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 200));
  late AnimationController zillaAnimationController = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 200));
  late AnimationController upoZillaAnimationController = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 200));
  // late AnimationController animationControllerReverse =
  //     AnimationController(vsync: this, duration: const Duration(seconds: 1))
  //       ..reverse();
  late Animation<double> animation = CurvedAnimation(
      parent: animationController, curve: Curves.easeInOutCubic);
  late Animation<double> divisonAnimation = CurvedAnimation(
      parent: divisonAnimationController, curve: Curves.easeInOutCubic);
  late Animation<double> zillaAnimation = CurvedAnimation(
      parent: zillaAnimationController, curve: Curves.easeInOutCubic);
  late Animation<double> upoZillaAnimation = CurvedAnimation(
      parent: upoZillaAnimationController, curve: Curves.easeInOutCubic);

  bool isButtonShow = true;
  bool isCountry = true;
  bool isDivision = false;
  bool isZilla = false;
  bool isUpoZilla = false;

  @override
  void dispose() {
    animationController.dispose();
    divisonAnimationController.dispose();
    zillaAnimationController.dispose();
    upoZillaAnimationController.dispose();

    super.dispose();
  }

  Widget division() {
    return SizeTransition(
      sizeFactor: divisonAnimation,
      axis: Axis.vertical,
      axisAlignment: 0.0,
      child: Card(
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 1,
        color: Colors.white,
        child: Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          divisonAnimationController.reverse();
                        });
                        Future.delayed(Duration(seconds: 1), () {
                          setState(() {
                            isCountry = true;
                            animationController.forward();
                          });
                        });
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                    const Text(
                      "একটি বিভাগ নির্বাচন করুন",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.black,
                  height: 0.8,
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      divisonAnimationController.reverse();
                    });
                    Future.delayed(Duration(milliseconds: 200), () {
                      setState(() {
                        isDivision = false;
                        isZilla = true;
                        zillaAnimationController.forward();
                        print("is division ${isDivision}");
                      });
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("রাজশাহী"),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget zilla() {
    return SizeTransition(
      sizeFactor: zillaAnimation,
      axis: Axis.vertical,
      axisAlignment: 0.0,
      child: Card(
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 1,
        color: Colors.white,
        child: Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          zillaAnimationController.reverse();
                        });
                        Future.delayed(Duration(milliseconds: 200), () {
                          setState(() {
                            isDivision = true;
                            divisonAnimationController.forward();
                          });
                        });
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                    const Text(
                      "একটি জেলা নির্বাচন করুন",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.black,
                  height: 0.8,
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      zillaAnimationController.reverse();
                    });
                    Future.delayed(Duration(milliseconds: 200), () {
                      setState(() {
                        isZilla = false;
                        isUpoZilla = true;
                        upoZillaAnimationController.forward();
                      });
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("পাবনা"),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget upoZilla() {
    return SizeTransition(
      sizeFactor: upoZillaAnimation,
      axis: Axis.vertical,
      axisAlignment: 0.0,
      child: Card(
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 1,
        color: Colors.white,
        child: Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          upoZillaAnimationController.reverse();
                        });
                        Future.delayed(Duration(milliseconds: 200), () {
                          setState(() {
                            isZilla = true;
                            zillaAnimationController.forward();
                          });
                        });
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                    const Text(
                      "একটি উপজেলা নির্বাচন করুন",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.black,
                  height: 0.8,
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      upoZillaAnimationController.reverse();
                    });

                    Future.delayed(Duration(milliseconds: 200), () {
                      setState(() {
                        isUpoZilla = false;
                        isButtonShow = true;
                      });
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("বেড়া"),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget country() {
    return SizeTransition(
      sizeFactor: animation,
      axis: Axis.vertical,
      axisAlignment: 0.0,
      child: Card(
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 1,
        color: Colors.white,
        child: Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "দেশ নির্বাচন করুন",
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          animationController.reverse();
                        });
                        Future.delayed(Duration(milliseconds: 200), () {
                          setState(() {
                            isButtonShow = true;
                            print(isButtonShow);
                          });
                        });
                      },
                      child: const Icon(
                        Icons.close,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.black,
                  height: 0.8,
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      animationController.reverse();
                    });
                    Future.delayed(Duration(milliseconds: 200), () {
                      setState(() {
                        isCountry = false;
                        isDivision = true;
                        print(isCountry);
                        divisonAnimationController.forward();
                      });
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("বাংলাদেশ"),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Size transition"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              isCountry
                  ? country()
                  : isDivision
                      ? division()
                      : isZilla
                          ? zilla()
                          : isUpoZilla
                              ? upoZilla()
                              : const Text(""),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isButtonShow = false;
                    isCountry = true;
                    animationController.forward();
                  });
                },
                child: isButtonShow
                    ? Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.8,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("ঠিকানা নির্বাচন করুন"),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                      )
                    : Text(''),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
