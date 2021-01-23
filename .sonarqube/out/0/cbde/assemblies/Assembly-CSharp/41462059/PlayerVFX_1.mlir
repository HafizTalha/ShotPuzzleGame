func @_oneshotpuzzle.PlayerVFX.Start$$() -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :82 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = constant unit loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :85 :23) // 1f (NumericLiteralExpression)
%1 = cbde.unknown : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :85 :28) // Not a variable of known type: dotAmount
%2 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :85 :23) // Binary expression on unsupported types 1f / dotAmount
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetComponents
%3 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :88 :12) // GetComponents() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: InitPulesEffectVariables
%4 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :91 :12) // InitPulesEffectVariables() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SpawnDots
%5 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :94 :12) // SpawnDots() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_oneshotpuzzle.PlayerVFX.GetComponents$$() -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :101 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :104 :30) // GetComponentInChildren<TrailRenderer>() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_oneshotpuzzle.PlayerVFX.InitPulesEffectVariables$$() -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :111 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :113 :26) // Identifier from another assembly: transform
%1 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :113 :26) // transform.localScale (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :114 :27) // Not a variable of known type: m_startSize
%3 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :114 :41) // Not a variable of known type: expandAmount
%4 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :114 :27) // Binary expression on unsupported types m_startSize * expandAmount
br ^1

^1: // ExitBlock
return

}
func @_oneshotpuzzle.PlayerVFX.SpawnDots$$() -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :123 :8) {
^entry :
br ^0

^0: // ForInitializerBlock
%0 = cbde.unknown : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :125 :41) // Not a variable of known type: dotAmount
%1 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :125 :30) // GameObject[dotAmount] (ArrayType)
%2 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :125 :26) // new GameObject[dotAmount] (ArrayCreationExpression)
%3 = constant 0 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :127 :25)
%4 = cbde.alloca i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :127 :21) // i
cbde.store %3, %4 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :127 :21)
br ^1

^1: // BinaryBranchBlock
%5 = cbde.load %4 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :127 :28)
%6 = cbde.unknown : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :127 :32) // Not a variable of known type: dotAmount
%7 = cmpi "slt", %5, %6 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :127 :28)
cond_br %7, ^2, ^3 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :127 :28)

^2: // SimpleBlock
// Entity from another assembly: Instantiate
%8 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :129 :46) // Not a variable of known type: dotPrefab
%9 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :129 :34) // Instantiate(dotPrefab) (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :130 :16) // Not a variable of known type: _dot
%12 = constant 0 : i1 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :130 :31) // false
%13 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :130 :16) // _dot.SetActive(false) (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :131 :16) // Not a variable of known type: m_dotsArray
%15 = cbde.load %4 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :131 :28)
%16 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :131 :16) // m_dotsArray[i] (ElementAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :131 :33) // Not a variable of known type: _dot
br ^4

^4: // SimpleBlock
%18 = cbde.load %4 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :127 :43)
%19 = constant 1 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :127 :43)
%20 = addi %18, %19 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :127 :43)
cbde.store %20, %4 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :127 :43)
br ^1

^3: // ExitBlock
return

}
func @_oneshotpuzzle.PlayerVFX.SetDotPosition$UnityEngine.Vector3.UnityEngine.Vector3$(none, none) -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :142 :8) {
^entry (%_startPos : none, %_endPos : none):
%0 = cbde.alloca none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :142 :35)
cbde.store %_startPos, %0 : memref<none> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :142 :35)
%1 = cbde.alloca none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :142 :53)
cbde.store %_endPos, %1 : memref<none> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :142 :53)
br ^0

^0: // ForInitializerBlock
%2 = constant 0 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :144 :25)
%3 = cbde.alloca i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :144 :21) // i
cbde.store %2, %3 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :144 :21)
br ^1

^1: // BinaryBranchBlock
%4 = cbde.load %3 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :144 :28)
%5 = cbde.unknown : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :144 :32) // Not a variable of known type: dotAmount
%6 = cmpi "slt", %4, %5 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :144 :28)
cond_br %6, ^2, ^3 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :144 :28)

^2: // SimpleBlock
%7 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :146 :34) // Not a variable of known type: m_dotsArray
%8 = cbde.load %3 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :146 :46)
%9 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :146 :34) // m_dotsArray[i] (ElementAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :146 :34) // m_dotsArray[i].transform (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :146 :34) // m_dotsArray[i].transform.position (SimpleMemberAccessExpression)
// Entity from another assembly: Vector2
%13 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :147 :50) // Not a variable of known type: startPos
%14 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :147 :60) // Not a variable of known type: endPos
%15 = cbde.load %3 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :147 :69)
%16 = constant 1 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :147 :73)
%17 = addi %15, %16 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :147 :69)
%18 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :147 :78) // Not a variable of known type: m_dotGap
%19 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :147 :68) // Binary expression on unsupported types (i + 1) * m_dotGap
%20 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :147 :37) // Vector2.Lerp(startPos, endPos, (i + 1) * m_dotGap) (InvocationExpression)
%22 = constant unit loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :149 :38) // 1f (NumericLiteralExpression)
%23 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :149 :43) // Not a variable of known type: followCurve
%24 = cbde.load %3 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :149 :64)
%25 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :149 :68) // Not a variable of known type: m_dotGap
%26 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :149 :64) // Binary expression on unsupported types i * m_dotGap
%27 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :149 :43) // followCurve.Evaluate(i * m_dotGap) (InvocationExpression)
%28 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :149 :38) // Binary expression on unsupported types 1f - followCurve.Evaluate(i * m_dotGap)
%29 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :149 :81) // Not a variable of known type: followSpeed
%30 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :149 :37) // Binary expression on unsupported types (1f - followCurve.Evaluate(i * m_dotGap)) * followSpeed
%32 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :152 :16) // Not a variable of known type: m_dotsArray
%33 = cbde.load %3 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :152 :28)
%34 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :152 :16) // m_dotsArray[i] (ElementAccessExpression)
%35 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :152 :16) // m_dotsArray[i].transform (SimpleMemberAccessExpression)
%36 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :152 :16) // m_dotsArray[i].transform.position (SimpleMemberAccessExpression)
// Entity from another assembly: Vector2
%37 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :152 :65) // Not a variable of known type: _dotPos
%38 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :152 :74) // Not a variable of known type: _targetPos
%39 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :152 :86) // Not a variable of known type: _smoothSpeed
// Entity from another assembly: Time
%40 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :152 :101) // Time.deltaTime (SimpleMemberAccessExpression)
%41 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :152 :86) // Binary expression on unsupported types _smoothSpeed * Time.deltaTime
%42 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :152 :52) // Vector2.Lerp(_dotPos, _targetPos, _smoothSpeed * Time.deltaTime) (InvocationExpression)
br ^4

^4: // SimpleBlock
%43 = cbde.load %3 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :144 :43)
%44 = constant 1 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :144 :43)
%45 = addi %43, %44 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :144 :43)
cbde.store %45, %3 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :144 :43)
br ^1

^3: // ExitBlock
return

}
func @_oneshotpuzzle.PlayerVFX.ChangeDotActiveState$bool$(i1) -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :161 :8) {
^entry (%_isActive : i1):
%0 = cbde.alloca i1 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :161 :41)
cbde.store %_isActive, %0 : memref<i1> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :161 :41)
br ^0

^0: // ForInitializerBlock
%1 = constant 0 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :163 :25)
%2 = cbde.alloca i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :163 :21) // i
cbde.store %1, %2 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :163 :21)
br ^1

^1: // BinaryBranchBlock
%3 = cbde.load %2 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :163 :28)
%4 = cbde.unknown : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :163 :32) // Not a variable of known type: dotAmount
%5 = cmpi "slt", %3, %4 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :163 :28)
cond_br %5, ^2, ^3 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :163 :28)

^2: // SimpleBlock
%6 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :165 :16) // Not a variable of known type: m_dotsArray
%7 = cbde.load %2 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :165 :28)
%8 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :165 :16) // m_dotsArray[i] (ElementAccessExpression)
%9 = cbde.load %0 : memref<i1> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :165 :41)
%10 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :165 :16) // m_dotsArray[i].SetActive(isActive) (InvocationExpression)
br ^4

^4: // SimpleBlock
%11 = cbde.load %2 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :163 :43)
%12 = constant 1 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :163 :43)
%13 = addi %11, %12 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :163 :43)
cbde.store %13, %2 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :163 :43)
br ^1

^3: // ExitBlock
return

}
func @_oneshotpuzzle.PlayerVFX.SetDotsStartPos$UnityEngine.Vector3$(none) -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :174 :8) {
^entry (%_pos : none):
%0 = cbde.alloca none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :174 :36)
cbde.store %_pos, %0 : memref<none> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :174 :36)
br ^0

^0: // ForInitializerBlock
%1 = constant 0 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :176 :25)
%2 = cbde.alloca i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :176 :21) // i
cbde.store %1, %2 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :176 :21)
br ^1

^1: // BinaryBranchBlock
%3 = cbde.load %2 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :176 :28)
%4 = cbde.unknown : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :176 :32) // Not a variable of known type: dotAmount
%5 = cmpi "slt", %3, %4 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :176 :28)
cond_br %5, ^2, ^3 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :176 :28)

^2: // SimpleBlock
%6 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :178 :16) // Not a variable of known type: m_dotsArray
%7 = cbde.load %2 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :178 :28)
%8 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :178 :16) // m_dotsArray[i] (ElementAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :178 :16) // m_dotsArray[i].transform (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :178 :16) // m_dotsArray[i].transform.position (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :178 :52) // Not a variable of known type: pos
br ^4

^4: // SimpleBlock
%12 = cbde.load %2 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :176 :43)
%13 = constant 1 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :176 :43)
%14 = addi %12, %13 : i32 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :176 :43)
cbde.store %14, %2 : memref<i32> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :176 :43)
br ^1

^3: // ExitBlock
return

}
func @_oneshotpuzzle.PlayerVFX.MakeBallPulse$$() -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :187 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :189 :12) // Not a variable of known type: m_scrollAmount
// Entity from another assembly: Time
%1 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :189 :30) // Time.deltaTime (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :189 :47) // Not a variable of known type: expandSpeed
%3 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :189 :30) // Binary expression on unsupported types Time.deltaTime * expandSpeed
%4 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :189 :12) // Binary expression on unsupported types m_scrollAmount += Time.deltaTime * expandSpeed
%5 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :191 :29) // Not a variable of known type: expandCurve
%6 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :191 :50) // Not a variable of known type: m_scrollAmount
%7 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :191 :29) // expandCurve.Evaluate(m_scrollAmount) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :193 :12) // Identifier from another assembly: transform
%10 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :193 :12) // transform.localScale (SimpleMemberAccessExpression)
// Entity from another assembly: Vector2
%11 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :193 :48) // Not a variable of known type: m_startSize
%12 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :193 :61) // Not a variable of known type: m_targetSize
%13 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :193 :75) // Not a variable of known type: _precent
%14 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :193 :35) // Vector2.Lerp(m_startSize, m_targetSize, _precent) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_oneshotpuzzle.PlayerVFX.ResetBallSize$$() -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :199 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :201 :12) // Identifier from another assembly: transform
%1 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :201 :12) // transform.localScale (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :201 :35) // Not a variable of known type: m_startSize
%3 = constant unit loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :202 :29) // 0f (NumericLiteralExpression)
br ^1

^1: // ExitBlock
return

}
func @_oneshotpuzzle.PlayerVFX.ChangeTrailState$bool.float$(i1, none) -> () loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :211 :8) {
^entry (%_isEmitting : i1, %_time : none):
%0 = cbde.alloca i1 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :211 :37)
cbde.store %_isEmitting, %0 : memref<i1> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :211 :37)
%1 = cbde.alloca none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :211 :54)
cbde.store %_time, %1 : memref<none> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :211 :54)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :213 :12) // Not a variable of known type: m_trailRenderer
%3 = cbde.unknown : i1 loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :213 :12) // m_trailRenderer.emitting (SimpleMemberAccessExpression)
%4 = cbde.load %0 : memref<i1> loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :213 :39)
%5 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :214 :12) // Not a variable of known type: m_trailRenderer
%6 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :214 :12) // m_trailRenderer.time (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Administrator\\Documents\\ShotPuzzleGame\\Assets\\Scripts\\Player\\PlayerVFX.cs" :214 :35) // Not a variable of known type: time
br ^1

^1: // ExitBlock
return

}
