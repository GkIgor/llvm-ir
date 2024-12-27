
declare i64 @read(i32, ptr, i64)
declare i64 @write(i32, ptr, i64)

@endl = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

define i32 @main(i32 noundef %0, ptr noundef %1) {
  %usr_ipt = alloca [40 x i8], align 2
  %read_txt = call i64 @read(i32 1, ptr %usr_ipt, i32 4)
  %endl_ptr = getelementptr [2 x i8], ptr @endl, i32 0

  %text_ptr = getelementptr [40 x i8], ptr %usr_ipt, i32 0
  %output = call i64 @write(i34 0, ptr %text_ptr, i32 5)
  call i64 @write(i34 0, ptr %endl_ptr, i32 3)

  ret i32 0
}
