double getTotalBayar(int purchase, bool member) {
  // MInimal belanja Rp100.000
  const int MIN_PURCHASE = 100000;
  // Diskon belanja 10%
  const int SHOPPING_DISCOUNT = 10;
  // Diskon member 5%
  const int MEMBER_DISCOUNT = 5;
  // Maksimal potongan Rp25.000
  const int MAX_CASHBACK = 25000;

  int discount = 0;

  // BR-01 Mendapat diskon 10% jika belanja lebih dari Rp100.000
  if (purchase >= MIN_PURCHASE) {
    discount = SHOPPING_DISCOUNT;
    // BR-02 Mendapatkan diskon tambahan 5% jika memenuhi syarat pertama dan sudah terdaftar member
    if (member) {
      discount += MEMBER_DISCOUNT;
    }
  }

  double total_cashback = discount / 100 * purchase;

  // BR-03 Maksimal potongan diskon sebesar Rp25.000
  if (total_cashback >= MAX_CASHBACK) {
    total_cashback = 25000;
  }

  return purchase - total_cashback;
}

void main() {
  double result = 0;

  // Skenario 1
  // Total Belanjaan Rp80.000
  const int TOTAL_PURCHASE_1 = 80000;
  // Status belum member
  const bool MEMBER_STATUS_1 = false;
  // Hasil Ekspetasi Rp80.000
  const int EXPECTED_TOTAL_PURCHASE_1 = 80000;

  result = getTotalBayar(TOTAL_PURCHASE_1, MEMBER_STATUS_1);
  if (result == EXPECTED_TOTAL_PURCHASE_1) {
    print("\nSkenario pertama SUKSES!!! dengan hasil Rp$result \n");
  } else {
    print(
      "\nSkenario pertama masih belum berjalan semestinya, cek kembali data atau fungsi yang berjalan!!! \n",
    );
  }

  // Skenario 2
  // Total Belanjaan Rp150.000
  const int TOTAL_PURCHASE_2 = 150000;
  // Status belum member
  const bool MEMBER_STATUS_2 = false;
  // Hasil Ekspetasi Rp135.000
  const int EXPECTED_TOTAL_PURCHASE_2 = 135000;

  result = getTotalBayar(TOTAL_PURCHASE_2, MEMBER_STATUS_2);
  if (result == EXPECTED_TOTAL_PURCHASE_2) {
    print("Skenario kedua SUKSES!!! dengan hasil Rp$result \n");
  } else {
    print(
      "Skenario kedua masih belum berjalan semestinya, cek kembali data atau fungsi yang berjalan!!! \n",
    );
  }

  // Skenario 3
  // Total Belanjaan Rp150.000
  const int TOTAL_PURCHASE_3 = 150000;
  // Status belum member
  const bool MEMBER_STATUS_3 = true;
  // Hasil Ekspetasi Rp127.500
  const int EXPECTED_TOTAL_PURCHASE_3 = 127500;

  result = getTotalBayar(TOTAL_PURCHASE_3, MEMBER_STATUS_3);
  if (result == EXPECTED_TOTAL_PURCHASE_3) {
    print("Skenario ketiga SUKSES!!! dengan hasil Rp$result \n");
  } else {
    print(
      "Skenario ketiga masih belum berjalan semestinya, cek kembali data atau fungsi yang berjalan!!! \n",
    );
  }

  // Skenario 4
  // Total Belanjaan Rp300.000
  const int TOTAL_PURCHASE_4 = 300000;
  // Status belum member
  const bool MEMBER_STATUS_4 = true;
  // Hasil Ekspetasi Rp275.000
  const int EXPECTED_TOTAL_PURCHASE_4 = 275000;

  result = getTotalBayar(TOTAL_PURCHASE_4, MEMBER_STATUS_4);
  if (result == EXPECTED_TOTAL_PURCHASE_4) {
    print("Skenario keempat SUKSES!!! dengan hasil Rp$result \n");
  } else {
    print(
      "Skenario keempat masih belum berjalan semestinya, cek kembali data atau fungsi yang berjalan!!! \n",
    );
  }
}
