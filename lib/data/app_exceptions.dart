class AppExceptions implements Exception {
  String title;
  String msg;

  AppExceptions({required this.title, required this.msg});

  String toErrorMsg() {
    return "$title = $msg";
  }
}

class UnAuthorisedException extends AppExceptions{
  UnAuthorisedException({required String errorMsg}) : super(title: "UnAuthorised", msg: errorMsg);
}

class FetchDataException extends AppExceptions{
FetchDataException({required String errorMsg}) : super(title: "Network Error", msg: errorMsg);
}

class BadRequestException extends AppExceptions{
  BadRequestException({required String errorMsg}) : super(title: "Bad Request", msg: errorMsg);
}

class InvalidInputException extends AppExceptions{
  InvalidInputException({required String errorMsg}) : super(title: "Invalid Input", msg: errorMsg);
}