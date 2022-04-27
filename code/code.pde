class Scanner {
  String[]  buf;

  Scanner(String f) {
    buf = loadStrings(f);
  }

  int[] readint(int line, int size) {
    int[] res = new int[size];
    int cur = 0;

    int temp = 0;
    for (int i = 0; i < buf[line].length(); i++) {
      if (buf[line].charAt(i) == ' ' && cur < size) {
        res[cur] = temp;
        temp = 0;
        cur++;
      } 
      else if (cur < size){
        temp *= 10;
        temp += (buf[line].charAt(i)-'0');
      }
    }
    
    if (cur < size){
      res[cur] = temp;      
    }

    return res;
  }
  
  ArrayList<Integer> readint(int line){
    ArrayList<Integer> res = new ArrayList<Integer>();
    int temp = 0;
    
    for (int i = 0; i < buf[line].length(); i++){
      if (buf[line].charAt(i) == ' '){
        res.add(temp);
        temp = 0;
      }
      else{
        temp *= 10;
        temp += (buf[line].charAt(i)-'0');
      }
    }
    
    res.add(temp);
    
    return res;
  }
  
  long[] readlong(int line, int size){
    long[] res = new long[size];
    int cur = 0;
    
    long temp = 0;
    for (int i = 0; i < buf[line].length(); i++){
      if (buf[line].charAt(i) == ' ' && cur < size){
        res[cur] = temp;
        temp = 0;
        cur++;
      }
      else if (cur < size){
        temp *= 10;
        temp += (buf[line].charAt(i)-'0');
      }
    }
    
    if (cur < size){
      res[cur] = temp;      
    }
    
    return res;
  }
  
  ArrayList<Long> readlong(int line){
    ArrayList<Long> res = new ArrayList<Long>();
    
    long temp = 0;
    for (int i = 0; i < buf[line].length(); i++){
      if (buf[line].charAt(i) == ' '){
        res.add(temp);
        temp = 0;
      }
      else{
        temp *= 10;
        temp += (buf[line].charAt(i)-'0');
      }
    }
    
    res.add(temp);
    return res;
  } 
  
  String[] readstring(int line, int size){
    String[] res = new String[size];
    int cur = 0;
    String temp = "";
    for (int i = 0; i < buf[line].length(); i++) {
      if (buf[line].charAt(i) != ' '){ 
        temp += buf[line].charAt(i);
      }
      else if (cur < size){
        res[cur] = temp;
        temp = "";
        cur++;
      }
    }
    
    if (!(temp.equals("")) && cur < size) res[cur] = temp;
    return res;
  }
  
  ArrayList<String> readstring(int line){
    ArrayList<String> res = new ArrayList<String>();
    
    String temp = "";
    for (int i = 0; i < buf[line].length(); i++){
      if (buf[line].charAt(i) != ' ') temp += buf[line].charAt(i);
      else {res.add(temp); temp = "";}
    }
    
    if (!res.equals("")) res.add(temp);
    
    return res;
  }
  
  double[] readdouble(int line, int size){
    double[] res = new double[size];
    String[] temp = this.readstring(line, size);
    for (int i = 0; i < size; i++) res[i] = Double.parseDouble(temp[i]);
    return res;
  }
  
  ArrayList<Double> readdouble(int line){
    ArrayList<Double> res = new ArrayList<Double>();
    ArrayList<String> temp = this.readstring(line);
    
    for (int i = 0; i < temp.size(); i++) res.add(Double.parseDouble(temp.get(i)));
    return res;
  }
};

Scanner cin = new Scanner("in.txt");
