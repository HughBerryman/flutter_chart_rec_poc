class DynamicHelper{
  static dynamic getNode(dynamic arg, String key){
    dynamic result;

    if(arg is List<dynamic>){
      // We will need to transcend the list searching for the object
      List<dynamic> argList = arg;

      for(int i = 0; i < argList.length; i++){
        result = getNode(argList[i], key);

        if(result != null){
          break;
        }
      }
    }
    else{
      // We will need to overview Map keys to see if we have a match
      // if no match is found must continue transcending
      Map<String, dynamic> argMap = arg as Map<String, dynamic>;

      for(int i = 0; i < argMap.keys.length; i++){
        String mapKey = argMap.keys.elementAt(i);
        dynamic value = argMap[mapKey];

        if(key == mapKey){
          result = value;
          break;
        }
        else if(value is Map<String, dynamic> || value is List<dynamic>){
          result = getNode(value, key);
        }
      }
    }

    return result;
  }
}