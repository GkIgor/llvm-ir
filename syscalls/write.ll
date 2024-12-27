target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i64 @write(i32, ptr, i64)

@str = private unnamed_addr constant [19 x i8] c"Hello, World krl!\0A\00", align 1

define i32 @main(i32 noundef %0, ptr noundef %1){
  %str_ptr = getelementptr [19 x i8], ptr @str, i32 0, i32 0
  %cout = call i64 @write(i32 0, ptr %str_ptr, i64 20)

  ret i32 0
}
