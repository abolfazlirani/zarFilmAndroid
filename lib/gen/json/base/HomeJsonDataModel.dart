class HomeJsonDataModel {
  HomeJsonDataModel({
      this.appName, 
      this.appUrl, 
      this.suggestions, 
      this.updatedSeries, 
      this.newMovies, 
      this.dubbedSeries, 
      this.dubbedMovies, 
      this.subtitleSeries, 
      this.animations, 
      this.indianMovies, 
      this.animes, 
      this.koreanTvSeries, 
      this.seriesGenre, 
      this.moviesGenre,});

  HomeJsonDataModel.fromJson(dynamic json) {
    appName = json['app_name'];
    appUrl = json['app_url'];
    if (json['suggestions'] != null) {
      suggestions = [];
      json['suggestions'].forEach((v) {
        suggestions?.add(Suggestions.fromJson(v));
      });
    }
    updatedSeries = json['updated_series'] != null ? UpdatedSeries.fromJson(json['updated_series']) : null;
    newMovies = json['new_movies'] != null ? NewMovies.fromJson(json['new_movies']) : null;
    dubbedSeries = json['dubbed_series'] != null ? DubbedSeries.fromJson(json['dubbed_series']) : null;
    dubbedMovies = json['dubbed_movies'] != null ? DubbedMovies.fromJson(json['dubbed_movies']) : null;
    subtitleSeries = json['subtitle_series'] != null ? SubtitleSeries.fromJson(json['subtitle_series']) : null;
    animations = json['animations'] != null ? Animations.fromJson(json['animations']) : null;
    indianMovies = json['indian_movies'] != null ? IndianMovies.fromJson(json['indian_movies']) : null;
    animes = json['animes'] != null ? Animes.fromJson(json['animes']) : null;
    koreanTvSeries = json['korean_tv_series'] != null ? KoreanTvSeries.fromJson(json['korean_tv_series']) : null;
    if (json['series_genre'] != null) {
      seriesGenre = [];
      json['series_genre'].forEach((v) {
        seriesGenre?.add(Genre.fromJson(v));
      });
    }
    if (json['movies_genre'] != null) {
      moviesGenre = [];
      json['movies_genre'].forEach((v) {
        moviesGenre?.add(Genre.fromJson(v));
      });
    }
  }
  String? appName;
  String? appUrl;
  List<Suggestions>? suggestions;
  UpdatedSeries? updatedSeries;
  NewMovies? newMovies;
  DubbedSeries? dubbedSeries;
  DubbedMovies? dubbedMovies;
  SubtitleSeries? subtitleSeries;
  Animations? animations;
  IndianMovies? indianMovies;
  Animes? animes;
  KoreanTvSeries? koreanTvSeries;
  List<Genre>? seriesGenre;
  List<Genre>? moviesGenre;
HomeJsonDataModel copyWith({  String? appName,
  String? appUrl,
  List<Suggestions>? suggestions,
  UpdatedSeries? updatedSeries,
  NewMovies? newMovies,
  DubbedSeries? dubbedSeries,
  DubbedMovies? dubbedMovies,
  SubtitleSeries? subtitleSeries,
  Animations? animations,
  IndianMovies? indianMovies,
  Animes? animes,
  KoreanTvSeries? koreanTvSeries,
  List<Genre>? seriesGenre,
  List<Genre>? moviesGenre,
}) => HomeJsonDataModel(  appName: appName ?? this.appName,
  appUrl: appUrl ?? this.appUrl,
  suggestions: suggestions ?? this.suggestions,
  updatedSeries: updatedSeries ?? this.updatedSeries,
  newMovies: newMovies ?? this.newMovies,
  dubbedSeries: dubbedSeries ?? this.dubbedSeries,
  dubbedMovies: dubbedMovies ?? this.dubbedMovies,
  subtitleSeries: subtitleSeries ?? this.subtitleSeries,
  animations: animations ?? this.animations,
  indianMovies: indianMovies ?? this.indianMovies,
  animes: animes ?? this.animes,
  koreanTvSeries: koreanTvSeries ?? this.koreanTvSeries,
  seriesGenre: seriesGenre ?? this.seriesGenre,
  moviesGenre: moviesGenre ?? this.moviesGenre,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['app_name'] = appName;
    map['app_url'] = appUrl;
    if (suggestions != null) {
      map['suggestions'] = suggestions?.map((v) => v.toJson()).toList();
    }
    if (updatedSeries != null) {
      map['updated_series'] = updatedSeries?.toJson();
    }
    if (newMovies != null) {
      map['new_movies'] = newMovies?.toJson();
    }
    if (dubbedSeries != null) {
      map['dubbed_series'] = dubbedSeries?.toJson();
    }
    if (dubbedMovies != null) {
      map['dubbed_movies'] = dubbedMovies?.toJson();
    }
    if (subtitleSeries != null) {
      map['subtitle_series'] = subtitleSeries?.toJson();
    }
    if (animations != null) {
      map['animations'] = animations?.toJson();
    }
    if (indianMovies != null) {
      map['indian_movies'] = indianMovies?.toJson();
    }
    if (animes != null) {
      map['animes'] = animes?.toJson();
    }
    if (koreanTvSeries != null) {
      map['korean_tv_series'] = koreanTvSeries?.toJson();
    }
    if (seriesGenre != null) {
      map['series_genre'] = seriesGenre?.map((v) => v.toJson()).toList();
    }
    if (moviesGenre != null) {
      map['movies_genre'] = moviesGenre?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Genre {
  Genre({
      this.termId, 
      this.taxonomy, 
      this.slug, 
      this.name, 
      this.count, 
      this.icon,});

  Genre.fromJson(dynamic json) {
    termId = json['term_id'];
    taxonomy = json['taxonomy'];
    slug = json['slug'];
    name = json['name'];
    count = json['count'];
    icon = json['icon'];
  }
  num? termId;
  String? taxonomy;
  String? slug;
  String? name;
  num? count;
  String? icon;
Genre copyWith({  num? termId,
  String? taxonomy,
  String? slug,
  String? name,
  num? count,
  String? icon,
}) => Genre(  termId: termId ?? this.termId,
  taxonomy: taxonomy ?? this.taxonomy,
  slug: slug ?? this.slug,
  name: name ?? this.name,
  count: count ?? this.count,
  icon: icon ?? this.icon,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['term_id'] = termId;
    map['taxonomy'] = taxonomy;
    map['slug'] = slug;
    map['name'] = name;
    map['count'] = count;
    map['icon'] = icon;
    return map;
  }

}


class KoreanTvSeries {
  KoreanTvSeries({
      this.title, 
      this.taxonomy, 
      this.archiveID, 
      this.items,});

  KoreanTvSeries.fromJson(dynamic json) {
    title = json['title'];
    taxonomy = json['taxonomy'];
    archiveID = json['archiveID'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  String? title;
  String? taxonomy;
  String? archiveID;
  List<Items>? items;
KoreanTvSeries copyWith({  String? title,
  String? taxonomy,
  String? archiveID,
  List<Items>? items,
}) => KoreanTvSeries(  title: title ?? this.title,
  taxonomy: taxonomy ?? this.taxonomy,
  archiveID: archiveID ?? this.archiveID,
  items: items ?? this.items,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['taxonomy'] = taxonomy;
    map['archiveID'] = archiveID;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Items {
  Items({
      this.postID, 
      this.type, 
      this.image, 
      this.rate, 
      this.title, 
      this.release, 
      this.dubbed, 
      this.subtitle, 
      this.part, 
      this.season,});

  Items.fromJson(dynamic json) {
    postID = json['postID'].toString();
    type = json['type'];
    image = json['image'];
    rate = json['rate'];
    title = json['title'];
    release = json['release'];
    dubbed = json['dubbed'];
    subtitle = json['subtitle'];
    part = json['part'];
    season = json['season'];
  }
  String? postID;
  String? type;
  String? image;
  String? rate;
  String? title;
  String? release;
  String? dubbed;
  String? subtitle;
  String? part;
  String? season;
Items copyWith({  String? postID,
  String? type,
  String? image,
  String? rate,
  String? title,
  String? release,
  String? dubbed,
  String? subtitle,
  String? part,
  String? season,
}) => Items(  postID: postID ?? this.postID,
  type: type ?? this.type,
  image: image ?? this.image,
  rate: rate ?? this.rate,
  title: title ?? this.title,
  release: release ?? this.release,
  dubbed: dubbed ?? this.dubbed,
  subtitle: subtitle ?? this.subtitle,
  part: part ?? this.part,
  season: season ?? this.season,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['postID'] = postID;
    map['type'] = type;
    map['image'] = image;
    map['rate'] = rate;
    map['title'] = title;
    map['release'] = release;
    map['dubbed'] = dubbed;
    map['subtitle'] = subtitle;
    map['part'] = part;
    map['season'] = season;
    return map;
  }

}

class Animes {
  Animes({
      this.title, 
      this.taxonomy, 
      this.archiveID, 
      this.items,});

  Animes.fromJson(dynamic json) {
    title = json['title'];
    taxonomy = json['taxonomy'];
    archiveID = json['archiveID'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  String? title;
  String? taxonomy;
  String? archiveID;
  List<Items>? items;
Animes copyWith({  String? title,
  String? taxonomy,
  String? archiveID,
  List<Items>? items,
}) => Animes(  title: title ?? this.title,
  taxonomy: taxonomy ?? this.taxonomy,
  archiveID: archiveID ?? this.archiveID,
  items: items ?? this.items,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['taxonomy'] = taxonomy;
    map['archiveID'] = archiveID;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class IndianMovies {
  IndianMovies({
      this.title, 
      this.taxonomy, 
      this.archiveID, 
      this.items,});

  IndianMovies.fromJson(dynamic json) {
    title = json['title'];
    taxonomy = json['taxonomy'];
    archiveID = json['archiveID'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  String? title;
  String? taxonomy;
  String? archiveID;
  List<Items>? items;
IndianMovies copyWith({  String? title,
  String? taxonomy,
  String? archiveID,
  List<Items>? items,
}) => IndianMovies(  title: title ?? this.title,
  taxonomy: taxonomy ?? this.taxonomy,
  archiveID: archiveID ?? this.archiveID,
  items: items ?? this.items,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['taxonomy'] = taxonomy;
    map['archiveID'] = archiveID;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}


class Animations {
  Animations({
      this.title, 
      this.taxonomy, 
      this.archiveID, 
      this.items,});

  Animations.fromJson(dynamic json) {
    title = json['title'];
    taxonomy = json['taxonomy'];
    archiveID = json['archiveID'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  String? title;
  String? taxonomy;
  String? archiveID;
  List<Items>? items;
Animations copyWith({  String? title,
  String? taxonomy,
  String? archiveID,
  List<Items>? items,
}) => Animations(  title: title ?? this.title,
  taxonomy: taxonomy ?? this.taxonomy,
  archiveID: archiveID ?? this.archiveID,
  items: items ?? this.items,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['taxonomy'] = taxonomy;
    map['archiveID'] = archiveID;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}


class SubtitleSeries {
  SubtitleSeries({
      this.title, 
      this.taxonomy, 
      this.archiveID, 
      this.items,});

  SubtitleSeries.fromJson(dynamic json) {
    title = json['title'];
    taxonomy = json['taxonomy'];
    archiveID = json['archiveID'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  String? title;
  String? taxonomy;
  String? archiveID;
  List<Items>? items;
SubtitleSeries copyWith({  String? title,
  String? taxonomy,
  String? archiveID,
  List<Items>? items,
}) => SubtitleSeries(  title: title ?? this.title,
  taxonomy: taxonomy ?? this.taxonomy,
  archiveID: archiveID ?? this.archiveID,
  items: items ?? this.items,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['taxonomy'] = taxonomy;
    map['archiveID'] = archiveID;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}


class DubbedMovies {
  DubbedMovies({
      this.title, 
      this.taxonomy, 
      this.archiveSlug, 
      this.items,});

  DubbedMovies.fromJson(dynamic json) {
    title = json['title'];
    taxonomy = json['taxonomy'];
    archiveSlug = json['archiveSlug'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  String? title;
  String? taxonomy;
  String? archiveSlug;
  List<Items>? items;
DubbedMovies copyWith({  String? title,
  String? taxonomy,
  String? archiveSlug,
  List<Items>? items,
}) => DubbedMovies(  title: title ?? this.title,
  taxonomy: taxonomy ?? this.taxonomy,
  archiveSlug: archiveSlug ?? this.archiveSlug,
  items: items ?? this.items,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['taxonomy'] = taxonomy;
    map['archiveSlug'] = archiveSlug;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}


class DubbedSeries {
  DubbedSeries({
      this.title, 
      this.taxonomy, 
      this.archiveID, 
      this.items,});

  DubbedSeries.fromJson(dynamic json) {
    title = json['title'];
    taxonomy = json['taxonomy'];
    archiveID = json['archiveID'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  String? title;
  String? taxonomy;
  String? archiveID;
  List<Items>? items;
DubbedSeries copyWith({  String? title,
  String? taxonomy,
  String? archiveID,
  List<Items>? items,
}) => DubbedSeries(  title: title ?? this.title,
  taxonomy: taxonomy ?? this.taxonomy,
  archiveID: archiveID ?? this.archiveID,
  items: items ?? this.items,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['taxonomy'] = taxonomy;
    map['archiveID'] = archiveID;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}


class NewMovies {
  NewMovies({
      this.title, 
      this.taxonomy, 
      this.archiveID, 
      this.items,});

  NewMovies.fromJson(dynamic json) {
    title = json['title'];
    taxonomy = json['taxonomy'];
    archiveID = json['archiveID'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  String? title;
  String? taxonomy;
  String? archiveID;
  List<Items>? items;
NewMovies copyWith({  String? title,
  String? taxonomy,
  String? archiveID,
  List<Items>? items,
}) => NewMovies(  title: title ?? this.title,
  taxonomy: taxonomy ?? this.taxonomy,
  archiveID: archiveID ?? this.archiveID,
  items: items ?? this.items,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['taxonomy'] = taxonomy;
    map['archiveID'] = archiveID;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}


class UpdatedSeries {
  UpdatedSeries({
      this.title, 
      this.taxonomy, 
      this.archiveID, 
      this.items,});

  UpdatedSeries.fromJson(dynamic json) {
    title = json['title'];
    taxonomy = json['taxonomy'];
    archiveID = json['archiveID'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  String? title;
  String? taxonomy;
  String? archiveID;
  List<Items>? items;
UpdatedSeries copyWith({  String? title,
  String? taxonomy,
  String? archiveID,
  List<Items>? items,
}) => UpdatedSeries(  title: title ?? this.title,
  taxonomy: taxonomy ?? this.taxonomy,
  archiveID: archiveID ?? this.archiveID,
  items: items ?? this.items,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['taxonomy'] = taxonomy;
    map['archiveID'] = archiveID;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}


class Suggestions {
  Suggestions({
      this.postID, 
      this.type, 
      this.image, 
      this.rate, 
      this.title, 
      this.release, 
      this.votes, 
      this.dubbed, 
      this.subtitle,});

  Suggestions.fromJson(dynamic json) {
    postID = json['postID'];
    type = json['type'];
    image = json['image'];
    rate = json['rate'];
    title = json['title'];
    release = json['release'];
    votes = json['votes'];
    dubbed = json['dubbed'];
    subtitle = json['subtitle'];
  }
  num? postID;
  String? type;
  String? image;
  String? rate;
  String? title;
  String? release;
  String? votes;
  String? dubbed;
  String? subtitle;
Suggestions copyWith({  num? postID,
  String? type,
  String? image,
  String? rate,
  String? title,
  String? release,
  String? votes,
  String? dubbed,
  String? subtitle,
}) => Suggestions(  postID: postID ?? this.postID,
  type: type ?? this.type,
  image: image ?? this.image,
  rate: rate ?? this.rate,
  title: title ?? this.title,
  release: release ?? this.release,
  votes: votes ?? this.votes,
  dubbed: dubbed ?? this.dubbed,
  subtitle: subtitle ?? this.subtitle,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['postID'] = postID;
    map['type'] = type;
    map['image'] = image;
    map['rate'] = rate;
    map['title'] = title;
    map['release'] = release;
    map['votes'] = votes;
    map['dubbed'] = dubbed;
    map['subtitle'] = subtitle;
    return map;
  }

}