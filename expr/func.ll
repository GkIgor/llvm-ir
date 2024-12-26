; ModuleID = 'func.ll'
source_filename = "main.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @main(i32 noundef %0, i32* noundef %1) {
entry:
  %file_descriptor = alloca i32, align 1
  %syscall_number = alloca i32, align 1
  %str_input = alloca [4096 x i8], align 2
  store i32 0, i32* %file_descriptor, align 1
  store i32 0, i32* %syscall_number, align 1
  store [4096 x i8] zeroinitializer, [ 4096 x i8 ]* %str_input, align 2

  %len_output = alloca i32, align 2
  ;store i32 4096, i32* %str_input, align 2

  %result = call i64 @syscall(i32* %syscall_number, i32* %file_descriptor)

  ret i32 0
}

declare i64 @syscall(i32, ...)
