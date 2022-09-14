class FromJsonSplash {
  FromJsonSplash({
      this.versionApp, 
      this.dllinkApp, 
      this.messageHomePage, 
      this.discountMessage, 
      this.updateMessage, 
      this.imageHomeApp, 
      this.showUpdate, 
      this.playonlinesub,});

  FromJsonSplash.fromJson(dynamic json) {
    versionApp = json['version_app'];
    dllinkApp = json['dllink_app'];
    messageHomePage = json['message_home_page'];
    discountMessage = json['discount_message'];
    updateMessage = json['update_message'];
    imageHomeApp = json['image_home_app'];
    showUpdate = json['show_update'];
    playonlinesub = json['playonlinesub'];
  }
  String? versionApp;
  String? dllinkApp;
  String? messageHomePage;
  String? discountMessage;
  String? updateMessage;
  String? imageHomeApp;
  num? showUpdate;
  num? playonlinesub;
FromJsonSplash copyWith({  String? versionApp,
  String? dllinkApp,
  String? messageHomePage,
  String? discountMessage,
  String? updateMessage,
  String? imageHomeApp,
  num? showUpdate,
  num? playonlinesub,
}) => FromJsonSplash(  versionApp: versionApp ?? this.versionApp,
  dllinkApp: dllinkApp ?? this.dllinkApp,
  messageHomePage: messageHomePage ?? this.messageHomePage,
  discountMessage: discountMessage ?? this.discountMessage,
  updateMessage: updateMessage ?? this.updateMessage,
  imageHomeApp: imageHomeApp ?? this.imageHomeApp,
  showUpdate: showUpdate ?? this.showUpdate,
  playonlinesub: playonlinesub ?? this.playonlinesub,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['version_app'] = versionApp;
    map['dllink_app'] = dllinkApp;
    map['message_home_page'] = messageHomePage;
    map['discount_message'] = discountMessage;
    map['update_message'] = updateMessage;
    map['image_home_app'] = imageHomeApp;
    map['show_update'] = showUpdate;
    map['playonlinesub'] = playonlinesub;
    return map;
  }

}