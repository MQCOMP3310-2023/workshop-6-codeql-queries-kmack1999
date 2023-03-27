/**
 * @name Comp3310 workshop 6 print loop
 * @kind problem
 * @problem.severity warning
 * @id java/example/print-loop
 */

import java

from LoopStmt loop,  MethodAccess call, Method method
where
  loop.getAChild*() = call.getEnclosingStmt() and  //works now
  call.getMethod() = method and
  method.hasName("Scanner") and
  method.getDeclaringType().hasQualifiedName("java.io",  "nextLine")
select call, "Calls to scanner.nextLine."
