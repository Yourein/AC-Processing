Scanner library for Processing, for text-file.

# Constructer

```Processing
Scanner(String filepath)
```

コンストラクタにtxtファイルのパスを渡すことで、txtファイルの内容を読み込みます。

```Processing
Scanner cin = new Scanner("in.txt");
```
この例はpdeファイルが存在するディレクトリ直下に存在するdataディレクトリ内の"in.txt"を参照します。

# readint

テキストファイルから空白区切りで整数(32bit)型を読み込みます。

```Processing
int [] readint(int line, int size)
ArrayList<Integer> readint(int line)
```

lineには0-indexedで取得する行番号を。sizeにはその行に存在する要素の数を渡します。
sizeが定まっている場合はプリミティブなintの配列が、不定である場合は```ArrayList<Interger>```を返します。

# readlong

テキストファイルから空白区切りで整数(64bit)型を読み込みます。

```Processing
long [] readlong(int line, int size)
ArrayList<Long> readlong(int line)
```

[readint](#readint)と同じ動作をします。

# readdouble

テキストファイルから空白区切りで浮動小数点数を読み込みます。

```Processing
double [] readdouble(int line, int size)
ArrayList<Double> readdouble(int line)
```

[readint](#readint)と同じ動作をします

# readstring

テキストファイルから空白区切りで文字列を読み込みます。

```Processing
String [] readstring(int line, int size)
ArrayList<String> readstring(int line)
```