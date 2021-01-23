func @_oneshotpuzzle.ScenesManager.LoadNextScene$$() -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\ScenesManager.cs" :15 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Entity from another assembly: SceneManager
%0 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\ScenesManager.cs" :17 :16) // SceneManager.GetActiveScene() (InvocationExpression)
%1 = cbde.unknown : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\ScenesManager.cs" :17 :16) // SceneManager.GetActiveScene().buildIndex (SimpleMemberAccessExpression)
%2 = constant 4 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\ScenesManager.cs" :17 :59)
%3 = cmpi "slt", %1, %2 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\ScenesManager.cs" :17 :16)
cond_br %3, ^1, ^2 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\ScenesManager.cs" :17 :16)

^1: // SimpleBlock
// Entity from another assembly: SceneManager
// Entity from another assembly: SceneManager
%4 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\ScenesManager.cs" :19 :39) // SceneManager.GetActiveScene() (InvocationExpression)
%5 = cbde.unknown : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\ScenesManager.cs" :19 :39) // SceneManager.GetActiveScene().buildIndex (SimpleMemberAccessExpression)
%6 = constant 1 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\ScenesManager.cs" :19 :82)
%7 = addi %5, %6 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\ScenesManager.cs" :19 :39)
%8 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\ScenesManager.cs" :19 :16) // SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
