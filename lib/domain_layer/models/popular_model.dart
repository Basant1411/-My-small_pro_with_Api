
class PopularModel {
  PopularModel({
      this.page, 
      this.results, 
      this.totalPages, 
      this.totalResults,});

  PopularModel.fromJson(dynamic json) {
    page = json['page'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }
  num? page;
  List<Results>? results;
  num? totalPages;
  num? totalResults;
PopularModel copyWith({  num? page,
  List<Results>? results,
  num? totalPages,
  num? totalResults,
}) => PopularModel(  page: page ?? this.page,
  results: results ?? this.results,
  totalPages: totalPages ?? this.totalPages,
  totalResults: totalResults ?? this.totalResults,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['page'] = page;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    map['total_pages'] = totalPages;
    map['total_results'] = totalResults;
    return map;
  }

}

/// adult : false
/// gender : 1
/// id : 1231
/// known_for : [{"adult":false,"backdrop_path":"/w9eBtIHHpGgGfjqnEAJM3s7mCOa.jpg","genre_ids":[12,28,878],"id":330,"media_type":"movie","original_language":"en","original_title":"The Lost World: Jurassic Park","overview":"Four years after Jurassic Park's genetically bred dinosaurs ran amok, multimillionaire John Hammond shocks chaos theorist Ian Malcolm by revealing that he has been breeding more beasties at a secret location. Malcolm, his paleontologist ladylove and a wildlife videographer join an expedition to document the lethal lizards' natural behavior in this action-packed thriller.","poster_path":"/jElpCJkSaRPYwIMwZY28gOKV7BK.jpg","release_date":"1997-05-23","title":"The Lost World: Jurassic Park","video":false,"vote_average":6.5,"vote_count":7718},{"adult":false,"backdrop_path":"/eVHVwP71el20fofkCHo78ebQv7Q.jpg","genre_ids":[28,12,35],"id":343668,"media_type":"movie","original_language":"en","original_title":"Kingsman: The Golden Circle","overview":"When an attack on the Kingsman headquarters takes place and a new villain rises, Eggsy and Merlin are forced to work together with the American agency known as the Statesman to save the world.","poster_path":"/34xBL6BXNYFqtHO9zhcgoakS4aP.jpg","release_date":"2017-09-20","title":"Kingsman: The Golden Circle","video":false,"vote_average":7,"vote_count":9537},{"adult":false,"backdrop_path":"/cWMeHXEGeZ8cjEOmznjVGr04Ofu.jpg","genre_ids":[18],"id":284293,"media_type":"movie","original_language":"en","original_title":"Still Alice","overview":"Alice Howland, happily married with three grown children, is a renowned linguistics professor who starts to forget words. When she receives a devastating diagnosis, Alice and her family find their bonds tested.","poster_path":"/MeJJCT1o87j7D0mR3yQs4s4PIA.jpg","release_date":"2014-12-05","title":"Still Alice","video":false,"vote_average":7.5,"vote_count":2870}]
/// known_for_department : "Acting"
/// name : "Julianne Moore"
/// popularity : 393.695
/// profile_path : "/3YF19rWusxWfEI59ZM33dFhasRq.jpg"

class Results {
  Results({
      this.adult, 
      this.gender, 
      this.id, 
      this.knownFor, 
      this.knownForDepartment, 
      this.name, 
      this.popularity, 
      this.profilePath,});

  Results.fromJson(dynamic json) {
    adult = json['adult'];
    gender = json['gender'];
    id = json['id'];
    if (json['known_for'] != null) {
      knownFor = [];
      json['known_for'].forEach((v) {
        knownFor?.add(KnownFor.fromJson(v));
      });
    }
    knownForDepartment = json['known_for_department'];
    name = json['name'];
    popularity = json['popularity'];
    profilePath = json['profile_path'];
  }
  bool? adult;
  num? gender;
  num? id;
  List<KnownFor>? knownFor;
  String? knownForDepartment;
  String? name;
  num? popularity;
  String? profilePath;
Results copyWith({  bool? adult,
  num? gender,
  num? id,
  List<KnownFor>? knownFor,
  String? knownForDepartment,
  String? name,
  num? popularity,
  String? profilePath,
}) => Results(  adult: adult ?? this.adult,
  gender: gender ?? this.gender,
  id: id ?? this.id,
  knownFor: knownFor ?? this.knownFor,
  knownForDepartment: knownForDepartment ?? this.knownForDepartment,
  name: name ?? this.name,
  popularity: popularity ?? this.popularity,
  profilePath: profilePath ?? this.profilePath,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = adult;
    map['gender'] = gender;
    map['id'] = id;
    if (knownFor != null) {
      map['known_for'] = knownFor?.map((v) => v.toJson()).toList();
    }
    map['known_for_department'] = knownForDepartment;
    map['name'] = name;
    map['popularity'] = popularity;
    map['profile_path'] = profilePath;
    return map;
  }

}

/// adult : false
/// backdrop_path : "/w9eBtIHHpGgGfjqnEAJM3s7mCOa.jpg"
/// genre_ids : [12,28,878]
/// id : 330
/// media_type : "movie"
/// original_language : "en"
/// original_title : "The Lost World: Jurassic Park"
/// overview : "Four years after Jurassic Park's genetically bred dinosaurs ran amok, multimillionaire John Hammond shocks chaos theorist Ian Malcolm by revealing that he has been breeding more beasties at a secret location. Malcolm, his paleontologist ladylove and a wildlife videographer join an expedition to document the lethal lizards' natural behavior in this action-packed thriller."
/// poster_path : "/jElpCJkSaRPYwIMwZY28gOKV7BK.jpg"
/// release_date : "1997-05-23"
/// title : "The Lost World: Jurassic Park"
/// video : false
/// vote_average : 6.5
/// vote_count : 7718

class KnownFor {
  KnownFor({
      this.adult, 
      this.backdropPath, 
      this.genreIds, 
      this.id, 
      this.mediaType, 
      this.originalLanguage, 
      this.originalTitle, 
      this.overview, 
      this.posterPath, 
      this.releaseDate, 
      this.title, 
      this.video, 
      this.voteAverage, 
      this.voteCount,});

  KnownFor.fromJson(dynamic json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<num>() : [];
    id = json['id'];
    mediaType = json['media_type'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }
  bool? adult;
  String? backdropPath;
  List<num>? genreIds;
  num? id;
  String? mediaType;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  num? voteAverage;
  num? voteCount;
KnownFor copyWith({  bool? adult,
  String? backdropPath,
  List<num>? genreIds,
  num? id,
  String? mediaType,
  String? originalLanguage,
  String? originalTitle,
  String? overview,
  String? posterPath,
  String? releaseDate,
  String? title,
  bool? video,
  num? voteAverage,
  num? voteCount,
}) => KnownFor(  adult: adult ?? this.adult,
  backdropPath: backdropPath ?? this.backdropPath,
  genreIds: genreIds ?? this.genreIds,
  id: id ?? this.id,
  mediaType: mediaType ?? this.mediaType,
  originalLanguage: originalLanguage ?? this.originalLanguage,
  originalTitle: originalTitle ?? this.originalTitle,
  overview: overview ?? this.overview,
  posterPath: posterPath ?? this.posterPath,
  releaseDate: releaseDate ?? this.releaseDate,
  title: title ?? this.title,
  video: video ?? this.video,
  voteAverage: voteAverage ?? this.voteAverage,
  voteCount: voteCount ?? this.voteCount,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = adult;
    map['backdrop_path'] = backdropPath;
    map['genre_ids'] = genreIds;
    map['id'] = id;
    map['media_type'] = mediaType;
    map['original_language'] = originalLanguage;
    map['original_title'] = originalTitle;
    map['overview'] = overview;
    map['poster_path'] = posterPath;
    map['release_date'] = releaseDate;
    map['title'] = title;
    map['video'] = video;
    map['vote_average'] = voteAverage;
    map['vote_count'] = voteCount;
    return map;
  }

}