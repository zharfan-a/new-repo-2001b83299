
import 'package:flutter/material.dart';
import 'dart:convert';

class AnimalModel {
	final String text;
	final IconData icon;

	AnimalModel({required this.text, required this.icon});

	Map<String, dynamic> toJson() => {
		'text': text,
		'icon': icon.codePoint,
	};

	factory AnimalModel.fromJson(Map<String, dynamic> json) {
		return AnimalModel(
			text: json['text'],
			icon: IconData(json['icon'], fontFamily: 'MaterialIcons'),
		);
	}
}
