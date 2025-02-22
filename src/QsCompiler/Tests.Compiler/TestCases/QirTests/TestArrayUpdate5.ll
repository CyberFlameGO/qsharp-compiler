define internal %Array* @Microsoft__Quantum__Testing__QIR__TestArrayUpdate5__body(i1 %cond, %Array* %array) {
entry:
  %0 = call i64 @__quantum__rt__array_get_size_1d(%Array* %array)
  %1 = sub i64 %0, 1
  br label %header__1

header__1:                                        ; preds = %exiting__1, %entry
  %2 = phi i64 [ 0, %entry ], [ %8, %exiting__1 ]
  %3 = icmp sle i64 %2, %1
  br i1 %3, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %4 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %array, i64 %2)
  %5 = bitcast i8* %4 to { double, double }**
  %6 = load { double, double }*, { double, double }** %5, align 8
  %7 = bitcast { double, double }* %6 to %Tuple*
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %7, i32 1)
  br label %exiting__1

exiting__1:                                       ; preds = %body__1
  %8 = add i64 %2, 1
  br label %header__1

exit__1:                                          ; preds = %header__1
  call void @__quantum__rt__array_update_alias_count(%Array* %array, i32 1)
  %item = call { double, double }* @Microsoft__Quantum__Testing__QIR__Complex__body(double 0.000000e+00, double 0.000000e+00)
  %9 = bitcast { double, double }* %item to %Tuple*
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %9, i32 1)
  %arr = alloca %Array*, align 8
  store %Array* %array, %Array** %arr, align 8
  %10 = sub i64 %0, 1
  br label %header__2

header__2:                                        ; preds = %exiting__2, %exit__1
  %11 = phi i64 [ 0, %exit__1 ], [ %17, %exiting__2 ]
  %12 = icmp sle i64 %11, %10
  br i1 %12, label %body__2, label %exit__2

body__2:                                          ; preds = %header__2
  %13 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %array, i64 %11)
  %14 = bitcast i8* %13 to { double, double }**
  %15 = load { double, double }*, { double, double }** %14, align 8
  %16 = bitcast { double, double }* %15 to %Tuple*
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %16, i32 1)
  br label %exiting__2

exiting__2:                                       ; preds = %body__2
  %17 = add i64 %11, 1
  br label %header__2

exit__2:                                          ; preds = %header__2
  call void @__quantum__rt__array_update_alias_count(%Array* %array, i32 1)
  %18 = sub i64 %0, 1
  br label %header__3

header__3:                                        ; preds = %exiting__3, %exit__2
  %19 = phi i64 [ 0, %exit__2 ], [ %25, %exiting__3 ]
  %20 = icmp sle i64 %19, %18
  br i1 %20, label %body__3, label %exit__3

body__3:                                          ; preds = %header__3
  %21 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %array, i64 %19)
  %22 = bitcast i8* %21 to { double, double }**
  %23 = load { double, double }*, { double, double }** %22, align 8
  %24 = bitcast { double, double }* %23 to %Tuple*
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %24, i32 1)
  br label %exiting__3

exiting__3:                                       ; preds = %body__3
  %25 = add i64 %19, 1
  br label %header__3

exit__3:                                          ; preds = %header__3
  call void @__quantum__rt__array_update_reference_count(%Array* %array, i32 1)
  %26 = sub i64 %0, 1
  br label %preheader__1

preheader__1:                                     ; preds = %exit__3
  br label %header__4

header__4:                                        ; preds = %exiting__4, %preheader__1
  %i = phi i64 [ 0, %preheader__1 ], [ %47, %exiting__4 ]
  %27 = icmp sle i64 %i, %26
  %28 = icmp sge i64 %i, %26
  %29 = select i1 true, i1 %27, i1 %28
  br i1 %29, label %body__4, label %exit__4

body__4:                                          ; preds = %header__4
  %30 = load %Array*, %Array** %arr, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %30, i32 -1)
  %31 = call %Array* @__quantum__rt__array_copy(%Array* %30, i1 false)
  %32 = srem i64 %i, 2
  %33 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %30, i64 %32)
  %34 = bitcast i8* %33 to { double, double }**
  %35 = load { double, double }*, { double, double }** %34, align 8
  %36 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %31, i64 %i)
  %37 = bitcast i8* %36 to { double, double }**
  %38 = bitcast { double, double }* %35 to %Tuple*
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %38, i32 1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %38, i32 1)
  %39 = load { double, double }*, { double, double }** %37, align 8
  %40 = bitcast { double, double }* %39 to %Tuple*
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %40, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %40, i32 -1)
  store { double, double }* %35, { double, double }** %37, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %31, i32 1)
  store %Array* %31, %Array** %arr, align 8
  br i1 %cond, label %then0__1, label %continue__1

then0__1:                                         ; preds = %body__4
  call void @__quantum__rt__array_update_alias_count(%Array* %31, i32 -1)
  %41 = call %Array* @__quantum__rt__array_copy(%Array* %31, i1 false)
  %42 = srem i64 %i, 2
  %43 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %41, i64 %42)
  %44 = bitcast i8* %43 to { double, double }**
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %9, i32 1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %9, i32 1)
  %45 = load { double, double }*, { double, double }** %44, align 8
  %46 = bitcast { double, double }* %45 to %Tuple*
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %46, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %46, i32 -1)
  store { double, double }* %item, { double, double }** %44, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %41, i32 1)
  store %Array* %41, %Array** %arr, align 8
  call void @__quantum__rt__array_update_reference_count(%Array* %31, i32 -1)
  br label %continue__1

continue__1:                                      ; preds = %then0__1, %body__4
  call void @__quantum__rt__array_update_reference_count(%Array* %30, i32 -1)
  br label %exiting__4

exiting__4:                                       ; preds = %continue__1
  %47 = add i64 %i, 2
  br label %header__4

exit__4:                                          ; preds = %header__4
  %48 = load %Array*, %Array** %arr, align 8
  %49 = sub i64 %0, 1
  br label %header__5

header__5:                                        ; preds = %exiting__5, %exit__4
  %50 = phi i64 [ 0, %exit__4 ], [ %56, %exiting__5 ]
  %51 = icmp sle i64 %50, %49
  br i1 %51, label %body__5, label %exit__5

body__5:                                          ; preds = %header__5
  %52 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %array, i64 %50)
  %53 = bitcast i8* %52 to { double, double }**
  %54 = load { double, double }*, { double, double }** %53, align 8
  %55 = bitcast { double, double }* %54 to %Tuple*
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %55, i32 -1)
  br label %exiting__5

exiting__5:                                       ; preds = %body__5
  %56 = add i64 %50, 1
  br label %header__5

exit__5:                                          ; preds = %header__5
  call void @__quantum__rt__array_update_alias_count(%Array* %array, i32 -1)
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %9, i32 -1)
  %57 = call i64 @__quantum__rt__array_get_size_1d(%Array* %48)
  %58 = sub i64 %57, 1
  br label %header__6

header__6:                                        ; preds = %exiting__6, %exit__5
  %59 = phi i64 [ 0, %exit__5 ], [ %65, %exiting__6 ]
  %60 = icmp sle i64 %59, %58
  br i1 %60, label %body__6, label %exit__6

body__6:                                          ; preds = %header__6
  %61 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %48, i64 %59)
  %62 = bitcast i8* %61 to { double, double }**
  %63 = load { double, double }*, { double, double }** %62, align 8
  %64 = bitcast { double, double }* %63 to %Tuple*
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %64, i32 -1)
  br label %exiting__6

exiting__6:                                       ; preds = %body__6
  %65 = add i64 %59, 1
  br label %header__6

exit__6:                                          ; preds = %header__6
  call void @__quantum__rt__array_update_alias_count(%Array* %48, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %9, i32 -1)
  ret %Array* %48
}
