class Guest {
  final String guestName;
  final String bookedBy;
  final String status;
  final String notes;

  Guest(
      {required this.guestName,
      required this.bookedBy,
      required this.status,
      required this.notes});
  static List<Guest> guestList = [
    Guest(
        guestName: 'Aditi',
        bookedBy: 'Angelika Dm',
        status: 'Checked In',
        notes: 'From event team'),
    Guest(
        guestName: 'Aditi',
        bookedBy: 'Angelika Dm',
        status: 'Checked In',
        notes: 'From event team'),
    Guest(
        guestName: 'Aditi',
        bookedBy: 'Angelika Dm',
        status: 'Checked In',
        notes: 'From event team'),
    Guest(
        guestName: 'Aditi',
        bookedBy: 'Angelika Dm',
        status: 'Checked In',
        notes: 'From event team'),
    Guest(
        guestName: 'Aditi',
        bookedBy: 'Angelika Dm',
        status: 'Checked In',
        notes: 'From event team'),
    Guest(
        guestName: 'Aditi',
        bookedBy: 'Angelika Dm',
        status: 'Checked In',
        notes: 'From event team'),
  ];
}
