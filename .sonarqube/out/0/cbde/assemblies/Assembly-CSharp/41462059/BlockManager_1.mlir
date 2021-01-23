func @_oneshotpuzzle.BlockManager.Start$$() -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\BlockManager.cs" :12 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\BlockManager.cs" :14 :25) // FindObjectsOfType<Block>() (InvocationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\BlockManager.cs" :16 :27) // Not a variable of known type: blockArray
%2 = cbde.unknown : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\BlockManager.cs" :16 :27) // blockArray.Length (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SubscribeToEvent
%3 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\BlockManager.cs" :18 :12) // SubscribeToEvent() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function SubscribeToEvent(), it contains poisonous unsupported syntaxes

func @_oneshotpuzzle.BlockManager.DecreaseBlockCount$$() -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\BlockManager.cs" :30 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\BlockManager.cs" :32 :12) // Not a variable of known type: m_blockCount
%1 = cbde.unknown : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\BlockManager.cs" :32 :12) // Inc/Decrement of field or property m_blockCount
%2 = cbde.unknown : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\BlockManager.cs" :34 :16) // Not a variable of known type: m_blockCount
%3 = constant 0 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\BlockManager.cs" :34 :32)
%4 = cmpi "eq", %2, %3 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\BlockManager.cs" :34 :16)
cond_br %4, ^1, ^2 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\BlockManager.cs" :34 :16)

^1: // SimpleBlock
// Entity from another assembly: StartCoroutine
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WaitBeforeLoadingNextScene
%5 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\BlockManager.cs" :36 :31) // WaitBeforeLoadingNextScene() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Manager\\BlockManager.cs" :36 :16) // StartCoroutine(WaitBeforeLoadingNextScene()) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
// Skipping function WaitBeforeLoadingNextScene(), it contains poisonous unsupported syntaxes

// Skipping function ResetAllBlocks(), it contains poisonous unsupported syntaxes

