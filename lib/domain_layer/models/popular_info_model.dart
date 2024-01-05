/// adult : false
/// also_known_as : ["Mark Hamil","Mark Richard Hamill","Марк Хэмилл","Μαρκ Χάμιλ","マーク・ハミル","마크 해밀","Patrick Williams","William M. Patrick","马克哈米尔","馬克哈米爾"]
/// biography : "Mark Richard Hamill (born September 25, 1951) is an American actor, voice artist, producer, director, and writer. Hamill is best known for his role as Luke Skywalker in the original Star Wars trilogy and also well known for voice-acting characters such as the Joker in various animated series, animated films and video games, beginning with Batman: The Animated Series, the Skeleton king in Super Robot Monkey Team Hyperforce Go!, Fire Lord Ozai in Avatar: The Last Airbender, Master Eraqus in Kingdom Hearts: Birth by Sleep, Skips in Regular Show, and Senator Stampington on Metalocalypse."
/// birthday : "1951-09-25"
/// deathday : null
/// gender : 2
/// homepage : null
/// id : 2
/// imdb_id : "nm0000434"
/// known_for_department : "Acting"
/// name : "Mark Hamill"
/// place_of_birth : "Oakland, California, USA"
/// popularity : 26.426
/// profile_path : "/2ZulC2Ccq1yv3pemusks6Zlfy2s.jpg"

class PopularInfoModel {
  PopularInfoModel({
      this.adult, 
      this.alsoKnownAs, 
      this.biography, 
      this.birthday, 
      this.deathday, 
      this.gender, 
      this.homepage, 
      this.id, 
      this.imdbId, 
      this.knownForDepartment, 
      this.name, 
      this.placeOfBirth, 
      this.popularity, 
      this.profilePath,});

  PopularInfoModel.fromJson(dynamic json) {
    adult = json['adult'];
    alsoKnownAs = json['also_known_as'] != null ? json['also_known_as'].cast<String>() : [];
    biography = json['biography'];
    birthday = json['birthday'];
    deathday = json['deathday'];
    gender = json['gender'];
    homepage = json['homepage'];
    id = json['id'];
    imdbId = json['imdb_id'];
    knownForDepartment = json['known_for_department'];
    name = json['name'];
    placeOfBirth = json['place_of_birth'];
    popularity = json['popularity'];
    profilePath = json['profile_path'];
  }
  bool? adult;
  List<String>? alsoKnownAs;
  String? biography;
  String? birthday;
  dynamic deathday;
  num? gender;
  dynamic homepage;
  num? id;
  String? imdbId;
  String? knownForDepartment;
  String? name;
  String? placeOfBirth;
  num? popularity;
  String? profilePath;
PopularInfoModel copyWith({  bool? adult,
  List<String>? alsoKnownAs,
  String? biography,
  String? birthday,
  dynamic deathday,
  num? gender,
  dynamic homepage,
  num? id,
  String? imdbId,
  String? knownForDepartment,
  String? name,
  String? placeOfBirth,
  num? popularity,
  String? profilePath,
}) => PopularInfoModel(  adult: adult ?? this.adult,
  alsoKnownAs: alsoKnownAs ?? this.alsoKnownAs,
  biography: biography ?? this.biography,
  birthday: birthday ?? this.birthday,
  deathday: deathday ?? this.deathday,
  gender: gender ?? this.gender,
  homepage: homepage ?? this.homepage,
  id: id ?? this.id,
  imdbId: imdbId ?? this.imdbId,
  knownForDepartment: knownForDepartment ?? this.knownForDepartment,
  name: name ?? this.name,
  placeOfBirth: placeOfBirth ?? this.placeOfBirth,
  popularity: popularity ?? this.popularity,
  profilePath: profilePath ?? this.profilePath,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = adult;
    map['also_known_as'] = alsoKnownAs;
    map['biography'] = biography;
    map['birthday'] = birthday;
    map['deathday'] = deathday;
    map['gender'] = gender;
    map['homepage'] = homepage;
    map['id'] = id;
    map['imdb_id'] = imdbId;
    map['known_for_department'] = knownForDepartment;
    map['name'] = name;
    map['place_of_birth'] = placeOfBirth;
    map['popularity'] = popularity;
    map['profile_path'] = profilePath;
    return map;
  }

}