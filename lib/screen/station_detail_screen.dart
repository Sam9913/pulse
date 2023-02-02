import 'package:flutter/material.dart';

import '../model/station_response_model.dart';

class StationFacility {
  final String name;
  final int type;

  StationFacility(
    this.name,
      this.type,
  );
}

class StationDetailScreen extends StatefulWidget {
  final Stops stops;
  const StationDetailScreen({Key? key, required this.stops}) : super(key: key);

  @override
  State<StationDetailScreen> createState() => _StationDetailScreenState();
}

class _StationDetailScreenState extends State<StationDetailScreen> {
  StationFacility selectedStationFacility = StationFacility('All', 0);
  List<StationFacility> stationFacilityList = [];
  List<Facilities> facilityList = [];
  List<Kiosks> kiosksList = [];

  @override
  void initState() {
    super.initState();
    debugPrint(widget.stops.toJson().toString());

    setList(widget.stops.facilities ?? [], widget.stops.kiosks ?? []);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(widget.stops.stopName ?? ''),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: stationFacilityList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedStationFacility = stationFacilityList[index];
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: selectedStationFacility == stationFacilityList[index]
                            ? const Color(0xFF0F3892)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          stationFacilityList[index].name,
                          style: TextStyle(
                            color: selectedStationFacility == stationFacilityList[index]
                                ? Colors.white
                                : const Color(0xFF0F3892),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 8,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Offstage(
              offstage: selectedStationFacility.name == 'Facility',
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFECF2F9),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.orangeAccent,
                          child: Icon(
                            Icons.local_convenience_store_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Merchants',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    const Divider(),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: selectedStationFacility.type == 0
                          ? kiosksList.length
                          : kiosksList
                              .where((element) => (element.category ?? '').contains(selectedStationFacility.name))
                              .length,
                      itemBuilder: (context, index) {
                        List<Kiosks> tempList = selectedStationFacility.type == 0
                            ? kiosksList
                            : kiosksList
                            .where((element) => (element.category ?? '').contains(selectedStationFacility.name))
                            .toList();
                        Kiosks? kiosks = tempList[index];

                        return Row(
                          children: [
                            const SizedBox(
                              width: 8,
                            ),
                            const CircleAvatar(
                              radius: 4,
                              backgroundColor: Colors.orangeAccent,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              kiosks.name ?? '',
                              style: const TextStyle(),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 8,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Offstage(
              offstage: selectedStationFacility.name != 'Facility' && selectedStationFacility.name != 'All',
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFECF2F9),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.orangeAccent,
                          child: Icon(
                            Icons.room_preferences_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Facilities',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    const Divider(),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: facilityList.length,
                      itemBuilder: (context, index) {
                        Facilities? facilities = facilityList[index];
                        return Row(
                          children: [
                            const SizedBox(
                              width: 8,
                            ),
                            const CircleAvatar(
                              radius: 4,
                              backgroundColor: Colors.orangeAccent,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              facilities.name ?? '',
                              style: const TextStyle(),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 8,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  addFacility() {
    setState(() {
      stationFacilityList.add(
        StationFacility(
          'All',
          0,
        ),
      );

      widget.stops.categories?.forEach(
        (element) {
          stationFacilityList.add(
            StationFacility(element,1),
          );
        },
      );
    });
  }

  setList(List<Facilities> defaultFacilityList, List<Kiosks> defaultKiosksList) {
    setState(() {
      facilityList = defaultFacilityList;
      kiosksList = defaultKiosksList;
    });

    addFacility();
  }
}
