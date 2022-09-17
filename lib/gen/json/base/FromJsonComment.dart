class FromJsonCommentes {
  FromJsonCommentes();

FromJsonCommentes.fromJson(dynamic json) {

  json.forEach((str) {
    listFrom.add(CommentModel.fromJson(str));
  });
  }


  List<CommentModel> listFrom = [];

}class CommentModel {
  CommentModel({
      this.replayname,
      this.commentParent,
      this.commentID,
      this.spoil,
      this.commentAuthor,
      this.commentContent,
      this.commentDate,
      this.commentLike,
      this.commentDislike,
      this.videoRate,});

  CommentModel.fromJson(dynamic json) {
    replayname = json['replayname'];
    commentParent = json['comment_parent'];
    commentID = json['commentID'];
    spoil = json['spoil'];
    commentAuthor = json['comment_author'];
    commentContent = json['comment_content'];
    commentDate = json['comment_date'];
    commentLike = json['comment_like'];
    commentDislike = json['comment_dislike'];
    videoRate = json['VideoRate'];
  }
  String? replayname;
  int? commentParent;
  String? commentID;
  String? spoil;
  String? commentAuthor;
  String? commentContent;
  String? commentDate;
  int? commentLike;
  int? commentDislike;
  int? videoRate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['replayname'] = replayname;
    map['comment_parent'] = commentParent;
    map['commentID'] = commentID;
    map['spoil'] = spoil;
    map['comment_author'] = commentAuthor;
    map['comment_content'] = commentContent;
    map['comment_date'] = commentDate;
    map['comment_like'] = commentLike;
    map['comment_dislike'] = commentDislike;
    map['VideoRate'] = videoRate;
    return map;
  }

}