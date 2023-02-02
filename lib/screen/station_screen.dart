import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:pulse/model/station_response_model.dart';
import 'package:pulse/screen/station_detail_screen.dart';

class StationScreen extends StatefulWidget {
  final int type;
  const StationScreen({Key? key, required this.type}) : super(key: key);

  @override
  State<StationScreen> createState() => _StationScreenState();
}

class _StationScreenState extends State<StationScreen> with SingleTickerProviderStateMixin {
  late TabController tabController;
  List<Stops> dataList = [];
  List<Stops> agDataList = [];
  List<Stops> kgDataList = [];
  List<Stops> kjDataList = [];
  List<Stops> mrDataList = [];
  List<Stops> pyDataList = [];
  List<Stops> spDataList = [];
  List<Stops> brDataList = [];
  double searchbarOpacity = 0;
  bool isOffstage = true;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 8, vsync: this);
    getStation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stations'),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 8),
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      searchbarOpacity = 1;
                      isOffstage = false;
                    });
                  },
                  child: const Icon(Icons.search),
                ),
                Offstage(
                  offstage: isOffstage,
                  child: AnimatedOpacity(
                    opacity: searchbarOpacity,
                    duration: const Duration(seconds: 1),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: 50,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap:(){
                                  setState(() {
                                    searchbarOpacity = 0;
                                    Timer(const Duration(milliseconds: 500), () {
                                      setState(() {
                                        isOffstage = true;
                                      });
                                    });
                                  });
                                },
                                child: const Icon(
                                  Icons.close,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const Expanded(
                              flex: 10,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  'Search here...',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                /*AnimatedOpacity(
                  opacity: searchbarOpacity,
                  duration: const Duration(seconds: 1),
                  child: Container(
                    color: Colors.white,
                    child: Text('search here...'),
                  ),
                ),*/
              ],
            ),
          ),
        ],
        bottom: TabBar(
          isScrollable: true,
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: const [
            Text('All'),
            Text('AGL'),
            Text('KGL'),
            Text('KJL'),
            Text('MRL'),
            Text('PYL'),
            Text('SPL'),
            Text('BRT'),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ListView.separated(
            itemCount: dataList.length,
            itemBuilder: (context, index) {
              return listItem(
                'assets/icons/${dataList[index].routeId == 'AG' ? 'icon_line_ampang' : dataList[index].routeId == 'KJ' ? 'icon_line_kelana-jaya' : dataList[index].routeId == 'PH' ? 'icon_line_sri-petaling' : dataList[index].routeId == 'KGL' ? 'icon_line_kajang-01' : dataList[index].routeId == 'PYL' ? 'icon_line_putrajaya-01' : dataList[index].routeId == 'MR' ? 'icon_line_kl-monorail' : 'icon_brt'}.png',
                dataList[index],
              );
            },
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Divider(),
              );
            },
          ),
          ListView.separated(
            itemCount: agDataList.length,
            itemBuilder: (context, index) {
              return listItem(
                'assets/icons/icon_line_ampang.png',
                agDataList[index],
              );
            },
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Divider(),
              );
            },
          ),
          ListView.separated(
            itemCount: kgDataList.length,
            itemBuilder: (context, index) {
              return listItem(
                'assets/icons/icon_line_kajang-01.png',
                kgDataList[index],
              );
            },
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Divider(),
              );
            },
          ),
          ListView.separated(
            itemCount: kjDataList.length,
            itemBuilder: (context, index) {
              return listItem(
                'assets/icons/icon_line_kelana-jaya.png',
                kjDataList[index],
              );
            },
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Divider(),
              );
            },
          ),
          ListView.separated(
            itemCount: mrDataList.length,
            itemBuilder: (context, index) {
              return listItem(
                'assets/icons/icon_line_kl-monorail.png',
                mrDataList[index],
              );
            },
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Divider(),
              );
            },
          ),
          ListView.separated(
            itemCount: pyDataList.length,
            itemBuilder: (context, index) {
              return listItem(
                'assets/icons/icon_line_putrajaya-01.png',
                pyDataList[index],
              );
            },
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Divider(),
              );
            },
          ),
          ListView.separated(
            itemCount: spDataList.length,
            itemBuilder: (context, index) {
              return listItem(
                'assets/icons/icon_line_sri-petaling.png',
                spDataList[index],
              );
            },
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Divider(),
              );
            },
          ),
          ListView.separated(
            itemCount: brDataList.length,
            itemBuilder: (context, index) {
              return listItem(
                'assets/icons/icon_brt.png',
                brDataList[index],
              );
            },
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Divider(),
              );
            },
          ),
        ],
      ),
    );
  }

  getStation() async {
    var url = Uri.https('jp.myrapid.com.my', '/endpoint/geoservice/stations');

    var response = await get(url);
    if (response.statusCode == 200) {
      StationResponse stationsResponse = StationResponse.fromJson(jsonDecode(response.body));
      var data = stationsResponse.data?[0].stops;
      setState(() {
        dataList = data ?? [];
        data?.forEach((element) {
          if (element.routeId == 'AG') {
            agDataList.add(element);
          } else if (element.routeId == 'KJ') {
            kjDataList.add(element);
          } else if (element.routeId == 'PH') {
            spDataList.add(element);
          } else if (element.routeId == 'KGL') {
            kgDataList.add(element);
          } else if (element.routeId == 'PYL') {
            pyDataList.add(element);
          } else if (element.routeId == 'MR') {
            mrDataList.add(element);
          } else {
            brDataList.add(element);
          }
        });
      });
    } else {
      debugPrint('Request failed with status: ${response.statusCode}.');
    }
  }

  Widget listItem(String imagePath, Stops data) {
    return InkWell(
      onTap: () {
        if (widget.type == 1) {
          Navigator.of(context).pop(data);
        } else {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => StationDetailScreen(
                stops: data,
              ),
            ),
          );
        }
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                imagePath,
                width: 25,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(data.stopName ?? ''),
          ],
        ),
      ),
    );
  }
}
