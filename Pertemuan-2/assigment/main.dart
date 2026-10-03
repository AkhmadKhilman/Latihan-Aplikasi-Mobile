enum bookStatus { available, notAvailable }

class Book {
  String title;
  bookStatus status;

  Book(this.title, this.status);
}

class Member {
  String name;
  List<Book> borrowedBooks;
  int borrowDays;
  int returnDays;

  Member(this.name, this.borrowedBooks, this.borrowDays, this.returnDays);
}

bool getAvailableBorrow(Member member) {
  return member.borrowedBooks.length < 3;
}

bool getAvailability(Member member, Book book) {
  return book.status == bookStatus.available;
}

int getLateDays(int borrowDays, int returnDays) {
  int lateDays = returnDays - borrowDays;
  return lateDays > 0 ? lateDays : 0;
}

int getFine(int lateDays) {
  const int FINE_PER_DAY = 1000;
  return lateDays * FINE_PER_DAY;
}

void checkBorrowingBook(Member member, Book book) {
  if (!getAvailableBorrow(member)) {
    print('${member.name} tidak dapat meinjam buku lebih dari 3 buku.');
    return;
  }

  if (!getAvailability(member, book)) {
    print('${book.title} tidak dapat dipinjam karena tidak tersedia.');
    return;
  }

  book.status = bookStatus.notAvailable;
  member.borrowedBooks.add(book);
}

void checkReturnBook(Member member, Book book) {
  final int lateDays = getLateDays(member.borrowDays, member.returnDays);
  if (lateDays > 0) {
    final int fine = getFine(lateDays);
    print(
      '${member.name} terlambat mengembalikan buku ${book.title} selama $lateDays hari. Denda: Rp $fine',
    );
  } else {
    print('${member.name} mengembalikan buku ${book.title} tepat waktu.');
  }
  book.status = bookStatus.available;
  member.borrowedBooks.remove(book);
}

void main() {
  //data buku
  List<Book> books = [
    Book('Dasar-dasar dart', bookStatus.available),
    Book('It Governeance', bookStatus.available),
    Book('Cloud Computing', bookStatus.available),
    Book('Logika dan Algoritma', bookStatus.available),
    Book('Technopreneurship', bookStatus.available),
  ];

  List<Member> members = [
    Member('Danu', [books[0], books[1]], 7, 7),
    Member('Tirta', [books[0]], 3, 5),
    Member('Cahyo', [books[0], books[1], books[2], books[3]], 5, 5),
    Member('Kurniawan', [books[0], books[1]], 3, 0),
    Member('Eka', [books[0], books[1], books[2]], 3, 3),
  ];
}
