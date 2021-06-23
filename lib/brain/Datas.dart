class Data {
  Map fetchedData = {
    "data": [
      {
        'name': 'Nyl',
        'phone': '696519917',
        'location': 'Louvain',
        'followerName': 'the follower',
        'followerNumber': '659512365'
      }
    ]
  };

  List? _data;

  // i write the function that will help me fetching the datas

  theData() {
    _data = fetchedData["data"];
  }

  //the function that will return the lenght of the list
  int getLength() {
    return _data!.length;
  }

  //the function that displays the name
  String getName(int index) {
    return _data![index]["name"];
  }

  //the function that displays the phone
  int getConvertPhone(int index) {
    return _data![index]["phone"];
  }

  //the function that displays the location
  String getLocation(int index) {
    return _data![index]["location"];
  }

  //the function that displays the name
  String getFollowerName(int index) {
    return _data![index]["followerName"];
  }

  //the function that displays the phone
  int getFollowerPhone(int index) {
    return _data![index]["followerNumber"];
  }
  //
}
