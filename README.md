# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code and its solution. The `bug.dart` file contains code that fetches data from an API but doesn't properly handle potential exceptions. The `bugSolution.dart` file shows how to fix this issue by improving exception handling.

## Bug
The original code lacks comprehensive error handling. While it catches exceptions, it immediately rethrows them without providing any further context or logging. This makes debugging difficult because the original error message might be lost.

## Solution
The solution involves enhancing exception handling. It logs detailed error information and provides a more informative error message to the user, instead of simply rethrowing the exception.
