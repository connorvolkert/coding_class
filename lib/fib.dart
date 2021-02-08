int a = 0;
int b = 1;
int c = 0;
int d = 2;

List<int> fib(int n) {
  List<int> list = [];
  if (n == 1) {
    list = list + [a];
  } else if (n == 2) {
    list = list + [a];
    list = list + [b];
  } else {
    list = list + [a];
    list = list + [b];
    while (d < n) {
      c = a + b;
      list = list + [c];
      a = b;
      b = c;
      d = d + 1;
    }
  }
  return list;
}

void main() {
  List<int> list = fib(20);
  int i = 1;
  for (int foo in list) {
    print('$i: $foo');
    i = i + 1;
  }
}