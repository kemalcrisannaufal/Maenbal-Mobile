import 'dart:convert';

class Match {
  bool? success;
  Data? data;

  Match({this.success, this.data});

  Match.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? Data?.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['success'] = success;
    data['data'] = jsonEncode(data);
    return data;
  }
}

class Data {
  List<Fixtures>? fixtures;
  bool? nextPage;
  bool? prevPage;

  Data({this.fixtures, this.nextPage, this.prevPage});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['fixtures'] != null) {
      fixtures = <Fixtures>[];
      json['fixtures'].forEach((v) {
        fixtures?.add(Fixtures.fromJson(v));
      });
    }
    nextPage = json['next_page'];
    prevPage = json['prev_page'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (fixtures != null) {
      data['fixtures'] = fixtures?.map((v) => v.toJson()).toList();
    }
    data['next_page'] = nextPage;
    data['prev_page'] = prevPage;
    return data;
  }
}

class Fixtures {
  int? leagueId;
  int? groupId;
  int? homeId;
  String? homeName;
  League? league;
  AwayTranslations? awayTranslations;
  Competition? competition;
  int? awayId;
  String? date;
  String? round;
  int? id;
  HomeTranslations? homeTranslations;
  String? awayName;
  int? competitionId;
  String? location;
  String? time;
  Odds? odds;
  String? h2h;

  Fixtures(
      {this.leagueId,
      this.groupId,
      this.homeId,
      this.homeName,
      this.league,
      this.awayTranslations,
      this.competition,
      this.awayId,
      this.date,
      this.round,
      this.id,
      this.homeTranslations,
      this.awayName,
      this.competitionId,
      this.location,
      this.time,
      this.odds,
      this.h2h});

  Fixtures.fromJson(Map<String, dynamic> json) {
    leagueId = json['league_id'];
    groupId = json['group_id'];
    homeId = json['home_id'];
    homeName = json['home_name'];
    league = json['league'] != null ? League?.fromJson(json['league']) : null;
    awayTranslations = json['away_translations'] != null
        ? AwayTranslations?.fromJson(json['away_translations'])
        : null;
    competition = json['competition'] != null
        ? Competition?.fromJson(json['competition'])
        : null;
    awayId = json['away_id'];
    date = json['date'];
    round = json['round'];
    id = json['id'];
    homeTranslations = json['home_translations'] != null
        ? HomeTranslations?.fromJson(json['home_translations'])
        : null;
    awayName = json['away_name'];
    competitionId = json['competition_id'];
    location = json['location'];
    time = json['time'];
    odds = json['odds'] != null ? Odds?.fromJson(json['odds']) : null;
    h2h = json['h2h'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['league_id'] = leagueId;
    data['group_id'] = groupId;
    data['home_id'] = homeId;
    data['home_name'] = homeName;
    if (league != null) {
      data['league'] = league?.toJson();
    }
    if (awayTranslations != null) {
      data['away_translations'] = awayTranslations?.toJson();
    }
    if (competition != null) {
      data['competition'] = competition?.toJson();
    }
    data['away_id'] = awayId;
    data['date'] = date;
    data['round'] = round;
    data['id'] = id;
    if (homeTranslations != null) {
      data['home_translations'] = homeTranslations?.toJson();
    }
    data['away_name'] = awayName;
    data['competition_id'] = competitionId;
    data['location'] = location;
    data['time'] = time;
    if (odds != null) {
      data['odds'] = odds?.toJson();
    }
    data['h2h'] = h2h;
    return data;
  }
}

class League {
  dynamic id;
  dynamic name;
  dynamic countryId;

  League({this.id, this.name, this.countryId});

  League.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    countryId = json['country_id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['country_id'] = countryId;
    return data;
  }
}

class AwayTranslations {
  String? bg;
  String? ko;
  String? ja;
  String? ar;
  String? ka;
  String? zh;
  String? el;
  String? vi;
  String? ru;
  String? sr;
  String? it;
  String? pl;
  String? th;
  String? fa;

  AwayTranslations(
      {this.bg,
      this.ko,
      this.ja,
      this.ar,
      this.ka,
      this.zh,
      this.el,
      this.vi,
      this.ru,
      this.sr,
      this.it,
      this.pl,
      this.th,
      this.fa});

  AwayTranslations.fromJson(Map<String, dynamic> json) {
    bg = json['bg'];
    ko = json['ko'];
    ja = json['ja'];
    ar = json['ar'];
    ka = json['ka'];
    zh = json['zh'];
    el = json['el'];
    vi = json['vi'];
    ru = json['ru'];
    sr = json['sr'];
    it = json['it'];
    pl = json['pl'];
    th = json['th'];
    fa = json['fa'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['bg'] = bg;
    data['ko'] = ko;
    data['ja'] = ja;
    data['ar'] = ar;
    data['ka'] = ka;
    data['zh'] = zh;
    data['el'] = el;
    data['vi'] = vi;
    data['ru'] = ru;
    data['sr'] = sr;
    data['it'] = it;
    data['pl'] = pl;
    data['th'] = th;
    data['fa'] = fa;
    return data;
  }
}

class Competition {
  int? id;
  String? name;

  Competition({this.id, this.name});

  Competition.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class HomeTranslations {
  String? bg;
  String? ko;
  String? ja;
  String? ar;
  String? nl;
  String? zh;
  String? it;
  String? ka;
  String? ru;
  String? el;
  String? sr;
  String? th;
  String? fa;

  HomeTranslations(
      {this.bg,
      this.ko,
      this.ja,
      this.ar,
      this.nl,
      this.zh,
      this.it,
      this.ka,
      this.ru,
      this.el,
      this.sr,
      this.th,
      this.fa});

  HomeTranslations.fromJson(Map<String, dynamic> json) {
    bg = json['bg'];
    ko = json['ko'];
    ja = json['ja'];
    ar = json['ar'];
    nl = json['nl'];
    zh = json['zh'];
    it = json['it'];
    ka = json['ka'];
    ru = json['ru'];
    el = json['el'];
    sr = json['sr'];
    th = json['th'];
    fa = json['fa'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['bg'] = bg;
    data['ko'] = ko;
    data['ja'] = ja;
    data['ar'] = ar;
    data['nl'] = nl;
    data['zh'] = zh;
    data['it'] = it;
    data['ka'] = ka;
    data['ru'] = ru;
    data['el'] = el;
    data['sr'] = sr;
    data['th'] = th;
    data['fa'] = fa;
    return data;
  }
}

class Odds {
  Pre? pre;
  Live? live;

  Odds({this.pre, this.live});

  Odds.fromJson(Map<String, dynamic> json) {
    pre = json['pre'] != null ? Pre?.fromJson(json['pre']) : null;
    live = json['live'] != null ? Live?.fromJson(json['live']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (pre != null) {
      data['pre'] = pre?.toJson();
    }
    if (live != null) {
      data['live'] = live?.toJson();
    }
    return data;
  }
}

class Pre {
  double? d1;
  double? d2;
  double? x;

  Pre({this.d1, this.d2, this.x});

  Pre.fromJson(Map<String, dynamic> json) {
    d1 = (json['1'] as num?)?.toDouble();
    d2 = (json['2'] as num?)?.toDouble();
    x = (json['X'] as num?)?.toDouble();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['1'] = d1;
    data['2'] = d2;
    data['X'] = x;
    return data;
  }
}

class Live {
  dynamic d1;
  dynamic d2;
  dynamic x;

  Live({this.d1, this.d2, this.x});

  Live.fromJson(Map<String, dynamic> json) {
    d1 = json['1'];
    d2 = json['2'];
    x = json['X'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['1'] = d1;
    data['2'] = d2;
    data['X'] = x;
    return data;
  }
}
