/*
class FromJsonSinglePost {
  FromJsonSinglePost({
      this.fserieslinks, 
      this.seriesLinks, 
      this.playmovies, 
      this.playseries, 
      this.seriesOnlinePlay, 
      this.collection, 
      this.release, 
      this.actor, 
      this.cast, 
      this.postID, 
      this.type, 
      this.image, 
      this.rate, 
      this.online, 
      this.vote, 
      this.title, 
      this.faTitle, 
      this.quality, 
      this.dubbed, 
      this.genre, 
      this.notif, 
      this.watchlist, 
      this.subscriber, 
      this.percentLike, 
      this.likeDisCount, 
      this.subtitle, 
      this.imdbid, 
      this.trailer, 
      this.part, 
      this.chanel, 
      this.season, 
      this.zarfilmRate, 
      this.zarfilmRateCount, 
      this.plot, 
      this.age, 
      this.runtime, 
      this.language, 
      this.director, 
      this.top250, 
      this.awards, 
      this.lists, 
      this.fmovieslinks, 
      this.moviesLinks, 
      this.moviesOnlinePlay,});

  FromJsonSinglePost.fromJson(dynamic json) {
    fserieslinks = json['fserieslinks'] != null ? Fserieslinks.fromJson(json['fserieslinks']) : null;
    if (json['seriesLinks'] != null) {
      seriesLinks = [];
      json['seriesLinks'].forEach((v) {
        seriesLinks?.add(SeriesLinks.fromJson(v));
      });
    }
    playmovies = json['playmovies'];
    if (json['playseries'] != null) {
      playseries = [];
      json['playseries'].forEach((v) {
        playseries?.add(Playseries.fromJson(v));
      });
    }
    if (json['series_online_play'] != null) {
      seriesOnlinePlay = [];
      json['series_online_play'].forEach((v) {
        seriesOnlinePlay?.add(SeriesOnlinePlay.fromJson(v));
      });
    }
    if (json['collection'] != null) {
      collection = [];
      json['collection'].forEach((v) {
        collection?.add(Dynamic.fromJson(v));
      });
    }
    if (json['release'] != null) {
      release = [];
      json['release'].forEach((v) {
        release?.add(Release.fromJson(v));
      });
    }
    if (json['actor'] != null) {
      actor = [];
      json['actor'].forEach((v) {
        actor?.add(Actor.fromJson(v));
      });
    }
    if (json['cast'] != null) {
      cast = [];
      json['cast'].forEach((v) {
        cast?.add(Cast.fromJson(v));
      });
    }
    postID = json['postID'];
    type = json['type'];
    image = json['image'];
    rate = json['rate'];
    online = json['online'];
    vote = json['vote'];
    title = json['title'];
    faTitle = json['fa_title'];
    quality = json['quality'];
    dubbed = json['dubbed'];
    if (json['genre'] != null) {
      genre = [];
      json['genre'].forEach((v) {
        genre?.add(Genre.fromJson(v));
      });
    }
    notif = json['notif'];
    watchlist = json['watchlist'];
    subscriber = json['subscriber'];
    percentLike = json['percent_like'];
    likeDisCount = json['like_dis_count'];
    subtitle = json['subtitle'];
    imdbid = json['imdbid'];
    trailer = json['trailer'];
    part = json['part'];
    chanel = json['chanel'];
    season = json['season'];
    zarfilmRate = json['zarfilmRate'];
    zarfilmRateCount = json['zarfilmRateCount'];
    plot = json['plot'];
    age = json['age'];
    runtime = json['runtime'];
    language = json['language'];
    if (json['director'] != null) {
      director = [];
      json['director'].forEach((v) {
        director?.add(Dynamic.fromJson(v));
      });
    }
    top250 = json['top250'];
    awards = json['awards'];
    if (json['lists'] != null) {
      lists = [];
      json['lists'].forEach((v) {
        lists?.add(Lists.fromJson(v));
      });
    }
    fmovieslinks = json['fmovieslinks'];
    moviesLinks = json['moviesLinks'] != null ? MoviesLinks.fromJson(json['moviesLinks']) : null;
    if (json['movies_online_play'] != null) {
      moviesOnlinePlay = [];
      json['movies_online_play'].forEach((v) {
        moviesOnlinePlay?.add(Dynamic.fromJson(v));
      });
    }
  }
  Fserieslinks? fserieslinks;
  List<List<SeriesLinks>>? seriesLinks;
  String? playmovies;
  List<Playseries>? playseries;
  List<List<SeriesOnlinePlay>>? seriesOnlinePlay;
  List<dynamic>? collection;
  List<Release>? release;
  List<Actor>? actor;
  List<Cast>? cast;
  num? postID;
  String? type;
  String? image;
  String? rate;
  String? online;
  String? vote;
  String? title;
  String? faTitle;
  dynamic quality;
  String? dubbed;
  List<Genre>? genre;
  String? notif;
  String? watchlist;
  bool? subscriber;
  String? percentLike;
  num? likeDisCount;
  String? subtitle;
  String? imdbid;
  String? trailer;
  String? part;
  String? chanel;
  String? season;
  String? zarfilmRate;
  String? zarfilmRateCount;
  String? plot;
  String? age;
  String? runtime;
  String? language;
  List<dynamic>? director;
  String? top250;
  String? awards;
  List<Lists>? lists;
  String? fmovieslinks;
  MoviesLinks? moviesLinks;
  List<dynamic>? moviesOnlinePlay;
FromJsonSinglePost copyWith({  Fserieslinks? fserieslinks,
  List<List<SeriesLinks>>? seriesLinks,
  String? playmovies,
  List<Playseries>? playseries,
  List<List<SeriesOnlinePlay>>? seriesOnlinePlay,
  List<dynamic>? collection,
  List<Release>? release,
  List<Actor>? actor,
  List<Cast>? cast,
  num? postID,
  String? type,
  String? image,
  String? rate,
  String? online,
  String? vote,
  String? title,
  String? faTitle,
  dynamic quality,
  String? dubbed,
  List<Genre>? genre,
  String? notif,
  String? watchlist,
  bool? subscriber,
  String? percentLike,
  num? likeDisCount,
  String? subtitle,
  String? imdbid,
  String? trailer,
  String? part,
  String? chanel,
  String? season,
  String? zarfilmRate,
  String? zarfilmRateCount,
  String? plot,
  String? age,
  String? runtime,
  String? language,
  List<dynamic>? director,
  String? top250,
  String? awards,
  List<Lists>? lists,
  String? fmovieslinks,
  MoviesLinks? moviesLinks,
  List<dynamic>? moviesOnlinePlay,
}) => FromJsonSinglePost(  fserieslinks: fserieslinks ?? this.fserieslinks,
  seriesLinks: seriesLinks ?? this.seriesLinks,
  playmovies: playmovies ?? this.playmovies,
  playseries: playseries ?? this.playseries,
  seriesOnlinePlay: seriesOnlinePlay ?? this.seriesOnlinePlay,
  collection: collection ?? this.collection,
  release: release ?? this.release,
  actor: actor ?? this.actor,
  cast: cast ?? this.cast,
  postID: postID ?? this.postID,
  type: type ?? this.type,
  image: image ?? this.image,
  rate: rate ?? this.rate,
  online: online ?? this.online,
  vote: vote ?? this.vote,
  title: title ?? this.title,
  faTitle: faTitle ?? this.faTitle,
  quality: quality ?? this.quality,
  dubbed: dubbed ?? this.dubbed,
  genre: genre ?? this.genre,
  notif: notif ?? this.notif,
  watchlist: watchlist ?? this.watchlist,
  subscriber: subscriber ?? this.subscriber,
  percentLike: percentLike ?? this.percentLike,
  likeDisCount: likeDisCount ?? this.likeDisCount,
  subtitle: subtitle ?? this.subtitle,
  imdbid: imdbid ?? this.imdbid,
  trailer: trailer ?? this.trailer,
  part: part ?? this.part,
  chanel: chanel ?? this.chanel,
  season: season ?? this.season,
  zarfilmRate: zarfilmRate ?? this.zarfilmRate,
  zarfilmRateCount: zarfilmRateCount ?? this.zarfilmRateCount,
  plot: plot ?? this.plot,
  age: age ?? this.age,
  runtime: runtime ?? this.runtime,
  language: language ?? this.language,
  director: director ?? this.director,
  top250: top250 ?? this.top250,
  awards: awards ?? this.awards,
  lists: lists ?? this.lists,
  fmovieslinks: fmovieslinks ?? this.fmovieslinks,
  moviesLinks: moviesLinks ?? this.moviesLinks,
  moviesOnlinePlay: moviesOnlinePlay ?? this.moviesOnlinePlay,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (fserieslinks != null) {
      map['fserieslinks'] = fserieslinks?.toJson();
    }
    if (seriesLinks != null) {
      map['seriesLinks'] = seriesLinks?.map((v) => v.toJson()).toList();
    }
    map['playmovies'] = playmovies;
    if (playseries != null) {
      map['playseries'] = playseries?.map((v) => v.toJson()).toList();
    }
    if (seriesOnlinePlay != null) {
      map['series_online_play'] = seriesOnlinePlay?.map((v) => v.toJson()).toList();
    }
    if (collection != null) {
      map['collection'] = collection?.map((v) => v.toJson()).toList();
    }
    if (release != null) {
      map['release'] = release?.map((v) => v.toJson()).toList();
    }
    if (actor != null) {
      map['actor'] = actor?.map((v) => v.toJson()).toList();
    }
    if (cast != null) {
      map['cast'] = cast?.map((v) => v.toJson()).toList();
    }
    map['postID'] = postID;
    map['type'] = type;
    map['image'] = image;
    map['rate'] = rate;
    map['online'] = online;
    map['vote'] = vote;
    map['title'] = title;
    map['fa_title'] = faTitle;
    map['quality'] = quality;
    map['dubbed'] = dubbed;
    if (genre != null) {
      map['genre'] = genre?.map((v) => v.toJson()).toList();
    }
    map['notif'] = notif;
    map['watchlist'] = watchlist;
    map['subscriber'] = subscriber;
    map['percent_like'] = percentLike;
    map['like_dis_count'] = likeDisCount;
    map['subtitle'] = subtitle;
    map['imdbid'] = imdbid;
    map['trailer'] = trailer;
    map['part'] = part;
    map['chanel'] = chanel;
    map['season'] = season;
    map['zarfilmRate'] = zarfilmRate;
    map['zarfilmRateCount'] = zarfilmRateCount;
    map['plot'] = plot;
    map['age'] = age;
    map['runtime'] = runtime;
    map['language'] = language;
    if (director != null) {
      map['director'] = director?.map((v) => v.toJson()).toList();
    }
    map['top250'] = top250;
    map['awards'] = awards;
    if (lists != null) {
      map['lists'] = lists?.map((v) => v.toJson()).toList();
    }
    map['fmovieslinks'] = fmovieslinks;
    if (moviesLinks != null) {
      map['moviesLinks'] = moviesLinks?.toJson();
    }
    if (moviesOnlinePlay != null) {
      map['movies_online_play'] = moviesOnlinePlay?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class MoviesLinks {
  MoviesLinks({
      this.dubled, 
      this.stickySubtitle,});

  MoviesLinks.fromJson(dynamic json) {
    if (json['dubled'] != null) {
      dubled = [];
      json['dubled'].forEach((v) {
        dubled?.add(Dynamic.fromJson(v));
      });
    }
    if (json['sticky_subtitle'] != null) {
      stickySubtitle = [];
      json['sticky_subtitle'].forEach((v) {
        stickySubtitle?.add(Dynamic.fromJson(v));
      });
    }
  }
  List<dynamic>? dubled;
  List<dynamic>? stickySubtitle;
MoviesLinks copyWith({  List<dynamic>? dubled,
  List<dynamic>? stickySubtitle,
}) => MoviesLinks(  dubled: dubled ?? this.dubled,
  stickySubtitle: stickySubtitle ?? this.stickySubtitle,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (dubled != null) {
      map['dubled'] = dubled?.map((v) => v.toJson()).toList();
    }
    if (stickySubtitle != null) {
      map['sticky_subtitle'] = stickySubtitle?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Lists {
  Lists({
      this.id, 
      this.userName, 
      this.title, 
      this.userId, 
      this.count, 
      this.date, 
      this.type, 
      this.images,});

  Lists.fromJson(dynamic json) {
    id = json['ID'];
    userName = json['user_name'];
    title = json['title'];
    userId = json['user_id'];
    count = json['count'];
    date = json['date'];
    type = json['type'];
    images = json['images'] != null ? json['images'].cast<String>() : [];
  }
  String? id;
  String? userName;
  String? title;
  String? userId;
  num? count;
  String? date;
  String? type;
  List<String>? images;
Lists copyWith({  String? id,
  String? userName,
  String? title,
  String? userId,
  num? count,
  String? date,
  String? type,
  List<String>? images,
}) => Lists(  id: id ?? this.id,
  userName: userName ?? this.userName,
  title: title ?? this.title,
  userId: userId ?? this.userId,
  count: count ?? this.count,
  date: date ?? this.date,
  type: type ?? this.type,
  images: images ?? this.images,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ID'] = id;
    map['user_name'] = userName;
    map['title'] = title;
    map['user_id'] = userId;
    map['count'] = count;
    map['date'] = date;
    map['type'] = type;
    map['images'] = images;
    return map;
  }

}

class Genre {
  Genre({
      this.termId, 
      this.name, 
      this.slug, 
      this.termGroup, 
      this.termTaxonomyId, 
      this.taxonomy, 
      this.description, 
      this.parent, 
      this.count, 
      this.filter,});

  Genre.fromJson(dynamic json) {
    termId = json['term_id'];
    name = json['name'];
    slug = json['slug'];
    termGroup = json['term_group'];
    termTaxonomyId = json['term_taxonomy_id'];
    taxonomy = json['taxonomy'];
    description = json['description'];
    parent = json['parent'];
    count = json['count'];
    filter = json['filter'];
  }
  num? termId;
  String? name;
  String? slug;
  num? termGroup;
  num? termTaxonomyId;
  String? taxonomy;
  String? description;
  num? parent;
  num? count;
  String? filter;
Genre copyWith({  num? termId,
  String? name,
  String? slug,
  num? termGroup,
  num? termTaxonomyId,
  String? taxonomy,
  String? description,
  num? parent,
  num? count,
  String? filter,
}) => Genre(  termId: termId ?? this.termId,
  name: name ?? this.name,
  slug: slug ?? this.slug,
  termGroup: termGroup ?? this.termGroup,
  termTaxonomyId: termTaxonomyId ?? this.termTaxonomyId,
  taxonomy: taxonomy ?? this.taxonomy,
  description: description ?? this.description,
  parent: parent ?? this.parent,
  count: count ?? this.count,
  filter: filter ?? this.filter,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['term_id'] = termId;
    map['name'] = name;
    map['slug'] = slug;
    map['term_group'] = termGroup;
    map['term_taxonomy_id'] = termTaxonomyId;
    map['taxonomy'] = taxonomy;
    map['description'] = description;
    map['parent'] = parent;
    map['count'] = count;
    map['filter'] = filter;
    return map;
  }

}

class Cast {
  Cast({
      this.termId, 
      this.taxonomy, 
      this.name, 
      this.slug, 
      this.image,});

  Cast.fromJson(dynamic json) {
    termId = json['term_id'];
    taxonomy = json['taxonomy'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
  }
  num? termId;
  String? taxonomy;
  String? name;
  String? slug;
  String? image;
Cast copyWith({  num? termId,
  String? taxonomy,
  String? name,
  String? slug,
  String? image,
}) => Cast(  termId: termId ?? this.termId,
  taxonomy: taxonomy ?? this.taxonomy,
  name: name ?? this.name,
  slug: slug ?? this.slug,
  image: image ?? this.image,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['term_id'] = termId;
    map['taxonomy'] = taxonomy;
    map['name'] = name;
    map['slug'] = slug;
    map['image'] = image;
    return map;
  }

}

class Actor {
  Actor({
      this.termId, 
      this.name, 
      this.slug, 
      this.taxonomy,});

  Actor.fromJson(dynamic json) {
    termId = json['term_id'];
    name = json['name'];
    slug = json['slug'];
    taxonomy = json['taxonomy'];
  }
  num? termId;
  String? name;
  String? slug;
  String? taxonomy;
Actor copyWith({  num? termId,
  String? name,
  String? slug,
  String? taxonomy,
}) => Actor(  termId: termId ?? this.termId,
  name: name ?? this.name,
  slug: slug ?? this.slug,
  taxonomy: taxonomy ?? this.taxonomy,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['term_id'] = termId;
    map['name'] = name;
    map['slug'] = slug;
    map['taxonomy'] = taxonomy;
    return map;
  }

}

class Release {
  Release({
      this.termId, 
      this.name, 
      this.slug, 
      this.termGroup, 
      this.termTaxonomyId, 
      this.taxonomy, 
      this.description, 
      this.parent, 
      this.count, 
      this.filter,});

  Release.fromJson(dynamic json) {
    termId = json['term_id'];
    name = json['name'];
    slug = json['slug'];
    termGroup = json['term_group'];
    termTaxonomyId = json['term_taxonomy_id'];
    taxonomy = json['taxonomy'];
    description = json['description'];
    parent = json['parent'];
    count = json['count'];
    filter = json['filter'];
  }
  num? termId;
  String? name;
  String? slug;
  num? termGroup;
  num? termTaxonomyId;
  String? taxonomy;
  String? description;
  num? parent;
  num? count;
  String? filter;
Release copyWith({  num? termId,
  String? name,
  String? slug,
  num? termGroup,
  num? termTaxonomyId,
  String? taxonomy,
  String? description,
  num? parent,
  num? count,
  String? filter,
}) => Release(  termId: termId ?? this.termId,
  name: name ?? this.name,
  slug: slug ?? this.slug,
  termGroup: termGroup ?? this.termGroup,
  termTaxonomyId: termTaxonomyId ?? this.termTaxonomyId,
  taxonomy: taxonomy ?? this.taxonomy,
  description: description ?? this.description,
  parent: parent ?? this.parent,
  count: count ?? this.count,
  filter: filter ?? this.filter,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['term_id'] = termId;
    map['name'] = name;
    map['slug'] = slug;
    map['term_group'] = termGroup;
    map['term_taxonomy_id'] = termTaxonomyId;
    map['taxonomy'] = taxonomy;
    map['description'] = description;
    map['parent'] = parent;
    map['count'] = count;
    map['filter'] = filter;
    return map;
  }

}

class SeriesOnlinePlay {
  SeriesOnlinePlay({
      this.seasonName, 
      this.seasonQuality, 
      this.type, 
      this.playLink, 
      this.faVtt, 
      this.access,});

  SeriesOnlinePlay.fromJson(dynamic json) {
    seasonName = json['seasonName'];
    seasonQuality = json['seasonQuality'];
    type = json['type'];
    playLink = json['playLink'] != null ? json['playLink'].cast<String>() : [];
    faVtt = json['faVtt'] != null ? json['faVtt'].cast<String>() : [];
    access = json['access'];
  }
  String? seasonName;
  String? seasonQuality;
  String? type;
  List<String>? playLink;
  List<String>? faVtt;
  bool? access;
SeriesOnlinePlay copyWith({  String? seasonName,
  String? seasonQuality,
  String? type,
  List<String>? playLink,
  List<String>? faVtt,
  bool? access,
}) => SeriesOnlinePlay(  seasonName: seasonName ?? this.seasonName,
  seasonQuality: seasonQuality ?? this.seasonQuality,
  type: type ?? this.type,
  playLink: playLink ?? this.playLink,
  faVtt: faVtt ?? this.faVtt,
  access: access ?? this.access,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['seasonName'] = seasonName;
    map['seasonQuality'] = seasonQuality;
    map['type'] = type;
    map['playLink'] = playLink;
    map['faVtt'] = faVtt;
    map['access'] = access;
    return map;
  }

}

class Playseries {
  Playseries({
      this.seasonName, 
      this.seasonQuality, 
      this.type, 
      this.playLink, 
      this.faVtt,});

  Playseries.fromJson(dynamic json) {
    seasonName = json['seasonName'];
    seasonQuality = json['seasonQuality'];
    type = json['type'];
    playLink = json['playLink'] != null ? json['playLink'].cast<String>() : [];
    faVtt = json['faVtt'] != null ? json['faVtt'].cast<String>() : [];
  }
  String? seasonName;
  String? seasonQuality;
  String? type;
  List<String>? playLink;
  List<String>? faVtt;
Playseries copyWith({  String? seasonName,
  String? seasonQuality,
  String? type,
  List<String>? playLink,
  List<String>? faVtt,
}) => Playseries(  seasonName: seasonName ?? this.seasonName,
  seasonQuality: seasonQuality ?? this.seasonQuality,
  type: type ?? this.type,
  playLink: playLink ?? this.playLink,
  faVtt: faVtt ?? this.faVtt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['seasonName'] = seasonName;
    map['seasonQuality'] = seasonQuality;
    map['type'] = type;
    map['playLink'] = playLink;
    map['faVtt'] = faVtt;
    return map;
  }

}

class SeriesLinks {
  SeriesLinks({
      this.nameseason, 
      this.qulityseason, 
      this.countpartseason, 
      this.avgsizeseason, 
      this.subtitle, 
      this.subtitleType, 
      this.dubbing, 
      this.dllinktitle, 
      this.dllinkpart, 
      this.dllinkdub, 
      this.access,});

  SeriesLinks.fromJson(dynamic json) {
    nameseason = json['nameseason'];
    qulityseason = json['qulityseason'];
    countpartseason = json['countpartseason'];
    avgsizeseason = json['avgsizeseason'];
    subtitle = json['subtitle'];
    subtitleType = json['subtitle_type'];
    dubbing = json['dubbing'];
    dllinktitle = json['dllinktitle'] != null ? json['dllinktitle'].cast<String>() : [];
    dllinkpart = json['dllinkpart'] != null ? json['dllinkpart'].cast<String>() : [];
    dllinkdub = json['dllinkdub'] != null ? json['dllinkdub'].cast<String>() : [];
    access = json['access'];
  }
  String? nameseason;
  String? qulityseason;
  String? countpartseason;
  String? avgsizeseason;
  String? subtitle;
  String? subtitleType;
  String? dubbing;
  List<String>? dllinktitle;
  List<String>? dllinkpart;
  List<String>? dllinkdub;
  bool? access;
SeriesLinks copyWith({  String? nameseason,
  String? qulityseason,
  String? countpartseason,
  String? avgsizeseason,
  String? subtitle,
  String? subtitleType,
  String? dubbing,
  List<String>? dllinktitle,
  List<String>? dllinkpart,
  List<String>? dllinkdub,
  bool? access,
}) => SeriesLinks(  nameseason: nameseason ?? this.nameseason,
  qulityseason: qulityseason ?? this.qulityseason,
  countpartseason: countpartseason ?? this.countpartseason,
  avgsizeseason: avgsizeseason ?? this.avgsizeseason,
  subtitle: subtitle ?? this.subtitle,
  subtitleType: subtitleType ?? this.subtitleType,
  dubbing: dubbing ?? this.dubbing,
  dllinktitle: dllinktitle ?? this.dllinktitle,
  dllinkpart: dllinkpart ?? this.dllinkpart,
  dllinkdub: dllinkdub ?? this.dllinkdub,
  access: access ?? this.access,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['nameseason'] = nameseason;
    map['qulityseason'] = qulityseason;
    map['countpartseason'] = countpartseason;
    map['avgsizeseason'] = avgsizeseason;
    map['subtitle'] = subtitle;
    map['subtitle_type'] = subtitleType;
    map['dubbing'] = dubbing;
    map['dllinktitle'] = dllinktitle;
    map['dllinkpart'] = dllinkpart;
    map['dllinkdub'] = dllinkdub;
    map['access'] = access;
    return map;
  }

}

class Fserieslinks {
  Fserieslinks({
      this., 
      this., 
      this.,});

  Fserieslinks.fromJson(dynamic json) {
    if (json['1'] != null) {
       = [];
      json['1'].forEach((v) {
        ?.add(1.fromJson(v));
      });
    }
    if (json['2'] != null) {
       = [];
      json['2'].forEach((v) {
        ?.add(2.fromJson(v));
      });
    }
    if (json['3'] != null) {
       = [];
      json['3'].forEach((v) {
        ?.add(3.fromJson(v));
      });
    }
  }
  List<1>? ;
  List<2>? ;
  List<3>? ;
Fserieslinks copyWith({  List<1>? ,
  List<2>? ,
  List<3>? ,
}) => Fserieslinks(  :  ?? this.,
  :  ?? this.,
  :  ?? this.,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if ( != null) {
      map['1'] = ?.map((v) => v.toJson()).toList();
    }
    if ( != null) {
      map['2'] = ?.map((v) => v.toJson()).toList();
    }
    if ( != null) {
      map['3'] = ?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class SingleFSeries {
  SingleFSeries({
      this.nameseason,
      this.qulityseason,
      this.countpartseason,
      this.avgsizeseason,
      this.subtitle,
      this.subtitleType,
      this.dubbing,
      this.dllinktitle,
      this.dllinkpart,
      this.dllinkdub,});

  SingleFSeries.fromJson(dynamic json) {
    nameseason = json['nameseason'];
    qulityseason = json['qulityseason'];
    countpartseason = json['countpartseason'];
    avgsizeseason = json['avgsizeseason'];
    subtitle = json['subtitle'];
    subtitleType = json['subtitle_type'];
    dubbing = json['dubbing'];
    dllinktitle = json['dllinktitle'] != null ? json['dllinktitle'].cast<String>() : [];
    dllinkpart = json['dllinkpart'] != null ? json['dllinkpart'].cast<String>() : [];
    dllinkdub = json['dllinkdub'] != null ? json['dllinkdub'].cast<String>() : [];
  }
  String? nameseason;
  String? qulityseason;
  String? countpartseason;
  String? avgsizeseason;
  String? subtitle;
  String? subtitleType;
  String? dubbing;
  List<String>? dllinktitle;
  List<String>? dllinkpart;
  List<String>? dllinkdub;
  SingleFSeries. copyWith({  String? nameseason,
  String? qulityseason,
  String? countpartseason,
  String? avgsizeseason,
  String? subtitle,
  String? subtitleType,
  String? dubbing,
  List<String>? dllinktitle,
  List<String>? dllinkpart,
  List<String>? dllinkdub,
}) => SingleFSeries(  nameseason: nameseason ?? this.nameseason,
  qulityseason: qulityseason ?? this.qulityseason,
  countpartseason: countpartseason ?? this.countpartseason,
  avgsizeseason: avgsizeseason ?? this.avgsizeseason,
  subtitle: subtitle ?? this.subtitle,
  subtitleType: subtitleType ?? this.subtitleType,
  dubbing: dubbing ?? this.dubbing,
  dllinktitle: dllinktitle ?? this.dllinktitle,
  dllinkpart: dllinkpart ?? this.dllinkpart,
  dllinkdub: dllinkdub ?? this.dllinkdub,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['nameseason'] = nameseason;
    map['qulityseason'] = qulityseason;
    map['countpartseason'] = countpartseason;
    map['avgsizeseason'] = avgsizeseason;
    map['subtitle'] = subtitle;
    map['subtitle_type'] = subtitleType;
    map['dubbing'] = dubbing;
    map['dllinktitle'] = dllinktitle;
    map['dllinkpart'] = dllinkpart;
    map['dllinkdub'] = dllinkdub;
    return map;
  }

}

*/
