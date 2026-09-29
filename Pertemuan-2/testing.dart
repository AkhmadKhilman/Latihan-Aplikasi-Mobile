double getTotalBayar(int belanja, bool member) {
  int totalDiskon = 0;
  double persenDiskon = 0;
  double potongan = 0;
  double totalBayar = 0;

  if (belanja >= 100000) {
    totalDiskon = 10;
    if (member) {
      totalDiskon += 5;
    }
  }

  persenDiskon = totalDiskon / 100;
  potongan = belanja * persenDiskon;

  totalBayar = belanja - potongan;

  if (potongan > 25000) {
    potongan = 25000;
    totalBayar = belanja - potongan;
  }

  return totalBayar;
}

void main() {
  print(getTotalBayar(80000, false));
  print(getTotalBayar(150000, false));
  print(getTotalBayar(150000, true));
  print(getTotalBayar(300000, true));
}
