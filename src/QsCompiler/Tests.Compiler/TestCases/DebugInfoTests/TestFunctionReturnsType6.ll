define internal i64 @Microsoft__Quantum__Testing__QirDebugInfo__IntToInt__body(i64 %varX) !dbg !7 {
entry:
  tail call void @llvm.dbg.value(metadata i64 %varX, metadata !12, metadata !DIExpression()), !dbg !13
  %0 = add i64 %varX, 1, !dbg !14
  ret i64 %0, !dbg !14
}
