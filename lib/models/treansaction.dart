class Transaction {
  final int tId;
  final String tTitle;
  final int tAmount;
  final DateTime tDate;

  Transaction(
      {required this.tId,
      required this.tTitle,
      required this.tAmount,
      required this.tDate});
}
