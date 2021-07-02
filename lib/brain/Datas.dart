// les convertis

import 'package:followup/models/Convert.dart';
import 'package:followup/models/User.dart';

// i create  young converts dummie datas here
final _converti1 = Convert(
    name: 'lamblin Ngueyap',
    number: '+237696519917',
    country: 'USA',
    location: 'biyem-assi',
    followerName: 'Zacharias tanee fomum',
    followerphone: '+2370000000000');
final _converti2 = Convert(
    name: 'stevy Abossolo',
    number: '+237696519917',
    country: 'Cameroun',
    location: 'biyem-assi',
    followerName: 'nyl fabrice',
    followerphone: '+2370000000000');
final _converti3 = Convert(
    name: 'Yvan Nguekam',
    number: '+237696519917',
    country: 'France',
    location: 'biyem-assi',
    followerName: 'Onesime moffo',
    followerphone: '+2370000000000');
final _converti4 = Convert(
    name: 'Eyong Nde',
    number: '+237696519917',
    country: 'Lybia',
    location: 'biyem-assi',
    followerName: 'Madhi Nlend',
    followerphone: '+2370000000000');
final _converti5 = Convert(
    name: 'Lionel Paki',
    number: '+237696519917',
    country: 'Cameroun',
    location: 'biyem-assi',
    followerName: 'Boris Kamtou',
    followerphone: '+2370000000000');

// i create the user who has all these converts

final user = User(
    name: 'flutter dev',
    password: 'uhgfue156m',
    email: 'flutter@gmail.com',
    convertionDate : '03/09/1950',
    phone : '+237111111111',
    isAlreadyRegistered: true,
    convertisEnregistre: <Convert>[
      _converti1,
      _converti2,
      _converti3,
      _converti4,
      _converti5
    ]);
