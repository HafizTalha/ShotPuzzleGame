func @_oneshotpuzzle.PlayerController.Start$$() -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :80 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetComponents
%0 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :83 :12) // GetComponents() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_oneshotpuzzle.PlayerController.GetComponents$$() -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :91 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :93 :28) // GetComponent<Rigidbody2D>() (InvocationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :94 :26) // GetComponent<PlayerVFX>() (InvocationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :96 :20) // FindObjectOfType<Camera>() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_oneshotpuzzle.PlayerController.Update$$() -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :103 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: HandleMovements
%0 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :106 :12) // HandleMovements() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function HandleMovements(), it contains poisonous unsupported syntaxes

func @_oneshotpuzzle.PlayerController.CalculateDirection$$() -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :174 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :176 :21) // Not a variable of known type: m_ReleasePos
%1 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :176 :36) // Not a variable of known type: m_ClickedPos
%2 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :176 :21) // Binary expression on unsupported types m_ReleasePos - m_ClickedPos
%3 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :176 :20) // (m_ReleasePos - m_ClickedPos).normalized (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
func @_oneshotpuzzle.PlayerController.MovePlayerInDirection$$() -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :179 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :181 :12) // Not a variable of known type: m_rigidbody2D
%1 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :181 :12) // m_rigidbody2D.velocity (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :181 :37) // Not a variable of known type: m_dir
%3 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :181 :45) // Not a variable of known type: moveSpeed
%4 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :181 :37) // Binary expression on unsupported types m_dir * moveSpeed
br ^1

^1: // ExitBlock
return

}
func @_oneshotpuzzle.PlayerController.ResetPlayerPosition$$() -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :184 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :186 :12) // Identifier from another assembly: transform
%1 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :186 :12) // transform.position (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :186 :33) // Not a variable of known type: m_ClickedPos
%3 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :187 :12) // Not a variable of known type: m_rigidbody2D
%4 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :187 :12) // m_rigidbody2D.velocity (SimpleMemberAccessExpression)
// Entity from another assembly: Vector3
%5 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :187 :37) // Vector3.zero (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
func @_oneshotpuzzle.PlayerController.OnCollisionEnter2D$UnityEngine.Collision2D$(none) -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :191 :8) {
^entry (%_other : none):
%0 = cbde.alloca none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :191 :40)
cbde.store %_other, %0 : memref<none> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :191 :40)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :193 :16) // Not a variable of known type: other
%2 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :193 :16) // other.gameObject (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :193 :44) // "Block" (StringLiteralExpression)
%4 = cbde.unknown : i1 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :193 :16) // other.gameObject.CompareTag("Block") (InvocationExpression)
cond_br %4, ^1, ^2 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :193 :16)

^1: // SimpleBlock
%5 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :195 :38) // Not a variable of known type: other
%6 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :195 :38) // other.contacts (SimpleMemberAccessExpression)
%7 = constant 0 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :195 :53)
%8 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :195 :38) // other.contacts[0] (ElementAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :195 :38) // other.contacts[0].normal (SimpleMemberAccessExpression)
// Entity from another assembly: Vector2
%11 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :197 :40) // Not a variable of known type: m_rigidbody2D
%12 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :197 :40) // m_rigidbody2D.velocity (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :197 :64) // Not a variable of known type: _wallNormal
%14 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :197 :24) // Vector2.Reflect(m_rigidbody2D.velocity, _wallNormal) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :197 :24) // Vector2.Reflect(m_rigidbody2D.velocity, _wallNormal).normalized (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :199 :16) // Not a variable of known type: m_rigidbody2D
%17 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :199 :16) // m_rigidbody2D.velocity (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :199 :41) // Not a variable of known type: m_dir
%19 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :199 :49) // Not a variable of known type: moveSpeed
%20 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :199 :41) // Binary expression on unsupported types m_dir * moveSpeed
%21 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :201 :16) // Not a variable of known type: hitSound
%22 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :201 :16) // hitSound.Play() (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_oneshotpuzzle.PlayerController.CheckIfhitBlock$$() -> i1 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :205 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :207 :23) // Not a variable of known type: m_Cam
// Entity from another assembly: Input
%1 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :207 :46) // Input.mousePosition (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :207 :23) // m_Cam.ScreenPointToRay(Input.mousePosition) (InvocationExpression)
// Entity from another assembly: Physics2D
%4 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :209 :55) // Not a variable of known type: _ray
%5 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :209 :55) // _ray.origin (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :209 :68) // Not a variable of known type: _ray
%7 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :209 :68) // _ray.direction (SimpleMemberAccessExpression)
%8 = constant unit loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :209 :84) // 100f (NumericLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :209 :90) // Not a variable of known type: layerToCollideWith
%10 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :209 :37) // Physics2D.Raycast(_ray.origin, _ray.direction, 100f, layerToCollideWith) (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :211 :19) // Not a variable of known type: _hitBlock
%13 = cbde.unknown : i1 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :211 :19) // Dummy variable because type of %12 is incompatible
return %13 : i1 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerController.cs" :211 :12)

^1: // ExitBlock
cbde.unreachable

}
