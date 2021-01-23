func @_oneshotpuzzle.InputManager.Update$$() -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\InputManager.cs" :14 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteInputData
%0 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\InputManager.cs" :17 :12) // WriteInputData() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_oneshotpuzzle.InputManager.WriteInputData$$() -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\InputManager.cs" :24 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\InputManager.cs" :26 :12) // Not a variable of known type: inputData
%1 = cbde.unknown : i1 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\InputManager.cs" :26 :12) // inputData.isPressed (SimpleMemberAccessExpression)
// Entity from another assembly: Input
%2 = constant 0 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\InputManager.cs" :26 :59)
%3 = cbde.unknown : i1 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\InputManager.cs" :26 :34) // Input.GetMouseButtonDown(0) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\InputManager.cs" :27 :12) // Not a variable of known type: inputData
%5 = cbde.unknown : i1 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\InputManager.cs" :27 :12) // inputData.isHeld (SimpleMemberAccessExpression)
// Entity from another assembly: Input
%6 = constant 0 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\InputManager.cs" :27 :52)
%7 = cbde.unknown : i1 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\InputManager.cs" :27 :31) // Input.GetMouseButton(0) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\InputManager.cs" :28 :12) // Not a variable of known type: inputData
%9 = cbde.unknown : i1 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\InputManager.cs" :28 :12) // inputData.isReleased (SimpleMemberAccessExpression)
// Entity from another assembly: Input
%10 = constant 0 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\InputManager.cs" :28 :58)
%11 = cbde.unknown : i1 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\InputManager.cs" :28 :35) // Input.GetMouseButtonUp(0) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
