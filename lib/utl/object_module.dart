// To parse this JSON data, do
//
//     final object = objectFromJson(jsonString);

import 'dart:convert';

Object objectsFromJson(String str) => Object.fromJson(json.decode(str));

class Object {
  Object({
    required this.title,
    required this.topics,
  });

  String? title;
  List<Topic>? topics;

  factory Object.fromJson(Map<String, dynamic> json) => Object(
    title: json["title"],
    topics: List<Topic>.from(json["topics"].map((x) => Topic.fromJson(x))),
  );

}

class Topic {
  Topic({
    required this.title,
    required this.subTopics,
  });

  String? title;
  List<SubTopic>? subTopics;

  factory Topic.fromJson(Map<String, dynamic> json) => Topic(
    title: json["title"],
    subTopics: List<SubTopic>.from(json["subTopics"].map((x) => SubTopic.fromJson(x))),
  );

}

class SubTopic {
  SubTopic({
    required this.title,
    required this.subSubTopics,
  });

  String? title;
  List<SubSubTopic>? subSubTopics;

  factory SubTopic.fromJson(Map<String, dynamic> json) => SubTopic(
    title: json["title"],
    subSubTopics: List<SubSubTopic>.from(json["subSubTopics"].map((x) => SubSubTopic.fromJson(x))),
  );


}

class SubSubTopic {
  SubSubTopic({
    required this.title,
    required this.lOid,
    required this.ir,
  });

  String? title;
  String? lOid;
  String? ir;

  factory SubSubTopic.fromJson(Map<String, dynamic> json) => SubSubTopic(
    title: json["title"],
    lOid: json["LOid"],
    ir: json["ir"],
  );
}
