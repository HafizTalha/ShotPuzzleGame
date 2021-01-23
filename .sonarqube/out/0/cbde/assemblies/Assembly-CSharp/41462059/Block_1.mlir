func @_oneshotpuzzle.Block.OnCollisionEnter2D$UnityEngine.Collision2D$(none) -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Blocks\\Block.cs" :20 :8) {
^entry (%_collision : none):
%0 = cbde.alloca none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Blocks\\Block.cs" :20 :40)
cbde.store %_collision, %0 : memref<none> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Blocks\\Block.cs" :20 :40)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Blocks\\Block.cs" :23 :16) // Not a variable of known type: OnBeingHit
%2 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Blocks\\Block.cs" :23 :30) // null (NullLiteralExpression)
%3 = cbde.unknown : i1  loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Blocks\\Block.cs" :23 :16) // comparison of unknown type: OnBeingHit != null
cond_br %3, ^1, ^2 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Blocks\\Block.cs" :23 :16)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Blocks\\Block.cs" :25 :16) // Not a variable of known type: OnBeingHit
%5 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Blocks\\Block.cs" :25 :16) // OnBeingHit() (InvocationExpression)
br ^2

^2: // SimpleBlock
%6 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Blocks\\Block.cs" :29 :12) // Identifier from another assembly: gameObject
%7 = constant 0 : i1 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Blocks\\Block.cs" :29 :33) // false
%8 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Blocks\\Block.cs" :29 :12) // gameObject.SetActive(false) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
