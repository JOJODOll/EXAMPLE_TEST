void fibo(int intput) {
  List<int> Func = [0, 1];

  int offset = 1;
  for (int i = offset; i < intput; i++,) {
    int DATA1 = Func[i] + Func[i - 1];
    Func.add(DATA1);
  }
  for (int i = 1; i < Func.length; i++) {
    print(Func[i]);
  }
}
