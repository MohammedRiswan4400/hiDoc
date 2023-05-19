// ignore_for_file: unused_import, override_on_non_overriding_member, annotate_overrides

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hidoc/application/network_helper.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/my_widgets.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});
  Future<void> _launchUrl({required Uri url}) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    // NetworkHelper.fetchDataFromNetwork();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/WhatsApp Image 2023-05-17 at 19.55.23.jpg",
                fit: BoxFit.fill,
              ),
            ),
            FutureBuilder(
                future: NetworkHelper.fetchDataFromNetwork(),
                builder: (context, snapshot) {
                  // log(snapshot.data.toString());
                  if (snapshot.hasError) {
                    return Center(
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("Retry")));
                  } else if (snapshot.hasData) {
                    final datas = snapshot.data;
                    final bulletin = datas!.data.bulletin;
                    final article = datas.data.article;
                    final trendingBulletin = datas.data.trandingBulletin;
                    // ignore: unused_local_variable
                    final latestArticle = datas.data.latestArticle;
                    final trendingArtivle = datas.data.trandingArticle;
                    final exploreArticle = datas.data.exploreArticle;
                    final news = datas.data.news;
                    return Column(
                      children: [
                        Center(
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              color: Color.fromARGB(255, 209, 241, 246),
                            ),
                            height: 35,
                            width: 100,
                            child: const Center(
                              child: Text(
                                "hidoc",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        // MySizedBox(h: 20, w: 0),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 255, 244, 244),
                                      width: 2),
                                ),
                                height: 50,
                                width: 50,
                                child: const Icon(
                                  Icons.home_outlined,
                                  size: 30,
                                  color: Color.fromARGB(255, 255, 244, 244),
                                ),
                              ),
                              const Text(
                                "ARTICLES",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17,
                                ),
                              ),
                              const MySizedBox(h: 0, w: 36),
                            ],
                          ),
                        ),
                        ///////////////////////////////////////////////////////////////////////////////////////////
                        ///
                        ///Center(
                        ///sized
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: ListView(
                              physics: const BouncingScrollPhysics(),
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    border: const Border(

                                        // bottom: BorderSide(c),
                                        ),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black45,
                                        blurRadius: 5,
                                        // offset: Offset.fromDirection(/),
                                        blurStyle: BlurStyle.solid,
                                      )
                                    ],
                                  ),
                                  height: 60,
                                  // ignore: prefer_const_constructors
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text("Critical Care"),
                                        Icon(Icons.arrow_drop_down_rounded)
                                      ],
                                    ),
                                  ),
                                  // width: 200,
                                ),
                                // Link(
                                //   uri : Uri.parse()
                                //   builder: (context,followLink) {
                                //     return ElevatedButton(
                                //       onPressed: () {
                                //         followLink();
                                //       },
                                //       child: Text("Link"),
                                //     );
                                //   }
                                // ),

                                // Link(
                                //     target: LinkTarget.blank,
                                //     uri: Uri.parse(bulletin.last.redirectLink),
                                //     builder: (context, followLink) {
                                //       return ElevatedButton(
                                //           onPressed: () {
                                //             followLink();
                                //           },
                                //           child: Text("Link"));
                                //     }),
                                const MySizedBox(h: 20, w: 0),
                                // Card(
                                //   elevation: 33,
                                //   color: Color.fromARGB(255, 231, 231, 231),
                                // )
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 237, 237, 237),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  // height: 340,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 200, 200, 200),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                          ),
                                        ),
                                        height: 170,
                                        child: const Center(
                                          child: Icon(
                                            Icons.newspaper_rounded,
                                            size: 100,
                                            color: Colors.black38,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 237, 237, 237),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                          ),
                                        ),
                                        // height: 170,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    article.articleTitle,
                                                    style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w900),
                                                  ),
                                                  const MySizedBox(h: 10, w: 0),
                                                  const Text(
                                                    "The Nexus Criteria has been used healthcare professionals to determine whether a patient needs critical care or not.",
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                  // Container(colo)
                                                  const MySizedBox(
                                                    h: 10,
                                                    w: 0,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              // crossAxisAlignment:/
                                              // CrossAxisAlignment.start,
                                              children: [
                                                // const MySizedBox(h: 0, w: 2),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: GestureDetector(
                                                    onTap: () async {
                                                      final Uri _url =
                                                          Uri.parse(article
                                                              .redirectLink);
                                                      await _launchUrl(
                                                          url: _url);
                                                    },
                                                    child: const Text(
                                                      "Read full article to earn point",
                                                      style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                        color: Color.fromARGB(
                                                            255, 3, 189, 213),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 3, 189, 213),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomRight:
                                                          Radius.circular(20),
                                                    ),
                                                  ),
                                                  // height: 30,
                                                  height: 68,
                                                  width: 70,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      const Text(
                                                        "Points",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Text(
                                                        article.rewardPoints
                                                            .toString(),
                                                        style: const TextStyle(
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const MySizedBox(
                                  h: 20,
                                  w: 0,
                                ),
                                const Text(
                                  "Hidoc Bulletin",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 23,
                                  ),
                                ),
                                const MySizedBox(
                                  h: 20,
                                  w: 0,
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const ScrollPhysics(),
                                  itemCount: bulletin.length,
                                  itemBuilder: (context, index) {
                                    return SizedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                color: const Color.fromARGB(
                                                    255, 3, 189, 213),
                                                height: 8,
                                                width: 100,
                                              ),
                                            ],
                                          ),
                                          const MySizedBox(
                                            h: 10,
                                            w: 0,
                                          ),
                                          Text(
                                            bulletin[index].articleTitle,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 14,
                                            ),
                                          ),
                                          const MySizedBox(
                                            h: 10,
                                            w: 0,
                                          ),
                                          Text(
                                            bulletin[index].articleDescription,
                                            style: const TextStyle(
                                              // fontWeight: FontWeight.w900,
                                              fontSize: 12,
                                            ),
                                          ),
                                          const MySizedBox(
                                            h: 10,
                                            w: 0,
                                          ),
                                          GestureDetector(
                                            onTap: () async {
                                              final Uri _url = Uri.parse(
                                                  bulletin[index].redirectLink);
                                              await _launchUrl(url: _url);
                                            },
                                            child: const Text(
                                              "Read more",
                                              style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                // textBaseline: TextBaseline.alphabetic,
                                                color: Color.fromARGB(
                                                    255, 3, 189, 213),
                                                // fontWeight: FontWeight.w900,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                                const MySizedBox(h: 20, w: 0),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 215, 234, 238),
                                    borderRadius: BorderRadius.circular(
                                      20,
                                    ),
                                  ),
                                  // height: 500,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Trending Hidoc Bulletin",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 20,
                                          ),
                                        ),
                                        const MySizedBox(
                                          h: 20,
                                          w: 0,
                                        ),
                                        ListView.builder(
                                          shrinkWrap: true,
                                          physics: const ScrollPhysics(),
                                          itemCount: trendingBulletin.length,
                                          itemBuilder: (context, index) {
                                            return Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  trendingBulletin[index]
                                                      .articleTitle,
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                const MySizedBox(
                                                  h: 10,
                                                  w: 0,
                                                ),
                                                Text(
                                                  trendingBulletin[index]
                                                      .articleDescription,
                                                  style: const TextStyle(
                                                    // fontWeight: FontWeight.w900,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                const MySizedBox(
                                                  h: 10,
                                                  w: 0,
                                                ),
                                                GestureDetector(
                                                  onTap: () async {
                                                    final Uri url = Uri.parse(
                                                        trendingBulletin[index]
                                                            .redirectLink);
                                                    await _launchUrl(url: url);
                                                  },
                                                  child: const Text(
                                                    "Read more",
                                                    style: TextStyle(
                                                      decoration: TextDecoration
                                                          .underline,
                                                      // textBaseline: TextBaseline.alphabetic,
                                                      color: Color.fromARGB(
                                                          255, 3, 189, 213),
                                                      // fontWeight: FontWeight.w900,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ),
                                                const MySizedBox(
                                                  h: 20,
                                                  w: 0,
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                        const MySizedBox(h: 10, w: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 30, top: 20),
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      final Uri _url = Uri.parse(
                                          trendingBulletin.last.redirectLink);
                                      await _launchUrl(url: _url);
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.orange)),
                                    child: const Text("Read More Bulletins"),
                                  ),
                                ),
                                const MySizedBox(h: 20, w: 0),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.black38,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(17.0),
                                    child: Column(
                                      children: [
                                        const Text(
                                          "Latest Articles",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 16,
                                          ),
                                        ),
                                        const MySizedBox(h: 7, w: 0),
                                        const Divider(
                                          thickness: 1.5,
                                          color: Colors.black38,
                                        ),
                                        // MySizedBox(h: 10, w: 0),
                                        ListView.builder(
                                          shrinkWrap: true,
                                          physics: const ScrollPhysics(),
                                          itemCount: trendingBulletin.length,
                                          itemBuilder: (context, index) {
                                            return Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  trendingBulletin[index]
                                                      .articleTitle,
                                                  style: const TextStyle(
                                                    // fontWeight: FontWeight.w900,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                const Divider(
                                                  thickness: 1,
                                                  color: Colors.black26,
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const MySizedBox(h: 20, w: 0),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.black38,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(17.0),
                                    child: Column(
                                      children: [
                                        const Text(
                                          "Trending Articles",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 16,
                                          ),
                                        ),
                                        const MySizedBox(h: 10, w: 0),
                                        ListView.builder(
                                            shrinkWrap: true,
                                            physics: const ScrollPhysics(),
                                            itemCount: trendingArtivle.length,
                                            itemBuilder: (context, index) {
                                              return Column(
                                                children: [
                                                  Container(
                                                    color: const Color.fromARGB(
                                                        255, 237, 237, 237),
                                                    height: 150,
                                                    width: double.infinity,
                                                    child: Center(
                                                      child: Image(
                                                        image: NetworkImage(
                                                          trendingArtivle[index]
                                                              .articleImg,
                                                        ),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                  const MySizedBox(h: 10, w: 0),
                                                  Text(
                                                    trendingArtivle[index]
                                                        .articleDescription,
                                                    style: const TextStyle(
                                                      // fontWeight: FontWeight.w900,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  const Divider(
                                                    thickness: 1,
                                                    color: Colors.black26,
                                                  ),
                                                ],
                                              );
                                            }),
                                        ListView.builder(
                                            shrinkWrap: true,
                                            physics: const ScrollPhysics(),
                                            itemCount: trendingArtivle.length,
                                            itemBuilder: (context, index) {
                                              return Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 237, 237, 237),
                                                        height: 50,
                                                        width: 80,
                                                        child: Center(
                                                          child: Image(
                                                            image: NetworkImage(
                                                              trendingArtivle[
                                                                      index]
                                                                  .articleImg,
                                                            ),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            1.7,
                                                        child: Text(
                                                          trendingArtivle[index]
                                                              .articleTitle,
                                                          style:
                                                              const TextStyle(
                                                            // fontWeight: FontWeight.w900,
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const MySizedBox(h: 10, w: 0)
                                                ],
                                              );
                                            }),
                                      ],
                                    ),
                                  ),
                                ),

                                const MySizedBox(h: 20, w: 0),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.black38,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(17.0),
                                    child: Column(
                                      children: [
                                        const Text(
                                          "Explore more in Articles",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 16,
                                          ),
                                        ),
                                        const MySizedBox(h: 7, w: 0),
                                        const Divider(
                                          thickness: 1.5,
                                          color: Colors.black38,
                                        ),
                                        ListView.builder(
                                          shrinkWrap: true,
                                          physics: const ScrollPhysics(),
                                          itemCount: exploreArticle.length,
                                          itemBuilder: (context, index) {
                                            return Column(
                                              children: [
                                                Text(
                                                  exploreArticle[index]
                                                      .articleTitle,
                                                  style: const TextStyle(
                                                    // fontWeight: FontWeight.w900,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                const Divider(
                                                  thickness: 1,
                                                  color: Colors.black26,
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const MySizedBox(h: 10, w: 0),
                                ElevatedButton(
                                  onPressed: () async {
                                    final Uri _url = Uri.parse(
                                        exploreArticle.last.redirectLink);
                                    await _launchUrl(url: _url);
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.orange)),
                                  child: const Text("Explore Hidoc Dr"),
                                ),
                                const MySizedBox(h: 20, w: 0),
                                const Center(
                                  child: Text(
                                    "What's more on Hidoc Dr.",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),

                                const MySizedBox(h: 10, w: 0),
                                Container(
                                  color: Colors.black12,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(17.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "News",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            const MySizedBox(h: 20, w: 0),
                                            ListView.builder(
                                                shrinkWrap: true,
                                                physics: const ScrollPhysics(),
                                                itemCount: news.length,
                                                itemBuilder: (context, index) {
                                                  return Column(
                                                    children: [
                                                      Text(
                                                        news[index].title,
                                                        style: const TextStyle(
                                                          // fontWeight: FontWeight.w900,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      const MySizedBox(
                                                          h: 10, w: 0),
                                                      Container(
                                                          width:
                                                              double.infinity,
                                                          height: 200,
                                                          child: Image(
                                                            image: NetworkImage(
                                                                news[index]
                                                                    .urlToImage),
                                                            fit: BoxFit.fill,
                                                          )),
                                                      const MySizedBox(
                                                          h: 50, w: 0),
                                                    ],
                                                  );
                                                }),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const MySizedBox(h: 10, w: 0),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.black38,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(17.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 182, 229, 253),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(7.0),
                                                child: Image.asset(
                                                  "assets/Screenshot_2023-05-18_002601-removebg-preview.png",
                                                  // scale: 1,
                                                ),
                                              ),
                                            ),
                                            const MySizedBox(h: 0, w: 10),
                                            const Text(
                                              "Quizzes: ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            const Text(
                                              "Participate & Win Exciting Prizes",
                                              style: TextStyle(
                                                // fontWeight: FontWeight.w900,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Divider(
                                          thickness: 1,
                                          color: Colors.black26,
                                        ),
                                        const Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: Color.fromARGB(
                                                  255, 182, 229, 253),
                                              child: Icon(
                                                Icons.calculate_outlined,
                                                size: 30,
                                              ),
                                            ),
                                            MySizedBox(h: 0, w: 10),
                                            Text(
                                              "Medical \nCalculator: ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            Text(
                                              "Get Access to 800+ Evidence \nBased Calculators",
                                              style: TextStyle(
                                                // fontWeight: FontWeight.w900,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const MySizedBox(h: 20, w: 0),
                                Container(
                                  color: const Color.fromARGB(97, 255, 193, 7),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Social Network for doctors -\nA special feature on Hidoc Dr.",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          width: 50,
                                          height: 30,
                                          child: Center(
                                            child: GestureDetector(
                                              onTap: () async {
                                                final Uri url = Uri.parse(
                                                    trendingBulletin
                                                        .last.redirectLink);
                                                await _launchUrl(url: url);
                                              },
                                              child: const Text(
                                                "Visit",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const MySizedBox(
                                  h: 10,
                                  w: 0,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }),
          ],
        ),
      ),
    );
  }
}
