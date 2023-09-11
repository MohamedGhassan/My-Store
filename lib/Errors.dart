///Errors I encountered in this project:
/// #1: error: LateInitializationError: Field '_minTextAdapt@883084504' has not been initialized.
///     reason1:It didn't work initialization in main so you can use flutter_screenutil library inside your code
///     reason2:minTextAdapt: controller.minTextAdapt ?? true
/// #2: error: Null check operator used on a null value
///     reason: When passing values into a function inside a parameter, you must write the function parentheses,