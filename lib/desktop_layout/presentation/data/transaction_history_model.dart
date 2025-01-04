class TransactionHistoryModel{
  final String title;
  final String amount;
  final String date;
  final bool? isWithdrawl;

 const TransactionHistoryModel({required this.title,
    required this.amount,
    required this.date,
    this.isWithdrawl=false});

}