import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_flutter/data/service.dart';

import 'service.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jadwal Sholat Yogyakarta'),
      ),
      body: FutureBuilder(
        future: Provider.of<JadwalService>(context, listen: false)
            .getResep(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Consumer<JadwalService>(
            builder: (context, data, _) {
              return ListView.builder(
                itemCount: data.dataJadwal.length,
                itemBuilder: (context, i) {
                  return Card(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Center(
                              child: Text(data.dataJadwal[i].tanggal),
                            ),
                            Row(
                              children: [
                                Text('Imsyak'),
                                Spacer(),
                                Text(data.dataJadwal[i].imsyak),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Shubuh'),
                                Spacer(),
                                Text(data.dataJadwal[i].shubuh),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Dzuhur'),
                                Spacer(),
                                Text(data.dataJadwal[i].dzuhur),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Ashar'),
                                Spacer(),
                                Text(data.dataJadwal[i].ashr),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Maghrib'),
                                Spacer(),
                                Text(data.dataJadwal[i].magrib),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Isya'),
                                Spacer(),
                                Text(data.dataJadwal[i].isya),
                              ],
                            ),
                          ],
                        ),
                      )
                  );
                },
              );
            },
          );
        },
      )
    );
  }
}
