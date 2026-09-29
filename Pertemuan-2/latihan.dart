// lebih clean dan jelas
// Reutrn langsung mengembalikan data pada function jika sudah ditemukan tanpa memperhatikan kondisi lainnya
String checkScoreKursus(double score) {
  if (score >= 85) {
    return "Sangat Baik";
  }

  if (score >= 70) {
    return "Baik";
  }

  if (score >= 60) {
    return "Cukup";
  }

  return "Kurang";
}

// Tanpa Else
// String checkScoreKursus(double score) {
//   if (score >= 85) {
//     return "Sangat Baik";
//   } else if (score >= 70) {
//     return "Baik";
//   } else if (score >= 60) {
//     return "Cukup";
//   }

//   return "Kurang";
// }

// Normal
// String checkScoreKursus(double score) {
//   if (score >= 85) {
//     return "Sangat Baik";
//   } else if (score >= 70) {
//     return "Baik";
//   } else if (score >= 60) {
//     return "Cukup";
//   } else {
//     return "Kurang";
//   }
// }

int getDiskon(double harga, bool member) {
  int diskon = 0;

  if (harga > 10000) {
    diskon = 100;
  } else if (harga > 5000) {
    diskon = 50;
  }

  if (member) {
    diskon += 10;
  }

  return diskon;
}

// Function error karena memeriksa kondisi yang sudah ditemukan, jadi isi variablenya tertimpa dan tidak sesuai dengan fungsi seharusnya
// int getDiskon(double harga, bool member) {
//   int diskon = 0;

//   if (harga > 10000) {
//     diskon = 100;
//   }

//   if (harga > 5000) {
//     diskon = 50;
//   }

//   if (member) {
//     diskon += 10;
//   }

//   return diskon;
// }

String getStatus(int umur) {
  // Normal percabangan
  // if (umur >= 17) {
  //   return "Dewasa";
  // }

  // return "Anak-anak";

  // Lebih ringkas namun khusus jika hanya ada 2 kondisi
  return umur >= 17 ? "dewasa" : "anak-anak";
}

void cetakStatusKuliah(String hari) {
  switch (hari) {
    case "Sabtu":
      print("Jam ganti");
    case "minggu":
      print("Hari libur");
    default:
      print("Masuk kuliah");
  }
}

void cetakSatusGrade(String grade) {
  
}

void main() {
  print(checkScoreKursus(59.4));

  print(getDiskon(10001, true));

  print(getStatus(18));

  cetakStatusKuliah("Senin");
}
