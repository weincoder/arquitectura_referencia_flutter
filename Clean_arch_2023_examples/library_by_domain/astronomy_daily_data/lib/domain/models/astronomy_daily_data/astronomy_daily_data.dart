// To parse this JSON data, do
//
//     final astronomyDailyData = astronomyDailyDataFromJson(jsonString);

import 'dart:convert';

AstronomyDailyData? astronomyDailyDataFromJson(String str) => AstronomyDailyData.fromJson(json.decode(str));

String astronomyDailyDataToJson(AstronomyDailyData? data) => json.encode(data!.toJson());

class AstronomyDailyData {
    AstronomyDailyData({
        this.date,
        this.explanation,
        this.hdurl,
        this.mediaType,
        this.serviceVersion,
        this.title,
        this.url, required String copyright,
    });

    final DateTime? date;
    final String? explanation;
    final String? hdurl;
    final String? mediaType;
    final String? serviceVersion;
    final String? title;
    final String? url;

    factory AstronomyDailyData.fromJson(Map<String, dynamic> json) => AstronomyDailyData(
        date: DateTime.parse(json["date"]),
        explanation: json["explanation"],
        hdurl: json["hdurl"],
        mediaType: json["media_type"],
        serviceVersion: json["service_version"],
        title: json["title"],
        url: json["url"], copyright: '',
    );

    Map<String, dynamic> toJson() => {
        "date": "${date!.year.toString().padLeft(4, '0')}-${date!.month.toString().padLeft(2, '0')}-${date!.day.toString().padLeft(2, '0')}",
        "explanation": explanation,
        "hdurl": hdurl,
        "media_type": mediaType,
        "service_version": serviceVersion,
        "title": title,
        "url": url,
    };
}
