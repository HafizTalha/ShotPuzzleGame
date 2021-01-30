�
NC:\Users\Administrator\Documents\ShotPuzzleGame\Assets\Scripts\Blocks\Block.cs
	namespace 	

 
{ 
public		 

class		 
Block		 
:		 

{

 
public 
event 
Action 

OnBeingHit &
;& '
private 
void 
OnCollisionEnter2D '
(' (
Collision2D( 3
	collision4 =
)= >
{ 	
if 
( 

OnBeingHit 
!= 
null "
)" #
{ 

OnBeingHit 
( 
) 
; 
} 

gameObject 
. 
	SetActive  
(  !
false! &
)& '
;' (
}   	
}!! 
}"" �
VC:\Users\Administrator\Documents\ShotPuzzleGame\Assets\Scripts\Manager\BlockManager.cs
	namespace 	

 
{ 
public 

class 
BlockManager 
: 

{ 
public		 
Block		 
[		 
]		 

blockArray		 !
;		! "
[ 	
SerializeField	 
] 
private  
int! $
m_blockCount% 1
;1 2
private
void
Start
(
)
{ 	

blockArray 
= 
FindObjectsOfType *
<* +
Block+ 0
>0 1
(1 2
)2 3
;3 4
m_blockCount 
= 

blockArray %
.% &
Length& ,
;, -
SubscribeToEvent 
( 
) 
; 
} 	
void 
SubscribeToEvent
( 
) 
{ 	
foreach 
( 
Block 
block  
in! #

blockArray$ .
). /
{ 
block 
. 

OnBeingHit  
+=! #
DecreaseBlockCount$ 6
;6 7
} 
FindObjectOfType 
< 
PlayerController -
>- .
(. /
)/ 0
.0 1
OnMouseClick1 =
+=> @
ResetAllBlocksA O
;O P
} 	
private 
void 
DecreaseBlockCount '
(' (
)( )
{   	
m_blockCount!! 
--!! 
;!! 
if## 
(## 
m_blockCount## 
==## 
$num##  !
)##! "
{$$ 
StartCoroutine%% 
(%% &
WaitBeforeLoadingNextScene%% 9
(%%9 :
)%%: ;
)%%; <
;%%< =
}&& 
}(( 	
IEnumerator** &
WaitBeforeLoadingNextScene** .
(**. /
)**/ 0
{++ 	
yield,, 
return,, 
new,, 
WaitForSeconds,, +
(,,+ ,
$num,,, .
),,. /
;,,/ 0

.-- 

(--' (
)--( )
;--) *
}// 	
void00 
ResetAllBlocks00
(00 
)00 
{11 	
foreach22 
(22 
Block22 
block22  
in22! #

blockArray22$ .
)22. /
{33 
if44 
(44 
!44 
block44 
.44 

gameObject44 %
.44% &

activeSelf44& 0
)440 1
{55 
block66 
.66 

gameObject66 $
.66$ %
	SetActive66% .
(66. /
true66/ 3
)663 4
;664 5
}77 
}88 
m_blockCount:: 
=:: 

blockArray:: %
.::% &
Length::& ,
;::, -
};; 	
}== 
}>> �	
VC:\Users\Administrator\Documents\ShotPuzzleGame\Assets\Scripts\Manager\InputManager.cs
	namespace 	

 
{ 
public		 

class		 
InputManager		 
:		 

{

 
public 
	InputData 
	inputData "
;" #
void 
Update
( 
) 
{ 	
WriteInputData 
( 
) 
; 
} 	
void 
WriteInputData
( 
) 
{ 	
	inputData 
. 
	isPressed 
=  !
Input" '
.' (
GetMouseButtonDown( :
(: ;
$num; <
)< =
;= >
	inputData 
. 
isHeld 
= 
Input $
.$ %
GetMouseButton% 3
(3 4
$num4 5
)5 6
;6 7
	inputData 
. 

isReleased  
=! "
Input# (
.( )
GetMouseButtonUp) 9
(9 :
$num: ;
); <
;< =
} 	
} 
}   �L
YC:\Users\Administrator\Documents\ShotPuzzleGame\Assets\Scripts\Player\PlayerController.cs
	namespace 	

 
{ 
public 

class 
PlayerController !
:" #

{ 
public 
event 
Action 
OnMouseClick (
;( )
public 
	InputData 
	inputData "
;" #
public 
	LayerMask 
layerToCollideWith +
;+ ,
public!! 
float!! 
	moveSpeed!! 
=!!  
$num!!! "
;!!" #
public&& 
AudioSource&& 
hitSound&& #
;&&# $
private++ 
Vector3++ 
m_ClickedPos++ $
;++$ %
private00 
Vector300 
m_ReleasePos00 $
;00$ %
private55 
Vector355 
m_dir55 
;55 
private:: 
Rigidbody2D:: 

;::) *
private?? 
Camera?? 
m_Cam?? 
;?? 
privateDD 
	PlayerVFXDD 
m_PlayerVFXDD %
;DD% &
privateII 

m_trailRendererII -
;II- .
privateNN 
boolNN 
m_hitBloclkNN  
;NN  !
privateQQ 
voidQQ 
StartQQ 
(QQ 
)QQ 
{RR 	

(TT 
)TT 
;TT 
}VV 	
void\\ 

(\\ 
)\\ 
{]] 	

=^^ 
GetComponent^^ (
<^^( )
Rigidbody2D^^) 4
>^^4 5
(^^5 6
)^^6 7
;^^7 8
m_PlayerVFX__ 
=__ 
GetComponent__ &
<__& '
	PlayerVFX__' 0
>__0 1
(__1 2
)__2 3
;__3 4
m_Camaa 
=aa 
FindObjectOfTypeaa $
<aa$ %
Cameraaa% +
>aa+ ,
(aa, -
)aa- .
;aa. /
}cc 	
privatehh 
voidhh 
Updatehh 
(hh 
)hh 
{ii 	
HandleMovementskk 
(kk 
)kk 
;kk 
}ll 	
privatess 
voidss 
HandleMovementsss $
(ss$ %
)ss% &
{tt 	
ifvv 
(vv 
	inputDatavv 
.vv 
	isPressedvv #
)vv# $
{ww 
m_hitBloclkyy 
=yy 
CheckIfhitBlockyy -
(yy- .
)yy. /
;yy/ 0
ifzz 
(zz 
m_hitBloclkzz 
)zz  
{{{ 
return|| 
;|| 
}}} 
m_ClickedPos
�� 
=
�� 
m_Cam
�� $
.
��$ % 
ScreenToWorldPoint
��% 7
(
��7 8
Input
��8 =
.
��= >

��> K
)
��K L
;
��L M
m_ClickedPos
�� 
=
�� 
new
�� "
Vector3
��# *
(
��* +
m_ClickedPos
��+ 7
.
��7 8
x
��8 9
,
��9 :
m_ClickedPos
��; G
.
��G H
y
��H I
,
��I J
$num
��K M
)
��M N
;
��N O!
ResetPlayerPosition
�� #
(
��# $
)
��$ %
;
��% &
m_PlayerVFX
�� 
.
�� 
SetDotsStartPos
�� +
(
��+ ,
m_ClickedPos
��, 8
)
��8 9
;
��9 :
m_PlayerVFX
�� 
.
�� "
ChangeDotActiveState
�� 0
(
��0 1
true
��1 5
)
��5 6
;
��6 7
m_PlayerVFX
�� 
.
�� 
ChangeTrailState
�� ,
(
��, -
false
��- 2
,
��2 3
$num
��4 6
)
��6 7
;
��7 8
OnMouseClick
�� 
?
�� 
.
�� 
Invoke
�� $
(
��$ %
)
��% &
;
��& '
}
�� 
if
�� 
(
�� 
	inputData
�� 
.
�� 
isHeld
��  
)
��  !
{
�� 
if
�� 
(
�� 
m_hitBloclk
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_PlayerVFX
�� 
.
�� 
SetDotPosition
�� *
(
��* +
m_ClickedPos
��+ 7
,
��7 8
m_Cam
��9 >
.
��> ? 
ScreenToWorldPoint
��? Q
(
��Q R
Input
��R W
.
��W X

��X e
)
��e f
)
��f g
;
��g h
m_PlayerVFX
�� 
.
�� 

�� )
(
��) *
)
��* +
;
��+ ,
}
�� 
if
�� 
(
�� 
	inputData
�� 
.
�� 

isReleased
�� $
)
��$ %
{
�� 
if
�� 
(
�� 
m_hitBloclk
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
Debug
�� 
.
�� 
Log
�� 
(
�� 
$str
�� %
)
��% &
;
��& '
m_ReleasePos
�� 
=
�� 
m_Cam
�� $
.
��$ % 
ScreenToWorldPoint
��% 7
(
��7 8
Input
��8 =
.
��= >

��> K
)
��K L
;
��L M
m_ReleasePos
�� 
=
�� 
new
�� "
Vector3
��# *
(
��* +
m_ReleasePos
��+ 7
.
��7 8
x
��8 9
,
��9 :
m_ReleasePos
��; G
.
��G H
y
��H I
,
��I J
$num
��K M
)
��M N
;
��N O
m_PlayerVFX
�� 
.
�� "
ChangeDotActiveState
�� 0
(
��0 1
false
��1 6
)
��6 7
;
��7 8
m_PlayerVFX
�� 
.
�� 

�� )
(
��) *
)
��* +
;
��+ , 
CalculateDirection
�� "
(
��" #
)
��# $
;
��$ %#
MovePlayerInDirection
�� %
(
��% &
)
��& '
;
��' (
m_PlayerVFX
�� 
.
�� 
ChangeTrailState
�� ,
(
��, -
true
��- 1
,
��1 2
$num
��3 8
)
��8 9
;
��9 :
}
�� 
}
�� 	
private
�� 
void
��  
CalculateDirection
�� '
(
��' (
)
��( )
{
�� 	
m_dir
�� 
=
�� 
(
�� 
m_ReleasePos
�� !
-
��" #
m_ClickedPos
��$ 0
)
��0 1
.
��1 2

normalized
��2 <
;
��< =
}
�� 	
private
�� 
void
�� #
MovePlayerInDirection
�� *
(
��* +
)
��+ ,
{
�� 	

�� 
.
�� 
velocity
�� "
=
��# $
m_dir
��% *
*
��+ ,
	moveSpeed
��- 6
;
��6 7
}
�� 	
private
�� 
void
�� !
ResetPlayerPosition
�� (
(
��( )
)
��) *
{
�� 	
	transform
�� 
.
�� 
position
�� 
=
��  
m_ClickedPos
��! -
;
��- .

�� 
.
�� 
velocity
�� "
=
��# $
Vector3
��% ,
.
��, -
zero
��- 1
;
��1 2
}
�� 	
private
�� 
void
��  
OnCollisionEnter2D
�� '
(
��' (
Collision2D
��( 3
other
��4 9
)
��9 :
{
�� 	
if
�� 
(
�� 
other
�� 
.
�� 

gameObject
��  
.
��  !

CompareTag
��! +
(
��+ ,
$str
��, 3
)
��3 4
)
��4 5
{
�� 
Vector2
�� 
_wallNormal
�� #
=
��$ %
other
��& +
.
��+ ,
contacts
��, 4
[
��4 5
$num
��5 6
]
��6 7
.
��7 8
normal
��8 >
;
��> ?
m_dir
�� 
=
�� 
Vector2
�� 
.
��  
Reflect
��  '
(
��' (

��( 5
.
��5 6
velocity
��6 >
,
��> ?
_wallNormal
��@ K
)
��K L
.
��L M

normalized
��M W
;
��W X

�� 
.
�� 
velocity
�� &
=
��' (
m_dir
��) .
*
��/ 0
	moveSpeed
��1 :
;
��: ;
hitSound
�� 
.
�� 
Play
�� 
(
�� 
)
�� 
;
��  
}
�� 
}
�� 	
private
�� 
bool
�� 
CheckIfhitBlock
�� $
(
��$ %
)
��% &
{
�� 	
Ray
�� 
_ray
�� 
=
�� 
m_Cam
�� 
.
�� 
ScreenPointToRay
�� -
(
��- .
Input
��. 3
.
��3 4

��4 A
)
��A B
;
��B C
RaycastHit2D
�� 
	_hitBlock
�� "
=
��# $
	Physics2D
��% .
.
��. /
Raycast
��/ 6
(
��6 7
_ray
��7 ;
.
��; <
origin
��< B
,
��B C
_ray
��D H
.
��H I
	direction
��I R
,
��R S
$num
��T X
,
��X Y 
layerToCollideWith
��Z l
)
��l m
;
��m n
return
�� 
	_hitBlock
�� 
;
�� 
}
�� 	
}
�� 
}�� �D
RC:\Users\Administrator\Documents\ShotPuzzleGame\Assets\Scripts\Player\PlayerVFX.cs
	namespace 	

 
{ 
public

 

class

 
	PlayerVFX

 
:

 


 *
{ 
public 

GameObject 
	dotPrefab #
;# $
public 
int 
	dotAmount 
; 
private 
float 
m_dotGap 
; 
private 

GameObject 
[ 
] 
m_dotsArray (
;( )
[## 	
Space##	 
]## 
[$$ 	
Header$$	 
($$ 
$str$$  
)$$  !
]$$! "
public%% 
AnimationCurve%% 
followCurve%% )
;%%) *
public** 
float** 
followSpeed**  
;**  !
[00 	
Space00	 
]00 
[11 	
Header11	 
(11 
$str11  
)11  !
]11! "
public22 
AnimationCurve22 
expandCurve22 )
;22) *
public77 
float77 
expandAmount77 !
;77! "
public<< 
float<< 
expandSpeed<<  
;<<  !
privateAA 
Vector3AA 
m_startSizeAA #
;AA# $
privateFF 
Vector3FF 
m_targetSizeFF $
;FF$ %
privateKK 
floatKK 
m_scrollAmountKK $
;KK$ %
privatePP 

m_trailRendererPP -
;PP- .
voidSS 
StartSS
(SS 
)SS 
{TT 	
m_dotGapVV 
=VV 
$numVV 
/VV 
	dotAmountVV %
;VV% &

(YY 
)YY 
;YY $
InitPulesEffectVariables\\ $
(\\$ %
)\\% &
;\\& '
	SpawnDots__ 
(__ 
)__ 
;__ 
}`` 	
privateff 
voidff 

(ff" #
)ff# $
{gg 	
m_trailRendererii 
=ii "
GetComponentInChildrenii 4
<ii4 5

>iiB C
(iiC D
)iiD E
;iiE F
}kk 	
privatepp 
voidpp $
InitPulesEffectVariablespp -
(pp- .
)pp. /
{qq 	
m_startSizerr 
=rr 
	transformrr #
.rr# $

localScalerr$ .
;rr. /
m_targetSizess 
=ss 
m_startSizess &
*ss' (
expandAmountss) 5
;ss5 6
}tt 	
void|| 
	SpawnDots||
(|| 
)|| 
{}} 	
m_dotsArray~~ 
=~~ 
new~~ 

GameObject~~ (
[~~( )
	dotAmount~~) 2
]~~2 3
;~~3 4
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
	dotAmount
��  )
;
��) *
i
��+ ,
++
��, .
)
��. /
{
�� 

GameObject
�� 
_dot
�� 
=
��  !
Instantiate
��" -
(
��- .
	dotPrefab
��. 7
)
��7 8
;
��8 9
_dot
�� 
.
�� 
	SetActive
�� 
(
�� 
false
�� $
)
��$ %
;
��% &
m_dotsArray
�� 
[
�� 
i
�� 
]
�� 
=
��  
_dot
��! %
;
��% &
}
�� 
}
�� 	
public
�� 
void
�� 
SetDotPosition
�� "
(
��" #
Vector3
��# *
startPos
��+ 3
,
��3 4
Vector3
��5 <
endPos
��= C
)
��C D
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
	dotAmount
��  )
;
��) *
i
��+ ,
++
��, .
)
��. /
{
�� 
Vector3
�� 
_dotPos
�� 
=
��  !
m_dotsArray
��" -
[
��- .
i
��. /
]
��/ 0
.
��0 1
	transform
��1 :
.
��: ;
position
��; C
;
��C D
Vector3
�� 

_targetPos
�� "
=
��# $
Vector2
��% ,
.
��, -
Lerp
��- 1
(
��1 2
startPos
��2 :
,
��: ;
endPos
��< B
,
��B C
(
��D E
i
��E F
+
��G H
$num
��I J
)
��J K
*
��L M
m_dotGap
��N V
)
��V W
;
��W X
float
�� 
_smoothSpeed
�� "
=
��# $
(
��% &
$num
��& (
-
��) *
followCurve
��+ 6
.
��6 7
Evaluate
��7 ?
(
��? @
i
��@ A
*
��B C
m_dotGap
��D L
)
��L M
)
��M N
*
��O P
followSpeed
��Q \
;
��\ ]
m_dotsArray
�� 
[
�� 
i
�� 
]
�� 
.
�� 
	transform
�� (
.
��( )
position
��) 1
=
��2 3
Vector2
��4 ;
.
��; <
Lerp
��< @
(
��@ A
_dotPos
��A H
,
��H I

_targetPos
��J T
,
��T U
_smoothSpeed
��V b
*
��c d
Time
��e i
.
��i j
	deltaTime
��j s
)
��s t
;
��t u
}
�� 
}
�� 	
public
�� 
void
�� "
ChangeDotActiveState
�� (
(
��( )
bool
��) -
isActive
��. 6
)
��6 7
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
	dotAmount
��  )
;
��) *
i
��+ ,
++
��, .
)
��. /
{
�� 
m_dotsArray
�� 
[
�� 
i
�� 
]
�� 
.
�� 
	SetActive
�� (
(
��( )
isActive
��) 1
)
��1 2
;
��2 3
}
�� 
}
�� 	
public
�� 
void
�� 
SetDotsStartPos
�� #
(
��# $
Vector3
��$ +
pos
��, /
)
��/ 0
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
	dotAmount
��  )
;
��) *
i
��+ ,
++
��, .
)
��. /
{
�� 
m_dotsArray
�� 
[
�� 
i
�� 
]
�� 
.
�� 
	transform
�� (
.
��( )
position
��) 1
=
��2 3
pos
��4 7
;
��7 8
}
�� 
}
�� 	
public
�� 
void
�� 

�� !
(
��! "
)
��" #
{
�� 	
m_scrollAmount
�� 
+=
�� 
Time
�� "
.
��" #
	deltaTime
��# ,
*
��- .
expandSpeed
��/ :
;
��: ;
float
�� 
_precent
�� 
=
�� 
expandCurve
�� (
.
��( )
Evaluate
��) 1
(
��1 2
m_scrollAmount
��2 @
)
��@ A
;
��A B
	transform
�� 
.
�� 

localScale
��  
=
��! "
Vector2
��# *
.
��* +
Lerp
��+ /
(
��/ 0
m_startSize
��0 ;
,
��; <
m_targetSize
��= I
,
��I J
_precent
��K S
)
��S T
;
��T U
}
�� 	
public
�� 
void
�� 

�� !
(
��! "
)
��" #
{
�� 	
	transform
�� 
.
�� 

localScale
��  
=
��! "
m_startSize
��# .
;
��. /
m_scrollAmount
�� 
=
�� 
$num
�� 
;
��  
}
�� 	
public
�� 
void
�� 
ChangeTrailState
�� $
(
��$ %
bool
��% )

isEmitting
��* 4
,
��4 5
float
��6 ;
time
��< @
)
��@ A
{
�� 	
m_trailRenderer
�� 
.
�� 
emitting
�� $
=
��% &

isEmitting
��' 1
;
��1 2
m_trailRenderer
�� 
.
�� 
time
��  
=
��! "
time
��# '
;
��' (
}
�� 	
}
�� 
}�� �
OC:\Users\Administrator\Documents\ShotPuzzleGame\Assets\Scripts\ScenesManager.cs
	namespace 	

 
{ 
public 

class 

:  

{ 
public 
static 
void 

(( )
)) *
{ 	
if 
( 
SceneManager 
. 
GetActiveScene +
(+ ,
), -
.- .

buildIndex. 8
<9 :
$num; <
)< =
{ 
SceneManager 
. 
	LoadScene &
(& '
SceneManager' 3
.3 4
GetActiveScene4 B
(B C
)C D
.D E

buildIndexE O
+P Q
$numR S
)S T
;T U
} 
} 	
} 
} �
]C:\Users\Administrator\Documents\ShotPuzzleGame\Assets\Scripts\ScriptableObjects\InputData.cs
	namespace 


{ 
[		 
CreateAssetMenu		 
(		 
fileName		 
=		 
$str		  ,
)		, -
]		- .
public

 

class

 
	InputData

 
:

 
ScriptableObject

 -
{ 
public 
bool 
	isPressed 
; 
public 
bool 
isHeld 
; 
public 
bool 

isReleased 
; 
} 
} 