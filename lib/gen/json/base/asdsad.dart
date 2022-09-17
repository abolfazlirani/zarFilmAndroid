/*
class Asdsad {
  Asdsad({
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
      this.onlineLinks, 
      this.fmovieslinks, 
      this.moviesLinks, 
      this.moviesOnlinePlay,});

  Asdsad.fromJson(dynamic json) {
    if (json['fserieslinks'] != null) {
      fserieslinks = [];
      json['fserieslinks'].forEach((v) {
        fserieslinks?.add(Dynamic.fromJson(v));
      });
    }
    if (json['seriesLinks'] != null) {
      seriesLinks = [];
      json['seriesLinks'].forEach((v) {
        seriesLinks?.add(Dynamic.fromJson(v));
      });
    }
    if (json['playmovies'] != null) {
      playmovies = [];
      json['playmovies'].forEach((v) {
        playmovies?.add(Playmovies.fromJson(v));
      });
    }
    if (json['playseries'] != null) {
      playseries = [];
      json['playseries'].forEach((v) {
        playseries?.add(Dynamic.fromJson(v));
      });
    }
    if (json['series_online_play'] != null) {
      seriesOnlinePlay = [];
      json['series_online_play'].forEach((v) {
        seriesOnlinePlay?.add(Dynamic.fromJson(v));
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
        director?.add(Director.fromJson(v));
      });
    }
    top250 = json['top250'];
    awards = json['awards'];
    if (json['lists'] != null) {
      lists = [];
      json['lists'].forEach((v) {
        lists?.add(Dynamic.fromJson(v));
      });
    }
    if (json['onlineLinks'] != null) {
      onlineLinks = [];
      json['onlineLinks'].forEach((v) {
        onlineLinks?.add(OnlineLinks.fromJson(v));
      });
    }
    if (json['fmovieslinks'] != null) {
      fmovieslinks = [];
      json['fmovieslinks'].forEach((v) {
        fmovieslinks?.add(Fmovieslinks.fromJson(v));
      });
    }
    moviesLinks = json['moviesLinks'] != null ? MoviesLinks.fromJson(json['moviesLinks']) : null;
    if (json['movies_online_play'] != null) {
      moviesOnlinePlay = [];
      json['movies_online_play'].forEach((v) {
        moviesOnlinePlay?.add(MoviesOnlinePlay.fromJson(v));
      });
    }
  }
  List<dynamic>? fserieslinks;
  List<dynamic>? seriesLinks;
  List<Playmovies>? playmovies;
  List<dynamic>? playseries;
  List<dynamic>? seriesOnlinePlay;
  List<dynamic>? collection;
  List<Release>? release;
  List<Actor>? actor;
  List<Cast>? cast;
  int? postID;
  String? type;
  String? image;
  String? rate;
  String? online;
  String? vote;
  String? title;
  String? faTitle;
  String? quality;
  String? dubbed;
  List<Genre>? genre;
  String? notif;
  String? watchlist;
  bool? subscriber;
  String? percentLike;
  int? likeDisCount;
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
  List<Director>? director;
  String? top250;
  String? awards;
  List<dynamic>? lists;
  List<OnlineLinks>? onlineLinks;
  List<Fmovieslinks>? fmovieslinks;
  MoviesLinks? moviesLinks;
  List<MoviesOnlinePlay>? moviesOnlinePlay;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (fserieslinks != null) {
      map['fserieslinks'] = fserieslinks?.map((v) => v.toJson()).toList();
    }
    if (seriesLinks != null) {
      map['seriesLinks'] = seriesLinks?.map((v) => v.toJson()).toList();
    }
    if (playmovies != null) {
      map['playmovies'] = playmovies?.map((v) => v.toJson()).toList();
    }
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
    if (onlineLinks != null) {
      map['onlineLinks'] = onlineLinks?.map((v) => v.toJson()).toList();
    }
    if (fmovieslinks != null) {
      map['fmovieslinks'] = fmovieslinks?.map((v) => v.toJson()).toList();
    }
    if (moviesLinks != null) {
      map['moviesLinks'] = moviesLinks?.toJson();
    }
    if (moviesOnlinePlay != null) {
      map['movies_online_play'] = moviesOnlinePlay?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class MoviesOnlinePlay {
  MoviesOnlinePlay({
      this.file, 
      this.quality, 
      this.postID, 
      this.enVtt, 
      this.faVtt, 
      this.type, 
      this.season, 
      this.part, 
      this.access,});

  MoviesOnlinePlay.fromJson(dynamic json) {
    file = json['file'];
    quality = json['quality'];
    postID = json['postID'];
    enVtt = json['en_vtt'];
    faVtt = json['fa_vtt'];
    type = json['type'];
    season = json['season'];
    part = json['part'];
    access = json['access'];
  }
  String? file;
  String? quality;
  int? postID;
  String? enVtt;
  String? faVtt;
  String? type;
  String? season;
  String? part;
  bool? access;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['file'] = file;
    map['quality'] = quality;
    map['postID'] = postID;
    map['en_vtt'] = enVtt;
    map['fa_vtt'] = faVtt;
    map['type'] = type;
    map['season'] = season;
    map['part'] = part;
    map['access'] = access;
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
        dubled?.add(Dubled.fromJson(v));
      });
    }
    if (json['sticky_subtitle'] != null) {
      stickySubtitle = [];
      json['sticky_subtitle'].forEach((v) {
        stickySubtitle?.add(StickySubtitle.fromJson(v));
      });
    }
  }
  List<Dubled>? dubled;
  List<StickySubtitle>? stickySubtitle;

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

class StickySubtitle {
  StickySubtitle({
      this.quality, 
      this.linkdl, 
      this.size, 
      this.resolution, 
      this.encoder, 
      this.screenshot, 
      this.dubledSound, 
      this.access,});

  StickySubtitle.fromJson(dynamic json) {
    quality = json['quality'];
    linkdl = json['linkdl'];
    size = json['size'];
    resolution = json['resolution'];
    encoder = json['encoder'];
    screenshot = json['screenshot'];
    dubledSound = json['dubled_sound'];
    access = json['access'];
  }
  String? quality;
  String? linkdl;
  String? size;
  String? resolution;
  String? encoder;
  String? screenshot;
  String? dubledSound;
  bool? access;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['quality'] = quality;
    map['linkdl'] = linkdl;
    map['size'] = size;
    map['resolution'] = resolution;
    map['encoder'] = encoder;
    map['screenshot'] = screenshot;
    map['dubled_sound'] = dubledSound;
    map['access'] = access;
    return map;
  }

}

class Dubled {
  Dubled({
      this.quality, 
      this.linkdl, 
      this.size, 
      this.resolution, 
      this.encoder, 
      this.screenshot, 
      this.dubledSound, 
      this.access,});

  Dubled.fromJson(dynamic json) {
    quality = json['quality'];
    linkdl = json['linkdl'];
    size = json['size'];
    resolution = json['resolution'];
    encoder = json['encoder'];
    screenshot = json['screenshot'];
    dubledSound = json['dubled_sound'];
    access = json['access'];
  }
  String? quality;
  String? linkdl;
  String? size;
  String? resolution;
  String? encoder;
  String? screenshot;
  String? dubledSound;
  bool? access;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['quality'] = quality;
    map['linkdl'] = linkdl;
    map['size'] = size;
    map['resolution'] = resolution;
    map['encoder'] = encoder;
    map['screenshot'] = screenshot;
    map['dubled_sound'] = dubledSound;
    map['access'] = access;
    return map;
  }

}

class Fmovieslinks {
  Fmovieslinks({
      this.qualityFilm, 
      this.linkdwonFilm, 
      this.sizeFilm, 
      this.description, 
      this.encoderFilm, 
      this.dubSound, 
      this.dubled, 
      this.stickySubtitle, 
      this.subtitleType,});

  Fmovieslinks.fromJson(dynamic json) {
    qualityFilm = json['quality_film'];
    linkdwonFilm = json['linkdwon_film'];
    sizeFilm = json['size_film'];
    description = json['description'];
    encoderFilm = json['encoder_film'];
    dubSound = json['dub_sound'];
    dubled = json['dubled'];
    stickySubtitle = json['sticky_subtitle'];
    subtitleType = json['subtitle_type'];
  }
  String? qualityFilm;
  String? linkdwonFilm;
  String? sizeFilm;
  String? description;
  String? encoderFilm;
  String? dubSound;
  String? dubled;
  String? stickySubtitle;
  String? subtitleType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['quality_film'] = qualityFilm;
    map['linkdwon_film'] = linkdwonFilm;
    map['size_film'] = sizeFilm;
    map['description'] = description;
    map['encoder_film'] = encoderFilm;
    map['dub_sound'] = dubSound;
    map['dubled'] = dubled;
    map['sticky_subtitle'] = stickySubtitle;
    map['subtitle_type'] = subtitleType;
    return map;
  }

}

class OnlineLinks {
  OnlineLinks({
      this.link, 
      this.quality, 
      this.vtt,});

  OnlineLinks.fromJson(dynamic json) {
    link = json['link'];
    quality = json['quality'];
    vtt = json['vtt'];
  }
  String? link;
  String? quality;
  String? vtt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['link'] = link;
    map['quality'] = quality;
    map['vtt'] = vtt;
    return map;
  }

}

class Director {
  Director({
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

  Director.fromJson(dynamic json) {
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
  int? termId;
  String? name;
  String? slug;
  int? termGroup;
  int? termTaxonomyId;
  String? taxonomy;
  String? description;
  int? parent;
  int? count;
  String? filter;

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
  int? termId;
  String? name;
  String? slug;
  int? termGroup;
  int? termTaxonomyId;
  String? taxonomy;
  String? description;
  int? parent;
  int? count;
  String? filter;

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
  int? termId;
  String? taxonomy;
  String? name;
  String? slug;
  String? image;

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
  int? termId;
  String? name;
  String? slug;
  String? taxonomy;

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
  int? termId;
  String? name;
  String? slug;
  int? termGroup;
  int? termTaxonomyId;
  String? taxonomy;
  String? description;
  int? parent;
  int? count;
  String? filter;

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

class Playmovies {
  Playmovies({
      this.qualityonline, 
      this.linkonplay, 
      this.vttLink, 
      this.type,});

  Playmovies.fromJson(dynamic json) {
    qualityonline = json['qualityonline'];
    linkonplay = json['linkonplay'];
    vttLink = json['vtt_link'];
    type = json['type'];
  }
  String? qualityonline;
  String? linkonplay;
  String? vttLink;
  String? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['qualityonline'] = qualityonline;
    map['linkonplay'] = linkonplay;
    map['vtt_link'] = vttLink;
    map['type'] = type;
    return map;
  }

}*/
