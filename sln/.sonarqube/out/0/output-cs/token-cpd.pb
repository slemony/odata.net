�8
?D:\odata.net\src\Microsoft.OData.Edm\Csdl\EdmEnumValueParser.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
{ 
internal 
static
class 
EdmEnumValueParser ,
{ 
internal 
static 
bool 
TryParseEnumMember /
(/ 0
string0 6
value7 <
,< =
	IEdmModel> G
modelH M
,M N
EdmLocationO Z
location[ c
,c d
oute h
IEnumerablei t
<t u
IEdmEnumMember	u �
>
� �
result
� �
)
� �
{ 	
result 
= 
null 
; 
if 
( 
value 
== 
null 
||  
model! &
==' )
null* .
). /
{   
return!! 
false!! 
;!! 
}"" 
bool$$ 
isUnresolved$$ 
=$$ 
false$$  %
;$$% &
var%% 

enumValues%% 
=%% 
value%% "
.%%" #
Split%%# (
(%%( )
new%%) ,
[%%, -
]%%- .
{%%/ 0
$char%%1 4
}%%5 6
,%%6 7
StringSplitOptions%%8 J
.%%J K
RemoveEmptyEntries%%K ]
)%%] ^
;%%^ _
if&& 
(&& 
!&& 

enumValues&& 
.&& 
Any&& 
(&&  
)&&  !
)&&! "
{'' 
return(( 
false(( 
;(( 
})) 
string++ 
enumTypeName++ 
=++  !

enumValues++" ,
[++, -
$num++- .
]++. /
.++/ 0
Split++0 5
(++5 6
$char++6 9
)++9 :
.++: ;
FirstOrDefault++; I
(++I J
)++J K
;++K L
if,, 
(,, 
string,, 
.,, 

(,,$ %
enumTypeName,,% 1
),,1 2
),,2 3
{-- 
return.. 
false.. 
;.. 
}// 
IEdmEnumType11 
enumType11 !
=11" #
model11$ )
.11) *
FindType11* 2
(112 3
enumTypeName113 ?
)11? @
as11A C
IEdmEnumType11D P
;11P Q
if33 
(33 
enumType33 
==33 
null33  
)33  !
{44 
enumType55 
=55 
new55 
UnresolvedEnumType55 1
(551 2
enumTypeName552 >
,55> ?
location55@ H
)55H I
;55I J
isUnresolved66 
=66 
true66 #
;66# $
}77 
else88 
if88 
(88 

enumValues88 
.88  
Count88  %
(88% &
)88& '
>88( )
$num88* +
&&88, .
(88/ 0
!880 1
enumType881 9
.889 :
IsFlags88: A
||88B D
!88E F
EdmEnumValueParser88F X
.88X Y
IsEnumIntegerType88Y j
(88j k
enumType88k s
)88s t
)88t u
)88u v
{99 
return:: 
false:: 
;:: 
};; 
List== 
<== 
IEdmEnumMember== 
>==  
enumMembers==! ,
===- .
new==/ 2
List==3 7
<==7 8
IEdmEnumMember==8 F
>==F G
(==G H
)==H I
;==I J
foreach>> 
(>> 
var>> 
	enumValue>> "
in>># %

enumValues>>& 0
)>>0 1
{?? 
string@@ 
[@@ 
]@@ 
path@@ 
=@@ 
	enumValue@@  )
.@@) *
Split@@* /
(@@/ 0
$char@@0 3
)@@3 4
;@@4 5
ifAA 
(AA 
pathAA 
.AA 
CountAA 
(AA 
)AA  
!=AA! #
$numAA$ %
)AA% &
{BB 
returnCC 
falseCC  
;CC  !
}DD 
ifFF 
(FF 
pathFF 
[FF 
$numFF 
]FF 
!=FF 
enumTypeNameFF +
)FF+ ,
{GG 
returnHH 
falseHH  
;HH  !
}II 
ifKK 
(KK 
!KK 
isUnresolvedKK !
)KK! "
{LL 
IEdmEnumMemberMM "
memberMM# )
=MM* +
enumTypeMM, 4
.MM4 5
MembersMM5 <
.MM< =
SingleOrDefaultMM= L
(MML M
mMMM N
=>MMO Q
mMMR S
.MMS T
NameMMT X
==MMY [
pathMM\ `
[MM` a
$numMMa b
]MMb c
)MMc d
;MMd e
ifNN 
(NN 
memberNN 
==NN !
nullNN" &
)NN& '
{OO 
returnPP 
falsePP $
;PP$ %
}QQ 
enumMembersSS 
.SS  
AddSS  #
(SS# $
memberSS$ *
)SS* +
;SS+ ,
}TT 
elseUU 
{VV 
enumMembersWW 
.WW  
AddWW  #
(WW# $
newWW$ ' 
UnresolvedEnumMemberWW( <
(WW< =
pathWW= A
[WWA B
$numWWB C
]WWC D
,WWD E
enumTypeWWF N
,WWN O
locationWWP X
)WWX Y
)WWY Z
;WWZ [
}XX 
}YY 
result[[ 
=[[ 
enumMembers[[  
;[[  !
return\\ 
true\\ 
;\\ 
}]] 	
internaldd 
staticdd 
booldd 
IsEnumIntegerTypedd .
(dd. /
IEdmEnumTypedd/ ;
enumTypedd< D
)ddD E
{ee 	
returnff 
enumTypeff 
.ff 
UnderlyingTypeff *
.ff* +

==ff9 ; 
EdmPrimitiveTypeKindff< P
.ffP Q
ByteffQ U
||ffV X
enumTypegg 
.gg 
UnderlyingTypegg *
.gg* +

==gg9 ; 
EdmPrimitiveTypeKindgg< P
.ggP Q
SByteggQ V
||ggW Y
enumTypehh 
.hh 
UnderlyingTypehh *
.hh* +

==hh9 ; 
EdmPrimitiveTypeKindhh< P
.hhP Q
Int16hhQ V
||hhW Y
enumTypeii 
.ii 
UnderlyingTypeii *
.ii* +

==ii9 ; 
EdmPrimitiveTypeKindii< P
.iiP Q
Int32iiQ V
||iiW Y
enumTypejj 
.jj 
UnderlyingTypejj *
.jj* +

==jj9 ; 
EdmPrimitiveTypeKindjj< P
.jjP Q
Int64jjQ V
;jjV W
}kk 	
}ll 
}mm �
UD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlAnnotationPathExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal 
class
CsdlAnnotationPathExpression /
:0 1
CsdlPathExpression2 D
{
public (
CsdlAnnotationPathExpression +
(+ ,
string, 2
path3 7
,7 8
CsdlLocation9 E
locationF N
)N O
:P Q
baseR V
(V W
pathW [
,[ \
location] e
)e f
{ 	
} 	
public 
override 
EdmExpressionKind )
ExpressionKind* 8
{ 	
get 
{ 
return 
EdmExpressionKind *
.* +
AnnotationPath+ 9
;9 :
}; <
} 	
} 
} �
QD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlUntypedTypeReference.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal 
class
CsdlUntypedTypeReference +
:, -"
CsdlNamedTypeReference. D
{
public $
CsdlUntypedTypeReference '
(' (
string( .
typeName/ 7
,7 8
CsdlLocation9 E
locationF N
)N O
: 
base 
( 
typeName 
, 
true !
,! "
location# +
)+ ,
{ 	
} 	
} 
} �

\D:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsAnnotationPathExpression.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #

{

 
internal 
class
%CsdlSemanticsAnnotationPathExpression 8
:9 :'
CsdlSemanticsPathExpression; V
{ 
public 1
%CsdlSemanticsAnnotationPathExpression 4
(4 5
CsdlPathExpression5 G

expressionH R
,R S
IEdmEntityTypeT b
bindingContextc q
,q r 
CsdlSemanticsSchema	s �
schema
� �
)
� �
:
� �
base
� �
(
� �

expression
� �
,
� �
bindingContext
� �
,
� �
schema
� �
)
� �
{ 	
} 	
public 
override 
EdmExpressionKind )
ExpressionKind* 8
{ 	
get 
{ 
return 
EdmExpressionKind *
.* +
AnnotationPath+ 9
;9 :
}; <
} 	
} 
} �h
[D:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsTypeDefinitionReference.cs
	namespace

 	
	Microsoft


 
.

 
OData

 
.

 
Edm

 
.

 
Csdl

 "
.

" #


# 0
{ 
internal 
class
$CsdlSemanticsTypeDefinitionReference 7
:8 9+
CsdlSemanticsNamedTypeReference: Y
,Y Z'
IEdmTypeDefinitionReference[ v
{ 
private 
static 
readonly 
Func  $
<$ %0
$CsdlSemanticsTypeDefinitionReference% I
,I J
boolK O
>O P"
ComputeIsUnboundedFuncQ g
=h i
mej l
=>m o
mep r
.r s
ComputeIsUnbounded	s �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %0
$CsdlSemanticsTypeDefinitionReference% I
,I J
intK N
?N O
>O P 
ComputeMaxLengthFuncQ e
=f g
meh j
=>k m
men p
.p q
ComputeMaxLength	q �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %0
$CsdlSemanticsTypeDefinitionReference% I
,I J
boolK O
?O P
>P Q 
ComputeIsUnicodeFuncR f
=g h
mei k
=>l n
meo q
.q r
ComputeIsUnicode	r �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %0
$CsdlSemanticsTypeDefinitionReference% I
,I J
intK N
?N O
>O P 
ComputePrecisionFuncQ e
=f g
meh j
=>k m
men p
.p q
ComputePrecision	q �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %0
$CsdlSemanticsTypeDefinitionReference% I
,I J
intK N
?N O
>O P
ComputeScaleFuncQ a
=b c
med f
=>g i
mej l
.l m
ComputeScalem y
(y z
)z {
;{ |
private 
static 
readonly 
Func  $
<$ %0
$CsdlSemanticsTypeDefinitionReference% I
,I J
intK N
?N O
>O P
ComputeSridFuncQ `
=a b
mec e
=>f h
mei k
.k l
ComputeSridl w
(w x
)x y
;y z
private 
readonly 
Cache 
< 0
$CsdlSemanticsTypeDefinitionReference C
,C D
boolE I
>I J
isUnboundedCacheK [
=\ ]
new^ a
Cacheb g
<g h1
$CsdlSemanticsTypeDefinitionReference	h �
,
� �
bool
� �
>
� �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
< 0
$CsdlSemanticsTypeDefinitionReference C
,C D
intE H
?H I
>I J
maxLengthCacheK Y
=Z [
new\ _
Cache` e
<e f1
$CsdlSemanticsTypeDefinitionReference	f �
,
� �
int
� �
?
� �
>
� �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
< 0
$CsdlSemanticsTypeDefinitionReference C
,C D
boolE I
?I J
>J K
isUnicodeCacheL Z
=[ \
new] `
Cachea f
<f g1
$CsdlSemanticsTypeDefinitionReference	g �
,
� �
bool
� �
?
� �
>
� �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
< 0
$CsdlSemanticsTypeDefinitionReference C
,C D
intE H
?H I
>I J
precisionCacheK Y
=Z [
new\ _
Cache` e
<e f1
$CsdlSemanticsTypeDefinitionReference	f �
,
� �
int
� �
?
� �
>
� �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
< 0
$CsdlSemanticsTypeDefinitionReference C
,C D
intE H
?H I
>I J

scaleCacheK U
=V W
newX [
Cache\ a
<a b1
$CsdlSemanticsTypeDefinitionReference	b �
,
� �
int
� �
?
� �
>
� �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
< 0
$CsdlSemanticsTypeDefinitionReference C
,C D
intE H
?H I
>I J
	sridCacheK T
=U V
newW Z
Cache[ `
<` a1
$CsdlSemanticsTypeDefinitionReference	a �
,
� �
int
� �
?
� �
>
� �
(
� �
)
� �
;
� �
public 0
$CsdlSemanticsTypeDefinitionReference 3
(3 4
CsdlSemanticsSchema4 G
schemaH N
,N O"
CsdlNamedTypeReferenceP f
	referenceg p
)p q
:   
base   
(   
schema   
,   
	reference   $
)  $ %
{!! 	
}"" 	
public$$ 
bool$$ 
IsUnbounded$$ 
{%% 	
get&& 
{&& 
return&& 
this&& 
.&& 
isUnboundedCache&& .
.&&. /
GetValue&&/ 7
(&&7 8
this&&8 <
,&&< ="
ComputeIsUnboundedFunc&&> T
,&&T U
null&&V Z
)&&Z [
;&&[ \
}&&] ^
}'' 	
public)) 
int)) 
?)) 
	MaxLength)) 
{** 	
get++ 
{++ 
return++ 
this++ 
.++ 
maxLengthCache++ ,
.++, -
GetValue++- 5
(++5 6
this++6 :
,++: ; 
ComputeMaxLengthFunc++< P
,++P Q
null++R V
)++V W
;++W X
}++Y Z
},, 	
public.. 
bool.. 
?.. 
	IsUnicode.. 
{// 	
get00 
{00 
return00 
this00 
.00 
isUnicodeCache00 ,
.00, -
GetValue00- 5
(005 6
this006 :
,00: ; 
ComputeIsUnicodeFunc00< P
,00P Q
null00R V
)00V W
;00W X
}00Y Z
}11 	
public33 
int33 
?33 
	Precision33 
{44 	
get55 
{55 
return55 
this55 
.55 
precisionCache55 ,
.55, -
GetValue55- 5
(555 6
this556 :
,55: ; 
ComputePrecisionFunc55< P
,55P Q
null55R V
)55V W
;55W X
}55Y Z
}66 	
public88 
int88 
?88 
Scale88 
{99 	
get:: 
{:: 
return:: 
this:: 
.:: 

scaleCache:: (
.::( )
GetValue::) 1
(::1 2
this::2 6
,::6 7
ComputeScaleFunc::8 H
,::H I
null::J N
)::N O
;::O P
}::Q R
};; 	
public== 
int== 
?== &
SpatialReferenceIdentifier== .
{>> 	
get?? 
{?? 
return?? 
this?? 
.?? 
	sridCache?? '
.??' (
GetValue??( 0
(??0 1
this??1 5
,??5 6
ComputeSridFunc??7 F
,??F G
null??H L
)??L M
;??M N
}??O P
}@@ 	
privateBB "
CsdlNamedTypeReferenceBB &
	ReferenceBB' 0
{CC 	
getDD 
{DD 
returnDD 
(DD "
CsdlNamedTypeReferenceDD 0
)DD0 1
thisDD1 5
.DD5 6
ElementDD6 =
;DD= >
}DD? @
}EE 	
privateGG 
boolGG 
ComputeIsUnboundedGG '
(GG' (
)GG( )
{HH 	
returnII 
thisII 
.II 
UnderlyingTypeII &
(II& '
)II' (
.II( )
CanSpecifyMaxLengthII) <
(II< =
)II= >
&&II? A
thisIIB F
.IIF G
	ReferenceIIG P
.IIP Q
IsUnboundedIIQ \
;II\ ]
}JJ 	
privateLL 
intLL 
?LL 
ComputeMaxLengthLL %
(LL% &
)LL& '
{MM 	
returnNN 
thisNN 
.NN 
UnderlyingTypeNN &
(NN& '
)NN' (
.NN( )
CanSpecifyMaxLengthNN) <
(NN< =
)NN= >
?NN? @
thisNNA E
.NNE F
	ReferenceNNF O
.NNO P
	MaxLengthNNP Y
:NNZ [
nullNN\ `
;NN` a
}OO 	
privateQQ 
boolQQ 
?QQ 
ComputeIsUnicodeQQ &
(QQ& '
)QQ' (
{RR 	
returnSS 
thisSS 
.SS 
UnderlyingTypeSS &
(SS& '
)SS' (
.SS( )
IsStringSS) 1
(SS1 2
)SS2 3
?SS4 5
thisSS6 :
.SS: ;
	ReferenceSS; D
.SSD E
	IsUnicodeSSE N
:SSO P
nullSSQ U
;SSU V
}TT 	
privateVV 
intVV 
?VV 
ComputePrecisionVV %
(VV% &
)VV& '
{WW 	
ifXX 
(XX 
thisXX 
.XX 
UnderlyingTypeXX #
(XX# $
)XX$ %
.XX% &
	IsDecimalXX& /
(XX/ 0
)XX0 1
)XX1 2
{YY 
returnZZ 
thisZZ 
.ZZ 
	ReferenceZZ %
.ZZ% &
	PrecisionZZ& /
;ZZ/ 0
}[[ 
if]] 
(]] 
this]] 
.]] 
UnderlyingType]] #
(]]# $
)]]$ %
.]]% &

IsTemporal]]& 0
(]]0 1
)]]1 2
)]]2 3
{^^ 
return__ 
this__ 
.__ 
	Reference__ %
.__% &
	Precision__& /
??__0 2

.__@ A%
Default_TemporalPrecision__A Z
;__Z [
}`` 
returnbb 
nullbb 
;bb 
}cc 	
privateee 
intee 
?ee 
ComputeScaleee !
(ee! "
)ee" #
{ff 	
returngg 
thisgg 
.gg 
UnderlyingTypegg &
(gg& '
)gg' (
.gg( )
	IsDecimalgg) 2
(gg2 3
)gg3 4
?gg5 6
thisgg7 ;
.gg; <
	Referencegg< E
.ggE F
ScaleggF K
:ggL M
nullggN R
;ggR S
}hh 	
privatejj 
intjj 
?jj 
ComputeSridjj  
(jj  !
)jj! "
{kk 	
ifll 
(ll 
thisll 
.ll 
UnderlyingTypell #
(ll# $
)ll$ %
.ll% &
IsGeographyll& 1
(ll1 2
)ll2 3
)ll3 4
{mm 
returnnn $
DefaultSridIfUnspecifiednn /
(nn/ 0

.nn= >(
Default_SpatialGeographySridnn> Z
)nnZ [
;nn[ \
}oo 
ifqq 
(qq 
thisqq 
.qq 
UnderlyingTypeqq #
(qq# $
)qq$ %
.qq% &

IsGeometryqq& 0
(qq0 1
)qq1 2
)qq2 3
{rr 
returnss $
DefaultSridIfUnspecifiedss /
(ss/ 0

.ss= >'
Default_SpatialGeometrySridss> Y
)ssY Z
;ssZ [
}tt 
returnvv 
nullvv 
;vv 
}ww 	
privateyy 
intyy 
?yy $
DefaultSridIfUnspecifiedyy -
(yy- .
intyy. 1
defaultSridyy2 =
)yy= >
{zz 	
if{{ 
({{ 
this{{ 
.{{ 
	Reference{{ 
.{{ &
SpatialReferenceIdentifier{{ 9
!={{: <

.{{J K#
Default_UnspecifiedSrid{{K b
){{b c
{|| 
return~~ 
this~~ 
.~~ 
	Reference~~ %
.~~% &&
SpatialReferenceIdentifier~~& @
;~~@ A
} 
return
�� 
defaultSrid
�� 
;
�� 
}
�� 	
}
�� 
}�� �
XD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsUntypedTypeReference.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #

{

 
internal 
class
!CsdlSemanticsUntypedTypeReference 4
:5 6 
CsdlSemanticsElement7 K
,K L$
IEdmUntypedTypeReferenceM e
{ 
internal 
readonly $
CsdlUntypedTypeReference 2
	Reference3 <
;< =
private 
readonly 
CsdlSemanticsSchema ,
schema- 3
;3 4
private 
readonly 
IEdmUntypedType (

definition) 3
;3 4
public -
!CsdlSemanticsUntypedTypeReference 0
(0 1
CsdlSemanticsSchema1 D
schemaE K
,K L$
CsdlUntypedTypeReferenceM e
	referencef o
)o p
: 
base 
( 
	reference 
) 
{ 	
this 
. 
schema 
= 
schema  
;  !
this 
. 
	Reference 
= 
	reference &
;& '
this 
. 

definition 
= 
EdmCoreModel *
.* +
Instance+ 3
.3 4
GetUntypedType4 B
(B C
)C D
;D E
} 	
public   
bool   

IsNullable   
{!! 	
get"" 
{"" 
return"" 
this"" 
."" 
	Reference"" '
.""' (

IsNullable""( 2
;""2 3
}""4 5
}## 	
public%% 
IEdmType%% 

Definition%% "
{&& 	
get'' 
{'' 
return'' 
this'' 
.'' 

definition'' (
;''( )
}''* +
}(( 	
public** 
override** 
CsdlSemanticsModel** *
Model**+ 0
{++ 	
get,, 
{,, 
return,, 
this,, 
.,, 
schema,, $
.,,$ %
Model,,% *
;,,* +
},,, -
}-- 	
public// 
override// 
CsdlElement// #
Element//$ +
{00 	
get11 
{11 
return11 
this11 
.11 
	Reference11 '
;11' (
}11) *
}22 	
public44 
override44 
string44 
ToString44 '
(44' (
)44( )
{55 	
return66 
this66 
.66 

(66% &
)66& '
;66' (
}77 	
}88 
}99 �
QD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlEnumMemberExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal		 
class		
CsdlEnumMemberExpression		 +
:		, -
CsdlExpressionBase		. @
{

 
private 
readonly 
string 
enumMemberPath  .
;. /
public
CsdlEnumMemberExpression
(
string
enumMemberPath
,
CsdlLocation
location
)
: 
base 
( 
location 
) 
{ 	
this 
. 
enumMemberPath 
=  !
enumMemberPath" 0
;0 1
} 	
public 
override 
EdmExpressionKind )
ExpressionKind* 8
{ 	
get 
{ 
return 
EdmExpressionKind *
.* +

EnumMember+ 5
;5 6
}7 8
} 	
public 
string 
EnumMemberPath $
{ 	
get 
{ 
return 
this 
. 
enumMemberPath ,
;, -
}. /
} 	
} 
} �:
XD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsEnumMemberExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
!CsdlSemanticsEnumMemberExpression 4
:5 6#
CsdlSemanticsExpression7 N
,N O$
IEdmEnumMemberExpressionP h
,h i

{ 
private 
readonly $
CsdlEnumMemberExpression 1

expression2 <
;< =
private 
readonly 
IEdmEntityType '
bindingContext( 6
;6 7
private 
readonly 
Cache 
< -
!CsdlSemanticsEnumMemberExpression @
,@ A
IEnumerableB M
<M N
IEdmEnumMemberN \
>\ ]
>] ^
referencedCache_ n
=o p
newq t
Cacheu z
<z {.
!CsdlSemanticsEnumMemberExpression	{ �
,
� �
IEnumerable
� �
<
� �
IEdmEnumMember
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %-
!CsdlSemanticsEnumMemberExpression% F
,F G
IEnumerableH S
<S T
IEdmEnumMemberT b
>b c
>c d!
ComputeReferencedFunce z
={ |
(} ~
me	~ �
)
� �
=>
� �
me
� �
.
� �
ComputeReferenced
� �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
< -
!CsdlSemanticsEnumMemberExpression @
,@ A
IEnumerableB M
<M N
EdmErrorN V
>V W
>W X
errorsCacheY d
=e f
newg j
Cachek p
<p q.
!CsdlSemanticsEnumMemberExpression	q �
,
� �
IEnumerable
� �
<
� �
EdmError
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %-
!CsdlSemanticsEnumMemberExpression% F
,F G
IEnumerableH S
<S T
EdmErrorT \
>\ ]
>] ^
ComputeErrorsFunc_ p
=q r
(s t
met v
)v w
=>x z
me{ }
.} ~

(
� �
)
� �
;
� �
public -
!CsdlSemanticsEnumMemberExpression 0
(0 1$
CsdlEnumMemberExpression1 I

expressionJ T
,T U
IEdmEntityTypeV d
bindingContexte s
,s t 
CsdlSemanticsSchema	u �
schema
� �
)
� �
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this 
. 

expression 
= 

expression (
;( )
this 
. 
bindingContext 
=  !
bindingContext" 0
;0 1
}   	
public"" 
override"" 
CsdlElement"" #
Element""$ +
{## 	
get$$ 
{$$ 
return$$ 
this$$ 
.$$ 

expression$$ (
;$$( )
}$$* +
}%% 	
public'' 
override'' 
EdmExpressionKind'' )
ExpressionKind''* 8
{(( 	
get)) 
{)) 
return)) 
EdmExpressionKind)) *
.))* +

EnumMember))+ 5
;))5 6
}))7 8
}** 	
public,, 
IEnumerable,, 
<,, 
IEdmEnumMember,, )
>,,) *
EnumMembers,,+ 6
{-- 	
get.. 
{.. 
return.. 
this.. 
... 
referencedCache.. -
...- .
GetValue... 6
(..6 7
this..7 ;
,..; <!
ComputeReferencedFunc..= R
,..R S
null..T X
)..X Y
;..Y Z
}..[ \
}// 	
public11 
IEnumerable11 
<11 
EdmError11 #
>11# $
Errors11% +
{22 	
get33 
{33 
return33 
this33 
.33 
errorsCache33 )
.33) *
GetValue33* 2
(332 3
this333 7
,337 8
ComputeErrorsFunc339 J
,33J K
null33L P
)33P Q
;33Q R
}33S T
}44 	
private66 
IEnumerable66 
<66 
IEdmEnumMember66 *
>66* +
ComputeReferenced66, =
(66= >
)66> ?
{77 	
IEnumerable88 
<88 
IEdmEnumMember88 &
>88& '
member88( .
;88. /
return99 
EdmEnumValueParser99 %
.99% &
TryParseEnumMember99& 8
(998 9
this999 =
.99= >

expression99> H
.99H I
EnumMemberPath99I W
,99W X
this99Y ]
.99] ^
Schema99^ d
.99d e
Model99e j
,99j k
this99l p
.99p q
Location99q y
,99y z
out99{ ~
member	99 �
)
99� �
?
99� �
member
99� �
:
99� �
null
99� �
;
99� �
}:: 	
private<< 
IEnumerable<< 
<<< 
EdmError<< $
><<$ %

(<<3 4
)<<4 5
{== 	
IEnumerable>> 
<>> 
IEdmEnumMember>> &
>>>& '
member>>( .
;>>. /
if?? 
(?? 
!?? 
EdmEnumValueParser?? #
.??# $
TryParseEnumMember??$ 6
(??6 7
this??7 ;
.??; <

expression??< F
.??F G
EnumMemberPath??G U
,??U V
this??W [
.??[ \
Schema??\ b
.??b c
Model??c h
,??h i
this??j n
.??n o
Location??o w
,??w x
out??y |
member	??} �
)
??� �
)
??� �
{@@ 
returnAA 
newAA 
EdmErrorAA #
[AA# $
]AA$ %
{AA& '
newAA( +
EdmErrorAA, 4
(AA4 5
thisAA5 9
.AA9 :
LocationAA: B
,AAB C
EdmErrorCodeAAD P
.AAP Q!
InvalidEnumMemberPathAAQ f
,AAf g
EdmAAh k
.AAk l
StringsAAl s
.AAs t-
 CsdlParser_InvalidEnumMemberPath	AAt �
(
AA� �
this
AA� �
.
AA� �

expression
AA� �
.
AA� �
EnumMemberPath
AA� �
)
AA� �
)
AA� �
}
AA� �
;
AA� �
}BB 
returnDD 

EnumerableDD 
.DD 
EmptyDD #
<DD# $
EdmErrorDD$ ,
>DD, -
(DD- .
)DD. /
;DD/ 0
}EE 	
}FF 
}GG �	
cD:\odata.net\src\Microsoft.OData.Edm\PrimitiveValueConverters\PassThroughPrimitiveValueConverter.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
class
"PassThroughPrimitiveValueConverter 5
:6 7$
IPrimitiveValueConverter8 P
{
internal 
static 
readonly  $
IPrimitiveValueConverter! 9
Instance: B
=C D
newE H.
"PassThroughPrimitiveValueConverterI k
(k l
)l m
;m n
private .
"PassThroughPrimitiveValueConverter 2
(2 3
)3 4
{ 	
} 	
public 
object #
ConvertToUnderlyingType -
(- .
object. 4
value5 :
): ;
{ 	
return 
value 
; 
} 	
public 
object %
ConvertFromUnderlyingType /
(/ 0
object0 6
value7 <
)< =
{ 	
return 
value 
; 
} 	
} 
} �
9D:\odata.net\src\Microsoft.OData.Edm\Csdl\CsdlLocation.cs
	namespace

 	
	Microsoft


 
.

 
OData

 
.

 
Edm

 
.

 
Csdl

 "
{ 
public 

class 
CsdlLocation 
: 
EdmLocation  +
{ 
internal 
CsdlLocation 
( 
int !
number" (
,( )
int* -
position. 6
)6 7
: 
this 
( 
null 
, 
number 
,  
position! )
)) *
{ 	
} 	
internal 
CsdlLocation 
( 
string $
source% +
,+ ,
int- 0
number1 7
,7 8
int9 <
position= E
)E F
{ 	
this 
. 
Source 
= 
source  
;  !
this 
. 

LineNumber 
= 
number $
;$ %
this 
. 
LinePosition 
= 
position  (
;( )
} 	
public%% 
string%% 
Source%% 
{%% 
get%% "
;%%" #
private%%$ +
set%%, /
;%%/ 0
}%%1 2
public** 
int** 

LineNumber** 
{** 
get**  #
;**# $
private**% ,
set**- 0
;**0 1
}**2 3
public// 
int// 
LinePosition// 
{//  !
get//" %
;//% &
private//' .
set/// 2
;//2 3
}//4 5
public55 
override55 
string55 
ToString55 '
(55' (
)55( )
{66 	
return77 
$str77 
+77 
Convert77  
.77  !
ToString77! )
(77) *
this77* .
.77. /

LineNumber77/ 9
,779 :
CultureInfo77; F
.77F G
InvariantCulture77G W
)77W X
+77Y Z
$str77[ _
+77` a
Convert77b i
.77i j
ToString77j r
(77r s
this77s w
.77w x
LinePosition	77x �
,
77� �
CultureInfo
77� �
.
77� �
InvariantCulture
77� �
)
77� �
+
77� �
$str
77� �
;
77� �
}88 	
}99 
}:: �
>D:\odata.net\src\Microsoft.OData.Edm\Csdl\EdmParseException.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
{ 
[ 
SuppressMessage 
( 
$str '
,' (
$str) 1
,1 2

=A B
$str	C �
)
� �
]
� �
[ 
SuppressMessage 
( 
$str &
,& '
$str( 0
,0 1

=@ A
$str	B �
)
� �
]
� �
[ 
DebuggerDisplay 
( 
$str  
)  !
]! "
public 

class 
EdmParseException "
:# $
	Exception% .
{ 
public 
EdmParseException  
(  !
IEnumerable! ,
<, -
EdmError- 5
>5 6
parseErrors7 B
)B C
: 
this 
( 
parseErrors 
. 
ToList %
(% &
)& '
)' (
{   	
}!! 	
private'' 
EdmParseException'' !
(''! "
List''" &
<''& '
EdmError''' /
>''/ 0
parseErrors''1 <
)''< =
:(( 
base(( 
((( 
ConstructMessage(( #
(((# $
parseErrors(($ /
)((/ 0
)((0 1
{)) 	
this** 
.** 
Errors** 
=** 
new** 
ReadOnlyCollection** 0
<**0 1
EdmError**1 9
>**9 :
(**: ;
parseErrors**; F
)**F G
;**G H
}++ 	
public00 
ReadOnlyCollection00 !
<00! "
EdmError00" *
>00* +
Errors00, 2
{003 4
get005 8
;008 9
private00: A
set00B E
;00E F
}00G H
private77 
static77 
string77 
ConstructMessage77 .
(77. /
IEnumerable77/ :
<77: ;
EdmError77; C
>77C D
parseErrors77E P
)77P Q
{88 	
return99 
ErrorStrings99 
.99  5
)EdmParseException_ErrorsEncounteredInEdmx99  I
(99I J
string99J P
.99P Q
Join99Q U
(99U V
Environment99V a
.99a b
NewLine99b i
,99i j
parseErrors99k v
.99v w
Select99w }
(99} ~
p99~ 
=>
99� �
p
99� �
.
99� �
ToString
99� �
(
99� �
)
99� �
)
99� �
.
99� �
ToArray
99� �
(
99� �
)
99� �
)
99� �
)
99� �
;
99� �
}:: 	
};; 
}<< �
?D:\odata.net\src\Microsoft.OData.Edm\Csdl\CsdlReaderSettings.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
{ 
public 

sealed 
class 
CsdlReaderSettings *
{ 
public 
CsdlReaderSettings !
(! "
)" #
{ 	
this 
. 1
%IgnoreUnexpectedAttributesAndElements 6
=7 8
false9 >
;> ?
} 	
public 
Func 
< 
Uri 
, 
	XmlReader "
>" #(
GetReferencedModelReaderFunc$ @
{A B
getC F
;F G
setH K
;K L
}M N
public!! 
bool!! 1
%IgnoreUnexpectedAttributesAndElements!! 9
{!!: ;
get!!< ?
;!!? @
set!!A D
;!!D E
}!!F G
}"" 
}## �
7D:\odata.net\src\Microsoft.OData.Edm\Csdl\CsdlTarget.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
{ 
public 

enum 

CsdlTarget 
{
EntityFramework 
, 
OData 
} 
} ɘ
;D:\odata.net\src\Microsoft.OData.Edm\Csdl\EdmValueParser.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
{ 
internal 
static
class 
EdmValueParser (
{ 
internal"" 
static"" 
readonly""  
Regex""! &$
DayTimeDurationValidator""' ?
=""@ A
PlatformHelper""B P
.""P Q
CreateCompiled""Q _
(""_ `
$str""` p
,""p q
RegexOptions""r ~
.""~ 

Singleline	"" �
)
""� �
;
""� �
internal++ 
static++ 
TimeSpan++  

(++. /
string++/ 5
value++6 ;
)++; <
{,, 	
if-- 
(-- 
value-- 
==-- 
null-- 
||--  
!--! "$
DayTimeDurationValidator--" :
.--: ;
IsMatch--; B
(--B C
value--C H
)--H I
)--I J
{.. 
throw// 
new// 
FormatException// )
(//) *
Strings//* 1
.//1 2'
ValueParser_InvalidDuration//2 M
(//M N
value//N S
)//S T
)//T U
;//U V
}00 
return22 

XmlConvert22 
.22 

ToTimeSpan22 (
(22( )
value22) .
)22. /
;22/ 0
}33 	
internal;; 
static;; 
bool;; 
TryParseBinary;; +
(;;+ ,
string;;, 2
value;;3 8
,;;8 9
out;;: =
byte;;> B
[;;B C
];;C D
result;;E K
);;K L
{<< 	
if== 
(== 
value== 
.== 
Length== 
%== 
$num==  
!===! #
$num==$ %
)==% &
{>> 
result?? 
=?? 
null?? 
;?? 
return@@ 
false@@ 
;@@ 
}AA 
resultCC 
=CC 
newCC 
byteCC 
[CC 
valueCC #
.CC# $
LengthCC$ *
>>CC+ -
$numCC. /
]CC/ 0
;CC0 1
forDD 
(DD 
intDD 
iDD 
=DD 
$numDD 
;DD 
iDD 
<DD 
valueDD  %
.DD% &
LengthDD& ,
;DD, -
++DD. 0
iDD0 1
)DD1 2
{EE 
byteFF 
hFF 
;FF 
ifGG 
(GG 
!GG  
TryParseCharAsBinaryGG )
(GG) *
valueGG* /
[GG/ 0
iGG0 1
]GG1 2
,GG2 3
outGG4 7
hGG8 9
)GG9 :
)GG: ;
{HH 
resultII 
=II 
nullII !
;II! "
returnJJ 
falseJJ  
;JJ  !
}KK 
byteMM 
lMM 
;MM 
ifNN 
(NN 
!NN  
TryParseCharAsBinaryNN )
(NN) *
valueNN* /
[NN/ 0
++NN0 2
iNN2 3
]NN3 4
,NN4 5
outNN6 9
lNN: ;
)NN; <
)NN< =
{OO 
resultPP 
=PP 
nullPP !
;PP! "
returnQQ 
falseQQ  
;QQ  !
}RR 
resultTT 
[TT 
iTT 
>>TT 
$numTT 
]TT 
=TT  
(TT! "
byteTT" &
)TT& '
(TT' (
(TT( )
hTT) *
<<TT+ -
$numTT. /
)TT/ 0
|TT1 2
lTT3 4
)TT4 5
;TT5 6
}UU 
returnWW 
trueWW 
;WW 
}XX 	
internal`` 
static`` 
bool`` 
TryParseBool`` )
(``) *
string``* 0
value``1 6
,``6 7
out``8 ;
bool``< @
?``@ A
result``B H
)``H I
{aa 	
switchbb 
(bb 
valuebb 
.bb 
Lengthbb  
)bb  !
{cc 
casedd 
$numdd 
:dd 
ifee 
(ee 
(ee 
valueee 
[ee 
$numee  
]ee  !
==ee" $
$charee% (
||ee) +
valueee, 1
[ee1 2
$numee2 3
]ee3 4
==ee5 7
$charee8 ;
)ee; <
&&ee= ?
(ff 
valueff 
[ff 
$numff  
]ff  !
==ff" $
$charff% (
||ff) +
valueff, 1
[ff1 2
$numff2 3
]ff3 4
==ff5 7
$charff8 ;
)ff; <
&&ff= ?
(gg 
valuegg 
[gg 
$numgg  
]gg  !
==gg" $
$chargg% (
||gg) +
valuegg, 1
[gg1 2
$numgg2 3
]gg3 4
==gg5 7
$chargg8 ;
)gg; <
&&gg= ?
(hh 
valuehh 
[hh 
$numhh  
]hh  !
==hh" $
$charhh% (
||hh) +
valuehh, 1
[hh1 2
$numhh2 3
]hh3 4
==hh5 7
$charhh8 ;
)hh; <
)hh< =
{ii 
resultjj 
=jj  
truejj! %
;jj% &
returnkk 
truekk #
;kk# $
}ll 
breaknn 
;nn 
casepp 
$numpp 
:pp 
ifqq 
(qq 
(qq 
valueqq 
[qq 
$numqq  
]qq  !
==qq" $
$charqq% (
||qq) +
valueqq, 1
[qq1 2
$numqq2 3
]qq3 4
==qq5 7
$charqq8 ;
)qq; <
&&qq= ?
(rr 
valuerr 
[rr 
$numrr  
]rr  !
==rr" $
$charrr% (
||rr) +
valuerr, 1
[rr1 2
$numrr2 3
]rr3 4
==rr5 7
$charrr8 ;
)rr; <
&&rr= ?
(ss 
valuess 
[ss 
$numss  
]ss  !
==ss" $
$charss% (
||ss) +
valuess, 1
[ss1 2
$numss2 3
]ss3 4
==ss5 7
$charss8 ;
)ss; <
&&ss= ?
(tt 
valuett 
[tt 
$numtt  
]tt  !
==tt" $
$chartt% (
||tt) +
valuett, 1
[tt1 2
$numtt2 3
]tt3 4
==tt5 7
$chartt8 ;
)tt; <
&&tt= ?
(uu 
valueuu 
[uu 
$numuu  
]uu  !
==uu" $
$charuu% (
||uu) +
valueuu, 1
[uu1 2
$numuu2 3
]uu3 4
==uu5 7
$charuu8 ;
)uu; <
)uu< =
{vv 
resultww 
=ww  
falseww! &
;ww& '
returnxx 
truexx #
;xx# $
}yy 
break{{ 
;{{ 
case}} 
$num}} 
:}} 
switch~~ 
(~~ 
value~~ !
[~~! "
$num~~" #
]~~# $
)~~$ %
{ 
case
�� 
$char
��  
:
��  !
result
�� "
=
��# $
true
��% )
;
��) *
return
�� "
true
��# '
;
��' (
case
�� 
$char
��  
:
��  !
result
�� "
=
��# $
false
��% *
;
��* +
return
�� "
true
��# '
;
��' (
}
�� 
break
�� 
;
�� 
default
�� 
:
�� 
break
�� 
;
�� 
}
�� 
result
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
internal
�� 
static
�� 
bool
�� 
TryParseDuration
�� -
(
��- .
string
��. 4
value
��5 :
,
��: ;
out
��< ?
TimeSpan
��@ H
?
��H I
result
��J P
)
��P Q
{
�� 	
try
�� 
{
�� 
result
�� 
=
�� 

�� &
(
��& '
value
��' ,
)
��, -
;
��- .
return
�� 
true
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
FormatException
�� "
)
��" #
{
�� 
result
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
OverflowException
�� $
)
��$ %
{
�� 
result
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
internal
�� 
static
�� 
bool
�� $
TryParseDateTimeOffset
�� 3
(
��3 4
string
��4 :
value
��; @
,
��@ A
out
��B E
DateTimeOffset
��F T
?
��T U
result
��V \
)
��\ ]
{
�� 	
try
�� 
{
�� 
result
�� 
=
�� 
PlatformHelper
�� '
.
��' (+
ConvertStringToDateTimeOffset
��( E
(
��E F
value
��F K
)
��K L
;
��L M
return
�� 
true
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
FormatException
�� "
)
��" #
{
�� 
result
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
catch
�� 
(
�� )
ArgumentOutOfRangeException
�� .
)
��. /
{
�� 
result
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
internal
�� 
static
�� 
bool
�� 
TryParseInt
�� (
(
��( )
string
��) /
value
��0 5
,
��5 6
out
��7 :
int
��; >
?
��> ?
result
��@ F
)
��F G
{
�� 	
try
�� 
{
�� 
result
�� 
=
�� 

XmlConvert
�� #
.
��# $
ToInt32
��$ +
(
��+ ,
value
��, 1
)
��1 2
;
��2 3
return
�� 
true
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
FormatException
�� "
)
��" #
{
�� 
result
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
OverflowException
�� $
)
��$ %
{
�� 
result
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
internal
�� 
static
�� 
bool
�� 
TryParseLong
�� )
(
��) *
string
��* 0
value
��1 6
,
��6 7
out
��8 ;
long
��< @
?
��@ A
result
��B H
)
��H I
{
�� 	
try
�� 
{
�� 
result
�� 
=
�� 

XmlConvert
�� #
.
��# $
ToInt64
��$ +
(
��+ ,
value
��, 1
)
��1 2
;
��2 3
return
�� 
true
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
FormatException
�� "
)
��" #
{
�� 
result
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
OverflowException
�� $
)
��$ %
{
�� 
result
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
internal
�� 
static
�� 
bool
�� 
TryParseDecimal
�� ,
(
��, -
string
��- 3
value
��4 9
,
��9 :
out
��; >
decimal
��? F
?
��F G
result
��H N
)
��N O
{
�� 	
try
�� 
{
�� 
result
�� 
=
�� 

XmlConvert
�� #
.
��# $
	ToDecimal
��$ -
(
��- .
value
��. 3
)
��3 4
;
��4 5
return
�� 
true
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
FormatException
�� "
)
��" #
{
�� 
result
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
OverflowException
�� $
)
��$ %
{
�� 
result
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
internal
�� 
static
�� 
bool
�� 

�� *
(
��* +
string
��+ 1
value
��2 7
,
��7 8
out
��9 <
double
��= C
?
��C D
result
��E K
)
��K L
{
�� 	
try
�� 
{
�� 
result
�� 
=
�� 

XmlConvert
�� #
.
��# $
ToDouble
��$ ,
(
��, -
value
��- 2
)
��2 3
;
��3 4
return
�� 
true
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
FormatException
�� "
)
��" #
{
�� 
result
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
OverflowException
�� $
)
��$ %
{
�� 
result
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
internal
�� 
static
�� 
bool
�� 
TryParseGuid
�� )
(
��) *
string
��* 0
value
��1 6
,
��6 7
out
��8 ;
Guid
��< @
?
��@ A
result
��B H
)
��H I
{
�� 	
try
�� 
{
�� 
result
�� 
=
�� 

XmlConvert
�� #
.
��# $
ToGuid
��$ *
(
��* +
value
��+ 0
)
��0 1
;
��1 2
return
�� 
true
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
FormatException
�� "
)
��" #
{
�� 
result
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
internal
�� 
static
�� 
bool
�� 
TryParseDate
�� )
(
��) *
string
��* 0
value
��1 6
,
��6 7
out
��8 ;
Date
��< @
?
��@ A
result
��B H
)
��H I
{
�� 	
try
�� 
{
�� 
result
�� 
=
�� 
PlatformHelper
�� '
.
��' (!
ConvertStringToDate
��( ;
(
��; <
value
��< A
)
��A B
;
��B C
return
�� 
true
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
FormatException
�� "
)
��" #
{
�� 
result
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
internal
�� 
static
�� 
bool
�� 
TryParseTimeOfDay
�� .
(
��. /
string
��/ 5
value
��6 ;
,
��; <
out
��= @
	TimeOfDay
��A J
?
��J K
result
��L R
)
��R S
{
�� 	
try
�� 
{
�� 
result
�� 
=
�� 
PlatformHelper
�� '
.
��' (&
ConvertStringToTimeOfDay
��( @
(
��@ A
value
��A F
)
��F G
;
��G H
return
�� 
true
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
FormatException
�� "
)
��" #
{
�� 
result
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
static
�� 
bool
�� "
TryParseCharAsBinary
�� 0
(
��0 1
char
��1 5
c
��6 7
,
��7 8
out
��9 <
byte
��= A
b
��B C
)
��C D
{
�� 	
uint
�� 
v
�� 
=
�� 
(
�� 
uint
�� 
)
�� 
c
�� 
-
�� 
(
��  
uint
��  $
)
��$ %
$char
��% (
;
��( )
if
�� 
(
�� 
v
�� 
>=
�� 
$num
�� 
&&
�� 
v
�� 
<=
�� 
$num
��  
)
��  !
{
�� 
b
�� 
=
�� 
(
�� 
byte
�� 
)
�� 
v
�� 
;
�� 
return
�� 
true
�� 
;
�� 
}
�� 
v
�� 
=
�� 
(
�� 
uint
�� 
)
�� 
c
�� 
-
�� 
(
�� 
uint
�� 
)
��  
$char
��  #
;
��# $
if
�� 
(
�� 
v
�� 
<
�� 
$num
�� 
||
�� 
v
�� 
>
�� 
$num
�� 
)
�� 
{
�� 
v
�� 
=
�� 
(
�� 
uint
�� 
)
�� 
c
�� 
-
�� 
(
�� 
uint
�� #
)
��# $
$char
��$ '
;
��' (
}
�� 
if
�� 
(
�� 
v
�� 
>=
�� 
$num
�� 
&&
�� 
v
�� 
<=
�� 
$num
��  
)
��  !
{
�� 
b
�� 
=
�� 
(
�� 
byte
�� 
)
�� 
(
�� 
v
�� 
+
�� 
$num
�� !
)
��! "
;
��" #
return
�� 
true
�� 
;
�� 
}
�� 
b
�� 
=
�� 
default
�� 
(
�� 
byte
�� 
)
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
}
�� 
}�� �c
;D:\odata.net\src\Microsoft.OData.Edm\Csdl\EdmValueWriter.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
{ 
internal 
static
class 
EdmValueWriter (
{   
private$$ 
static$$ 
char$$ 
[$$ 
]$$ 
Hex$$ !
=$$" #
new$$$ '
char$$( ,
[$$, -
]$$- .
{$$/ 0
$char$$1 4
,$$4 5
$char$$6 9
,$$9 :
$char$$; >
,$$> ?
$char$$@ C
,$$C D
$char$$E H
,$$H I
$char$$J M
,$$M N
$char$$O R
,$$R S
$char$$T W
,$$W X
$char$$Y \
,$$\ ]
$char$$^ a
,$$a b
$char$$c f
,$$f g
$char$$h k
,$$k l
$char$$m p
,$$p q
$char$$r u
,$$u v
$char$$w z
,$$z {
$char$$| 
}
$$� �
;
$$� �
internal,, 
static,, 
string,, 
PrimitiveValueAsXml,, 2
(,,2 3
IEdmPrimitiveValue,,3 E
v,,F G
),,G H
{-- 	
switch.. 
(.. 
v.. 
... 
	ValueKind.. 
)..  
{// 
case00 
EdmValueKind00 !
.00! "
Boolean00" )
:00) *
return11 
BooleanAsXml11 '
(11' (
(11( )
(11) *
IEdmBooleanValue11* :
)11: ;
v11; <
)11< =
.11= >
Value11> C
)11C D
;11D E
case22 
EdmValueKind22 !
.22! "
Integer22" )
:22) *
return33 
	LongAsXml33 $
(33$ %
(33% &
(33& '
IEdmIntegerValue33' 7
)337 8
v338 9
)339 :
.33: ;
Value33; @
)33@ A
;33A B
case44 
EdmValueKind44 !
.44! "
Floating44" *
:44* +
return55 

FloatAsXml55 %
(55% &
(55& '
(55' (
IEdmFloatingValue55( 9
)559 :
v55: ;
)55; <
.55< =
Value55= B
)55B C
;55C D
case66 
EdmValueKind66 !
.66! "
Guid66" &
:66& '
return77 
	GuidAsXml77 $
(77$ %
(77% &
(77& '

)774 5
v775 6
)776 7
.777 8
Value778 =
)77= >
;77> ?
case88 
EdmValueKind88 !
.88! "
Binary88" (
:88( )
return99 
BinaryAsXml99 &
(99& '
(99' (
(99( )
IEdmBinaryValue99) 8
)998 9
v999 :
)99: ;
.99; <
Value99< A
)99A B
;99B C
case:: 
EdmValueKind:: !
.::! "
Decimal::" )
:::) *
return;; 
DecimalAsXml;; '
(;;' (
(;;( )
(;;) *
IEdmDecimalValue;;* :
);;: ;
v;;; <
);;< =
.;;= >
Value;;> C
);;C D
;;;D E
case<< 
EdmValueKind<< !
.<<! "
String<<" (
:<<( )
return== 
StringAsXml== &
(==& '
(==' (
(==( )
IEdmStringValue==) 8
)==8 9
v==9 :
)==: ;
.==; <
Value==< A
)==A B
;==B C
case>> 
EdmValueKind>> !
.>>! "
DateTimeOffset>>" 0
:>>0 1
return?? 
DateTimeOffsetAsXml?? .
(??. /
(??/ 0
(??0 1#
IEdmDateTimeOffsetValue??1 H
)??H I
v??I J
)??J K
.??K L
Value??L Q
)??Q R
;??R S
case@@ 
EdmValueKind@@ !
.@@! "
Date@@" &
:@@& '
returnAA 
	DateAsXmlAA $
(AA$ %
(AA% &
(AA& '

)AA4 5
vAA5 6
)AA6 7
.AA7 8
ValueAA8 =
)AA= >
;AA> ?
caseBB 
EdmValueKindBB !
.BB! "
DurationBB" *
:BB* +
returnCC 

(CC( )
(CC) *
(CC* +
IEdmDurationValueCC+ <
)CC< =
vCC= >
)CC> ?
.CC? @
ValueCC@ E
)CCE F
;CCF G
caseDD 
EdmValueKindDD !
.DD! "
	TimeOfDayDD" +
:DD+ ,
returnEE 
TimeOfDayAsXmlEE )
(EE) *
(EE* +
(EE+ ,
IEdmTimeOfDayValueEE, >
)EE> ?
vEE? @
)EE@ A
.EEA B
ValueEEB G
)EEG H
;EEH I
defaultFF 
:FF 
throwGG 
newGG !
NotSupportedExceptionGG 3
(GG3 4
EdmGG4 7
.GG7 8
StringsGG8 ?
.GG? @,
 ValueWriter_NonSerializableValueGG@ `
(GG` a
vGGa b
.GGb c
	ValueKindGGc l
)GGl m
)GGm n
;GGn o
}HH 
}II 	
internalPP 
staticPP 
stringPP 
StringAsXmlPP *
(PP* +
stringPP+ 1
sPP2 3
)PP3 4
{QQ 	
returnRR 
sRR 
;RR 
}SS 	
internalZZ 
staticZZ 
stringZZ 
BinaryAsXmlZZ *
(ZZ* +
byteZZ+ /
[ZZ/ 0
]ZZ0 1
binaryZZ2 8
)ZZ8 9
{[[ 	
var\\ 
chars\\ 
=\\ 
new\\ 
char\\  
[\\  !
binary\\! '
.\\' (
Length\\( .
*\\/ 0
$num\\1 2
]\\2 3
;\\3 4
for]] 
(]] 
int]] 
i]] 
=]] 
$num]] 
;]] 
i]] 
<]] 
binary]]  &
.]]& '
Length]]' -
;]]- .
++]]/ 1
i]]1 2
)]]2 3
{^^ 
chars__ 
[__ 
i__ 
<<__ 
$num__ 
]__ 
=__ 
Hex__  #
[__# $
binary__$ *
[__* +
i__+ ,
]__, -
>>__. 0
$num__1 2
]__2 3
;__3 4
chars`` 
[`` 
i`` 
<<`` 
$num`` 
|`` 
$num``  
]``  !
=``" #
Hex``$ '
[``' (
binary``( .
[``. /
i``/ 0
]``0 1
&``2 3
$num``4 8
]``8 9
;``9 :
}aa 
returncc 
newcc 
stringcc 
(cc 
charscc #
)cc# $
;cc$ %
}dd 	
internalkk 
statickk 
stringkk 
BooleanAsXmlkk +
(kk+ ,
boolkk, 0
bkk1 2
)kk2 3
{ll 	
returnmm 

XmlConvertmm 
.mm 
ToStringmm &
(mm& '
bmm' (
)mm( )
;mm) *
}nn 	
internaluu 
staticuu 
stringuu 
BooleanAsXmluu +
(uu+ ,
booluu, 0
?uu0 1
buu2 3
)uu3 4
{vv 	
Debugww 
.ww 
Assertww 
(ww 
bww 
.ww 
HasValueww #
,ww# $
$strww% S
)wwS T
;wwT U
returnxx 
BooleanAsXmlxx 
(xx  
bxx  !
.xx! "
Valuexx" '
)xx' (
;xx( )
}yy 	
internal
�� 
static
�� 
string
�� 
IntAsXml
�� '
(
��' (
int
��( +
i
��, -
)
��- .
{
�� 	
return
�� 

XmlConvert
�� 
.
�� 
ToString
�� &
(
��& '
i
��' (
)
��( )
;
��) *
}
�� 	
internal
�� 
static
�� 
string
�� 
IntAsXml
�� '
(
��' (
int
��( +
?
��+ ,
i
��- .
)
��. /
{
�� 	
Debug
�� 
.
�� 
Assert
�� 
(
�� 
i
�� 
.
�� 
HasValue
�� #
,
��# $
$str
��% S
)
��S T
;
��T U
return
�� 
IntAsXml
�� 
(
�� 
i
�� 
.
�� 
Value
�� #
)
��# $
;
��$ %
}
�� 	
internal
�� 
static
�� 
string
�� 
	LongAsXml
�� (
(
��( )
long
��) -
l
��. /
)
��/ 0
{
�� 	
return
�� 

XmlConvert
�� 
.
�� 
ToString
�� &
(
��& '
l
��' (
)
��( )
;
��) *
}
�� 	
internal
�� 
static
�� 
string
�� 

FloatAsXml
�� )
(
��) *
double
��* 0
f
��1 2
)
��2 3
{
�� 	
return
�� 

XmlConvert
�� 
.
�� 
ToString
�� &
(
��& '
f
��' (
)
��( )
;
��) *
}
�� 	
internal
�� 
static
�� 
string
�� 
DecimalAsXml
�� +
(
��+ ,
decimal
��, 3
d
��4 5
)
��5 6
{
�� 	
return
�� 

XmlConvert
�� 
.
�� 
ToString
�� &
(
��& '
d
��' (
)
��( )
;
��) *
}
�� 	
internal
�� 
static
�� 
string
�� 

�� ,
(
��, -
TimeSpan
��- 5
d
��6 7
)
��7 8
{
�� 	
return
�� 

XmlConvert
�� 
.
�� 
ToString
�� &
(
��& '
d
��' (
)
��( )
;
��) *
}
�� 	
internal
�� 
static
�� 
string
�� !
DateTimeOffsetAsXml
�� 2
(
��2 3
DateTimeOffset
��3 A
d
��B C
)
��C D
{
�� 	
var
�� 
value
�� 
=
�� 

XmlConvert
�� "
.
��" #
ToString
��# +
(
��+ ,
d
��, -
)
��- .
;
��. /
Debug
�� 
.
�� 
Assert
�� 
(
�� 
EdmValueParser
�� '
.
��' (&
DayTimeDurationValidator
��( @
.
��@ A
IsMatch
��A H
(
��H I
value
��I N
)
��N O
,
��O P
$str��Q �
)��� �
;��� �
return
�� 
value
�� 
;
�� 
}
�� 	
internal
�� 
static
�� 
string
�� 
	DateAsXml
�� (
(
��( )
Date
��) -
d
��. /
)
��/ 0
{
�� 	
var
�� 
value
�� 
=
�� 
d
�� 
.
�� 
ToString
�� "
(
��" #
)
��# $
;
��$ %
return
�� 
value
�� 
;
�� 
}
�� 	
internal
�� 
static
�� 
string
�� 
TimeOfDayAsXml
�� -
(
��- .
	TimeOfDay
��. 7
time
��8 <
)
��< =
{
�� 	
var
�� 
value
�� 
=
�� 
time
�� 
.
�� 
ToString
�� %
(
��% &
)
��& '
;
��' (
return
�� 
value
�� 
;
�� 
}
�� 	
internal
�� 
static
�� 
string
�� 
	GuidAsXml
�� (
(
��( )
Guid
��) -
g
��. /
)
��/ 0
{
�� 	
return
�� 

XmlConvert
�� 
.
�� 
ToString
�� &
(
��& '
g
��' (
)
��( )
;
��) *
}
�� 	
internal
�� 
static
�� 
string
�� 
UriAsXml
�� '
(
��' (
Uri
��( +
uri
��, /
)
��/ 0
{
�� 	
Debug
�� 
.
�� 
Assert
�� 
(
�� 
uri
�� 
!=
�� 
null
��  $
,
��$ %
$str
��& 3
)
��3 4
;
��4 5
return
�� 
uri
�� 
.
�� 
OriginalString
�� %
;
��% &
}
�� 	
}
�� 
}�� �
]D:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlNavigationPropertyPathExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal 
class
$CsdlNavigationPropertyPathExpression 7
:8 9
CsdlPathExpression: L
{
public 0
$CsdlNavigationPropertyPathExpression 3
(3 4
string4 :
path; ?
,? @
CsdlLocationA M
locationN V
)V W
: 
base 
( 
path 
, 
location !
)! "
{ 	
} 	
public 
override 
EdmExpressionKind )
ExpressionKind* 8
{ 	
get 
{ 
return 
EdmExpressionKind *
.* +"
NavigationPropertyPath+ A
;A B
}C D
} 	
} 
} �
UD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlAbstractNavigationSource.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal 
abstract
class (
CsdlAbstractNavigationSource 8
:9 :
CsdlNamedElement; K
{ 
private 
readonly 
List 
< )
CsdlNavigationPropertyBinding ;
>; <&
navigationPropertyBindings= W
;W X
public (
CsdlAbstractNavigationSource +
(+ ,
string, 2
name3 7
,7 8
IEnumerable9 D
<D E)
CsdlNavigationPropertyBindingE b
>b c&
navigationPropertyBindingsd ~
,~ 
CsdlLocation
� �
location
� �
)
� �
: 
base 
( 
name 
, 
location !
)! "
{ 	
this 
. &
navigationPropertyBindings +
=, -
new. 1
List2 6
<6 7)
CsdlNavigationPropertyBinding7 T
>T U
(U V&
navigationPropertyBindingsV p
)p q
;q r
} 	
public 
IEnumerable 
< )
CsdlNavigationPropertyBinding 8
>8 9&
NavigationPropertyBindings: T
{ 	
get 
{ 
return 
this 
. &
navigationPropertyBindings 8
;8 9
}: ;
} 	
} 
} �	
CD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlAction.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #
Parsing		# *
.		* +
Ast		+ .
{

 
internal 
class

CsdlAction 
: 

{ 
public 

CsdlAction 
( 
string 
name 
, 
IEnumerable 
< "
CsdlOperationParameter .
>. /

parameters0 :
,: ;
CsdlTypeReference 

returnType (
,( )
bool 
isBound 
, 
string 

,  !
CsdlLocation 
location !
)! "
:   
base   
(   
name   
,   

parameters   #
,  # $

returnType  % /
,  / 0
isBound  1 8
,  8 9

,  G H
location  I Q
)  Q R
{!! 	
}"" 	
}## 
}$$ �	
ID:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlActionImport.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal 
class
CsdlActionImport #
:$ %
CsdlOperationImport& 9
{
public 
CsdlActionImport 
(  
string 
name 
, 
string ,
 schemaOperationQualifiedTypeName 3
,3 4
string 
	entitySet 
, 
CsdlLocation 
location !
)! "
: 
base 
( 
name 
, ,
 schemaOperationQualifiedTypeName 9
,9 :
	entitySet; D
,D E
newF I"
CsdlOperationParameterJ `
[` a
]a b
{c d
}e f
,f g
nullh l
,{ |
location	} �
)
� �
{ 	
} 	
} 
} �
LD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlApplyExpression.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #
Parsing		# *
.		* +
Ast		+ .
{

 
internal 
class
CsdlApplyExpression &
:' (
CsdlExpressionBase) ;
{ 
private
readonly
string
function
;
private 
readonly 
List 
< 
CsdlExpressionBase 0
>0 1
	arguments2 ;
;; <
public 
CsdlApplyExpression "
(" #
string# )
function* 2
,2 3
IEnumerable4 ?
<? @
CsdlExpressionBase@ R
>R S
	argumentsT ]
,] ^
CsdlLocation_ k
locationl t
)t u
: 
base 
( 
location 
) 
{ 	
this 
. 
function 
= 
function $
;$ %
this 
. 
	arguments 
= 
new  
List! %
<% &
CsdlExpressionBase& 8
>8 9
(9 :
	arguments: C
)C D
;D E
} 	
public 
override 
EdmExpressionKind )
ExpressionKind* 8
{ 	
get 
{ 
return 
EdmExpressionKind *
.* +
FunctionApplication+ >
;> ?
}@ A
} 	
public 
string 
Function 
{ 	
get 
{ 
return 
this 
. 
function &
;& '
}( )
} 	
public!! 
IEnumerable!! 
<!! 
CsdlExpressionBase!! -
>!!- .
	Arguments!!/ 8
{"" 	
get## 
{## 
return## 
this## 
.## 
	arguments## '
;##' (
}##) *
}$$ 	
}%% 
}&& �
KD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlCastExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal		 
class		
CsdlCastExpression		 %
:		& '
CsdlExpressionBase		( :
{

 
private 
readonly 
CsdlTypeReference *
type+ /
;/ 0
private 
readonly 
CsdlExpressionBase +
operand, 3
;3 4
public 
CsdlCastExpression !
(! "
CsdlTypeReference" 3
type4 8
,8 9
CsdlExpressionBase: L
operandM T
,T U
CsdlLocationV b
locationc k
)k l
: 
base 
( 
location 
) 
{ 	
this 
. 
type 
= 
type 
; 
this 
. 
operand 
= 
operand "
;" #
} 	
public 
override 
EdmExpressionKind )
ExpressionKind* 8
{ 	
get 
{ 
return 
EdmExpressionKind *
.* +
Cast+ /
;/ 0
}1 2
} 	
public 
CsdlTypeReference  
Type! %
{ 	
get 
{ 
return 
this 
. 
type "
;" #
}$ %
} 	
public 
CsdlExpressionBase !
Operand" )
{   	
get!! 
{!! 
return!! 
this!! 
.!! 
operand!! %
;!!% &
}!!' (
}"" 	
}## 
}$$ �
QD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlCollectionExpression.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #
Parsing		# *
.		* +
Ast		+ .
{

 
internal 
class
CsdlCollectionExpression +
:, -
CsdlExpressionBase. @
{ 
private 
readonly 
CsdlTypeReference *
type+ /
;/ 0
private 
readonly 
List 
< 
CsdlExpressionBase 0
>0 1

;? @
public $
CsdlCollectionExpression '
(' (
CsdlTypeReference( 9
type: >
,> ?
IEnumerable@ K
<K L
CsdlExpressionBaseL ^
>^ _

,m n
CsdlLocationo {
location	| �
)
� �
: 
base 
( 
location 
) 
{ 	
this 
. 
type 
= 
type 
; 
this 
. 

=  
new! $
List% )
<) *
CsdlExpressionBase* <
>< =
(= >

)K L
;L M
} 	
public 
override 
EdmExpressionKind )
ExpressionKind* 8
{ 	
get 
{ 
return 
EdmExpressionKind *
.* +

Collection+ 5
;5 6
}7 8
} 	
public 
CsdlTypeReference  
Type! %
{   	
get!! 
{!! 
return!! 
this!! 
.!! 
type!! "
;!!" #
}!!$ %
}"" 	
public$$ 
IEnumerable$$ 
<$$ 
CsdlExpressionBase$$ -
>$$- .

{%% 	
get&& 
{&& 
return&& 
this&& 
.&& 

;&&+ ,
}&&- .
}'' 	
}(( 
})) �
GD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlEnumMember.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal 
class
CsdlEnumMember !
:" #
CsdlNamedElement$ 4
{
public 
CsdlEnumMember 
( 
string $
name% )
,) *
long+ /
?/ 0
value1 6
,6 7
CsdlLocation8 D
locationE M
)M N
: 
base 
( 
name 
, 
location !
)! "
{ 	
this 
. 
Value 
= 
value 
; 
} 	
public 
long 
? 
Value 
{ 	
get 
; 
set 
; 
} 	
} 
} �
ED:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlEnumType.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #
Parsing		# *
.		* +
Ast		+ .
{

 
internal 
class
CsdlEnumType 
:  !
CsdlNamedElement" 2
{ 
private 
readonly 
string 
underlyingTypeName  2
;2 3
private 
readonly 
bool 
isFlags %
;% &
private 
readonly 
List 
< 
CsdlEnumMember ,
>, -
members. 5
;5 6
public 
CsdlEnumType 
( 
string "
name# '
,' (
string) /
underlyingTypeName0 B
,B C
boolD H
isFlagsI P
,P Q
IEnumerableR ]
<] ^
CsdlEnumMember^ l
>l m
membersn u
,u v
CsdlLocation	w �
location
� �
)
� �
: 
base 
( 
name 
, 
location !
)! "
{ 	
this 
. 
underlyingTypeName #
=$ %
underlyingTypeName& 8
;8 9
this 
. 
isFlags 
= 
isFlags "
;" #
this 
. 
members 
= 
new 
List #
<# $
CsdlEnumMember$ 2
>2 3
(3 4
members4 ;
); <
;< =
} 	
public 
string 
UnderlyingTypeName (
{ 	
get 
{ 
return 
this 
. 
underlyingTypeName 0
;0 1
}2 3
} 	
public!! 
bool!! 
IsFlags!! 
{"" 	
get## 
{## 
return## 
this## 
.## 
isFlags## %
;##% &
}##' (
}$$ 	
public&& 
IEnumerable&& 
<&& 
CsdlEnumMember&& )
>&&) *
Members&&+ 2
{'' 	
get(( 
{(( 
return(( 
this(( 
.(( 
members(( %
;((% &
}((' (
})) 	
}** 
}++ �
ED:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlFunction.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #
Parsing		# *
.		* +
Ast		+ .
{

 
internal 
class
CsdlFunction 
:  !

{ 
public 
CsdlFunction 
( 
string 
name 
, 
IEnumerable 
< "
CsdlOperationParameter .
>. /

parameters0 :
,: ;
CsdlTypeReference 

returnType (
,( )
bool 
isBound 
, 
string 

,  !
bool   
isComposable   
,   
CsdlLocation!! 
location!! !
)!!! "
:"" 
base"" 
("" 
name"" 
,"" 

parameters"" #
,""# $

returnType""% /
,""/ 0
isBound""1 8
,""8 9

,""G H
location""I Q
)""Q R
{## 	
this$$ 
.$$ 
IsComposable$$ 
=$$ 
isComposable$$  ,
;$$, -
}%% 	
public'' 
bool'' 
IsComposable''  
{''! "
get''# &
;''& '
private''( /
set''0 3
;''3 4
}''5 6
}(( 
})) �
KD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlFunctionImport.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal 
class
CsdlFunctionImport %
:& '
CsdlOperationImport( ;
{
public 
CsdlFunctionImport !
(! "
string 
name 
, 
string ,
 schemaOperationQualifiedTypeName 3
,3 4
string 
	entitySet 
, 
bool $
includeInServiceDocument )
,) *
CsdlLocation 
location !
)! "
: 
base 
( 
name 
, ,
 schemaOperationQualifiedTypeName 9
,9 :
	entitySet; D
,D E
newF I"
CsdlOperationParameterJ `
[` a
]a b
{c d
}e f
,f g
nullh l
,{ |
location	} �
)
� �
{ 	
this 
. $
IncludeInServiceDocument )
=* +$
includeInServiceDocument, D
;D E
} 	
public 
bool $
IncludeInServiceDocument ,
{- .
get/ 2
;2 3
private4 ;
set< ?
;? @
}A B
} 
} �
ID:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlIfExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal		 
class		
CsdlIfExpression		 #
:		$ %
CsdlExpressionBase		& 8
{

 
private 
readonly 
CsdlExpressionBase +
test, 0
;0 1
private 
readonly 
CsdlExpressionBase +
ifTrue, 2
;2 3
private
readonly
CsdlExpressionBase
ifFalse
;
public 
CsdlIfExpression 
(  
CsdlExpressionBase  2
test3 7
,7 8
CsdlExpressionBase9 K
ifTrueL R
,R S
CsdlExpressionBaseT f
ifFalseg n
,n o
CsdlLocationp |
location	} �
)
� �
: 
base 
( 
location 
) 
{ 	
this 
. 
test 
= 
test 
; 
this 
. 
ifTrue 
= 
ifTrue  
;  !
this 
. 
ifFalse 
= 
ifFalse "
;" #
} 	
public 
override 
EdmExpressionKind )
ExpressionKind* 8
{ 	
get 
{ 
return 
EdmExpressionKind *
.* +
If+ -
;- .
}/ 0
} 	
public 
CsdlExpressionBase !
Test" &
{ 	
get 
{ 
return 
this 
. 
test "
;" #
}$ %
} 	
public!! 
CsdlExpressionBase!! !
IfTrue!!" (
{"" 	
get## 
{## 
return## 
this## 
.## 
ifTrue## $
;##$ %
}##& '
}$$ 	
public&& 
CsdlExpressionBase&& !
IfFalse&&" )
{'' 	
get(( 
{(( 
return(( 
this(( 
.(( 
ifFalse(( %
;((% &
}((' (
})) 	
}** 
}++ �
MD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlIsTypeExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal		 
class		
CsdlIsTypeExpression		 '
:		( )
CsdlExpressionBase		* <
{

 
private 
readonly 
CsdlTypeReference *
type+ /
;/ 0
private 
readonly 
CsdlExpressionBase +
operand, 3
;3 4
public  
CsdlIsTypeExpression #
(# $
CsdlTypeReference$ 5
type6 :
,: ;
CsdlExpressionBase< N
operandO V
,V W
CsdlLocationX d
locatione m
)m n
: 
base 
( 
location 
) 
{ 	
this 
. 
type 
= 
type 
; 
this 
. 
operand 
= 
operand "
;" #
} 	
public 
override 
EdmExpressionKind )
ExpressionKind* 8
{ 	
get 
{ 
return 
EdmExpressionKind *
.* +
IsType+ 1
;1 2
}3 4
} 	
public 
CsdlTypeReference  
Type! %
{ 	
get 
{ 
return 
this 
. 
type "
;" #
}$ %
} 	
public 
CsdlExpressionBase !
Operand" )
{   	
get!! 
{!! 
return!! 
this!! 
.!! 
operand!! %
;!!% &
}!!' (
}"" 	
}## 
}$$ �
ND:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlLabeledExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal		 
class		
CsdlLabeledExpression		 (
:		) *
CsdlExpressionBase		+ =
{

 
private 
readonly 
string 
label  %
;% &
private 
readonly 
CsdlExpressionBase +
element, 3
;3 4
public !
CsdlLabeledExpression $
($ %
string% +
label, 1
,1 2
CsdlExpressionBase3 E
elementF M
,M N
CsdlLocationO [
location\ d
)d e
: 
base 
( 
location 
) 
{ 	
this 
. 
label 
= 
label 
; 
this 
. 
element 
= 
element "
;" #
} 	
public 
override 
EdmExpressionKind )
ExpressionKind* 8
{ 	
get 
{ 
return 
EdmExpressionKind *
.* +
Labeled+ 2
;2 3
}4 5
} 	
public 
string 
Label 
{ 	
get 
{ 
return 
this 
. 
label #
;# $
}% &
} 	
public 
CsdlExpressionBase !
Element" )
{   	
get!! 
{!! 
return!! 
this!! 
.!! 
element!! %
;!!% &
}!!' (
}"" 	
}## 
}$$ �
aD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlLabeledExpressionReferenceExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal		 
class		
(CsdlLabeledExpressionReferenceExpression		 ;
:		< =
CsdlExpressionBase		> P
{

 
private 
readonly 
string 
label  %
;% &
public
(CsdlLabeledExpressionReferenceExpression
(
string
label
,
CsdlLocation
location
)
: 
base 
( 
location 
) 
{ 	
this 
. 
label 
= 
label 
; 
} 	
public 
override 
EdmExpressionKind )
ExpressionKind* 8
{ 	
get 
{ 
return 
EdmExpressionKind *
.* +&
LabeledExpressionReference+ E
;E F
}G H
} 	
public 
string 
Label 
{ 	
get 
{ 
return 
this 
. 
label #
;# $
}% &
} 	
} 
} �
KD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlPathExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal 
class
CsdlPathExpression %
:& '
CsdlExpressionBase( :
{
private 
readonly 
string 
path  $
;$ %
public 
CsdlPathExpression !
(! "
string" (
path) -
,- .
CsdlLocation/ ;
location< D
)D E
: 
base 
( 
location 
) 
{ 	
this 
. 
path 
= 
path 
; 
} 	
public 
override 
EdmExpressionKind )
ExpressionKind* 8
{ 	
get 
{ 
return 
EdmExpressionKind *
.* +
Path+ /
;/ 0
}1 2
} 	
public 
string 
Path 
{ 	
get 
{ 
return 
this 
. 
path "
;" #
}$ %
} 	
} 
}   �
SD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlPropertyPathExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal 
class
CsdlPropertyPathExpression -
:. /
CsdlPathExpression0 B
{
public &
CsdlPropertyPathExpression )
() *
string* 0
path1 5
,5 6
CsdlLocation7 C
locationD L
)L M
: 
base 
( 
path 
, 
location !
)! "
{ 	
} 	
public 
override 
EdmExpressionKind )
ExpressionKind* 8
{ 	
get 
{ 
return 
EdmExpressionKind *
.* +
PropertyPath+ 7
;7 8
}9 :
} 	
} 
} �
GD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlAnnotation.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal 
class
CsdlAnnotation !
:" #
CsdlElement$ /
{
private 
readonly 
CsdlExpressionBase +

expression, 6
;6 7
private 
readonly 
string 
	qualifier  )
;) *
private 
readonly 
string 
term  $
;$ %
public 
CsdlAnnotation 
( 
string $
term% )
,) *
string+ 1
	qualifier2 ;
,; <
CsdlExpressionBase= O

expressionP Z
,Z [
CsdlLocation\ h
locationi q
)q r
: 
base 
( 
location 
) 
{ 	
this 
. 

expression 
= 

expression (
;( )
this 
. 
	qualifier 
= 
	qualifier &
;& '
this 
. 
term 
= 
term 
; 
} 	
public 
CsdlExpressionBase !

Expression" ,
{ 	
get 
{ 
return 
this 
. 

expression (
;( )
}* +
} 	
public 
string 
	Qualifier 
{   	
get!! 
{!! 
return!! 
this!! 
.!! 
	qualifier!! '
;!!' (
}!!) *
}"" 	
public$$ 
string$$ 
Term$$ 
{%% 	
get&& 
{&& 
return&& 
this&& 
.&& 
term&& "
;&&" #
}&&$ %
}'' 	
}(( 
})) �
HD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlAnnotations.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #
Parsing		# *
.		* +
Ast		+ .
{

 
internal 
class
CsdlAnnotations "
{ 
private 
readonly 
List 
< 
CsdlAnnotation ,
>, -
annotations. 9
;9 :
private 
readonly 
string 
target  &
;& '
private 
readonly 
string 
	qualifier  )
;) *
public 
CsdlAnnotations 
( 
IEnumerable *
<* +
CsdlAnnotation+ 9
>9 :
annotations; F
,F G
stringH N
targetO U
,U V
stringW ]
	qualifier^ g
)g h
{ 	
this 
. 
annotations 
= 
new "
List# '
<' (
CsdlAnnotation( 6
>6 7
(7 8
annotations8 C
)C D
;D E
this 
. 
target 
= 
target  
;  !
this 
. 
	qualifier 
= 
	qualifier &
;& '
} 	
public 
IEnumerable 
< 
CsdlAnnotation )
>) *
Annotations+ 6
{ 	
get 
{ 
return 
this 
. 
annotations )
;) *
}+ ,
} 	
public   
string   
	Qualifier   
{!! 	
get"" 
{"" 
return"" 
this"" 
."" 
	qualifier"" '
;""' (
}"") *
}## 	
public%% 
string%% 
Target%% 
{&& 	
get'' 
{'' 
return'' 
this'' 
.'' 
target'' $
;''$ %
}''& '
}(( 	
})) 
}** �

KD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlCollectionType.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal 
class
CsdlCollectionType %
:& '
CsdlElement( 3
,3 4
ICsdlTypeExpression5 H
{
private 
readonly 
CsdlTypeReference *
elementType+ 6
;6 7
public 
CsdlCollectionType !
(! "
CsdlTypeReference" 3
elementType4 ?
,? @
CsdlLocationA M
locationN V
)V W
: 
base 
( 
location 
) 
{ 	
this 
. 
elementType 
= 
elementType *
;* +
} 	
public 
CsdlTypeReference  
ElementType! ,
{ 	
get 
{ 
return 
this 
. 
elementType )
;) *
}+ ,
} 	
} 
} �#
OD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlConstantExpression.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #
Parsing		# *
.		* +
Ast		+ .
{

 
internal 
class
CsdlConstantExpression )
:* +
CsdlExpressionBase, >
{ 
private 
readonly 
EdmValueKind %
kind& *
;* +
private 
readonly 
string 
value  %
;% &
public "
CsdlConstantExpression %
(% &
EdmValueKind& 2
kind3 7
,7 8
string9 ?
value@ E
,E F
CsdlLocationG S
locationT \
)\ ]
: 
base 
( 
location 
) 
{ 	
this 
. 
kind 
= 
kind 
; 
this 
. 
value 
= 
value 
; 
} 	
public 
override 
EdmExpressionKind )
ExpressionKind* 8
{ 	
get 
{ 
switch 
( 
this 
. 
kind !
)! "
{ 
case   
EdmValueKind   %
.  % &
Binary  & ,
:  , -
return!! 
EdmExpressionKind!! 0
.!!0 1
BinaryConstant!!1 ?
;!!? @
case"" 
EdmValueKind"" %
.""% &
Boolean""& -
:""- .
return## 
EdmExpressionKind## 0
.##0 1
BooleanConstant##1 @
;##@ A
case$$ 
EdmValueKind$$ %
.$$% &
DateTimeOffset$$& 4
:$$4 5
return%% 
EdmExpressionKind%% 0
.%%0 1"
DateTimeOffsetConstant%%1 G
;%%G H
case&& 
EdmValueKind&& %
.&&% &
Decimal&&& -
:&&- .
return'' 
EdmExpressionKind'' 0
.''0 1
DecimalConstant''1 @
;''@ A
case(( 
EdmValueKind(( %
.((% &
Floating((& .
:((. /
return)) 
EdmExpressionKind)) 0
.))0 1
FloatingConstant))1 A
;))A B
case** 
EdmValueKind** %
.**% &
Guid**& *
:*** +
return++ 
EdmExpressionKind++ 0
.++0 1
GuidConstant++1 =
;++= >
case,, 
EdmValueKind,, %
.,,% &
Integer,,& -
:,,- .
return-- 
EdmExpressionKind-- 0
.--0 1
IntegerConstant--1 @
;--@ A
case.. 
EdmValueKind.. %
...% &
String..& ,
:.., -
return// 
EdmExpressionKind// 0
.//0 1
StringConstant//1 ?
;//? @
case00 
EdmValueKind00 %
.00% &
Duration00& .
:00. /
return11 
EdmExpressionKind11 0
.110 1
DurationConstant111 A
;11A B
case22 
EdmValueKind22 %
.22% &
Date22& *
:22* +
return33 
EdmExpressionKind33 0
.330 1
DateConstant331 =
;33= >
case44 
EdmValueKind44 %
.44% &
	TimeOfDay44& /
:44/ 0
return55 
EdmExpressionKind55 0
.550 1
TimeOfDayConstant551 B
;55B C
case66 
EdmValueKind66 %
.66% &
Null66& *
:66* +
return77 
EdmExpressionKind77 0
.770 1
Null771 5
;775 6
default88 
:88 
return99 
EdmExpressionKind99 0
.990 1
None991 5
;995 6
}:: 
};; 
}<< 	
public>> 
EdmValueKind>> 
	ValueKind>> %
{?? 	
get@@ 
{AA 
returnBB 
thisBB 
.BB 
kindBB  
;BB  !
}CC 
}DD 	
publicFF 
stringFF 
ValueFF 
{GG 	
getHH 
{HH 
returnHH 
thisHH 
.HH 
valueHH #
;HH# $
}HH% &
}II 	
}JJ 
}KK �
KD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlExpressionBase.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal 
abstract
class 
CsdlExpressionBase .
:/ 0
CsdlElement1 <
{
public 
CsdlExpressionBase !
(! "
CsdlLocation" .
location/ 7
)7 8
: 
base 
( 
location 
) 
{ 	
} 	
public 
abstract 
EdmExpressionKind )
ExpressionKind* 8
{9 :
get; >
;> ?
}@ A
} 
} �
JD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlPropertyValue.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal 
class
CsdlPropertyValue $
:% &
CsdlElement' 2
{
private 
readonly 
CsdlExpressionBase +

expression, 6
;6 7
private 
readonly 
string 
property  (
;( )
public 
CsdlPropertyValue  
(  !
string! '
property( 0
,0 1
CsdlExpressionBase2 D

expressionE O
,O P
CsdlLocationQ ]
location^ f
)f g
: 
base 
( 
location 
) 
{ 	
this 
. 
property 
= 
property $
;$ %
this 
. 

expression 
= 

expression (
;( )
} 	
public 
string 
Property 
{ 	
get 
{ 
return 
this 
. 
property &
;& '
}( )
} 	
public 
CsdlExpressionBase !

Expression" ,
{ 	
get 
{ 
return 
this 
. 

expression (
;( )
}* +
}   	
}!! 
}"" �
MD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlRecordExpression.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #
Parsing		# *
.		* +
Ast		+ .
{

 
internal 
class
CsdlRecordExpression '
:( )
CsdlExpressionBase* <
{ 
private 
readonly 
CsdlTypeReference *
type+ /
;/ 0
private 
readonly 
List 
< 
CsdlPropertyValue /
>/ 0
propertyValues1 ?
;? @
public  
CsdlRecordExpression #
(# $
CsdlTypeReference$ 5
type6 :
,: ;
IEnumerable< G
<G H
CsdlPropertyValueH Y
>Y Z
propertyValues[ i
,i j
CsdlLocationk w
location	x �
)
� �
: 
base 
( 
location 
) 
{ 	
this 
. 
type 
= 
type 
; 
this 
. 
propertyValues 
=  !
new" %
List& *
<* +
CsdlPropertyValue+ <
>< =
(= >
propertyValues> L
)L M
;M N
} 	
public 
override 
EdmExpressionKind )
ExpressionKind* 8
{ 	
get 
{ 
return 
EdmExpressionKind *
.* +
Record+ 1
;1 2
}3 4
} 	
public 
CsdlTypeReference  
Type! %
{   	
get!! 
{!! 
return!! 
this!! 
.!! 
type!! "
;!!" #
}!!$ %
}"" 	
public$$ 
IEnumerable$$ 
<$$ 
CsdlPropertyValue$$ ,
>$$, -
PropertyValues$$. <
{%% 	
get&& 
{&& 
return&& 
this&& 
.&& 
propertyValues&& ,
;&&, -
}&&. /
}'' 	
}(( 
})) �
FD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlSingleton.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal 
class

:! "(
CsdlAbstractNavigationSource# ?
{ 
private 
readonly 
string 
type  $
;$ %
public 

( 
string #
name$ (
,( )
string* 0
type1 5
,5 6
IEnumerable7 B
<B C)
CsdlNavigationPropertyBindingC `
>` a&
navigationPropertyBindingsb |
,| }
CsdlLocation	~ �
location
� �
)
� �
: 
base 
( 
name 
, &
navigationPropertyBindings 3
,3 4
location5 =
)= >
{ 	
this 
. 
type 
= 
type 
; 
} 	
public 
string 
Type 
{ 	
get 
{ 
return 
this 
. 
type "
;" #
}$ %
} 	
} 
} �
QD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlSpatialTypeReference.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal		 
class		
CsdlSpatialTypeReference		 +
:		, -&
CsdlPrimitiveTypeReference		. H
{

 
private 
readonly 
int 
? 
srid !
;! "
public
CsdlSpatialTypeReference
(
EdmPrimitiveTypeKind
kind
,
int
?
srid
,
string
typeName
,
bool

isNullable
,
CsdlLocation
location	
)

: 
base 
( 
kind 
, 
typeName !
,! "

isNullable# -
,- .
location/ 7
)7 8
{ 	
this 
. 
srid 
= 
srid 
; 
} 	
public 
int 
? 
Srid 
{ 	
get 
{ 
return 
this 
. 
srid "
;" #
}$ %
} 	
} 
} �

KD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlTypeDefinition.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal 
class
CsdlTypeDefinition %
:& '
CsdlNamedElement( 8
{
private 
readonly 
string 
underlyingTypeName  2
;2 3
public 
CsdlTypeDefinition !
(! "
string" (
name) -
,- .
string/ 5
underlyingTypeName6 H
,H I
CsdlLocationJ V
locationW _
)_ `
: 
base 
( 
name 
, 
location !
)! "
{ 	
this 
. 
underlyingTypeName #
=$ %
underlyingTypeName& 8
;8 9
} 	
public 
string 
UnderlyingTypeName (
{ 	
get 
{ 
return 
this 
. 
underlyingTypeName 0
;0 1
}2 3
} 	
} 
} �
LD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\ICsdlTypeExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal 
	interface
ICsdlTypeExpression *
{ 
} 
} �	
SD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\BadElements\UnresolvedAction.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
UnresolvedAction #
:$ %
UnresolvedOperation& 9
,9 :

IEdmAction; E
{
public 
UnresolvedAction 
(  
string  &

,4 5
string6 <
errorMessage= I
,I J
EdmLocationK V
locationW _
)_ `
: 
base 
( 

,  !
errorMessage" .
,. /
location0 8
)8 9
{ 	
} 	
public 
new  
EdmSchemaElementKind '
SchemaElementKind( 9
{ 	
get 
{ 
return  
EdmSchemaElementKind -
.- .
Action. 4
;4 5
}6 7
} 	
} 
} �
UD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\BadElements\IUnresolvedElement.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal		 
	interface		
IUnresolvedElement		 )
{

 
} 
} �

UD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\BadElements\UnresolvedEnumType.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #

{

 
internal 
class
UnresolvedEnumType %
:& '
BadEnumType( 3
,3 4
IUnresolvedElement5 G
{ 
public
UnresolvedEnumType
(
string

,
EdmLocation
location
)
: 
base 
( 

,  !
new" %
EdmError& .
[. /
]/ 0
{1 2
new3 6
EdmError7 ?
(? @
location@ H
,H I
EdmErrorCodeJ V
.V W!
BadUnresolvedEnumTypeW l
,l m
Edmn q
.q r
Stringsr y
.y z#
Bad_UnresolvedEnumType	z �
(
� �

� �
)
� �
)
� �
}
� �
)
� �
{ 	
} 	
} 
} �
UD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\BadElements\UnresolvedFunction.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
UnresolvedFunction %
:& '
UnresolvedOperation( ;
,; <
IEdmFunction= I
{
public 
UnresolvedFunction !
(! "
string" (

,6 7
string8 >
errorMessage? K
,K L
EdmLocationM X
locationY a
)a b
: 
base 
( 

,  !
errorMessage" .
,. /
location0 8
)8 9
{ 	
} 	
public 
bool 
IsComposable  
{ 	
get 
{ 
return 
false 
; 
}  !
} 	
public 
new  
EdmSchemaElementKind '
SchemaElementKind( 9
{ 	
get 
{ 
return  
EdmSchemaElementKind -
.- .
Function. 6
;6 7
}8 9
} 	
} 
} �"
[D:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\BadElements\UnresolvedVocabularyTerm.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #

{

 
internal 
class
UnresolvedVocabularyTerm +
:, -

EdmElement. 8
,8 9
IEdmTerm: B
,B C
IUnresolvedElementD V
{ 
private
readonly
UnresolvedTermTypeReference
type
=
new
UnresolvedTermTypeReference
(
)
;
private 
readonly 
string 

;- .
private 
readonly 
string 
name  $
;$ %
private 
readonly 
string 
	appliesTo  )
=* +
null, 0
;0 1
private 
readonly 
string 
defaultValue  ,
=- .
null/ 3
;3 4
public $
UnresolvedVocabularyTerm '
(' (
string( .

)< =
{ 	

= 

??* ,
string- 3
.3 4
Empty4 9
;9 :
EdmUtil 
. 0
$TryGetNamespaceNameFromQualifiedName 8
(8 9

,F G
outH K
thisL P
.P Q

,^ _
out` c
thisd h
.h i
namei m
)m n
;n o
} 	
public 
string 
	Namespace 
{ 	
get 
{ 
return 
this 
. 

;+ ,
}- .
} 	
public 
string 
Name 
{ 	
get   
{   
return   
this   
.   
name   "
;  " #
}  $ %
}!! 	
public##  
EdmSchemaElementKind## #
SchemaElementKind##$ 5
{$$ 	
get%% 
{%% 
return%%  
EdmSchemaElementKind%% -
.%%- .
Term%%. 2
;%%2 3
}%%4 5
}&& 	
public(( 
IEdmTypeReference((  
Type((! %
{)) 	
get** 
{** 
return** 
this** 
.** 
type** "
;**" #
}**$ %
}++ 	
public-- 
string-- 
	AppliesTo-- 
{.. 	
get// 
{// 
return// 
this// 
.// 
	appliesTo// '
;//' (
}//) *
}00 	
public22 
string22 
DefaultValue22 "
{33 	
get44 
{44 
return44 
this44 
.44 
defaultValue44 *
;44* +
}44, -
}55 	
private77 
class77 '
UnresolvedTermTypeReference77 1
:772 3
IEdmTypeReference774 E
{88 	
private99 
readonly99 
UnresolvedTermType99 /

definition990 :
=99; <
new99= @
UnresolvedTermType99A S
(99S T
)99T U
;99U V
public;; 
bool;; 

IsNullable;; "
{<< 
get== 
{== 
return== 
false== "
;==" #
}==$ %
}>> 
public@@ 
IEdmType@@ 

Definition@@ &
{AA 
getBB 
{BB 
returnBB 
thisBB !
.BB! "

definitionBB" ,
;BB, -
}BB. /
}CC 
privateEE 
classEE 
UnresolvedTermTypeEE ,
:EE- .
IEdmTypeEE/ 7
{FF 
publicGG 
EdmTypeKindGG "
TypeKindGG# +
{HH 
getII 
{II 
returnII  
EdmTypeKindII! ,
.II, -
NoneII- 1
;II1 2
}II3 4
}JJ 
}KK 
}LL 	
}MM 
}NN �

dD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsNavigationPropertyPathExpression.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #

{

 
internal 
class
-CsdlSemanticsNavigationPropertyPathExpression @
:A B'
CsdlSemanticsPathExpressionC ^
{ 
public 9
-CsdlSemanticsNavigationPropertyPathExpression <
(< =
CsdlPathExpression= O

expressionP Z
,Z [
IEdmEntityType\ j
bindingContextk y
,y z 
CsdlSemanticsSchema	{ �
schema
� �
)
� �
: 
base 
( 

expression 
, 
bindingContext -
,- .
schema/ 5
)5 6
{ 	
} 	
public 
override 
EdmExpressionKind )
ExpressionKind* 8
{ 	
get 
{ 
return 
EdmExpressionKind *
.* +"
NavigationPropertyPath+ A
;A B
}C D
} 	
} 
} �2
\D:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsTypeDefinitionDefinition.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{
internal 
class
%CsdlSemanticsTypeDefinitionDefinition 8
:9 :'
CsdlSemanticsTypeDefinition; V
,V W
IEdmTypeDefinitionX j
{ 
private 
readonly 
CsdlSemanticsSchema ,
context- 4
;4 5
private 
readonly 
CsdlTypeDefinition +
typeDefinition, :
;: ;
private 
readonly 
Cache 
< 1
%CsdlSemanticsTypeDefinitionDefinition D
,D E
IEdmPrimitiveTypeF W
>W X
underlyingTypeCacheY l
=m n
newo r
Caches x
<x y2
%CsdlSemanticsTypeDefinitionDefinition	y �
,
� �
IEdmPrimitiveType
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %1
%CsdlSemanticsTypeDefinitionDefinition% J
,J K
IEdmPrimitiveTypeL ]
>] ^%
ComputeUnderlyingTypeFunc_ x
=y z
({ |
me| ~
)~ 
=>
� �
me
� �
.
� �#
ComputeUnderlyingType
� �
(
� �
)
� �
;
� �
public 1
%CsdlSemanticsTypeDefinitionDefinition 4
(4 5
CsdlSemanticsSchema5 H
contextI P
,P Q
CsdlTypeDefinitionR d
typeDefinitione s
)s t
: 
base 
( 
typeDefinition !
)! "
{ 	
this 
. 
context 
= 
context "
;" #
this 
. 
typeDefinition 
=  !
typeDefinition" 0
;0 1
} 	
IEdmPrimitiveType   
IEdmTypeDefinition   ,
.  , -
UnderlyingType  - ;
{!! 	
get"" 
{"" 
return"" 
this"" 
."" 
underlyingTypeCache"" 1
.""1 2
GetValue""2 :
("": ;
this""; ?
,""? @%
ComputeUnderlyingTypeFunc""A Z
,""Z [
null""\ `
)""` a
;""a b
}""c d
}## 	 
EdmSchemaElementKind%% 
IEdmSchemaElement%% .
.%%. /
SchemaElementKind%%/ @
{&& 	
get'' 
{'' 
return''  
EdmSchemaElementKind'' -
.''- .
TypeDefinition''. <
;''< =
}''> ?
}(( 	
public** 
string** 
	Namespace** 
{++ 	
get,, 
{,, 
return,, 
this,, 
.,, 
context,, %
.,,% &
	Namespace,,& /
;,,/ 0
},,1 2
}-- 	
string// 
IEdmNamedElement// 
.//  
Name//  $
{00 	
get11 
{11 
return11 
this11 
.11 
typeDefinition11 ,
.11, -
Name11- 1
;111 2
}113 4
}22 	
public44 
override44 
EdmTypeKind44 #
TypeKind44$ ,
{55 	
get66 
{66 
return66 
EdmTypeKind66 $
.66$ %
TypeDefinition66% 3
;663 4
}665 6
}77 	
public99 
override99 
CsdlSemanticsModel99 *
Model99+ 0
{:: 	
get;; 
{;; 
return;; 
this;; 
.;; 
context;; %
.;;% &
Model;;& +
;;;+ ,
};;- .
}<< 	
public>> 
override>> 
CsdlElement>> #
Element>>$ +
{?? 	
get@@ 
{@@ 
return@@ 
this@@ 
.@@ 
typeDefinition@@ ,
;@@, -
}@@. /
}AA 	
	protectedCC 
overrideCC 
IEnumerableCC &
<CC& '$
IEdmVocabularyAnnotationCC' ?
>CC? @.
"ComputeInlineVocabularyAnnotationsCCA c
(CCc d
)CCd e
{DD 	
returnEE 
thisEE 
.EE 
ModelEE 
.EE +
WrapInlineVocabularyAnnotationsEE =
(EE= >
thisEE> B
,EEB C
thisEED H
.EEH I
contextEEI P
)EEP Q
;EEQ R
}FF 	
privateHH 
IEdmPrimitiveTypeHH !!
ComputeUnderlyingTypeHH" 7
(HH7 8
)HH8 9
{II 	
ifJJ 
(JJ 
thisJJ 
.JJ 
typeDefinitionJJ #
.JJ# $
UnderlyingTypeNameJJ$ 6
!=JJ7 9
nullJJ: >
)JJ> ?
{KK 
varLL 
underlyingTypeKindLL &
=LL' (
EdmCoreModelLL) 5
.LL5 6
InstanceLL6 >
.LL> ? 
GetPrimitiveTypeKindLL? S
(LLS T
thisLLT X
.LLX Y
typeDefinitionLLY g
.LLg h
UnderlyingTypeNameLLh z
)LLz {
;LL{ |
returnMM 
underlyingTypeKindMM )
!=MM* , 
EdmPrimitiveTypeKindMM- A
.MMA B
NoneMMB F
?MMG H
EdmCoreModelNN  
.NN  !
InstanceNN! )
.NN) *
GetPrimitiveTypeNN* :
(NN: ;
underlyingTypeKindNN; M
)NNM N
:NNO P
newOO #
UnresolvedPrimitiveTypeOO /
(OO/ 0
thisOO0 4
.OO4 5
typeDefinitionOO5 C
.OOC D
UnderlyingTypeNameOOD V
,OOV W
thisOOX \
.OO\ ]
LocationOO] e
)OOe f
;OOf g
}PP 
returnRR 
EdmCoreModelRR 
.RR  
InstanceRR  (
.RR( )
GetPrimitiveTypeRR) 9
(RR9 : 
EdmPrimitiveTypeKindRR: N
.RRN O
Int32RRO T
)RRT U
;RRU V
}SS 	
}TT 
}UU �
JD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsAction.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #

{

 
internal 
class
CsdlSemanticsAction &
:' ("
CsdlSemanticsOperation) ?
,? @

IEdmActionA K
{ 
public 
CsdlSemanticsAction "
(" #
CsdlSemanticsSchema# 6
context7 >
,> ?

CsdlAction@ J
actionK Q
)Q R
: 
base 
( 
context 
, 
action "
)" #
{ 	
} 	
public 
override  
EdmSchemaElementKind ,
SchemaElementKind- >
{ 	
get 
{ 
return  
EdmSchemaElementKind -
.- .
Action. 4
;4 5
}6 7
} 	
} 
} �
PD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsActionImport.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #

{

 
internal 
class
CsdlSemanticsActionImport ,
:- .(
CsdlSemanticsOperationImport/ K
,K L
IEdmActionImportM ]
{ 
public
CsdlSemanticsActionImport
(
CsdlSemanticsEntityContainer
	container
,
CsdlActionImport
actionImport
,

IEdmAction

)

: 
base 
( 
	container 
, 
actionImport *
,* +

)9 :
{ 	
} 	
public 

IEdmAction 
Action  
{ 	
get 
{ 
return 
( 

IEdmAction $
)$ %
this% )
.) *
	Operation* 3
;3 4
}5 6
} 	
public 
override #
EdmContainerElementKind / 
ContainerElementKind0 D
{ 	
get 
{ 
return #
EdmContainerElementKind 0
.0 1
ActionImport1 =
;= >
}? @
} 	
} 
} �v
SD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsApplyExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
CsdlSemanticsApplyExpression /
:0 1#
CsdlSemanticsExpression2 I
,I J
IEdmApplyExpressionK ^
,^ _

{ 
private 
readonly 
CsdlApplyExpression ,

expression- 7
;7 8
private 
readonly 
CsdlSemanticsSchema ,
schema- 3
;3 4
private 
readonly 
IEdmEntityType '
bindingContext( 6
;6 7
private 
readonly 
Cache 
< (
CsdlSemanticsApplyExpression ;
,; <
IEdmFunction= I
>I J 
appliedFunctionCacheK _
=` a
newb e
Cachef k
<k l)
CsdlSemanticsApplyExpression	l �
,
� �
IEdmFunction
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %(
CsdlSemanticsApplyExpression% A
,A B
IEdmFunctionC O
>O P&
ComputeAppliedFunctionFuncQ k
=l m
(n o
meo q
)q r
=>s u
mev x
.x y#
ComputeAppliedFunction	y �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
< (
CsdlSemanticsApplyExpression ;
,; <
IEnumerable= H
<H I
IEdmExpressionI W
>W X
>X Y
argumentsCacheZ h
=i j
newk n
Cacheo t
<t u)
CsdlSemanticsApplyExpression	u �
,
� �
IEnumerable
� �
<
� �
IEdmExpression
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %(
CsdlSemanticsApplyExpression% A
,A B
IEnumerableC N
<N O
IEdmExpressionO ]
>] ^
>^ _ 
ComputeArgumentsFunc` t
=u v
(w x
mex z
)z {
=>| ~
me	 �
.
� �
ComputeArguments
� �
(
� �
)
� �
;
� �
public (
CsdlSemanticsApplyExpression +
(+ ,
CsdlApplyExpression, ?

expression@ J
,J K
IEdmEntityTypeL Z
bindingContext[ i
,i j
CsdlSemanticsSchemak ~
schema	 �
)
� �
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this 
. 

expression 
= 

expression (
;( )
this   
.   
bindingContext   
=    !
bindingContext  " 0
;  0 1
this!! 
.!! 
schema!! 
=!! 
schema!!  
;!!  !
}"" 	
public$$ 
override$$ 
CsdlElement$$ #
Element$$$ +
{%% 	
get&& 
{&& 
return&& 
this&& 
.&& 

expression&& (
;&&( )
}&&* +
}'' 	
public)) 
override)) 
EdmExpressionKind)) )
ExpressionKind))* 8
{** 	
get++ 
{++ 
return++ 
EdmExpressionKind++ *
.++* +
FunctionApplication+++ >
;++> ?
}++@ A
},, 	
public.. 
IEdmFunction.. 
AppliedFunction.. +
{// 	
get00 
{00 
return00 
this00 
.00  
appliedFunctionCache00 2
.002 3
GetValue003 ;
(00; <
this00< @
,00@ A&
ComputeAppliedFunctionFunc00B \
,00\ ]
null00^ b
)00b c
;00c d
}00e f
}11 	
public33 
IEnumerable33 
<33 
IEdmExpression33 )
>33) *
	Arguments33+ 4
{44 	
get55 
{55 
return55 
this55 
.55 
argumentsCache55 ,
.55, -
GetValue55- 5
(555 6
this556 :
,55: ; 
ComputeArgumentsFunc55< P
,55P Q
null55R V
)55V W
;55W X
}55Y Z
}66 	
public88 
IEnumerable88 
<88 
EdmError88 #
>88# $
Errors88% +
{99 	
get:: 
{;; 
if<< 
(<< 
this<< 
.<< 
AppliedFunction<< (
is<<) +
IUnresolvedElement<<, >
)<<> ?
{== 
return>> 
this>> 
.>>  
AppliedFunction>>  /
.>>/ 0
Errors>>0 6
(>>6 7
)>>7 8
;>>8 9
}?? 
returnAA 

EnumerableAA !
.AA! "
EmptyAA" '
<AA' (
EdmErrorAA( 0
>AA0 1
(AA1 2
)AA2 3
;AA3 4
}BB 
}CC 	
privateEE 
IEdmFunctionEE "
ComputeAppliedFunctionEE 3
(EE3 4
)EE4 5
{FF 	
ifGG 
(GG 
thisGG 
.GG 

expressionGG 
.GG  
FunctionGG  (
==GG) +
nullGG, 0
)GG0 1
{HH 
returnII 
nullII 
;II 
}JJ 
IEnumerableLL 
<LL 
IEdmFunctionLL $
>LL$ %
candidateFunctionsLL& 8
=LL9 :
thisLL; ?
.LL? @
schemaLL@ F
.LLF G
FindOperationsLLG U
(LLU V
thisLLV Z
.LLZ [

expressionLL[ e
.LLe f
FunctionLLf n
)LLn o
.LLo p
OfTypeLLp v
<LLv w
IEdmFunction	LLw �
>
LL� �
(
LL� �
)
LL� �
;
LL� �
intMM 
candidateCountMM 
=MM  
candidateFunctionsMM! 3
.MM3 4
CountMM4 9
(MM9 :
)MM: ;
;MM; <
ifNN 
(NN 
candidateCountNN 
==NN !
$numNN" #
)NN# $
{OO 
returnPP 
newPP 
UnresolvedFunctionPP -
(PP- .
thisPP. 2
.PP2 3

expressionPP3 =
.PP= >
FunctionPP> F
,PPF G
EdmPPH K
.PPK L
StringsPPL S
.PPS T#
Bad_UnresolvedOperationPPT k
(PPk l
thisPPl p
.PPp q

expressionPPq {
.PP{ |
Function	PP| �
)
PP� �
,
PP� �
this
PP� �
.
PP� �
Location
PP� �
)
PP� �
;
PP� �
}QQ 
candidateFunctionsSS 
=SS  
candidateFunctionsSS! 3
.SS3 4
WhereSS4 9
(SS9 :
thisSS: >
.SS> ?
IsMatchingFunctionSS? Q
)SSQ R
;SSR S
candidateCountTT 
=TT 
candidateFunctionsTT /
.TT/ 0
CountTT0 5
(TT5 6
)TT6 7
;TT7 8
ifUU 
(UU 
candidateCountUU 
>UU  
$numUU! "
)UU" #
{VV 
candidateFunctionsWW "
=WW# $
candidateFunctionsWW% 7
.WW7 8
WhereWW8 =
(WW= >
thisWW> B
.WWB C
IsExactMatchWWC O
)WWO P
;WWP Q
candidateCountXX 
=XX  
candidateFunctionsXX! 3
.XX3 4
CountXX4 9
(XX9 :
)XX: ;
;XX; <
ifYY 
(YY 
candidateCountYY "
!=YY# %
$numYY& '
)YY' (
{ZZ 
return[[ 
new[[ 
UnresolvedFunction[[ 1
([[1 2
this[[2 6
.[[6 7

expression[[7 A
.[[A B
Function[[B J
,[[J K
Edm[[L O
.[[O P
Strings[[P W
.[[W X"
Bad_AmbiguousOperation[[X n
([[n o
this[[o s
.[[s t

expression[[t ~
.[[~ 
Function	[[ �
)
[[� �
,
[[� �
this
[[� �
.
[[� �
Location
[[� �
)
[[� �
;
[[� �
}\\ 
return^^ 
candidateFunctions^^ )
.^^) *
Single^^* 0
(^^0 1
)^^1 2
;^^2 3
}__ 
ifaa 
(aa 
candidateCountaa 
==aa !
$numaa" #
)aa# $
{bb 
returncc 
newcc 
UnresolvedFunctioncc -
(cc- .
thiscc. 2
.cc2 3

expressioncc3 =
.cc= >
Functioncc> F
,ccF G
EdmccH K
.ccK L
StringsccL S
.ccS T,
 Bad_OperationParametersDontMatchccT t
(cct u
thisccu y
.ccy z

expression	ccz �
.
cc� �
Function
cc� �
)
cc� �
,
cc� �
this
cc� �
.
cc� �
Location
cc� �
)
cc� �
;
cc� �
}dd 
returnff 
candidateFunctionsff %
.ff% &
Singleff& ,
(ff, -
)ff- .
;ff. /
}gg 	
privateii 
IEnumerableii 
<ii 
IEdmExpressionii *
>ii* +
ComputeArgumentsii, <
(ii< =
)ii= >
{jj 	
boolkk 
	skipFirstkk 
=kk 
thiskk !
.kk! "

expressionkk" ,
.kk, -
Functionkk- 5
==kk6 8
nullkk9 =
;kk= >
Listll 
<ll 
IEdmExpressionll 
>ll  
resultll! '
=ll( )
newll* -
Listll. 2
<ll2 3
IEdmExpressionll3 A
>llA B
(llB C
)llC D
;llD E
foreachmm 
(mm 
CsdlExpressionBasemm '
argumentmm( 0
inmm1 3
thismm4 8
.mm8 9

expressionmm9 C
.mmC D
	ArgumentsmmD M
)mmM N
{nn 
ifoo 
(oo 
	skipFirstoo 
)oo 
{pp 
	skipFirstqq 
=qq 
falseqq  %
;qq% &
}rr 
elsess 
{tt 
resultuu 
.uu 
Adduu 
(uu 
CsdlSemanticsModeluu 1
.uu1 2
WrapExpressionuu2 @
(uu@ A
argumentuuA I
,uuI J
thisuuK O
.uuO P
bindingContextuuP ^
,uu^ _
thisuu` d
.uud e
schemauue k
)uuk l
)uul m
;uum n
}vv 
}ww 
returnyy 
resultyy 
;yy 
}zz 	
private|| 
bool|| 
IsMatchingFunction|| '
(||' (

	operation||6 ?
)||? @
{}} 	
if~~ 
(~~ 
	operation~~ 
.~~ 

Parameters~~ $
.~~$ %
Count~~% *
(~~* +
)~~+ ,
!=~~- /
this~~0 4
.~~4 5
	Arguments~~5 >
.~~> ?
Count~~? D
(~~D E
)~~E F
)~~F G
{ 
return
�� 
false
�� 
;
�� 
}
�� 
IEnumerator
�� 
<
�� 
IEdmExpression
�� &
>
��& '+
parameterExpressionEnumerator
��( E
=
��F G
this
��H L
.
��L M
	Arguments
��M V
.
��V W

��W d
(
��d e
)
��e f
;
��f g
foreach
�� 
(
�� $
IEdmOperationParameter
�� +
	parameter
��, 5
in
��6 8
	operation
��9 B
.
��B C

Parameters
��C M
)
��M N
{
�� 
parameterExpressionEnumerator
�� -
.
��- .
MoveNext
��. 6
(
��6 7
)
��7 8
;
��8 9
IEnumerable
�� 
<
�� 
EdmError
�� $
>
��$ %
recursiveErrors
��& 5
;
��5 6
if
�� 
(
�� 
!
�� +
parameterExpressionEnumerator
�� 2
.
��2 3
Current
��3 :
.
��: ;
TryCast
��; B
(
��B C
	parameter
��C L
.
��L M
Type
��M Q
,
��Q R
this
��S W
.
��W X
bindingContext
��X f
,
��f g
false
��h m
,
��m n
out
��o r
recursiveErrors��s �
)��� �
)��� �
{
�� 
return
�� 
false
��  
;
��  !
}
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
bool
�� 
IsExactMatch
�� !
(
��! "

��" /
	operation
��0 9
)
��9 :
{
�� 	
IEnumerator
�� 
<
�� 
IEdmExpression
�� &
>
��& '+
parameterExpressionEnumerator
��( E
=
��F G
this
��H L
.
��L M
	Arguments
��M V
.
��V W

��W d
(
��d e
)
��e f
;
��f g
foreach
�� 
(
�� $
IEdmOperationParameter
�� +
	parameter
��, 5
in
��6 8
	operation
��9 B
.
��B C

Parameters
��C M
)
��M N
{
�� 
parameterExpressionEnumerator
�� -
.
��- .
MoveNext
��. 6
(
��6 7
)
��7 8
;
��8 9
IEnumerable
�� 
<
�� 
EdmError
�� $
>
��$ %
recursiveErrors
��& 5
;
��5 6
if
�� 
(
�� 
!
�� +
parameterExpressionEnumerator
�� 2
.
��2 3
Current
��3 :
.
��: ;
TryCast
��; B
(
��B C
	parameter
��C L
.
��L M
Type
��M Q
,
��Q R
this
��S W
.
��W X
bindingContext
��X f
,
��f g
true
��h l
,
��l m
out
��n q
recursiveErrors��r �
)��� �
)��� �
{
�� 
return
�� 
false
��  
;
��  !
}
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
}
�� 
}�� �)
RD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsCastExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal
class
CsdlSemanticsCastExpression
:
CsdlSemanticsExpression
,
IEdmCastExpression
{ 
private 
readonly 
CsdlCastExpression +

expression, 6
;6 7
private 
readonly 
IEdmEntityType '
bindingContext( 6
;6 7
private 
readonly 
Cache 
< '
CsdlSemanticsCastExpression :
,: ;
IEdmExpression< J
>J K
operandCacheL X
=Y Z
new[ ^
Cache_ d
<d e(
CsdlSemanticsCastExpression	e �
,
� �
IEdmExpression
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %'
CsdlSemanticsCastExpression% @
,@ A
IEdmExpressionB P
>P Q
ComputeOperandFuncR d
=e f
(g h
meh j
)j k
=>l n
meo q
.q r
ComputeOperand	r �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
< '
CsdlSemanticsCastExpression :
,: ;
IEdmTypeReference< M
>M N
	typeCacheO X
=Y Z
new[ ^
Cache_ d
<d e(
CsdlSemanticsCastExpression	e �
,
� �
IEdmTypeReference
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %'
CsdlSemanticsCastExpression% @
,@ A
IEdmTypeReferenceB S
>S T
ComputeTypeFuncU d
=e f
(g h
meh j
)j k
=>l n
meo q
.q r
ComputeTyper }
(} ~
)~ 
;	 �
public '
CsdlSemanticsCastExpression *
(* +
CsdlCastExpression+ =

expression> H
,H I
IEdmEntityTypeJ X
bindingContextY g
,g h
CsdlSemanticsSchemai |
schema	} �
)
� �
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this 
. 

expression 
= 

expression (
;( )
this 
. 
bindingContext 
=  !
bindingContext" 0
;0 1
} 	
public 
override 
CsdlElement #
Element$ +
{   	
get!! 
{!! 
return!! 
this!! 
.!! 

expression!! (
;!!( )
}!!* +
}"" 	
public$$ 
override$$ 
EdmExpressionKind$$ )
ExpressionKind$$* 8
{%% 	
get&& 
{&& 
return&& 
EdmExpressionKind&& *
.&&* +
Cast&&+ /
;&&/ 0
}&&1 2
}'' 	
public)) 
IEdmExpression)) 
Operand)) %
{** 	
get++ 
{++ 
return++ 
this++ 
.++ 
operandCache++ *
.++* +
GetValue+++ 3
(++3 4
this++4 8
,++8 9
ComputeOperandFunc++: L
,++L M
null++N R
)++R S
;++S T
}++U V
},, 	
public.. 
IEdmTypeReference..  
Type..! %
{// 	
get00 
{00 
return00 
this00 
.00 
	typeCache00 '
.00' (
GetValue00( 0
(000 1
this001 5
,005 6
ComputeTypeFunc007 F
,00F G
null00H L
)00L M
;00M N
}00O P
}11 	
private33 
IEdmExpression33 
ComputeOperand33 -
(33- .
)33. /
{44 	
return55 
CsdlSemanticsModel55 %
.55% &
WrapExpression55& 4
(554 5
this555 9
.559 :

expression55: D
.55D E
Operand55E L
,55L M
this55N R
.55R S
bindingContext55S a
,55a b
this55c g
.55g h
Schema55h n
)55n o
;55o p
}66 	
private88 
IEdmTypeReference88 !
ComputeType88" -
(88- .
)88. /
{99 	
return:: 
CsdlSemanticsModel:: %
.::% &
WrapTypeReference::& 7
(::7 8
this::8 <
.::< =
Schema::= C
,::C D
this::E I
.::I J

expression::J T
.::T U
Type::U Y
)::Y Z
;::Z [
};; 	
}<< 
}== �3
XD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsCollectionExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{
internal 
class
!CsdlSemanticsCollectionExpression 4
:5 6#
CsdlSemanticsExpression7 N
,N O$
IEdmCollectionExpressionP h
{ 
private 
readonly $
CsdlCollectionExpression 1

expression2 <
;< =
private 
readonly 
IEdmEntityType '
bindingContext( 6
;6 7
private 
readonly 
Cache 
< -
!CsdlSemanticsCollectionExpression @
,@ A
IEdmTypeReferenceB S
>S T
declaredTypeCacheU f
=g h
newi l
Cachem r
<r s.
!CsdlSemanticsCollectionExpression	s �
,
� �
IEdmTypeReference
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %-
!CsdlSemanticsCollectionExpression% F
,F G
IEdmTypeReferenceH Y
>Y Z#
ComputeDeclaredTypeFunc[ r
=s t
(u v
mev x
)x y
=>z |
me} 
.	 �!
ComputeDeclaredType
� �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
< -
!CsdlSemanticsCollectionExpression @
,@ A
IEnumerableB M
<M N
IEdmExpressionN \
>\ ]
>] ^

=m n
newo r
Caches x
<x y.
!CsdlSemanticsCollectionExpression	y �
,
� �
IEnumerable
� �
<
� �
IEdmExpression
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %-
!CsdlSemanticsCollectionExpression% F
,F G
IEnumerableH S
<S T
IEdmExpressionT b
>b c
>c d
ComputeElementsFunce x
=y z
({ |
me| ~
)~ 
=>
� �
me
� �
.
� �
ComputeElements
� �
(
� �
)
� �
;
� �
public -
!CsdlSemanticsCollectionExpression 0
(0 1$
CsdlCollectionExpression1 I

expressionJ T
,T U
IEdmEntityTypeV d
bindingContexte s
,s t 
CsdlSemanticsSchema	u �
schema
� �
)
� �
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this 
. 

expression 
= 

expression (
;( )
this   
.   
bindingContext   
=    !
bindingContext  " 0
;  0 1
}!! 	
public## 
override## 
CsdlElement## #
Element##$ +
{$$ 	
get%% 
{%% 
return%% 
this%% 
.%% 

expression%% (
;%%( )
}%%* +
}&& 	
public(( 
override(( 
EdmExpressionKind(( )
ExpressionKind((* 8
{)) 	
get** 
{** 
return** 
EdmExpressionKind** *
.*** +

Collection**+ 5
;**5 6
}**7 8
}++ 	
public-- 
IEdmTypeReference--  
DeclaredType--! -
{.. 	
get// 
{// 
return// 
this// 
.// 
declaredTypeCache// /
./// 0
GetValue//0 8
(//8 9
this//9 =
,//= >#
ComputeDeclaredTypeFunc//? V
,//V W
null//X \
)//\ ]
;//] ^
}//_ `
}00 	
public22 
IEnumerable22 
<22 
IEdmExpression22 )
>22) *
Elements22+ 3
{33 	
get44 
{44 
return44 
this44 
.44 

.44+ ,
GetValue44, 4
(444 5
this445 9
,449 :
ComputeElementsFunc44; N
,44N O
null44P T
)44T U
;44U V
}44W X
}55 	
private77 
IEnumerable77 
<77 
IEdmExpression77 *
>77* +
ComputeElements77, ;
(77; <
)77< =
{88 	
List99 
<99 
IEdmExpression99 
>99  
elements99! )
=99* +
new99, /
List990 4
<994 5
IEdmExpression995 C
>99C D
(99D E
)99E F
;99F G
foreach;; 
(;; 
CsdlExpressionBase;; '
elementValue;;( 4
in;;5 7
this;;8 <
.;;< =

expression;;= G
.;;G H

);;U V
{<< 
elements== 
.== 
Add== 
(== 
CsdlSemanticsModel== /
.==/ 0
WrapExpression==0 >
(==> ?
elementValue==? K
,==K L
this==M Q
.==Q R
bindingContext==R `
,==` a
this==b f
.==f g
Schema==g m
)==m n
)==n o
;==o p
}>> 
return@@ 
elements@@ 
;@@ 
}AA 	
privateCC 
IEdmTypeReferenceCC !
ComputeDeclaredTypeCC" 5
(CC5 6
)CC6 7
{DD 	
returnEE 
thisEE 
.EE 

expressionEE "
.EE" #
TypeEE# '
!=EE( *
nullEE+ /
?EE0 1
CsdlSemanticsModelEE2 D
.EED E
WrapTypeReferenceEEE V
(EEV W
thisEEW [
.EE[ \
SchemaEE\ b
,EEb c
thisEEd h
.EEh i

expressionEEi s
.EEs t
TypeEEt x
)EEx y
:EEz {
null	EE| �
;
EE� �
}FF 	
}GG 
}HH �5
ZD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsDateConstantExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
#CsdlSemanticsDateConstantExpression 6
:7 8#
CsdlSemanticsExpression9 P
,P Q&
IEdmDateConstantExpressionR l
,l m

{ 
private 
readonly "
CsdlConstantExpression /

expression0 :
;: ;
private 
readonly 
Cache 
< /
#CsdlSemanticsDateConstantExpression B
,B C
DateD H
>H I

valueCacheJ T
=U V
newW Z
Cache[ `
<` a0
#CsdlSemanticsDateConstantExpression	a �
,
� �
Date
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %/
#CsdlSemanticsDateConstantExpression% H
,H I
DateJ N
>N O
ComputeValueFuncP `
=a b
(c d
med f
)f g
=>h j
mek m
.m n
ComputeValuen z
(z {
){ |
;| }
private 
readonly 
Cache 
< /
#CsdlSemanticsDateConstantExpression B
,B C
IEnumerableD O
<O P
EdmErrorP X
>X Y
>Y Z
errorsCache[ f
=g h
newi l
Cachem r
<r s0
#CsdlSemanticsDateConstantExpression	s �
,
� �
IEnumerable
� �
<
� �
EdmError
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %/
#CsdlSemanticsDateConstantExpression% H
,H I
IEnumerableJ U
<U V
EdmErrorV ^
>^ _
>_ `
ComputeErrorsFunca r
=s t
(u v
mev x
)x y
=>z |
me} 
.	 �

� �
(
� �
)
� �
;
� �
public /
#CsdlSemanticsDateConstantExpression 2
(2 3"
CsdlConstantExpression3 I

expressionJ T
,T U
CsdlSemanticsSchemaV i
schemaj p
)p q
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this   
.   

expression   
=   

expression   (
;  ( )
}!! 	
public## 
override## 
CsdlElement## #
Element##$ +
{$$ 	
get%% 
{%% 
return%% 
this%% 
.%% 

expression%% (
;%%( )
}%%* +
}&& 	
public(( 
Date(( 
Value(( 
{)) 	
get** 
{** 
return** 
this** 
.** 

valueCache** (
.**( )
GetValue**) 1
(**1 2
this**2 6
,**6 7
ComputeValueFunc**8 H
,**H I
null**J N
)**N O
;**O P
}**Q R
}++ 	
public-- 
IEdmTypeReference--  
Type--! %
{.. 	
get// 
{// 
return// 
null// 
;// 
}//  
}00 	
public22 
override22 
EdmExpressionKind22 )
ExpressionKind22* 8
{33 	
get44 
{44 
return44 
EdmExpressionKind44 *
.44* +
DateConstant44+ 7
;447 8
}449 :
}55 	
public77 
EdmValueKind77 
	ValueKind77 %
{88 	
get99 
{99 
return99 
this99 
.99 

expression99 (
.99( )
	ValueKind99) 2
;992 3
}994 5
}:: 	
public<< 
IEnumerable<< 
<<< 
EdmError<< #
><<# $
Errors<<% +
{== 	
get>> 
{>> 
return>> 
this>> 
.>> 
errorsCache>> )
.>>) *
GetValue>>* 2
(>>2 3
this>>3 7
,>>7 8
ComputeErrorsFunc>>9 J
,>>J K
null>>L P
)>>P Q
;>>Q R
}>>S T
}?? 	
privateAA 
DateAA 
ComputeValueAA !
(AA! "
)AA" #
{BB 	
DateCC 
?CC 
valueCC 
;CC 
returnDD 
EdmValueParserDD !
.DD! "
TryParseDateDD" .
(DD. /
thisDD/ 3
.DD3 4

expressionDD4 >
.DD> ?
ValueDD? D
,DDD E
outDDF I
valueDDJ O
)DDO P
?DDQ R
valueDDS X
.DDX Y
ValueDDY ^
:DD_ `
DateDDa e
.DDe f
MinValueDDf n
;DDn o
}EE 	
privateGG 
IEnumerableGG 
<GG 
EdmErrorGG $
>GG$ %

(GG3 4
)GG4 5
{HH 	
DateII 
?II 
valueII 
;II 
ifJJ 
(JJ 
!JJ 
EdmValueParserJJ 
.JJ  
TryParseDateJJ  ,
(JJ, -
thisJJ- 1
.JJ1 2

expressionJJ2 <
.JJ< =
ValueJJ= B
,JJB C
outJJD G
valueJJH M
)JJM N
)JJN O
{KK 
returnLL 
newLL 
EdmErrorLL #
[LL# $
]LL$ %
{LL& '
newLL( +
EdmErrorLL, 4
(LL4 5
thisLL5 9
.LL9 :
LocationLL: B
,LLB C
EdmErrorCodeLLD P
.LLP Q
InvalidDateLLQ \
,LL\ ]
EdmLL^ a
.LLa b
StringsLLb i
.LLi j$
ValueParser_InvalidDate	LLj �
(
LL� �
this
LL� �
.
LL� �

expression
LL� �
.
LL� �
Value
LL� �
)
LL� �
)
LL� �
}
LL� �
;
LL� �
}MM 
elseNN 
{OO 
returnPP 

EnumerablePP !
.PP! "
EmptyPP" '
<PP' (
EdmErrorPP( 0
>PP0 1
(PP1 2
)PP2 3
;PP3 4
}QQ 
}RR 	
}SS 
}TT �7
dD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsDateTimeOffsetConstantExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
-CsdlSemanticsDateTimeOffsetConstantExpression @
:A B#
CsdlSemanticsExpressionC Z
,Z [1
$IEdmDateTimeOffsetConstantExpression	\ �
,
� �

� �
{ 
private 
readonly "
CsdlConstantExpression /

expression0 :
;: ;
private 
readonly 
Cache 
< 9
-CsdlSemanticsDateTimeOffsetConstantExpression L
,L M
DateTimeOffsetN \
>\ ]

valueCache^ h
=i j
newk n
Cacheo t
<t u:
-CsdlSemanticsDateTimeOffsetConstantExpression	u �
,
� �
DateTimeOffset
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %9
-CsdlSemanticsDateTimeOffsetConstantExpression% R
,R S
DateTimeOffsetT b
>b c
ComputeValueFuncd t
=u v
(w x
mex z
)z {
=>| ~
me	 �
.
� �
ComputeValue
� �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
< 9
-CsdlSemanticsDateTimeOffsetConstantExpression L
,L M
IEnumerableN Y
<Y Z
EdmErrorZ b
>b c
>c d
errorsCachee p
=q r
news v
Cachew |
<| }:
-CsdlSemanticsDateTimeOffsetConstantExpression	} �
,
� �
IEnumerable
� �
<
� �
EdmError
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %9
-CsdlSemanticsDateTimeOffsetConstantExpression% R
,R S
IEnumerableT _
<_ `
EdmError` h
>h i
>i j
ComputeErrorsFunck |
=} ~
(	 �
me
� �
)
� �
=>
� �
me
� �
.
� �

� �
(
� �
)
� �
;
� �
public 9
-CsdlSemanticsDateTimeOffsetConstantExpression <
(< ="
CsdlConstantExpression= S

expressionT ^
,^ _
CsdlSemanticsSchema` s
schemat z
)z {
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this   
.   

expression   
=   

expression   (
;  ( )
}!! 	
public## 
override## 
CsdlElement## #
Element##$ +
{$$ 	
get%% 
{%% 
return%% 
this%% 
.%% 

expression%% (
;%%( )
}%%* +
}&& 	
public(( 
DateTimeOffset(( 
Value(( #
{)) 	
get** 
{** 
return** 
this** 
.** 

valueCache** (
.**( )
GetValue**) 1
(**1 2
this**2 6
,**6 7
ComputeValueFunc**8 H
,**H I
null**J N
)**N O
;**O P
}**Q R
}++ 	
public-- 
IEdmTypeReference--  
Type--! %
{.. 	
get// 
{// 
return// 
null// 
;// 
}//  
}00 	
public22 
override22 
EdmExpressionKind22 )
ExpressionKind22* 8
{33 	
get44 
{44 
return44 
EdmExpressionKind44 *
.44* +"
DateTimeOffsetConstant44+ A
;44A B
}44C D
}55 	
public77 
EdmValueKind77 
	ValueKind77 %
{88 	
get99 
{99 
return99 
this99 
.99 

expression99 (
.99( )
	ValueKind99) 2
;992 3
}994 5
}:: 	
public<< 
IEnumerable<< 
<<< 
EdmError<< #
><<# $
Errors<<% +
{== 	
get>> 
{>> 
return>> 
this>> 
.>> 
errorsCache>> )
.>>) *
GetValue>>* 2
(>>2 3
this>>3 7
,>>7 8
ComputeErrorsFunc>>9 J
,>>J K
null>>L P
)>>P Q
;>>Q R
}>>S T
}?? 	
privateAA 
DateTimeOffsetAA 
ComputeValueAA +
(AA+ ,
)AA, -
{BB 	
DateTimeOffsetCC 
?CC 
valueCC !
;CC! "
returnDD 
EdmValueParserDD !
.DD! ""
TryParseDateTimeOffsetDD" 8
(DD8 9
thisDD9 =
.DD= >

expressionDD> H
.DDH I
ValueDDI N
,DDN O
outDDP S
valueDDT Y
)DDY Z
?DD[ \
valueDD] b
.DDb c
ValueDDc h
:DDi j
DateTimeOffsetDDk y
.DDy z
MinValue	DDz �
;
DD� �
}EE 	
privateGG 
IEnumerableGG 
<GG 
EdmErrorGG $
>GG$ %

(GG3 4
)GG4 5
{HH 	
DateTimeOffsetII 
?II 
valueII !
;II! "
ifJJ 
(JJ 
!JJ 
EdmValueParserJJ 
.JJ  "
TryParseDateTimeOffsetJJ  6
(JJ6 7
thisJJ7 ;
.JJ; <

expressionJJ< F
.JJF G
ValueJJG L
,JJL M
outJJN Q
valueJJR W
)JJW X
)JJX Y
{KK 
returnLL 
newLL 
EdmErrorLL #
[LL# $
]LL$ %
{LL& '
newLL( +
EdmErrorLL, 4
(LL4 5
thisLL5 9
.LL9 :
LocationLL: B
,LLB C
EdmErrorCodeLLD P
.LLP Q!
InvalidDateTimeOffsetLLQ f
,LLf g
EdmLLh k
.LLk l
StringsLLl s
.LLs t.
!ValueParser_InvalidDateTimeOffset	LLt �
(
LL� �
this
LL� �
.
LL� �

expression
LL� �
.
LL� �
Value
LL� �
)
LL� �
)
LL� �
}
LL� �
;
LL� �
}MM 
elseNN 
{OO 
returnPP 

EnumerablePP !
.PP! "
EmptyPP" '
<PP' (
EdmErrorPP( 0
>PP0 1
(PP1 2
)PP2 3
;PP3 4
}QQ 
}RR 	
}SS 
}TT �

aD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsDirectValueAnnotationsManager.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
*CsdlSemanticsDirectValueAnnotationsManager =
:> ?,
 EdmDirectValueAnnotationsManager@ `
{ 
	protected 
override 
IEnumerable &
<& '%
IEdmDirectValueAnnotation' @
>@ A"
GetAttachedAnnotationsB X
(X Y
IEdmElementY d
elemente l
)l m
{ 	 
CsdlSemanticsElement  
csdlElement! ,
=- .
element/ 6
as7 9 
CsdlSemanticsElement: N
;N O
if 
( 
csdlElement 
!= 
null #
)# $
{ 
return 
csdlElement "
." #"
DirectValueAnnotations# 9
;9 :
} 
return 

Enumerable 
. 
Empty #
<# $%
IEdmDirectValueAnnotation$ =
>= >
(> ?
)? @
;@ A
} 	
} 
} �
ND:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsExpression.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #

{

 
internal 
abstract
class #
CsdlSemanticsExpression 3
:4 5 
CsdlSemanticsElement6 J
,J K
IEdmExpressionL Z
{ 
private
readonly
CsdlSemanticsSchema
schema
;
	protected #
CsdlSemanticsExpression )
() *
CsdlSemanticsSchema* =
schema> D
,D E
CsdlExpressionBaseF X
elementY `
)` a
: 
base 
( 
element 
) 
{ 	
this 
. 
schema 
= 
schema  
;  !
} 	
public 
abstract 
EdmExpressionKind )
ExpressionKind* 8
{ 	
get 
; 
} 	
public 
CsdlSemanticsSchema "
Schema# )
{ 	
get 
{ 
return 
this 
. 
schema $
;$ %
}& '
} 	
public 
override 
CsdlSemanticsModel *
Model+ 0
{   	
get!! 
{!! 
return!! 
this!! 
.!! 
schema!! $
.!!$ %
Model!!% *
;!!* +
}!!, -
}"" 	
}## 
}$$ �
LD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsFunction.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #

{

 
internal 
class
CsdlSemanticsFunction (
:) *"
CsdlSemanticsOperation+ A
,A B
IEdmFunctionC O
{ 
private 
readonly 
CsdlFunction %
function& .
;. /
public !
CsdlSemanticsFunction $
($ %
CsdlSemanticsSchema% 8
context9 @
,@ A
CsdlFunctionB N
functionO W
)W X
: 
base 
( 
context 
, 
function $
)$ %
{ 	
this 
. 
function 
= 
function $
;$ %
} 	
public 
bool 
IsComposable  
{ 	
get 
{ 
return 
this 
. 
function &
.& '
IsComposable' 3
;3 4
}5 6
} 	
public 
override  
EdmSchemaElementKind ,
SchemaElementKind- >
{ 	
get 
{ 
return  
EdmSchemaElementKind -
.- .
Function. 6
;6 7
}8 9
}   	
}!! 
}"" �
RD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsFunctionImport.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #

{

 
internal 
class
CsdlSemanticsFunctionImport .
:/ 0(
CsdlSemanticsOperationImport1 M
,M N
IEdmFunctionImportO a
{ 
private
readonly
CsdlFunctionImport
functionImport
;
private 
readonly 
CsdlSemanticsSchema ,

csdlSchema- 7
;7 8
public '
CsdlSemanticsFunctionImport *
(* +(
CsdlSemanticsEntityContainer+ G
	containerH Q
,Q R
CsdlFunctionImportS e
functionImportf t
,t u
IEdmFunction	v �
backingfunction
� �
)
� �
: 
base 
( 
	container 
, 
functionImport ,
,, -
backingfunction. =
)= >
{ 	
this 
. 

csdlSchema 
= 
	container '
.' (
Context( /
;/ 0
this 
. 
functionImport 
=  !
functionImport" 0
;0 1
} 	
public 
IEdmFunction 
Function $
{ 	
get 
{ 
return 
( 
IEdmFunction &
)& '
this' +
.+ ,
	Operation, 5
;5 6
}7 8
} 	
public 
bool $
IncludeInServiceDocument ,
{ 	
get 
{ 
return 
this 
. 
functionImport ,
., -$
IncludeInServiceDocument- E
;E F
}G H
} 	
public!! 
override!! #
EdmContainerElementKind!! / 
ContainerElementKind!!0 D
{"" 	
get## 
{## 
return## #
EdmContainerElementKind## 0
.##0 1
FunctionImport##1 ?
;##? @
}##A B
}$$ 	
}%% 
}&& ��
TD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsNavigationSource.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
abstract
class )
CsdlSemanticsNavigationSource 9
:: ; 
CsdlSemanticsElement< P
,P Q 
IEdmNavigationSourceR f
{ 
[ 	
SuppressMessage	 
( 
$str 6
,6 7
$str8 u
,u v

=
� �
$str
� �
)
� �
]
� �
	protected 
readonly (
CsdlAbstractNavigationSource 7
navigationSource8 H
;H I
[ 	
SuppressMessage	 
( 
$str 6
,6 7
$str8 u
,u v

=
� �
$str
� �
)
� �
]
� �
	protected 
readonly (
CsdlSemanticsEntityContainer 7
	container8 A
;A B
[ 	
SuppressMessage	 
( 
$str 6
,6 7
$str8 u
,u v

=
� �
$str
� �
)
� �
]
� �
	protected 
readonly 
IEdmPathExpression -
path. 2
;2 3
[ 	
SuppressMessage	 
( 
$str 6
,6 7
$str8 u
,u v

=
� �
$str
� �
)
� �
]
� �
	protected 
readonly 
Cache  
<  !)
CsdlSemanticsNavigationSource! >
,> ?
IEdmEntityType@ N
>N O
	typeCacheP Y
=Z [
new\ _
Cache` e
<e f*
CsdlSemanticsNavigationSource	f �
,
� �
IEdmEntityType
� �
>
� �
(
� �
)
� �
;
� �
	protected   
static   
readonly   !
Func  " &
<  & ')
CsdlSemanticsNavigationSource  ' D
,  D E
IEdmEntityType  F T
>  T U"
ComputeElementTypeFunc  V l
=  m n
(  o p
me  p r
)  r s
=>  t v
me  w y
.  y z
ComputeElementType	  z �
(
  � �
)
  � �
;
  � �
private"" 
readonly"" 
Cache"" 
<"" )
CsdlSemanticsNavigationSource"" <
,""< =
IEnumerable""> I
<""I J)
IEdmNavigationPropertyBinding""J g
>""g h
>""h i#
navigationTargetsCache	""j �
=
""� �
new
""� �
Cache
""� �
<
""� �+
CsdlSemanticsNavigationSource
""� �
,
""� �
IEnumerable
""� �
<
""� �+
IEdmNavigationPropertyBinding
""� �
>
""� �
>
""� �
(
""� �
)
""� �
;
""� �
private## 
static## 
readonly## 
Func##  $
<##$ %)
CsdlSemanticsNavigationSource##% B
,##B C
IEnumerable##D O
<##O P)
IEdmNavigationPropertyBinding##P m
>##m n
>##n o)
ComputeNavigationTargetsFunc	##p �
=
##� �
(
##� �
me
##� �
)
##� �
=>
##� �
me
##� �
.
##� �&
ComputeNavigationTargets
##� �
(
##� �
)
##� �
;
##� �
private%% 
readonly%% 

Dictionary%% #
<%%# $"
IEdmNavigationProperty%%$ :
,%%: ;"
IEdmContainedEntitySet%%< R
>%%R S,
 containedNavigationPropertyCache%%T t
=%%u v
new&& 

Dictionary&& 
<&& "
IEdmNavigationProperty&& 1
,&&1 2"
IEdmContainedEntitySet&&3 I
>&&I J
(&&J K
)&&K L
;&&L M
private(( 
readonly(( 

Dictionary(( #
<((# $"
IEdmNavigationProperty(($ :
,((: ; 
IEdmUnknownEntitySet((< P
>((P Q*
unknownNavigationPropertyCache((R p
=((q r
new)) 

Dictionary)) 
<)) "
IEdmNavigationProperty)) 1
,))1 2 
IEdmUnknownEntitySet))3 G
>))G H
())H I
)))I J
;))J K
public++ )
CsdlSemanticsNavigationSource++ ,
(++, -(
CsdlSemanticsEntityContainer++- I
	container++J S
,++S T(
CsdlAbstractNavigationSource++U q
navigationSource	++r �
)
++� �
:,, 
base,, 
(,, 
navigationSource,, #
),,# $
{-- 	
this.. 
... 
	container.. 
=.. 
	container.. &
;..& '
this// 
.// 
navigationSource// !
=//" #
navigationSource//$ 4
;//4 5
this00 
.00 
path00 
=00 
new00 
EdmPathExpression00 -
(00- .
this00. 2
.002 3
navigationSource003 C
.00C D
Name00D H
)00H I
;00I J
}11 	
public33 
override33 
CsdlSemanticsModel33 *
Model33+ 0
{44 	
get55 
{55 
return55 
this55 
.55 
	container55 '
.55' (
Model55( -
;55- .
}55/ 0
}66 	
public88 
IEdmEntityContainer88 "
	Container88# ,
{99 	
get:: 
{:: 
return:: 
this:: 
.:: 
	container:: '
;::' (
}::) *
};; 	
public== 
override== 
CsdlElement== #
Element==$ +
{>> 	
get?? 
{?? 
return?? 
this?? 
.?? 
navigationSource?? .
;??. /
}??0 1
}@@ 	
publicBB 
stringBB 
NameBB 
{CC 	
getDD 
{DD 
returnDD 
thisDD 
.DD 
navigationSourceDD .
.DD. /
NameDD/ 3
;DD3 4
}DD5 6
}EE 	
publicGG 
IEdmPathExpressionGG !
PathGG" &
{HH 	
getII 
{II 
returnII 
thisII 
.II 
pathII "
;II" #
}II$ %
}JJ 	
publicLL 
abstractLL 
IEdmTypeLL  
TypeLL! %
{LL& '
getLL( +
;LL+ ,
}LL- .
publicNN 
abstractNN #
EdmContainerElementKindNN / 
ContainerElementKindNN0 D
{NNE F
getNNG J
;NNJ K
}NNL M
publicPP 
IEnumerablePP 
<PP )
IEdmNavigationPropertyBindingPP 8
>PP8 9&
NavigationPropertyBindingsPP: T
{QQ 	
getRR 
{RR 
returnRR 
thisRR 
.RR "
navigationTargetsCacheRR 4
.RR4 5
GetValueRR5 =
(RR= >
thisRR> B
,RRB C(
ComputeNavigationTargetsFuncRRD `
,RR` a
nullRRb f
)RRf g
;RRg h
}RRi j
}SS 	
publicUU  
IEdmNavigationSourceUU # 
FindNavigationTargetUU$ 8
(UU8 9"
IEdmNavigationPropertyUU9 O
propertyUUP X
,UUX Y
IEdmPathExpressionUUZ l
bindingPathUUm x
)UUx y
{VV 	
EdmUtilWW 
.WW 
CheckArgumentNullWW %
(WW% &
propertyWW& .
,WW. /
$strWW0 :
)WW: ;
;WW; <
ifYY 
(YY 
!YY 
propertyYY 
.YY 
ContainsTargetYY (
&&YY) +
bindingPathYY, 7
!=YY8 :
nullYY; ?
)YY? @
{ZZ 
foreach[[ 
([[ )
IEdmNavigationPropertyBinding[[ 6

in[[E G
this[[H L
.[[L M&
NavigationPropertyBindings[[M g
)[[g h
{\\ 
if]] 
(]] 

.]]% &
NavigationProperty]]& 8
==]]9 ;
property]]< D
&&]]E G

.]]U V
Path]]V Z
.]]Z [
Path]][ _
==]]` b
bindingPath]]c n
.]]n o
Path]]o s
)]]s t
{^^ 
return__ 

.__, -
Target__- 3
;__3 4
}`` 
}aa 
}bb 
elsecc 
ifcc 
(cc 
propertycc 
.cc 
ContainsTargetcc ,
)cc, -
{dd 
returnee 
EdmUtilee 
.ee !
DictionaryGetOrUpdateee 4
(ee4 5
thisff 
.ff ,
 containedNavigationPropertyCacheff 9
,ff9 :
propertygg 
,gg 
navPropertyhh 
=>hh  "
newhh# &!
EdmContainedEntitySethh' <
(hh< =
thishh= A
,hhA B
navPropertyhhC N
)hhN O
)hhO P
;hhP Q
}ii 
returnkk 
EdmUtilkk 
.kk !
DictionaryGetOrUpdatekk 0
(kk0 1
thisll 
.ll *
unknownNavigationPropertyCachell 7
,ll7 8
propertymm 
,mm 
navPropertynn 
=>nn  "
newnn# &
EdmUnknownEntitySetnn' :
(nn: ;
thisnn; ?
,nn? @
navPropertynnA L
)nnL M
)nnM N
;nnN O
}oo 	
publicqq  
IEdmNavigationSourceqq # 
FindNavigationTargetqq$ 8
(qq8 9"
IEdmNavigationPropertyqq9 O
navigationPropertyqqP b
)qqb c
{rr 	
boolss 
	isDerivedss 
=ss 
!ss 
thisss "
.ss" #
Typess# '
.ss' (

(ss5 6
)ss6 7
.ss7 8
IsOrInheritsFromss8 H
(ssH I
navigationPropertyssI [
.ss[ \

)ssi j
;ssj k
IEdmPathExpressionuu 
bindingPathuu *
=uu+ ,
	isDeriveduu- 6
?vv 
newvv 
EdmPathExpressionvv '
(vv' (
navigationPropertyvv( :
.vv: ;

.vvH I
FullTypeNamevvI U
(vvU V
)vvV W
,vvW X
navigationPropertyvvY k
.vvk l
Namevvl p
)vvp q
:ww 
newww 
EdmPathExpressionww '
(ww' (
navigationPropertyww( :
.ww: ;
Nameww; ?
)ww? @
;ww@ A
returnyy  
FindNavigationTargetyy '
(yy' (
navigationPropertyyy( :
,yy: ;
bindingPathyy< G
)yyG H
;yyH I
}zz 	
public|| 
IEnumerable|| 
<|| )
IEdmNavigationPropertyBinding|| 8
>||8 9*
FindNavigationPropertyBindings||: X
(||X Y"
IEdmNavigationProperty||Y o
navigationProperty	||p �
)
||� �
{}} 	
if~~ 
(~~ 
!~~ 
navigationProperty~~ #
.~~# $
ContainsTarget~~$ 2
)~~2 3
{ 
return
�� 
this
�� 
.
�� (
NavigationPropertyBindings
�� 6
.
��6 7
Where
��7 <
(
��< =

��= J
=>
��K M

��N [
.
��[ \ 
NavigationProperty
��\ n
==
��o q!
navigationProperty��r �
)��� �
.��� �
ToList��� �
(��� �
)��� �
;��� �
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 	
	protected
�� 
override
�� 
IEnumerable
�� &
<
��& '&
IEdmVocabularyAnnotation
��' ?
>
��? @0
"ComputeInlineVocabularyAnnotations
��A c
(
��c d
)
��d e
{
�� 	
return
�� 
this
�� 
.
�� 
Model
�� 
.
�� -
WrapInlineVocabularyAnnotations
�� =
(
��= >
this
��> B
,
��B C
this
��D H
.
��H I
	container
��I R
.
��R S
Context
��S Z
)
��Z [
;
��[ \
}
�� 	
	protected
�� 
abstract
�� 
IEdmEntityType
�� ) 
ComputeElementType
��* <
(
��< =
)
��= >
;
��> ?
private
�� 
IEnumerable
�� 
<
�� +
IEdmNavigationPropertyBinding
�� 9
>
��9 :&
ComputeNavigationTargets
��; S
(
��S T
)
��T U
{
�� 	
return
�� 
this
�� 
.
�� 
navigationSource
�� (
.
��( )(
NavigationPropertyBindings
��) C
.
��C D
Select
��D J
(
��J K
this
��K O
.
��O P-
CreateSemanticMappingForBinding
��P o
)
��o p
.
��p q
ToList
��q w
(
��w x
)
��x y
;
��y z
}
�� 	
private
�� +
IEdmNavigationPropertyBinding
�� --
CreateSemanticMappingForBinding
��. M
(
��M N+
CsdlNavigationPropertyBinding
��N k
binding
��l s
)
��s t
{
�� 	$
IEdmNavigationProperty
�� " 
navigationProperty
��# 5
=
��6 7
this
��8 <
.
��< =5
'ResolveNavigationPropertyPathForBinding
��= d
(
��d e
binding
��e l
)
��l m
;
��m n"
IEdmNavigationSource
��  $
targetNavigationSource
��! 7
=
��8 9
this
��: >
.
��> ?
	Container
��? H
.
��H I*
FindNavigationSourceExtended
��I e
(
��e f
binding
��f m
.
��m n
Target
��n t
)
��t u
;
��u v
if
�� 
(
�� $
targetNavigationSource
�� &
==
��' )
null
��* .
)
��. /
{
�� 
targetNavigationSource
�� &
=
��' (
this
��) -
.
��- .
	Container
��. 7
.
��7 8#
FindSingletonExtended
��8 M
(
��M N
binding
��N U
.
��U V
Target
��V \
)
��\ ]
;
��] ^
if
�� 
(
�� $
targetNavigationSource
�� *
==
��+ -
null
��. 2
)
��2 3
{
�� $
targetNavigationSource
�� *
=
��+ ,
new
��- 0!
UnresolvedEntitySet
��1 D
(
��D E
binding
��E L
.
��L M
Target
��M S
,
��S T
this
��U Y
.
��Y Z
	Container
��Z c
,
��c d
binding
��e l
.
��l m
Location
��m u
)
��u v
;
��v w
}
�� 
}
�� 
return
�� 
new
�� *
EdmNavigationPropertyBinding
�� 3
(
��3 4 
navigationProperty
��4 F
,
��F G$
targetNavigationSource
��H ^
,
��^ _
new
��` c
EdmPathExpression
��d u
(
��u v
binding
��v }
.
��} ~
Path��~ �
)��� �
)��� �
;��� �
}
�� 	
private
�� $
IEdmNavigationProperty
�� &5
'ResolveNavigationPropertyPathForBinding
��' N
(
��N O+
CsdlNavigationPropertyBinding
��O l
binding
��m t
)
��t u
{
�� 	
Debug
�� 
.
�� 
Assert
�� 
(
�� 
binding
��  
!=
��! #
null
��$ (
)
��( )
;
��) *
Debug
�� 
.
�� 
Assert
�� 
(
�� 
binding
��  
.
��  !
Path
��! %
!=
��& (
null
��) -
)
��- .
;
��. /
var
�� 
pathSegments
�� 
=
�� 
binding
�� &
.
��& '
Path
��' +
.
��+ ,
Split
��, 1
(
��1 2
$char
��2 5
)
��5 6
;
��6 7 
IEdmStructuredType
�� 
definingType
�� +
=
��, -
this
��. 2
.
��2 3
	typeCache
��3 <
.
��< =
GetValue
��= E
(
��E F
this
��F J
,
��J K$
ComputeElementTypeFunc
��L b
,
��b c
null
��d h
)
��h i
;
��i j
for
�� 
(
�� 
int
�� 
index
�� 
=
�� 
$num
�� 
;
�� 
index
��  %
<
��& '
pathSegments
��( 4
.
��4 5
Length
��5 ;
-
��< =
$num
��> ?
;
��? @
index
��A F
++
��F H
)
��H I
{
�� 
string
�� 
segment
�� 
=
��  
pathSegments
��! -
[
��- .
index
��. 3
]
��3 4
;
��4 5
if
�� 
(
�� 
segment
�� 
.
�� 
IndexOf
�� #
(
��# $
$char
��$ '
)
��' (
<
��) *
$num
��+ ,
)
��, -
{
�� 
var
�� 
property
��  
=
��! "
definingType
��# /
.
��/ 0
FindProperty
��0 <
(
��< =
segment
��= D
)
��D E
;
��E F
if
�� 
(
�� 
property
��  
==
��! #
null
��$ (
)
��( )
{
�� 
return
�� 
new
�� ".
 UnresolvedNavigationPropertyPath
��# C
(
��C D
definingType
��D P
,
��P Q
binding
��R Y
.
��Y Z
Path
��Z ^
,
��^ _
binding
��` g
.
��g h
Location
��h p
)
��p q
;
��q r
}
�� 
var
�� 
navProperty
�� #
=
��$ %
property
��& .
as
��/ 1$
IEdmNavigationProperty
��2 H
;
��H I
if
�� 
(
�� 
navProperty
�� #
!=
��$ &
null
��' +
&&
��, .
!
��/ 0
navProperty
��0 ;
.
��; <
ContainsTarget
��< J
)
��J K
{
�� 
return
�� 
new
�� ".
 UnresolvedNavigationPropertyPath
��# C
(
��C D
definingType
��D P
,
��P Q
binding
��R Y
.
��Y Z
Path
��Z ^
,
��^ _
binding
��` g
.
��g h
Location
��h p
)
��p q
;
��q r
}
�� 
definingType
��  
=
��! "
property
��# +
.
��+ ,
Type
��, 0
.
��0 1

Definition
��1 ;
.
��; <

��< I
(
��I J
)
��J K
as
��L N 
IEdmStructuredType
��O a
;
��a b
if
�� 
(
�� 
definingType
�� $
==
��% '
null
��( ,
)
��, -
{
�� 
return
�� 
new
�� ".
 UnresolvedNavigationPropertyPath
��# C
(
��C D
definingType
��D P
,
��P Q
binding
��R Y
.
��Y Z
Path
��Z ^
,
��^ _
binding
��` g
.
��g h
Location
��h p
)
��p q
;
��q r
}
�� 
}
�� 
else
�� 
{
�� 
var
�� 
derivedType
�� #
=
��$ %
	container
��& /
.
��/ 0
Context
��0 7
.
��7 8
FindType
��8 @
(
��@ A
segment
��A H
)
��H I
as
��J L 
IEdmStructuredType
��M _
;
��_ `
if
�� 
(
�� 
derivedType
�� #
==
��$ &
null
��' +
||
��, .
!
��/ 0
derivedType
��0 ;
.
��; <
IsOrInheritsFrom
��< L
(
��L M
definingType
��M Y
)
��Y Z
)
��Z [
{
�� 
return
�� 
new
�� ".
 UnresolvedNavigationPropertyPath
��# C
(
��C D
definingType
��D P
,
��P Q
binding
��R Y
.
��Y Z
Path
��Z ^
,
��^ _
binding
��` g
.
��g h
Location
��h p
)
��p q
;
��q r
}
�� 
definingType
��  
=
��! "
derivedType
��# .
;
��. /
}
�� 
}
�� 
return
�� 
definingType
�� 
.
��  
FindProperty
��  ,
(
��, -
pathSegments
��- 9
.
��9 :
Last
��: >
(
��> ?
)
��? @
)
��@ A
as
��B D$
IEdmNavigationProperty
��E [
??
�� 
new
�� .
 UnresolvedNavigationPropertyPath
�� :
(
��: ;
definingType
��; G
,
��G H
binding
��I P
.
��P Q
Path
��Q U
,
��U V
binding
��W ^
.
��^ _
Location
��_ g
)
��g h
;
��h i
}
�� 	
}
�� 
}�� �5
ZD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsGuidConstantExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
#CsdlSemanticsGuidConstantExpression 6
:7 8#
CsdlSemanticsExpression9 P
,P Q&
IEdmGuidConstantExpressionR l
,l m

{ 
private 
readonly "
CsdlConstantExpression /

expression0 :
;: ;
private 
readonly 
Cache 
< /
#CsdlSemanticsGuidConstantExpression B
,B C
GuidD H
>H I

valueCacheJ T
=U V
newW Z
Cache[ `
<` a0
#CsdlSemanticsGuidConstantExpression	a �
,
� �
Guid
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %/
#CsdlSemanticsGuidConstantExpression% H
,H I
GuidJ N
>N O
ComputeValueFuncP `
=a b
(c d
med f
)f g
=>h j
mek m
.m n
ComputeValuen z
(z {
){ |
;| }
private 
readonly 
Cache 
< /
#CsdlSemanticsGuidConstantExpression B
,B C
IEnumerableD O
<O P
EdmErrorP X
>X Y
>Y Z
errorsCache[ f
=g h
newi l
Cachem r
<r s0
#CsdlSemanticsGuidConstantExpression	s �
,
� �
IEnumerable
� �
<
� �
EdmError
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %/
#CsdlSemanticsGuidConstantExpression% H
,H I
IEnumerableJ U
<U V
EdmErrorV ^
>^ _
>_ `
ComputeErrorsFunca r
=s t
(u v
mev x
)x y
=>z |
me} 
.	 �

� �
(
� �
)
� �
;
� �
public /
#CsdlSemanticsGuidConstantExpression 2
(2 3"
CsdlConstantExpression3 I

expressionJ T
,T U
CsdlSemanticsSchemaV i
schemaj p
)p q
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this   
.   

expression   
=   

expression   (
;  ( )
}!! 	
public## 
override## 
CsdlElement## #
Element##$ +
{$$ 	
get%% 
{%% 
return%% 
this%% 
.%% 

expression%% (
;%%( )
}%%* +
}&& 	
public(( 
Guid(( 
Value(( 
{)) 	
get** 
{** 
return** 
this** 
.** 

valueCache** (
.**( )
GetValue**) 1
(**1 2
this**2 6
,**6 7
ComputeValueFunc**8 H
,**H I
null**J N
)**N O
;**O P
}**Q R
}++ 	
public-- 
IEdmTypeReference--  
Type--! %
{.. 	
get// 
{// 
return// 
null// 
;// 
}//  
}00 	
public22 
override22 
EdmExpressionKind22 )
ExpressionKind22* 8
{33 	
get44 
{44 
return44 
EdmExpressionKind44 *
.44* +
GuidConstant44+ 7
;447 8
}449 :
}55 	
public77 
EdmValueKind77 
	ValueKind77 %
{88 	
get99 
{99 
return99 
this99 
.99 

expression99 (
.99( )
	ValueKind99) 2
;992 3
}994 5
}:: 	
public<< 
IEnumerable<< 
<<< 
EdmError<< #
><<# $
Errors<<% +
{== 	
get>> 
{>> 
return>> 
this>> 
.>> 
errorsCache>> )
.>>) *
GetValue>>* 2
(>>2 3
this>>3 7
,>>7 8
ComputeErrorsFunc>>9 J
,>>J K
null>>L P
)>>P Q
;>>Q R
}>>S T
}?? 	
privateAA 
GuidAA 
ComputeValueAA !
(AA! "
)AA" #
{BB 	
GuidCC 
?CC 
valueCC 
;CC 
returnDD 
EdmValueParserDD !
.DD! "
TryParseGuidDD" .
(DD. /
thisDD/ 3
.DD3 4

expressionDD4 >
.DD> ?
ValueDD? D
,DDD E
outDDF I
valueDDJ O
)DDO P
?DDQ R
valueDDS X
.DDX Y
ValueDDY ^
:DD_ `
GuidDDa e
.DDe f
EmptyDDf k
;DDk l
}EE 	
privateGG 
IEnumerableGG 
<GG 
EdmErrorGG $
>GG$ %

(GG3 4
)GG4 5
{HH 	
GuidII 
?II 
valueII 
;II 
ifJJ 
(JJ 
!JJ 
EdmValueParserJJ 
.JJ  
TryParseGuidJJ  ,
(JJ, -
thisJJ- 1
.JJ1 2

expressionJJ2 <
.JJ< =
ValueJJ= B
,JJB C
outJJD G
valueJJH M
)JJM N
)JJN O
{KK 
returnLL 
newLL 
EdmErrorLL #
[LL# $
]LL$ %
{LL& '
newLL( +
EdmErrorLL, 4
(LL4 5
thisLL5 9
.LL9 :
LocationLL: B
,LLB C
EdmErrorCodeLLD P
.LLP Q
InvalidGuidLLQ \
,LL\ ]
EdmLL^ a
.LLa b
StringsLLb i
.LLi j$
ValueParser_InvalidGuid	LLj �
(
LL� �
this
LL� �
.
LL� �

expression
LL� �
.
LL� �
Value
LL� �
)
LL� �
)
LL� �
}
LL� �
;
LL� �
}MM 
elseNN 
{OO 
returnPP 

EnumerablePP !
.PP! "
EmptyPP" '
<PP' (
EdmErrorPP( 0
>PP0 1
(PP1 2
)PP2 3
;PP3 4
}QQ 
}RR 	
}SS 
}TT �7
\D:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsBinaryConstantExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
%CsdlSemanticsBinaryConstantExpression 8
:9 :#
CsdlSemanticsExpression; R
,R S(
IEdmBinaryConstantExpressionT p
,p q

{ 
private 
readonly "
CsdlConstantExpression /

expression0 :
;: ;
private 
readonly 
Cache 
< 1
%CsdlSemanticsBinaryConstantExpression D
,D E
byteF J
[J K
]K L
>L M

valueCacheN X
=Y Z
new[ ^
Cache_ d
<d e2
%CsdlSemanticsBinaryConstantExpression	e �
,
� �
byte
� �
[
� �
]
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %1
%CsdlSemanticsBinaryConstantExpression% J
,J K
byteL P
[P Q
]Q R
>R S
ComputeValueFuncT d
=e f
(g h
meh j
)j k
=>l n
meo q
.q r
ComputeValuer ~
(~ 
)	 �
;
� �
private 
readonly 
Cache 
< 1
%CsdlSemanticsBinaryConstantExpression D
,D E
IEnumerableF Q
<Q R
EdmErrorR Z
>Z [
>[ \
errorsCache] h
=i j
newk n
Cacheo t
<t u2
%CsdlSemanticsBinaryConstantExpression	u �
,
� �
IEnumerable
� �
<
� �
EdmError
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %1
%CsdlSemanticsBinaryConstantExpression% J
,J K
IEnumerableL W
<W X
EdmErrorX `
>` a
>a b
ComputeErrorsFuncc t
=u v
(w x
mex z
)z {
=>| ~
me	 �
.
� �

� �
(
� �
)
� �
;
� �
public 1
%CsdlSemanticsBinaryConstantExpression 4
(4 5"
CsdlConstantExpression5 K

expressionL V
,V W
CsdlSemanticsSchemaX k
schemal r
)r s
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this   
.   

expression   
=   

expression   (
;  ( )
}!! 	
public## 
override## 
CsdlElement## #
Element##$ +
{$$ 	
get%% 
{%% 
return%% 
this%% 
.%% 

expression%% (
;%%( )
}%%* +
}&& 	
public(( 
byte(( 
[(( 
](( 
Value(( 
{)) 	
get** 
{** 
return** 
this** 
.** 

valueCache** (
.**( )
GetValue**) 1
(**1 2
this**2 6
,**6 7
ComputeValueFunc**8 H
,**H I
null**J N
)**N O
;**O P
}**Q R
}++ 	
public-- 
override-- 
EdmExpressionKind-- )
ExpressionKind--* 8
{.. 	
get// 
{// 
return// 
EdmExpressionKind// *
.//* +
BinaryConstant//+ 9
;//9 :
}//; <
}00 	
public22 
EdmValueKind22 
	ValueKind22 %
{33 	
get44 
{44 
return44 
this44 
.44 

expression44 (
.44( )
	ValueKind44) 2
;442 3
}444 5
}55 	
public77 
IEdmTypeReference77  
Type77! %
{88 	
get99 
{99 
return99 
null99 
;99 
}99  
}:: 	
public<< 
IEnumerable<< 
<<< 
EdmError<< #
><<# $
Errors<<% +
{== 	
get>> 
{>> 
return>> 
this>> 
.>> 
errorsCache>> )
.>>) *
GetValue>>* 2
(>>2 3
this>>3 7
,>>7 8
ComputeErrorsFunc>>9 J
,>>J K
null>>L P
)>>P Q
;>>Q R
}>>S T
}?? 	
privateAA 
byteAA 
[AA 
]AA 
ComputeValueAA #
(AA# $
)AA$ %
{BB 	
byteCC 
[CC 
]CC 
binaryCC 
;CC 
returnDD 
EdmValueParserDD !
.DD! "
TryParseBinaryDD" 0
(DD0 1
thisDD1 5
.DD5 6

expressionDD6 @
.DD@ A
ValueDDA F
,DDF G
outDDH K
binaryDDL R
)DDR S
?DDT U
binaryDDV \
:DD] ^
newDD_ b
byteDDc g
[DDg h
$numDDh i
]DDi j
;DDj k
}EE 	
privateGG 
IEnumerableGG 
<GG 
EdmErrorGG $
>GG$ %

(GG3 4
)GG4 5
{HH 	
byteII 
[II 
]II 
valueII 
;II 
ifJJ 
(JJ 
!JJ 
EdmValueParserJJ 
.JJ  
TryParseBinaryJJ  .
(JJ. /
thisJJ/ 3
.JJ3 4

expressionJJ4 >
.JJ> ?
ValueJJ? D
,JJD E
outJJF I
valueJJJ O
)JJO P
)JJP Q
{KK 
returnLL 
newLL 
EdmErrorLL #
[LL# $
]LL$ %
{LL& '
newLL( +
EdmErrorLL, 4
(LL4 5
thisLL5 9
.LL9 :
LocationLL: B
,LLB C
EdmErrorCodeLLD P
.LLP Q

,LL^ _
EdmLL` c
.LLc d
StringsLLd k
.LLk l&
ValueParser_InvalidBinary	LLl �
(
LL� �
this
LL� �
.
LL� �

expression
LL� �
.
LL� �
Value
LL� �
)
LL� �
)
LL� �
}
LL� �
;
LL� �
}MM 
elseNN 
{OO 
returnPP 

EnumerablePP !
.PP! "
EmptyPP" '
<PP' (
EdmErrorPP( 0
>PP0 1
(PP1 2
)PP2 3
;PP3 4
}QQ 
}RR 	
}SS 
}TT �9
PD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsIfExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal
class
CsdlSemanticsIfExpression
:
CsdlSemanticsExpression
,
IEdmIfExpression
{ 
private 
readonly 
CsdlIfExpression )

expression* 4
;4 5
private 
readonly 
IEdmEntityType '
bindingContext( 6
;6 7
private 
readonly 
Cache 
< %
CsdlSemanticsIfExpression 8
,8 9
IEdmExpression: H
>H I
	testCacheJ S
=T U
newV Y
CacheZ _
<_ `%
CsdlSemanticsIfExpression` y
,y z
IEdmExpression	{ �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %%
CsdlSemanticsIfExpression% >
,> ?
IEdmExpression@ N
>N O
ComputeTestFuncP _
=` a
(b c
mec e
)e f
=>g i
mej l
.l m
ComputeTestm x
(x y
)y z
;z {
private 
readonly 
Cache 
< %
CsdlSemanticsIfExpression 8
,8 9
IEdmExpression: H
>H I
ifTrueCacheJ U
=V W
newX [
Cache\ a
<a b%
CsdlSemanticsIfExpressionb {
,{ |
IEdmExpression	} �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %%
CsdlSemanticsIfExpression% >
,> ?
IEdmExpression@ N
>N O
ComputeIfTrueFuncP a
=b c
(d e
mee g
)g h
=>i k
mel n
.n o

(| }
)} ~
;~ 
private 
readonly 
Cache 
< %
CsdlSemanticsIfExpression 8
,8 9
IEdmExpression: H
>H I
ifFalseCacheJ V
=W X
newY \
Cache] b
<b c%
CsdlSemanticsIfExpressionc |
,| }
IEdmExpression	~ �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %%
CsdlSemanticsIfExpression% >
,> ?
IEdmExpression@ N
>N O
ComputeIfFalseFuncP b
=c d
(e f
mef h
)h i
=>j l
mem o
.o p
ComputeIfFalsep ~
(~ 
)	 �
;
� �
public %
CsdlSemanticsIfExpression (
(( )
CsdlIfExpression) 9

expression: D
,D E
IEdmEntityTypeF T
bindingContextU c
,c d
CsdlSemanticsSchemae x
schemay 
)	 �
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this 
. 

expression 
= 

expression (
;( )
this 
. 
bindingContext 
=  !
bindingContext" 0
;0 1
}   	
public"" 
override"" 
CsdlElement"" #
Element""$ +
{## 	
get$$ 
{$$ 
return$$ 
this$$ 
.$$ 

expression$$ (
;$$( )
}$$* +
}%% 	
public'' 
IEdmEntityType'' 
BindingContext'' ,
{(( 	
get)) 
{)) 
return)) 
this)) 
.)) 
bindingContext)) ,
;)), -
})). /
}** 	
public,, 
override,, 
EdmExpressionKind,, )
ExpressionKind,,* 8
{-- 	
get.. 
{.. 
return.. 
EdmExpressionKind.. *
...* +
If..+ -
;..- .
}../ 0
}// 	
public11 
IEdmExpression11 
TestExpression11 ,
{22 	
get33 
{33 
return33 
this33 
.33 
	testCache33 '
.33' (
GetValue33( 0
(330 1
this331 5
,335 6
ComputeTestFunc337 F
,33F G
null33H L
)33L M
;33M N
}33O P
}44 	
public66 
IEdmExpression66 
TrueExpression66 ,
{77 	
get88 
{88 
return88 
this88 
.88 
ifTrueCache88 )
.88) *
GetValue88* 2
(882 3
this883 7
,887 8
ComputeIfTrueFunc889 J
,88J K
null88L P
)88P Q
;88Q R
}88S T
}99 	
public;; 
IEdmExpression;; 
FalseExpression;; -
{<< 	
get== 
{== 
return== 
this== 
.== 
ifFalseCache== *
.==* +
GetValue==+ 3
(==3 4
this==4 8
,==8 9
ComputeIfFalseFunc==: L
,==L M
null==N R
)==R S
;==S T
}==U V
}>> 	
private@@ 
IEdmExpression@@ 
ComputeTest@@ *
(@@* +
)@@+ ,
{AA 	
returnBB 
CsdlSemanticsModelBB %
.BB% &
WrapExpressionBB& 4
(BB4 5
thisBB5 9
.BB9 :

expressionBB: D
.BBD E
TestBBE I
,BBI J
thisBBK O
.BBO P
BindingContextBBP ^
,BB^ _
thisBB` d
.BBd e
SchemaBBe k
)BBk l
;BBl m
}CC 	
privateEE 
IEdmExpressionEE 

(EE, -
)EE- .
{FF 	
returnGG 
CsdlSemanticsModelGG %
.GG% &
WrapExpressionGG& 4
(GG4 5
thisGG5 9
.GG9 :

expressionGG: D
.GGD E
IfTrueGGE K
,GGK L
thisGGM Q
.GGQ R
BindingContextGGR `
,GG` a
thisGGb f
.GGf g
SchemaGGg m
)GGm n
;GGn o
}HH 	
privateJJ 
IEdmExpressionJJ 
ComputeIfFalseJJ -
(JJ- .
)JJ. /
{KK 	
returnLL 
CsdlSemanticsModelLL %
.LL% &
WrapExpressionLL& 4
(LL4 5
thisLL5 9
.LL9 :

expressionLL: D
.LLD E
IfFalseLLE L
,LLL M
thisLLN R
.LLR S
BindingContextLLS a
,LLa b
thisLLc g
.LLg h
SchemaLLh n
)LLn o
;LLo p
}MM 	
}NN 
}OO �*
TD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsIsTypeExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal
class
CsdlSemanticsIsTypeExpression
:
CsdlSemanticsExpression
,
IEdmIsTypeExpression
{ 
private 
readonly  
CsdlIsTypeExpression -

expression. 8
;8 9
private 
readonly 
IEdmEntityType '
bindingContext( 6
;6 7
private 
readonly 
Cache 
< )
CsdlSemanticsIsTypeExpression <
,< =
IEdmExpression> L
>L M
operandCacheN Z
=[ \
new] `
Cachea f
<f g*
CsdlSemanticsIsTypeExpression	g �
,
� �
IEdmExpression
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %)
CsdlSemanticsIsTypeExpression% B
,B C
IEdmExpressionD R
>R S
ComputeOperandFuncT f
=g h
(i j
mej l
)l m
=>n p
meq s
.s t
ComputeOperand	t �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
< )
CsdlSemanticsIsTypeExpression <
,< =
IEdmTypeReference> O
>O P
	typeCacheQ Z
=[ \
new] `
Cachea f
<f g*
CsdlSemanticsIsTypeExpression	g �
,
� �
IEdmTypeReference
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %)
CsdlSemanticsIsTypeExpression% B
,B C
IEdmTypeReferenceD U
>U V
ComputeTypeFuncW f
=g h
(i j
mej l
)l m
=>n p
meq s
.s t
ComputeTypet 
(	 �
)
� �
;
� �
public )
CsdlSemanticsIsTypeExpression ,
(, - 
CsdlIsTypeExpression- A

expressionB L
,L M
IEdmEntityTypeN \
bindingContext] k
,k l 
CsdlSemanticsSchema	m �
schema
� �
)
� �
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this 
. 

expression 
= 

expression (
;( )
this 
. 
bindingContext 
=  !
bindingContext" 0
;0 1
} 	
public 
override 
CsdlElement #
Element$ +
{   	
get!! 
{!! 
return!! 
this!! 
.!! 

expression!! (
;!!( )
}!!* +
}"" 	
public$$ 
override$$ 
EdmExpressionKind$$ )
ExpressionKind$$* 8
{%% 	
get&& 
{&& 
return&& 
EdmExpressionKind&& *
.&&* +
IsType&&+ 1
;&&1 2
}&&3 4
}'' 	
public)) 
IEdmExpression)) 
Operand)) %
{** 	
get++ 
{++ 
return++ 
this++ 
.++ 
operandCache++ *
.++* +
GetValue+++ 3
(++3 4
this++4 8
,++8 9
ComputeOperandFunc++: L
,++L M
null++N R
)++R S
;++S T
}++U V
},, 	
public.. 
IEdmTypeReference..  
Type..! %
{// 	
get00 
{00 
return00 
this00 
.00 
	typeCache00 '
.00' (
GetValue00( 0
(000 1
this001 5
,005 6
ComputeTypeFunc007 F
,00F G
null00H L
)00L M
;00M N
}00O P
}11 	
private33 
IEdmExpression33 
ComputeOperand33 -
(33- .
)33. /
{44 	
return55 
CsdlSemanticsModel55 %
.55% &
WrapExpression55& 4
(554 5
this555 9
.559 :

expression55: D
.55D E
Operand55E L
,55L M
this55N R
.55R S
bindingContext55S a
,55a b
this55c g
.55g h
Schema55h n
)55n o
;55o p
}66 	
private88 
IEdmTypeReference88 !
ComputeType88" -
(88- .
)88. /
{99 	
return:: 
CsdlSemanticsModel:: %
.::% &
WrapTypeReference::& 7
(::7 8
this::8 <
.::< =
Schema::= C
,::C D
this::E I
.::I J

expression::J T
.::T U
Type::U Y
)::Y Z
;::Z [
};; 	
}<< 
}== �&
UD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsLabeledExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal
class
CsdlSemanticsLabeledExpression
:
CsdlSemanticsElement
,
IEdmLabeledExpression
{ 
private 
readonly 
string 
name  $
;$ %
private 
readonly 
CsdlExpressionBase +

;9 :
private 
readonly 
CsdlSemanticsSchema ,
schema- 3
;3 4
private 
readonly 
IEdmEntityType '
bindingContext( 6
;6 7
private 
readonly 
Cache 
< *
CsdlSemanticsLabeledExpression =
,= >
IEdmExpression? M
>M N
expressionCacheO ^
=_ `
newa d
Cachee j
<j k+
CsdlSemanticsLabeledExpression	k �
,
� �
IEdmExpression
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %*
CsdlSemanticsLabeledExpression% C
,C D
IEdmExpressionE S
>S T!
ComputeExpressionFuncU j
=k l
(m n
men p
)p q
=>r t
meu w
.w x
ComputeExpression	x �
(
� �
)
� �
;
� �
public *
CsdlSemanticsLabeledExpression -
(- .
string. 4
name5 9
,9 :
CsdlExpressionBase; M
elementN U
,U V
IEdmEntityTypeW e
bindingContextf t
,t u 
CsdlSemanticsSchema	v �
schema
� �
)
� �
: 
base 
( 
element 
) 
{ 	
this 
. 
name 
= 
name 
; 
this 
. 

=  
element! (
;( )
this 
. 
bindingContext 
=  !
bindingContext" 0
;0 1
this 
. 
schema 
= 
schema  
;  !
} 	
public   
override   
CsdlElement   #
Element  $ +
{!! 	
get"" 
{"" 
return"" 
this"" 
."" 

;""+ ,
}""- .
}## 	
public%% 
override%% 
CsdlSemanticsModel%% *
Model%%+ 0
{&& 	
get'' 
{'' 
return'' 
this'' 
.'' 
schema'' $
.''$ %
Model''% *
;''* +
}'', -
}(( 	
public** 
IEdmEntityType** 
BindingContext** ,
{++ 	
get,, 
{,, 
return,, 
this,, 
.,, 
bindingContext,, ,
;,,, -
},,. /
}-- 	
public// 
IEdmExpression// 

Expression// (
{00 	
get11 
{11 
return11 
this11 
.11 
expressionCache11 -
.11- .
GetValue11. 6
(116 7
this117 ;
,11; <!
ComputeExpressionFunc11= R
,11R S
null11T X
)11X Y
;11Y Z
}11[ \
}22 	
public44 
EdmExpressionKind44  
ExpressionKind44! /
{55 	
get66 
{66 
return66 
EdmExpressionKind66 *
.66* +
Labeled66+ 2
;662 3
}664 5
}77 	
public99 
string99 
Name99 
{:: 	
get;; 
{;; 
return;; 
this;; 
.;; 
name;; "
;;;" #
};;$ %
}<< 	
private>> 
IEdmExpression>> 
ComputeExpression>> 0
(>>0 1
)>>1 2
{?? 	
return@@ 
CsdlSemanticsModel@@ %
.@@% &
WrapExpression@@& 4
(@@4 5
this@@5 9
.@@9 :

,@@G H
this@@I M
.@@M N
BindingContext@@N \
,@@\ ]
this@@^ b
.@@b c
schema@@c i
)@@i j
;@@j k
}AA 	
}BB 
}CC �)
hD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsLabeledExpressionReferenceExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
1CsdlSemanticsLabeledExpressionReferenceExpression D
:E F#
CsdlSemanticsExpressionG ^
,^ _5
(IEdmLabeledExpressionReferenceExpression	` �
,
� �

� �
{ 
private 
readonly 4
(CsdlLabeledExpressionReferenceExpression A

expressionB L
;L M
private 
readonly 
IEdmEntityType '
bindingContext( 6
;6 7
private 
readonly 
Cache 
< =
1CsdlSemanticsLabeledExpressionReferenceExpression P
,P Q!
IEdmLabeledExpressionR g
>g h
elementCachei u
=v w
newx {
Cache	| �
<
� �?
1CsdlSemanticsLabeledExpressionReferenceExpression
� �
,
� �#
IEdmLabeledExpression
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %=
1CsdlSemanticsLabeledExpressionReferenceExpression% V
,V W!
IEdmLabeledExpressionX m
>m n
ComputeElementFunc	o �
=
� �
(
� �
me
� �
)
� �
=>
� �
me
� �
.
� �
ComputeElement
� �
(
� �
)
� �
;
� �
public =
1CsdlSemanticsLabeledExpressionReferenceExpression @
(@ A4
(CsdlLabeledExpressionReferenceExpressionA i

expressionj t
,t u
IEdmEntityType	v �
bindingContext
� �
,
� �!
CsdlSemanticsSchema
� �
schema
� �
)
� �
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this 
. 

expression 
= 

expression (
;( )
this 
. 
bindingContext 
=  !
bindingContext" 0
;0 1
} 	
public 
override 
CsdlElement #
Element$ +
{   	
get!! 
{!! 
return!! 
this!! 
.!! 

expression!! (
;!!( )
}!!* +
}"" 	
public$$ 
override$$ 
EdmExpressionKind$$ )
ExpressionKind$$* 8
{%% 	
get&& 
{&& 
return&& 
EdmExpressionKind&& *
.&&* +&
LabeledExpressionReference&&+ E
;&&E F
}&&G H
}'' 	
public)) !
IEdmLabeledExpression)) $'
ReferencedLabeledExpression))% @
{** 	
get++ 
{++ 
return++ 
this++ 
.++ 
elementCache++ *
.++* +
GetValue+++ 3
(++3 4
this++4 8
,++8 9
ComputeElementFunc++: L
,++L M
null++N R
)++R S
;++S T
}++U V
},, 	
public.. 
IEnumerable.. 
<.. 
EdmError.. #
>..# $
Errors..% +
{// 	
get00 
{11 
if22 
(22 
this22 
.22 '
ReferencedLabeledExpression22 4
is225 7
IUnresolvedElement228 J
)22J K
{33 
return44 
this44 
.44  '
ReferencedLabeledExpression44  ;
.44; <
Errors44< B
(44B C
)44C D
;44D E
}55 
return77 

Enumerable77 !
.77! "
Empty77" '
<77' (
EdmError77( 0
>770 1
(771 2
)772 3
;773 4
}88 
}99 	
private;; !
IEdmLabeledExpression;; %
ComputeElement;;& 4
(;;4 5
);;5 6
{<< 	!
IEdmLabeledExpression== !
result==" (
===) *
this==+ /
.==/ 0
Schema==0 6
.==6 7
FindLabeledElement==7 I
(==I J
this==J N
.==N O

expression==O Y
.==Y Z
Label==Z _
,==_ `
this==a e
.==e f
bindingContext==f t
)==t u
;==u v
if>> 
(>> 
result>> 
!=>> 
null>> 
)>> 
{?? 
return@@ 
result@@ 
;@@ 
}AA 
returnCC 
newCC $
UnresolvedLabeledElementCC /
(CC/ 0
thisCC0 4
.CC4 5

expressionCC5 ?
.CC? @
LabelCC@ E
,CCE F
thisCCG K
.CCK L
LocationCCL T
)CCT U
;CCU V
}DD 	
}EE 
}FF �$
YD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsDirectValueAnnotation.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
"CsdlSemanticsDirectValueAnnotation 5
:6 7 
CsdlSemanticsElement8 L
,L M%
IEdmDirectValueAnnotationN g
{ 
private 
readonly %
CsdlDirectValueAnnotation 2

annotation3 =
;= >
private 
readonly 
CsdlSemanticsModel +
model, 1
;1 2
private 
readonly 
Cache 
< .
"CsdlSemanticsDirectValueAnnotation A
,A B
	IEdmValueC L
>L M

valueCacheN X
=Y Z
new[ ^
Cache_ d
<d e/
"CsdlSemanticsDirectValueAnnotation	e �
,
� �
	IEdmValue
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %.
"CsdlSemanticsDirectValueAnnotation% G
,G H
	IEdmValueI R
>R S
ComputeValueFuncT d
=e f
(g h
meh j
)j k
=>l n
meo q
.q r
ComputeValuer ~
(~ 
)	 �
;
� �
public .
"CsdlSemanticsDirectValueAnnotation 1
(1 2%
CsdlDirectValueAnnotation2 K

annotationL V
,V W
CsdlSemanticsModelX j
modelk p
)p q
: 
base 
( 

annotation 
) 
{ 	
this 
. 

annotation 
= 

annotation (
;( )
this 
. 
model 
= 
model 
; 
} 	
public 
override 
CsdlElement #
Element$ +
{   	
get!! 
{!! 
return!! 
this!! 
.!! 

annotation!! (
;!!( )
}!!* +
}"" 	
public$$ 
override$$ 
CsdlSemanticsModel$$ *
Model$$+ 0
{%% 	
get&& 
{&& 
return&& 
this&& 
.&& 
model&& #
;&&# $
}&&% &
}'' 	
public)) 
string)) 
NamespaceUri)) "
{** 	
get++ 
{++ 
return++ 
this++ 
.++ 

annotation++ (
.++( )

;++6 7
}++8 9
},, 	
public.. 
string.. 
Name.. 
{// 	
get00 
{00 
return00 
this00 
.00 

annotation00 (
.00( )
Name00) -
;00- .
}00/ 0
}11 	
public33 
object33 
Value33 
{44 	
get55 
{55 
return55 
this55 
.55 

valueCache55 (
.55( )
GetValue55) 1
(551 2
this552 6
,556 7
ComputeValueFunc558 H
,55H I
null55J N
)55N O
;55O P
}55Q R
}66 	
private88 
	IEdmValue88 
ComputeValue88 &
(88& '
)88' (
{99 	
IEdmStringValue:: 
value:: !
=::" #
new::$ '
EdmStringConstant::( 9
(::9 :
new::: ="
EdmStringTypeReference::> T
(::T U
EdmCoreModel::U a
.::a b
Instance::b j
.::j k
GetPrimitiveType::k {
(::{ |!
EdmPrimitiveTypeKind	::| �
.
::� �
String
::� �
)
::� �
,
::� �
false
::� �
)
::� �
,
::� �
this
::� �
.
::� �

annotation
::� �
.
::� �
Value
::� �
)
::� �
;
::� �
value;; 
.;; $
SetIsSerializedAsElement;; *
(;;* +
this;;+ /
.;;/ 0
model;;0 5
,;;5 6
!;;7 8
this;;8 <
.;;< =

annotation;;= G
.;;G H
IsAttribute;;H S
);;S T
;;;T U
return<< 
value<< 
;<< 
}== 	
}>> 
}?? �*
ND:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsEnumMember.cs
	namespace
	Microsoft
 
.
OData
.
Edm
.
Csdl
.

{ 
internal 
class
CsdlSemanticsEnumMember *
:+ , 
CsdlSemanticsElement- A
,A B
IEdmEnumMemberC Q
{ 
private 
readonly 
CsdlEnumMember '
member( .
;. /
private 
readonly +
CsdlSemanticsEnumTypeDefinition 8

;F G
private 
readonly 
Cache 
< #
CsdlSemanticsEnumMember 6
,6 7
IEdmEnumMemberValue8 K
>K L

valueCacheM W
=X Y
newZ ]
Cache^ c
<c d#
CsdlSemanticsEnumMemberd {
,{ | 
IEdmEnumMemberValue	} �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %#
CsdlSemanticsEnumMember% <
,< =
IEdmEnumMemberValue> Q
>Q R
ComputeValueFuncS c
=d e
(f g
meg i
)i j
=>k m
men p
.p q
ComputeValueq }
(} ~
)~ 
;	 �
public #
CsdlSemanticsEnumMember &
(& '+
CsdlSemanticsEnumTypeDefinition' F

,T U
CsdlEnumMemberV d
membere k
)k l
: 
base 
( 
member 
) 
{ 	
this 
. 
member 
= 
member  
;  !
this 
. 

=  

;. /
} 	
public!! 
string!! 
Name!! 
{"" 	
get## 
{## 
return## 
this## 
.## 
member## $
.##$ %
Name##% )
;##) *
}##+ ,
}$$ 	
public&& 
IEdmEnumType&& 

{'' 	
get(( 
{(( 
return(( 
this(( 
.(( 

;((+ ,
}((- .
})) 	
public++ 
IEdmEnumMemberValue++ "
Value++# (
{,, 	
get-- 
{-- 
return-- 
this-- 
.-- 

valueCache-- (
.--( )
GetValue--) 1
(--1 2
this--2 6
,--6 7
ComputeValueFunc--8 H
,--H I
null--J N
)--N O
;--O P
}--Q R
}.. 	
public00 
override00 
CsdlSemanticsModel00 *
Model00+ 0
{11 	
get22 
{22 
return22 
this22 
.22 

.22+ ,
Model22, 1
;221 2
}223 4
}33 	
public55 
override55 
CsdlElement55 #
Element55$ +
{66 	
get77 
{77 
return77 
this77 
.77 
member77 $
;77$ %
}77& '
}88 	
	protected:: 
override:: 
IEnumerable:: &
<::& '$
IEdmVocabularyAnnotation::' ?
>::? @.
"ComputeInlineVocabularyAnnotations::A c
(::c d
)::d e
{;; 	
return<< 
this<< 
.<< 
Model<< 
.<< +
WrapInlineVocabularyAnnotations<< =
(<<= >
this<<> B
,<<B C
this<<D H
.<<H I

.<<V W
Context<<W ^
)<<^ _
;<<_ `
}== 	
private?? 
IEdmEnumMemberValue?? #
ComputeValue??$ 0
(??0 1
)??1 2
{@@ 	
ifAA 
(AA 
thisAA 
.AA 
memberAA 
.AA 
ValueAA !
==AA" $
nullAA% )
)AA) *
{BB 
returnCC 
newCC !
BadEdmEnumMemberValueCC 0
(CC0 1
newDD 
EdmErrorDD  
[DD  !
]DD! "
{EE 
newFF 
EdmErrorFF $
(FF$ %
memberFF% +
.FF+ ,
LocationFF, 4
??FF5 7
thisFF8 <
.FF< =
LocationFF= E
,FFE F
EdmErrorCodeFFG S
.FFS T#
EnumMemberMustHaveValueFFT k
,FFk l
EdmFFm p
.FFp q
StringsFFq x
.FFx y2
%CsdlSemantics_EnumMemberMustHaveValue	FFy �
)
FF� �
}GG 
)GG 
;GG 
}HH 
elseII 
{JJ 
returnKK 
newKK 
EdmEnumMemberValueKK -
(KK- .
thisKK. 2
.KK2 3
memberKK3 9
.KK9 :
ValueKK: ?
.KK? @
ValueKK@ E
)KKE F
;KKF G
}LL 
}MM 	
}NN 
}OO �X
VD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsEnumTypeDefinition.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{
internal 
class
CsdlSemanticsEnumTypeDefinition 2
:3 4'
CsdlSemanticsTypeDefinition5 P
,P Q
IEdmEnumTypeR ^
{ 
private 
readonly 
CsdlEnumType %
enumeration& 1
;1 2
private 
readonly 
Cache 
< +
CsdlSemanticsEnumTypeDefinition >
,> ?
IEdmPrimitiveType@ Q
>Q R
underlyingTypeCacheS f
=g h
newi l
Cachem r
<r s,
CsdlSemanticsEnumTypeDefinition	s �
,
� �
IEdmPrimitiveType
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %+
CsdlSemanticsEnumTypeDefinition% D
,D E
IEdmPrimitiveTypeF W
>W X%
ComputeUnderlyingTypeFuncY r
=s t
(u v
mev x
)x y
=>z |
me} 
.	 �#
ComputeUnderlyingType
� �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
< +
CsdlSemanticsEnumTypeDefinition >
,> ?
IEnumerable@ K
<K L
IEdmEnumMemberL Z
>Z [
>[ \
membersCache] i
=j k
newl o
Cachep u
<u v,
CsdlSemanticsEnumTypeDefinition	v �
,
� �
IEnumerable
� �
<
� �
IEdmEnumMember
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %+
CsdlSemanticsEnumTypeDefinition% D
,D E
IEnumerableF Q
<Q R
IEdmEnumMemberR `
>` a
>a b
ComputeMembersFuncc u
=v w
(x y
mey {
){ |
=>} 
me
� �
.
� �
ComputeMembers
� �
(
� �
)
� �
;
� �
public +
CsdlSemanticsEnumTypeDefinition .
(. /
CsdlSemanticsSchema/ B
contextC J
,J K
CsdlEnumTypeL X
enumerationY d
)d e
: 
base 
( 
enumeration 
) 
{ 	
this 
. 
Context 
= 
context "
;" #
this 
. 
enumeration 
= 
enumeration *
;* +
}   	
IEdmPrimitiveType"" 
IEdmEnumType"" &
.""& '
UnderlyingType""' 5
{## 	
get$$ 
{$$ 
return$$ 
this$$ 
.$$ 
underlyingTypeCache$$ 1
.$$1 2
GetValue$$2 :
($$: ;
this$$; ?
,$$? @%
ComputeUnderlyingTypeFunc$$A Z
,$$Z [
null$$\ `
)$$` a
;$$a b
}$$c d
}%% 	
public'' 
IEnumerable'' 
<'' 
IEdmEnumMember'' )
>'') *
Members''+ 2
{(( 	
get)) 
{)) 
return)) 
this)) 
.)) 
membersCache)) *
.))* +
GetValue))+ 3
())3 4
this))4 8
,))8 9
ComputeMembersFunc)): L
,))L M
null))N R
)))R S
;))S T
}))U V
}** 	
bool,, 
IEdmEnumType,,
.,, 
IsFlags,, !
{-- 	
get.. 
{.. 
return.. 
this.. 
... 
enumeration.. )
...) *
IsFlags..* 1
;..1 2
}..3 4
}// 	 
EdmSchemaElementKind11 
IEdmSchemaElement11 .
.11. /
SchemaElementKind11/ @
{22 	
get33 
{33 
return33  
EdmSchemaElementKind33 -
.33- .
TypeDefinition33. <
;33< =
}33> ?
}44 	
public66 
string66 
	Namespace66 
{77 	
get88 
{88 
return88 
this88 
.88 
Context88 %
.88% &
	Namespace88& /
;88/ 0
}881 2
}99 	
string;; 
IEdmNamedElement;; 
.;;  
Name;;  $
{<< 	
get== 
{== 
return== 
this== 
.== 
enumeration== )
.==) *
Name==* .
;==. /
}==0 1
}>> 	
public@@ 
override@@ 
EdmTypeKind@@ #
TypeKind@@$ ,
{AA 	
getBB 
{BB 
returnBB 
EdmTypeKindBB $
.BB$ %
EnumBB% )
;BB) *
}BB+ ,
}CC 	
publicEE 
overrideEE 
CsdlSemanticsModelEE *
ModelEE+ 0
{FF 	
getGG 
{GG 
returnGG 
thisGG 
.GG 
ContextGG %
.GG% &
ModelGG& +
;GG+ ,
}GG- .
}HH 	
publicJJ 
overrideJJ 
CsdlElementJJ #
ElementJJ$ +
{KK 	
getLL 
{LL 
returnLL 
thisLL 
.LL 
enumerationLL )
;LL) *
}LL+ ,
}MM 	
publicOO 
CsdlSemanticsSchemaOO "
ContextOO# *
{PP 	
getQQ 
;QQ 
privateRR 
setRR 
;RR 
}SS 	
	protectedUU 
overrideUU 
IEnumerableUU &
<UU& '$
IEdmVocabularyAnnotationUU' ?
>UU? @.
"ComputeInlineVocabularyAnnotationsUUA c
(UUc d
)UUd e
{VV 	
returnWW 
thisWW 
.WW 
ModelWW 
.WW +
WrapInlineVocabularyAnnotationsWW =
(WW= >
thisWW> B
,WWB C
thisWWD H
.WWH I
ContextWWI P
)WWP Q
;WWQ R
}XX 	
privateZZ 
IEdmPrimitiveTypeZZ !!
ComputeUnderlyingTypeZZ" 7
(ZZ7 8
)ZZ8 9
{[[ 	
if\\ 
(\\ 
this\\ 
.\\ 
enumeration\\  
.\\  !
UnderlyingTypeName\\! 3
!=\\4 6
null\\7 ;
)\\; <
{]] 
var^^ 
underlyingTypeKind^^ &
=^^' (
EdmCoreModel^^) 5
.^^5 6
Instance^^6 >
.^^> ? 
GetPrimitiveTypeKind^^? S
(^^S T
this^^T X
.^^X Y
enumeration^^Y d
.^^d e
UnderlyingTypeName^^e w
)^^w x
;^^x y
return__ 
underlyingTypeKind__ )
!=__* , 
EdmPrimitiveTypeKind__- A
.__A B
None__B F
?__G H
EdmCoreModel``  
.``  !
Instance``! )
.``) *
GetPrimitiveType``* :
(``: ;
underlyingTypeKind``; M
)``M N
:``O P
newaa #
UnresolvedPrimitiveTypeaa /
(aa/ 0
thisaa0 4
.aa4 5
enumerationaa5 @
.aa@ A
UnderlyingTypeNameaaA S
,aaS T
thisaaU Y
.aaY Z
LocationaaZ b
)aab c
;aac d
}bb 
returndd 
EdmCoreModeldd 
.dd  
Instancedd  (
.dd( )
GetPrimitiveTypedd) 9
(dd9 : 
EdmPrimitiveTypeKinddd: N
.ddN O
Int32ddO T
)ddT U
;ddU V
}ee 	
privategg 
IEnumerablegg 
<gg 
IEdmEnumMembergg *
>gg* +
ComputeMembersgg, :
(gg: ;
)gg; <
{hh 	
varii 
membersii 
=ii 
newii 
Listii "
<ii" #
IEdmEnumMemberii# 1
>ii1 2
(ii2 3
)ii3 4
;ii4 5
longll 

=ll  
-ll! "
$numll" #
;ll# $
foreachmm 
(mm 
CsdlEnumMembermm #
membermm$ *
inmm+ -
thismm. 2
.mm2 3
enumerationmm3 >
.mm> ?
Membersmm? F
)mmF G
{nn 
IEdmEnumMemberoo 
semanticsMemberoo .
;oo. /
longpp 
?pp 

=pp$ %
nullpp& *
;pp* +
ifqq 
(qq 
!qq 
memberqq 
.qq 
Valueqq !
.qq! "
HasValueqq" *
)qq* +
{rr 
ifss 
(ss 

<ss& '
longss( ,
.ss, -
MaxValuess- 5
)ss5 6
{tt 

=uu& '

+uu6 7
$numuu8 9
;uu9 :

=vv& '

.vv5 6
Valuevv6 ;
;vv; <
memberww 
.ww 
Valueww $
=ww% &

;ww4 5
semanticsMemberxx '
=xx( )
newxx* -#
CsdlSemanticsEnumMemberxx. E
(xxE F
thisxxF J
,xxJ K
memberxxL R
)xxR S
;xxS T
}yy 
elsezz 
{{{ 
semanticsMember|| '
=||( )
new||* -#
CsdlSemanticsEnumMember||. E
(||E F
this||F J
,||J K
member||L R
)||R S
;||S T
}}} 
semanticsMember #
.# $
SetIsValueExplicit$ 6
(6 7
this7 ;
.; <
Model< A
,A B
falseC H
)H I
;I J
}
�� 
else
�� 
{
�� 

�� !
=
��" #
member
��$ *
.
��* +
Value
��+ 0
.
��0 1
Value
��1 6
;
��6 7
semanticsMember
�� #
=
��$ %
new
��& )%
CsdlSemanticsEnumMember
��* A
(
��A B
this
��B F
,
��F G
member
��H N
)
��N O
;
��O P
semanticsMember
�� #
.
��# $ 
SetIsValueExplicit
��$ 6
(
��6 7
this
��7 ;
.
��; <
Model
��< A
,
��A B
true
��C G
)
��G H
;
��H I
}
�� 
members
�� 
.
�� 
Add
�� 
(
�� 
semanticsMember
�� +
)
��+ ,
;
��, -
}
�� 
return
�� 
members
�� 
;
�� 
}
�� 	
}
�� 
}�� �
AD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlTerm.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #
Parsing# *
.* +
Ast+ .
{ 
internal 
class
CsdlTerm 
: 
CsdlNamedElement .
{
private 
readonly 
CsdlTypeReference *
type+ /
;/ 0
private 
readonly 
string 
	appliesTo  )
;) *
private 
readonly 
string 
defaultValue  ,
;, -
public 
CsdlTerm 
( 
string 
name #
,# $
CsdlTypeReference% 6
type7 ;
,; <
string= C
	appliesToD M
,M N
stringO U
defaultValueV b
,b c
CsdlLocationd p
locationq y
)y z
: 
base 
( 
name 
, 
location !
)! "
{ 	
this 
. 
type 
= 
type 
; 
this 
. 
	appliesTo 
= 
	appliesTo &
;& '
this 
. 
defaultValue 
= 
defaultValue  ,
;, -
} 	
public 
CsdlTypeReference  
Type! %
{ 	
get 
{ 
return 
this 
. 
type "
;" #
}$ %
} 	
public 
string 
	AppliesTo 
{   	
get!! 
{!! 
return!! 
this!! 
.!! 
	appliesTo!! '
;!!' (
}!!) *
}"" 	
public$$ 
string$$ 
DefaultValue$$ "
{%% 	
get&& 
{&& 
return&& 
this&& 
.&& 
defaultValue&& *
;&&* +
}&&, -
}'' 	
}(( 
})) �
OD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsAnnotations.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #

{

 
internal 
class
CsdlSemanticsAnnotations +
{ 
private 
readonly 
CsdlAnnotations (
annotations) 4
;4 5
private 
readonly 
CsdlSemanticsSchema ,
context- 4
;4 5
public $
CsdlSemanticsAnnotations '
(' (
CsdlSemanticsSchema( ;
context< C
,C D
CsdlAnnotationsE T
annotationsU `
)` a
{ 	
this 
. 
context 
= 
context "
;" #
this 
. 
annotations 
= 
annotations *
;* +
} 	
public 
CsdlSemanticsSchema "
Context# *
{ 	
get 
{ 
return 
this 
. 
context %
;% &
}' (
} 	
public 
CsdlAnnotations 
Annotations *
{ 	
get   
{   
return   
this   
.   
annotations   )
;  ) *
}  + ,
}!! 	
}"" 
}## �5
]D:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsBooleanConstantExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
&CsdlSemanticsBooleanConstantExpression 9
:: ;#
CsdlSemanticsExpression< S
,S T)
IEdmBooleanConstantExpressionU r
,r s

{ 
private 
readonly "
CsdlConstantExpression /

expression0 :
;: ;
private 
readonly 
Cache 
< 2
&CsdlSemanticsBooleanConstantExpression E
,E F
boolG K
>K L

valueCacheM W
=X Y
newZ ]
Cache^ c
<c d3
&CsdlSemanticsBooleanConstantExpression	d �
,
� �
bool
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %2
&CsdlSemanticsBooleanConstantExpression% K
,K L
boolM Q
>Q R
ComputeValueFuncS c
=d e
(f g
meg i
)i j
=>k m
men p
.p q
ComputeValueq }
(} ~
)~ 
;	 �
private 
readonly 
Cache 
< 2
&CsdlSemanticsBooleanConstantExpression E
,E F
IEnumerableG R
<R S
EdmErrorS [
>[ \
>\ ]
errorsCache^ i
=j k
newl o
Cachep u
<u v3
&CsdlSemanticsBooleanConstantExpression	v �
,
� �
IEnumerable
� �
<
� �
EdmError
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %2
&CsdlSemanticsBooleanConstantExpression% K
,K L
IEnumerableM X
<X Y
EdmErrorY a
>a b
>b c
ComputeErrorsFuncd u
=v w
(x y
mey {
){ |
=>} 
me
� �
.
� �

� �
(
� �
)
� �
;
� �
public 2
&CsdlSemanticsBooleanConstantExpression 5
(5 6"
CsdlConstantExpression6 L

expressionM W
,W X
CsdlSemanticsSchemaY l
schemam s
)s t
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this   
.   

expression   
=   

expression   (
;  ( )
}!! 	
public## 
override## 
CsdlElement## #
Element##$ +
{$$ 	
get%% 
{%% 
return%% 
this%% 
.%% 

expression%% (
;%%( )
}%%* +
}&& 	
public(( 
bool(( 
Value(( 
{)) 	
get** 
{** 
return** 
this** 
.** 

valueCache** (
.**( )
GetValue**) 1
(**1 2
this**2 6
,**6 7
ComputeValueFunc**8 H
,**H I
null**J N
)**N O
;**O P
}**Q R
}++ 	
public-- 
override-- 
EdmExpressionKind-- )
ExpressionKind--* 8
{.. 	
get// 
{// 
return// 
EdmExpressionKind// *
.//* +
BooleanConstant//+ :
;//: ;
}//< =
}00 	
public22 
EdmValueKind22 
	ValueKind22 %
{33 	
get44 
{44 
return44 
this44 
.44 

expression44 (
.44( )
	ValueKind44) 2
;442 3
}444 5
}55 	
public77 
IEdmTypeReference77  
Type77! %
{88 	
get99 
{99 
return99 
null99 
;99 
}99  
}:: 	
public<< 
IEnumerable<< 
<<< 
EdmError<< #
><<# $
Errors<<% +
{== 	
get>> 
{>> 
return>> 
this>> 
.>> 
errorsCache>> )
.>>) *
GetValue>>* 2
(>>2 3
this>>3 7
,>>7 8
ComputeErrorsFunc>>9 J
,>>J K
null>>L P
)>>P Q
;>>Q R
}>>S T
}?? 	
privateAA 
boolAA 
ComputeValueAA !
(AA! "
)AA" #
{BB 	
boolCC 
?CC 
localCC 
;CC 
returnDD 
EdmValueParserDD !
.DD! "
TryParseBoolDD" .
(DD. /
thisDD/ 3
.DD3 4

expressionDD4 >
.DD> ?
ValueDD? D
,DDD E
outDDF I
localDDJ O
)DDO P
?DDQ R
localDDS X
.DDX Y
ValueDDY ^
:DD_ `
falseDDa f
;DDf g
}EE 	
privateGG 
IEnumerableGG 
<GG 
EdmErrorGG $
>GG$ %

(GG3 4
)GG4 5
{HH 	
boolII 
?II 
valueII 
;II 
ifJJ 
(JJ 
!JJ 
EdmValueParserJJ 
.JJ  
TryParseBoolJJ  ,
(JJ, -
thisJJ- 1
.JJ1 2

expressionJJ2 <
.JJ< =
ValueJJ= B
,JJB C
outJJD G
valueJJH M
)JJM N
)JJN O
{KK 
returnLL 
newLL 
EdmErrorLL #
[LL# $
]LL$ %
{LL& '
newLL( +
EdmErrorLL, 4
(LL4 5
thisLL5 9
.LL9 :
LocationLL: B
,LLB C
EdmErrorCodeLLD P
.LLP Q
InvalidBooleanLLQ _
,LL_ `
EdmLLa d
.LLd e
StringsLLe l
.LLl m'
ValueParser_InvalidBoolean	LLm �
(
LL� �
this
LL� �
.
LL� �

expression
LL� �
.
LL� �
Value
LL� �
)
LL� �
)
LL� �
}
LL� �
;
LL� �
}MM 
returnOO 

EnumerableOO 
.OO 
EmptyOO #
<OO# $
EdmErrorOO$ ,
>OO, -
(OO- .
)OO. /
;OO/ 0
}PP 	
}QQ 
}RR �
\D:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsCollectionTypeDefinition.cs
	namespace

 	
	Microsoft


 
.

 
OData

 
.

 
Edm

 
.

 
Csdl

 "
.

" #


# 0
{ 
internal 
class
%CsdlSemanticsCollectionTypeDefinition 8
:9 :'
CsdlSemanticsTypeDefinition; V
,V W
IEdmCollectionTypeX j
{ 
private 
readonly 
CsdlSemanticsSchema ,
schema- 3
;3 4
private 
readonly 
CsdlCollectionType +

collection, 6
;6 7
private 
readonly 
Cache 
< 1
%CsdlSemanticsCollectionTypeDefinition D
,D E
IEdmTypeReferenceF W
>W X
elementTypeCacheY i
=j k
newl o
Cachep u
<u v2
%CsdlSemanticsCollectionTypeDefinition	v �
,
� �
IEdmTypeReference
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %1
%CsdlSemanticsCollectionTypeDefinition% J
,J K
IEdmTypeReferenceL ]
>] ^"
ComputeElementTypeFunc_ u
=v w
(x y
mey {
){ |
=>} 
me
� �
.
� � 
ComputeElementType
� �
(
� �
)
� �
;
� �
public 1
%CsdlSemanticsCollectionTypeDefinition 4
(4 5
CsdlSemanticsSchema5 H
schemaI O
,O P
CsdlCollectionTypeQ c

collectiond n
)n o
: 
base 
( 

collection 
) 
{ 	
this 
. 

collection 
= 

collection (
;( )
this 
. 
schema 
= 
schema  
;  !
} 	
public 
override 
EdmTypeKind #
TypeKind$ ,
{ 	
get   
{   
return   
EdmTypeKind   $
.  $ %

Collection  % /
;  / 0
}  1 2
}!! 	
public## 
IEdmTypeReference##  
ElementType##! ,
{$$ 	
get%% 
{%% 
return%% 
this%% 
.%% 
elementTypeCache%% .
.%%. /
GetValue%%/ 7
(%%7 8
this%%8 <
,%%< ="
ComputeElementTypeFunc%%> T
,%%T U
null%%V Z
)%%Z [
;%%[ \
}%%] ^
}&& 	
public(( 
override(( 
CsdlSemanticsModel(( *
Model((+ 0
{)) 	
get** 
{** 
return** 
this** 
.** 
schema** $
.**$ %
Model**% *
;*** +
}**, -
}++ 	
public-- 
override-- 
CsdlElement-- #
Element--$ +
{.. 	
get// 
{// 
return// 
this// 
.// 

collection// (
;//( )
}//* +
}00 	
private22 
IEdmTypeReference22 !
ComputeElementType22" 4
(224 5
)225 6
{33 	
return44 
CsdlSemanticsModel44 %
.44% &
WrapTypeReference44& 7
(447 8
this448 <
.44< =
schema44= C
,44C D
this44E I
.44I J

collection44J T
.44T U
ElementType44U `
)44` a
;44a b
}55 	
}66 
}77 �
\D:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsCollectionTypeExpression.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #

{

 
internal 
class
%CsdlSemanticsCollectionTypeExpression 8
:9 :'
CsdlSemanticsTypeExpression; V
,V W'
IEdmCollectionTypeReferenceX s
{ 
public
%CsdlSemanticsCollectionTypeExpression
(
CsdlExpressionTypeReference
expressionUsage
,
CsdlSemanticsTypeDefinition
type	
)

: 
base 
( 
expressionUsage "
," #
type$ (
)( )
{ 	
} 	
} 
} �6
]D:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsDecimalConstantExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
&CsdlSemanticsDecimalConstantExpression 9
:: ;#
CsdlSemanticsExpression< S
,S T)
IEdmDecimalConstantExpressionU r
,r s

{ 
private 
readonly "
CsdlConstantExpression /

expression0 :
;: ;
private 
readonly 
Cache 
< 2
&CsdlSemanticsDecimalConstantExpression E
,E F
decimalG N
>N O

valueCacheP Z
=[ \
new] `
Cachea f
<f g3
&CsdlSemanticsDecimalConstantExpression	g �
,
� �
decimal
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %2
&CsdlSemanticsDecimalConstantExpression% K
,K L
decimalM T
>T U
ComputeValueFuncV f
=g h
(i j
mej l
)l m
=>n p
meq s
.s t
ComputeValue	t �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
< 2
&CsdlSemanticsDecimalConstantExpression E
,E F
IEnumerableG R
<R S
EdmErrorS [
>[ \
>\ ]
errorsCache^ i
=j k
newl o
Cachep u
<u v3
&CsdlSemanticsDecimalConstantExpression	v �
,
� �
IEnumerable
� �
<
� �
EdmError
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %2
&CsdlSemanticsDecimalConstantExpression% K
,K L
IEnumerableM X
<X Y
EdmErrorY a
>a b
>b c
ComputeErrorsFuncd u
=v w
(x y
mey {
){ |
=>} 
me
� �
.
� �

� �
(
� �
)
� �
;
� �
public 2
&CsdlSemanticsDecimalConstantExpression 5
(5 6"
CsdlConstantExpression6 L

expressionM W
,W X
CsdlSemanticsSchemaY l
schemam s
)s t
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this   
.   

expression   
=   

expression   (
;  ( )
}!! 	
public## 
override## 
CsdlElement## #
Element##$ +
{$$ 	
get%% 
{%% 
return%% 
this%% 
.%% 

expression%% (
;%%( )
}%%* +
}&& 	
public(( 
decimal(( 
Value(( 
{)) 	
get** 
{** 
return** 
this** 
.** 

valueCache** (
.**( )
GetValue**) 1
(**1 2
this**2 6
,**6 7
ComputeValueFunc**8 H
,**H I
null**J N
)**N O
;**O P
}**Q R
}++ 	
public-- 
IEdmTypeReference--  
Type--! %
{.. 	
get// 
{// 
return// 
null// 
;// 
}//  
}00 	
public22 
override22 
EdmExpressionKind22 )
ExpressionKind22* 8
{33 	
get44 
{44 
return44 
EdmExpressionKind44 *
.44* +
DecimalConstant44+ :
;44: ;
}44< =
}55 	
public77 
EdmValueKind77 
	ValueKind77 %
{88 	
get99 
{99 
return99 
this99 
.99 

expression99 (
.99( )
	ValueKind99) 2
;992 3
}994 5
}:: 	
public<< 
IEnumerable<< 
<<< 
EdmError<< #
><<# $
Errors<<% +
{== 	
get>> 
{>> 
return>> 
this>> 
.>> 
errorsCache>> )
.>>) *
GetValue>>* 2
(>>2 3
this>>3 7
,>>7 8
ComputeErrorsFunc>>9 J
,>>J K
null>>L P
)>>P Q
;>>Q R
}>>S T
}?? 	
privateAA 
decimalAA 
ComputeValueAA $
(AA$ %
)AA% &
{BB 	
decimalCC 
?CC 
valueCC 
;CC 
returnDD 
EdmValueParserDD !
.DD! "
TryParseDecimalDD" 1
(DD1 2
thisDD2 6
.DD6 7

expressionDD7 A
.DDA B
ValueDDB G
,DDG H
outDDI L
valueDDM R
)DDR S
?DDT U
valueDDV [
.DD[ \
ValueDD\ a
:DDb c
$numDDd e
;DDe f
}EE 	
privateGG 
IEnumerableGG 
<GG 
EdmErrorGG $
>GG$ %

(GG3 4
)GG4 5
{HH 	
decimalII 
?II 
valueII 
;II 
ifJJ 
(JJ 
!JJ 
EdmValueParserJJ 
.JJ  
TryParseDecimalJJ  /
(JJ/ 0
thisJJ0 4
.JJ4 5

expressionJJ5 ?
.JJ? @
ValueJJ@ E
,JJE F
outJJG J
valueJJK P
)JJP Q
)JJQ R
{KK 
returnLL 
newLL 
EdmErrorLL #
[LL# $
]LL$ %
{LL& '
newLL( +
EdmErrorLL, 4
(LL4 5
thisLL5 9
.LL9 :
LocationLL: B
,LLB C
EdmErrorCodeLLD P
.LLP Q
InvalidDecimalLLQ _
,LL_ `
EdmLLa d
.LLd e
StringsLLe l
.LLl m'
ValueParser_InvalidDecimal	LLm �
(
LL� �
this
LL� �
.
LL� �

expression
LL� �
.
LL� �
Value
LL� �
)
LL� �
)
LL� �
}
LL� �
;
LL� �
}MM 
elseNN 
{OO 
returnPP 

EnumerablePP !
.PP! "
EmptyPP" '
<PP' (
EdmErrorPP( 0
>PP0 1
(PP1 2
)PP2 3
;PP3 4
}QQ 
}RR 	
}SS 
}TT �R
KD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsElement.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
abstract
class  
CsdlSemanticsElement 0
:1 2
IEdmElement3 >
,> ?

{ 
private 
readonly 
Cache 
<  
CsdlSemanticsElement 3
,3 4
IEnumerable5 @
<@ A$
IEdmVocabularyAnnotationA Y
>Y Z
>Z [,
 inlineVocabularyAnnotationsCache\ |
;| }
private 
static 
readonly 
Func  $
<$ % 
CsdlSemanticsElement% 9
,9 :
IEnumerable; F
<F G$
IEdmVocabularyAnnotationG _
>_ `
>` a3
&ComputeInlineVocabularyAnnotationsFunc	b �
=
� �
(
� �
me
� �
)
� �
=>
� �
me
� �
.
� �0
"ComputeInlineVocabularyAnnotations
� �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
<  
CsdlSemanticsElement 3
,3 4
IEnumerable5 @
<@ A%
IEdmDirectValueAnnotationA Z
>Z [
>[ \'
directValueAnnotationsCache] x
;x y
private 
static 
readonly 
Func  $
<$ % 
CsdlSemanticsElement% 9
,9 :
IEnumerable; F
<F G%
IEdmDirectValueAnnotationG `
>` a
>a b.
!ComputeDirectValueAnnotationsFunc	c �
=
� �
(
� �
me
� �
)
� �
=>
� �
me
� �
.
� �+
ComputeDirectValueAnnotations
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
IEnumerable  +
<+ ,$
IEdmVocabularyAnnotation, D
>D E&
emptyVocabularyAnnotationsF `
=a b

Enumerablec m
.m n
Emptyn s
<s t%
IEdmVocabularyAnnotation	t �
>
� �
(
� �
)
� �
;
� �
	protected  
CsdlSemanticsElement &
(& '
CsdlElement' 2
element3 :
): ;
{ 	
if 
( 
element 
!= 
null 
)  
{   
if"" 
("" 
element"" 
."" %
HasDirectValueAnnotations"" 5
)""5 6
{## 
this$$ 
.$$ '
directValueAnnotationsCache$$ 4
=$$5 6
new$$7 :
Cache$$; @
<$$@ A 
CsdlSemanticsElement$$A U
,$$U V
IEnumerable$$W b
<$$b c%
IEdmDirectValueAnnotation$$c |
>$$| }
>$$} ~
($$~ 
)	$$ �
;
$$� �
}%% 
if'' 
('' 
element'' 
.'' $
HasVocabularyAnnotations'' 4
)''4 5
{(( 
this)) 
.)) ,
 inlineVocabularyAnnotationsCache)) 9
=)): ;
new))< ?
Cache))@ E
<))E F 
CsdlSemanticsElement))F Z
,))Z [
IEnumerable))\ g
<))g h%
IEdmVocabularyAnnotation	))h �
>
))� �
>
))� �
(
))� �
)
))� �
;
))� �
}** 
}++ 
},, 	
public.. 
abstract.. 
CsdlSemanticsModel.. *
Model..+ 0
{..1 2
get..3 6
;..6 7
}..8 9
public00 
abstract00 
CsdlElement00 #
Element00$ +
{00, -
get00. 1
;001 2
}003 4
public22 
IEnumerable22 
<22 $
IEdmVocabularyAnnotation22 3
>223 4'
InlineVocabularyAnnotations225 P
{33 	
get44 
{55 
if66 
(66 
this66 
.66 ,
 inlineVocabularyAnnotationsCache66 9
==66: <
null66= A
)66A B
{77 
return88 &
emptyVocabularyAnnotations88 5
;885 6
}99 
return;; 
this;; 
.;; ,
 inlineVocabularyAnnotationsCache;; <
.;;< =
GetValue;;= E
(;;E F
this;;F J
,;;J K2
&ComputeInlineVocabularyAnnotationsFunc;;L r
,;;r s
null;;t x
);;x y
;;;y z
}<< 
}== 	
public?? 
EdmLocation?? 
Location?? #
{@@ 	
getAA 
{BB 
ifCC 
(CC 
thisCC 
.CC 
ElementCC  
==CC! #
nullCC$ (
||CC) +
thisCC, 0
.CC0 1
ElementCC1 8
.CC8 9
LocationCC9 A
==CCB D
nullCCE I
)CCI J
{DD 
returnEE 
newEE 
ObjectLocationEE -
(EE- .
thisEE. 2
)EE2 3
;EE3 4
}FF 
returnHH 
thisHH 
.HH 
ElementHH #
.HH# $
LocationHH$ ,
;HH, -
}II 
}JJ 	
publicLL 
IEnumerableLL 
<LL %
IEdmDirectValueAnnotationLL 4
>LL4 5"
DirectValueAnnotationsLL6 L
{MM 	
getNN 
{OO 
ifPP 
(PP 
thisPP 
.PP '
directValueAnnotationsCachePP 4
==PP5 7
nullPP8 <
)PP< =
{QQ 
returnRR 
nullRR 
;RR  
}SS 
returnUU 
thisUU 
.UU '
directValueAnnotationsCacheUU 7
.UU7 8
GetValueUU8 @
(UU@ A
thisUUA E
,UUE F-
!ComputeDirectValueAnnotationsFuncUUG h
,UUh i
nullUUj n
)UUn o
;UUo p
}VV 
}WW 	
	protected`` 
static`` 
List`` 
<`` 
T`` 
>``  
AllocateAndAdd``! /
<``/ 0
T``0 1
>``1 2
(``2 3
List``3 7
<``7 8
T``8 9
>``9 :
list``; ?
,``? @
T``A B
item``C G
)``G H
{aa 	
ifbb 
(bb 
listbb 
==bb 
nullbb 
)bb 
{cc 
listdd 
=dd 
newdd 
Listdd 
<dd  
Tdd  !
>dd! "
(dd" #
)dd# $
;dd$ %
}ee 
listgg 
.gg 
Addgg 
(gg 
itemgg 
)gg 
;gg 
returnhh 
listhh 
;hh 
}ii 	
	protectedkk 
statickk 
Listkk 
<kk 
Tkk 
>kk  
AllocateAndAddkk! /
<kk/ 0
Tkk0 1
>kk1 2
(kk2 3
Listkk3 7
<kk7 8
Tkk8 9
>kk9 :
listkk; ?
,kk? @
IEnumerablekkA L
<kkL M
TkkM N
>kkN O
itemskkP U
)kkU V
{ll 	
ifmm 
(mm 
listmm 
==mm 
nullmm 
)mm 
{nn 
listoo 
=oo 
newoo 
Listoo 
<oo  
Too  !
>oo! "
(oo" #
)oo# $
;oo$ %
}pp 
listrr 
.rr 
AddRangerr 
(rr 
itemsrr 
)rr  
;rr  !
returnss 
listss 
;ss 
}tt 	
	protectedvv 
virtualvv 
IEnumerablevv %
<vv% &$
IEdmVocabularyAnnotationvv& >
>vv> ?.
"ComputeInlineVocabularyAnnotationsvv@ b
(vvb c
)vvc d
{ww 	
returnxx 
thisxx 
.xx 
Modelxx 
.xx +
WrapInlineVocabularyAnnotationsxx =
(xx= >
thisxx> B
,xxB C
nullxxD H
)xxH I
;xxI J
}yy 	
	protected{{ 
IEnumerable{{ 
<{{ %
IEdmDirectValueAnnotation{{ 7
>{{7 8)
ComputeDirectValueAnnotations{{9 V
({{V W
){{W X
{|| 	
if}} 
(}} 
this}} 
.}} 
Element}} 
==}} 
null}}  $
)}}$ %
{~~ 
return 
null 
; 
}
�� 
List
�� 
<
�� '
CsdlDirectValueAnnotation
�� *
>
��* +
annotations
��, 7
=
��8 9
this
��: >
.
��> ?
Element
��? F
.
��F G'
ImmediateValueAnnotations
��G `
.
��` a
ToList
��a g
(
��g h
)
��h i
;
��i j
if
�� 
(
�� 
annotations
�� 
.
�� 
FirstOrDefault
�� *
(
��* +
)
��+ ,
!=
��- /
null
��0 4
)
��4 5
{
�� 
List
�� 
<
�� '
IEdmDirectValueAnnotation
�� .
>
��. / 
wrappedAnnotations
��0 B
=
��C D
new
��E H
List
��I M
<
��M N'
IEdmDirectValueAnnotation
��N g
>
��g h
(
��h i
)
��i j
;
��j k
foreach
�� 
(
�� '
CsdlDirectValueAnnotation
�� 2

annotation
��3 =
in
��> @
annotations
��A L
)
��L M
{
��  
wrappedAnnotations
�� &
.
��& '
Add
��' *
(
��* +
new
��+ .0
"CsdlSemanticsDirectValueAnnotation
��/ Q
(
��Q R

annotation
��R \
,
��\ ]
this
��^ b
.
��b c
Model
��c h
)
��h i
)
��i j
;
��j k
}
�� 
return
��  
wrappedAnnotations
�� )
;
��) *
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 	
}
�� 
}�� �6
^D:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsFloatingConstantExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
'CsdlSemanticsFloatingConstantExpression :
:; <#
CsdlSemanticsExpression= T
,T U*
IEdmFloatingConstantExpressionV t
,t u

{ 
private 
readonly "
CsdlConstantExpression /

expression0 :
;: ;
private 
readonly 
Cache 
< 3
'CsdlSemanticsFloatingConstantExpression F
,F G
doubleH N
>N O

valueCacheP Z
=[ \
new] `
Cachea f
<f g4
'CsdlSemanticsFloatingConstantExpression	g �
,
� �
double
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %3
'CsdlSemanticsFloatingConstantExpression% L
,L M
doubleN T
>T U
ComputeValueFuncV f
=g h
(i j
mej l
)l m
=>n p
meq s
.s t
ComputeValue	t �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
< 3
'CsdlSemanticsFloatingConstantExpression F
,F G
IEnumerableH S
<S T
EdmErrorT \
>\ ]
>] ^
errorsCache_ j
=k l
newm p
Cacheq v
<v w4
'CsdlSemanticsFloatingConstantExpression	w �
,
� �
IEnumerable
� �
<
� �
EdmError
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %3
'CsdlSemanticsFloatingConstantExpression% L
,L M
IEnumerableN Y
<Y Z
EdmErrorZ b
>b c
>c d
ComputeErrorsFunce v
=w x
(y z
mez |
)| }
=>	~ �
me
� �
.
� �

� �
(
� �
)
� �
;
� �
public 3
'CsdlSemanticsFloatingConstantExpression 6
(6 7"
CsdlConstantExpression7 M

expressionN X
,X Y
CsdlSemanticsSchemaZ m
scheman t
)t u
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this   
.   

expression   
=   

expression   (
;  ( )
}!! 	
public## 
override## 
CsdlElement## #
Element##$ +
{$$ 	
get%% 
{%% 
return%% 
this%% 
.%% 

expression%% (
;%%( )
}%%* +
}&& 	
public(( 
double(( 
Value(( 
{)) 	
get** 
{** 
return** 
this** 
.** 

valueCache** (
.**( )
GetValue**) 1
(**1 2
this**2 6
,**6 7
ComputeValueFunc**8 H
,**H I
null**J N
)**N O
;**O P
}**Q R
}++ 	
public-- 
IEdmTypeReference--  
Type--! %
{.. 	
get// 
{// 
return// 
null// 
;// 
}//  
}00 	
public22 
override22 
EdmExpressionKind22 )
ExpressionKind22* 8
{33 	
get44 
{44 
return44 
EdmExpressionKind44 *
.44* +
FloatingConstant44+ ;
;44; <
}44= >
}55 	
public77 
EdmValueKind77 
	ValueKind77 %
{88 	
get99 
{99 
return99 
this99 
.99 

expression99 (
.99( )
	ValueKind99) 2
;992 3
}994 5
}:: 	
public<< 
IEnumerable<< 
<<< 
EdmError<< #
><<# $
Errors<<% +
{== 	
get>> 
{>> 
return>> 
this>> 
.>> 
errorsCache>> )
.>>) *
GetValue>>* 2
(>>2 3
this>>3 7
,>>7 8
ComputeErrorsFunc>>9 J
,>>J K
null>>L P
)>>P Q
;>>Q R
}>>S T
}?? 	
privateAA 
doubleAA 
ComputeValueAA #
(AA# $
)AA$ %
{BB 	
doubleCC 
?CC 
valueCC 
;CC 
returnDD 
EdmValueParserDD !
.DD! "

(DD/ 0
thisDD0 4
.DD4 5

expressionDD5 ?
.DD? @
ValueDD@ E
,DDE F
outDDG J
valueDDK P
)DDP Q
?DDR S
valueDDT Y
.DDY Z
ValueDDZ _
:DD` a
$numDDb c
;DDc d
}EE 	
privateGG 
IEnumerableGG 
<GG 
EdmErrorGG $
>GG$ %

(GG3 4
)GG4 5
{HH 	
doubleII 
?II 
valueII 
;II 
ifJJ 
(JJ 
!JJ 
EdmValueParserJJ 
.JJ  

(JJ- .
thisJJ. 2
.JJ2 3

expressionJJ3 =
.JJ= >
ValueJJ> C
,JJC D
outJJE H
valueJJI N
)JJN O
)JJO P
{KK 
returnLL 
newLL 
EdmErrorLL #
[LL# $
]LL$ %
{LL& '
newLL( +
EdmErrorLL, 4
(LL4 5
thisLL5 9
.LL9 :
LocationLL: B
,LLB C
EdmErrorCodeLLD P
.LLP Q 
InvalidFloatingPointLLQ e
,LLe f
EdmLLg j
.LLj k
StringsLLk r
.LLr s-
 ValueParser_InvalidFloatingPoint	LLs �
(
LL� �
this
LL� �
.
LL� �

expression
LL� �
.
LL� �
Value
LL� �
)
LL� �
)
LL� �
}
LL� �
;
LL� �
}MM 
elseNN 
{OO 
returnPP 

EnumerablePP !
.PP! "
EmptyPP" '
<PP' (
EdmErrorPP( 0
>PP0 1
(PP1 2
)PP2 3
;PP3 4
}QQ 
}RR 	
}SS 
}TT �5
YD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsIntConstantExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
"CsdlSemanticsIntConstantExpression 5
:6 7#
CsdlSemanticsExpression8 O
,O P)
IEdmIntegerConstantExpressionQ n
,n o

{ 
private 
readonly "
CsdlConstantExpression /

expression0 :
;: ;
private 
readonly 
Cache 
< .
"CsdlSemanticsIntConstantExpression A
,A B
Int64C H
>H I

valueCacheJ T
=U V
newW Z
Cache[ `
<` a/
"CsdlSemanticsIntConstantExpression	a �
,
� �
Int64
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %.
"CsdlSemanticsIntConstantExpression% G
,G H
Int64I N
>N O
ComputeValueFuncP `
=a b
(c d
med f
)f g
=>h j
mek m
.m n
ComputeValuen z
(z {
){ |
;| }
private 
readonly 
Cache 
< .
"CsdlSemanticsIntConstantExpression A
,A B
IEnumerableC N
<N O
EdmErrorO W
>W X
>X Y
errorsCacheZ e
=f g
newh k
Cachel q
<q r/
"CsdlSemanticsIntConstantExpression	r �
,
� �
IEnumerable
� �
<
� �
EdmError
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %.
"CsdlSemanticsIntConstantExpression% G
,G H
IEnumerableI T
<T U
EdmErrorU ]
>] ^
>^ _
ComputeErrorsFunc` q
=r s
(t u
meu w
)w x
=>y {
me| ~
.~ 

(
� �
)
� �
;
� �
public .
"CsdlSemanticsIntConstantExpression 1
(1 2"
CsdlConstantExpression2 H

expressionI S
,S T
CsdlSemanticsSchemaU h
schemai o
)o p
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this   
.   

expression   
=   

expression   (
;  ( )
}!! 	
public## 
override## 
CsdlElement## #
Element##$ +
{$$ 	
get%% 
{%% 
return%% 
this%% 
.%% 

expression%% (
;%%( )
}%%* +
}&& 	
public(( 
Int64(( 
Value(( 
{)) 	
get** 
{** 
return** 
this** 
.** 

valueCache** (
.**( )
GetValue**) 1
(**1 2
this**2 6
,**6 7
ComputeValueFunc**8 H
,**H I
null**J N
)**N O
;**O P
}**Q R
}++ 	
public-- 
override-- 
EdmExpressionKind-- )
ExpressionKind--* 8
{.. 	
get// 
{// 
return// 
EdmExpressionKind// *
.//* +
IntegerConstant//+ :
;//: ;
}//< =
}00 	
public22 
EdmValueKind22 
	ValueKind22 %
{33 	
get44 
{44 
return44 
this44 
.44 

expression44 (
.44( )
	ValueKind44) 2
;442 3
}444 5
}55 	
public77 
IEdmTypeReference77  
Type77! %
{88 	
get99 
{99 
return99 
null99 
;99 
}99  
}:: 	
public<< 
IEnumerable<< 
<<< 
EdmError<< #
><<# $
Errors<<% +
{== 	
get>> 
{>> 
return>> 
this>> 
.>> 
errorsCache>> )
.>>) *
GetValue>>* 2
(>>2 3
this>>3 7
,>>7 8
ComputeErrorsFunc>>9 J
,>>J K
null>>L P
)>>P Q
;>>Q R
}>>S T
}?? 	
privateAA 
Int64AA 
ComputeValueAA "
(AA" #
)AA# $
{BB 	
Int64CC 
?CC 
valueCC 
;CC 
returnDD 
EdmValueParserDD !
.DD! "
TryParseLongDD" .
(DD. /
thisDD/ 3
.DD3 4

expressionDD4 >
.DD> ?
ValueDD? D
,DDD E
outDDF I
valueDDJ O
)DDO P
?DDQ R
valueDDS X
.DDX Y
ValueDDY ^
:DD_ `
$numDDa b
;DDb c
}EE 	
privateGG 
IEnumerableGG 
<GG 
EdmErrorGG $
>GG$ %

(GG3 4
)GG4 5
{HH 	
Int64II 
?II 
valueII 
;II 
ifJJ 
(JJ 
!JJ 
EdmValueParserJJ 
.JJ  
TryParseLongJJ  ,
(JJ, -
thisJJ- 1
.JJ1 2

expressionJJ2 <
.JJ< =
ValueJJ= B
,JJB C
outJJD G
valueJJH M
)JJM N
)JJN O
{KK 
returnLL 
newLL 
EdmErrorLL #
[LL# $
]LL$ %
{LL& '
newLL( +
EdmErrorLL, 4
(LL4 5
thisLL5 9
.LL9 :
LocationLL: B
,LLB C
EdmErrorCodeLLD P
.LLP Q
InvalidIntegerLLQ _
,LL_ `
EdmLLa d
.LLd e
StringsLLe l
.LLl m'
ValueParser_InvalidInteger	LLm �
(
LL� �
this
LL� �
.
LL� �

expression
LL� �
.
LL� �
Value
LL� �
)
LL� �
)
LL� �
}
LL� �
;
LL� �
}MM 
elseNN 
{OO 
returnPP 

EnumerablePP !
.PP! "
EmptyPP" '
<PP' (
EdmErrorPP( 0
>PP0 1
(PP1 2
)PP2 3
;PP3 4
}QQ 
}RR 	
}SS 
}TT �#
VD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsNamedTypeReference.cs
	namespace

 	
	Microsoft


 
.

 
OData

 
.

 
Edm

 
.

 
Csdl

 "
.

" #


# 0
{ 
internal 
class
CsdlSemanticsNamedTypeReference 2
:3 4 
CsdlSemanticsElement5 I
,I J
IEdmTypeReferenceK \
{ 
private 
readonly 
CsdlSemanticsSchema ,
schema- 3
;3 4
private 
readonly "
CsdlNamedTypeReference /
	reference0 9
;9 :
private 
readonly 
Cache 
< +
CsdlSemanticsNamedTypeReference >
,> ?
IEdmType@ H
>H I
definitionCacheJ Y
=Z [
new\ _
Cache` e
<e f,
CsdlSemanticsNamedTypeReference	f �
,
� �
IEdmType
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %+
CsdlSemanticsNamedTypeReference% D
,D E
IEdmTypeF N
>N O!
ComputeDefinitionFuncP e
=f g
(h i
mei k
)k l
=>m o
mep r
.r s
ComputeDefinition	s �
(
� �
)
� �
;
� �
public +
CsdlSemanticsNamedTypeReference .
(. /
CsdlSemanticsSchema/ B
schemaC I
,I J"
CsdlNamedTypeReferenceK a
	referenceb k
)k l
: 
base 
( 
	reference 
) 
{ 	
this 
. 
schema 
= 
schema  
;  !
this 
. 
	reference 
= 
	reference &
;& '
} 	
public 
IEdmType 

Definition "
{ 	
get   
{   
return   
this   
.   
definitionCache   -
.  - .
GetValue  . 6
(  6 7
this  7 ;
,  ; <!
ComputeDefinitionFunc  = R
,  R S
null  T X
)  X Y
;  Y Z
}  [ \
}!! 	
public## 
bool## 

IsNullable## 
{$$ 	
get%% 
{%% 
return%% 
this%% 
.%% 
	reference%% '
.%%' (

IsNullable%%( 2
;%%2 3
}%%4 5
}&& 	
public(( 
override(( 
CsdlSemanticsModel(( *
Model((+ 0
{)) 	
get** 
{** 
return** 
this** 
.** 
schema** $
.**$ %
Model**% *
;*** +
}**, -
}++ 	
public-- 
override-- 
CsdlElement-- #
Element--$ +
{.. 	
get// 
{// 
return// 
this// 
.// 
	reference// '
;//' (
}//) *
}00 	
public22 
override22 
string22 
ToString22 '
(22' (
)22( )
{33 	
return44 
this44 
.44 

(44% &
)44& '
;44' (
}55 	
private77 
IEdmType77 
ComputeDefinition77 *
(77* +
)77+ ,
{88 	
IEdmType99 
binding99 
=99 
this99 #
.99# $
schema99$ *
.99* +
FindType99+ 3
(993 4
this994 8
.998 9
	reference999 B
.99B C
FullName99C K
)99K L
;99L M
return;; 
binding;; 
??;; 
new;; !
UnresolvedType;;" 0
(;;0 1
this;;1 5
.;;5 6
schema;;6 <
.;;< =
ReplaceAlias;;= I
(;;I J
this;;J N
.;;N O
	reference;;O X
.;;X Y
FullName;;Y a
);;a b
??;;c e
this;;f j
.;;j k
	reference;;k t
.;;t u
FullName;;u }
,;;} ~
this	;; �
.
;;� �
Location
;;� �
)
;;� �
;
;;� �
}<< 	
}== 
}>> �
RD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsNullExpression.cs
	namespace

 	
	Microsoft


 
.

 
OData

 
.

 
Edm

 
.

 
Csdl

 "
.

" #


# 0
{ 
internal 
class
CsdlSemanticsNullExpression .
:/ 0#
CsdlSemanticsExpression1 H
,H I
IEdmNullExpressionJ \
{ 
private 
readonly "
CsdlConstantExpression /

expression0 :
;: ;
public '
CsdlSemanticsNullExpression *
(* +"
CsdlConstantExpression+ A

expressionB L
,L M
CsdlSemanticsSchemaN a
schemab h
)h i
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this 
. 

expression 
= 

expression (
;( )
} 	
public 
override 
CsdlElement #
Element$ +
{ 	
get 
{ 
return 
this 
. 

expression (
;( )
}* +
} 	
public 
override 
EdmExpressionKind )
ExpressionKind* 8
{ 	
get   
{   
return   
EdmExpressionKind   *
.  * +
Null  + /
;  / 0
}  1 2
}!! 	
public## 
EdmValueKind## 
	ValueKind## %
{$$ 	
get%% 
{%% 
return%% 
this%% 
.%% 

expression%% (
.%%( )
	ValueKind%%) 2
;%%2 3
}%%4 5
}&& 	
public(( 
IEdmTypeReference((  
Type((! %
{)) 	
get** 
{** 
return** 
null** 
;** 
}**  
}++ 	
},, 
}-- � 
RD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsPathExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
CsdlSemanticsPathExpression .
:/ 0#
CsdlSemanticsExpression1 H
,H I
IEdmPathExpressionJ \
{ 
	protected 
readonly 
CsdlPathExpression -

Expression. 8
;8 9
	protected 
readonly 
IEdmEntityType )
BindingContext* 8
;8 9
	protected 
readonly 
Cache  
<  !'
CsdlSemanticsPathExpression! <
,< =
IEnumerable> I
<I J
stringJ P
>P Q
>Q R
	PathCacheS \
=] ^
new_ b
Cachec h
<h i(
CsdlSemanticsPathExpression	i �
,
� �
IEnumerable
� �
<
� �
string
� �
>
� �
>
� �
(
� �
)
� �
;
� �
	protected 
static 
readonly !
Func" &
<& ''
CsdlSemanticsPathExpression' B
,B C
IEnumerableD O
<O P
stringP V
>V W
>W X
ComputePathFuncY h
=i j
(k l
mel n
)n o
=>p r
mes u
.u v
ComputePath	v �
(
� �
)
� �
;
� �
public '
CsdlSemanticsPathExpression *
(* +
CsdlPathExpression+ =

expression> H
,H I
IEdmEntityTypeJ X
bindingContextY g
,g h
CsdlSemanticsSchemai |
schema	} �
)
� �
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this 
. 

Expression 
= 

expression (
;( )
this 
. 
BindingContext 
=  !
bindingContext" 0
;0 1
} 	
public!! 
override!! 
CsdlElement!! #
Element!!$ +
{"" 	
get## 
{## 
return## 
this## 
.## 

Expression## (
;##( )
}##* +
}$$ 	
public&& 
override&& 
EdmExpressionKind&& )
ExpressionKind&&* 8
{'' 	
get(( 
{(( 
return(( 
EdmExpressionKind(( *
.((* +
Path((+ /
;((/ 0
}((1 2
})) 	
public++ 
IEnumerable++ 
<++ 
string++ !
>++! "
PathSegments++# /
{,, 	
get-- 
{-- 
return-- 
this-- 
.-- 
	PathCache-- '
.--' (
GetValue--( 0
(--0 1
this--1 5
,--5 6
ComputePathFunc--7 F
,--F G
null--H L
)--L M
;--M N
}--O P
}.. 	
public00 
string00 
Path00 
{11 	
get22 
{22 
return22 
this22 
.22 

Expression22 (
.22( )
Path22) -
;22- .
}22/ 0
}33 	
private55 
IEnumerable55 
<55 
string55 "
>55" #
ComputePath55$ /
(55/ 0
)550 1
{66 	
return77 
this77 
.77 

Expression77 "
.77" #
Path77# '
.77' (
Split77( -
(77- .
new77. 1
char772 6
[776 7
]777 8
{779 :
$char77; >
}77? @
,77@ A
StringSplitOptions77B T
.77T U
None77U Y
)77Y Z
;77Z [
}88 	
}99 
}:: �
WD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsPropertyConstructor.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
 CsdlSemanticsPropertyConstructor 3
:4 5 
CsdlSemanticsElement6 J
,J K#
IEdmPropertyConstructorL c
{ 
private 
readonly 
CsdlPropertyValue *
property+ 3
;3 4
private 
readonly )
CsdlSemanticsRecordExpression 6
context7 >
;> ?
private 
readonly 
Cache 
< ,
 CsdlSemanticsPropertyConstructor ?
,? @
IEdmExpressionA O
>O P

valueCacheQ [
=\ ]
new^ a
Cacheb g
<g h-
 CsdlSemanticsPropertyConstructor	h �
,
� �
IEdmExpression
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %,
 CsdlSemanticsPropertyConstructor% E
,E F
IEdmExpressionG U
>U V
ComputeValueFuncW g
=h i
(j k
mek m
)m n
=>o q
mer t
.t u
ComputeValue	u �
(
� �
)
� �
;
� �
public ,
 CsdlSemanticsPropertyConstructor /
(/ 0
CsdlPropertyValue0 A
propertyB J
,J K)
CsdlSemanticsRecordExpressionL i
contextj q
)q r
: 
base 
( 
property 
) 
{ 	
this 
. 
property 
= 
property $
;$ %
this 
. 
context 
= 
context "
;" #
} 	
public 
string 
Name 
{   	
get!! 
{!! 
return!! 
this!! 
.!! 
property!! &
.!!& '
Property!!' /
;!!/ 0
}!!1 2
}"" 	
public$$ 
IEdmExpression$$ 
Value$$ #
{%% 	
get&& 
{&& 
return&& 
this&& 
.&& 

valueCache&& (
.&&( )
GetValue&&) 1
(&&1 2
this&&2 6
,&&6 7
ComputeValueFunc&&8 H
,&&H I
null&&J N
)&&N O
;&&O P
}&&Q R
}'' 	
public)) 
override)) 
CsdlElement)) #
Element))$ +
{** 	
get++ 
{++ 
return++ 
this++ 
.++ 
property++ &
;++& '
}++( )
},, 	
public.. 
override.. 
CsdlSemanticsModel.. *
Model..+ 0
{// 	
get00 
{00 
return00 
this00 
.00 
context00 %
.00% &
Model00& +
;00+ ,
}00- .
}11 	
private33 
IEdmExpression33 
ComputeValue33 +
(33+ ,
)33, -
{44 	
return55 
CsdlSemanticsModel55 %
.55% &
WrapExpression55& 4
(554 5
this555 9
.559 :
property55: B
.55B C

Expression55C M
,55M N
this55O S
.55S T
context55T [
.55[ \
BindingContext55\ j
,55j k
this55l p
.55p q
context55q x
.55x y
Schema55y 
)	55 �
;
55� �
}66 	
}77 
}88 �	
ZD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsPropertyPathExpression.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #

{

 
internal 
class
#CsdlSemanticsPropertyPathExpression 6
:7 8'
CsdlSemanticsPathExpression9 T
{ 
public /
#CsdlSemanticsPropertyPathExpression 2
(2 3
CsdlPathExpression3 E

expressionF P
,P Q
IEdmEntityTypeR `
bindingContexta o
,o p 
CsdlSemanticsSchema	q �
schema
� �
)
� �
: 
base 
( 

expression 
, 
bindingContext -
,- .
schema/ 5
)5 6
{ 	
} 	
public 
override 
EdmExpressionKind )
ExpressionKind* 8
{ 	
get 
{ 
return 
EdmExpressionKind *
.* +
PropertyPath+ 7
;7 8
}9 :
} 	
} 
} �5
TD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsRecordExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{
internal 
class
CsdlSemanticsRecordExpression 0
:1 2#
CsdlSemanticsExpression3 J
,J K 
IEdmRecordExpressionL `
{ 
private 
readonly  
CsdlRecordExpression -

expression. 8
;8 9
private 
readonly 
IEdmEntityType '
bindingContext( 6
;6 7
private 
readonly 
Cache 
< )
CsdlSemanticsRecordExpression <
,< ='
IEdmStructuredTypeReference> Y
>Y Z
declaredTypeCache[ l
=m n
newo r
Caches x
<x y*
CsdlSemanticsRecordExpression	y �
,
� �)
IEdmStructuredTypeReference
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %)
CsdlSemanticsRecordExpression% B
,B C'
IEdmStructuredTypeReferenceD _
>_ `#
ComputeDeclaredTypeFunca x
=y z
({ |
me| ~
)~ 
=>
� �
me
� �
.
� �!
ComputeDeclaredType
� �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
< )
CsdlSemanticsRecordExpression <
,< =
IEnumerable> I
<I J#
IEdmPropertyConstructorJ a
>a b
>b c
propertiesCached s
=t u
newv y
Cachez 
<	 �+
CsdlSemanticsRecordExpression
� �
,
� �
IEnumerable
� �
<
� �%
IEdmPropertyConstructor
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %)
CsdlSemanticsRecordExpression% B
,B C
IEnumerableD O
<O P#
IEdmPropertyConstructorP g
>g h
>h i!
ComputePropertiesFuncj 
=
� �
(
� �
me
� �
)
� �
=>
� �
me
� �
.
� �
ComputeProperties
� �
(
� �
)
� �
;
� �
public )
CsdlSemanticsRecordExpression ,
(, - 
CsdlRecordExpression- A

expressionB L
,L M
IEdmEntityTypeN \
bindingContext] k
,k l 
CsdlSemanticsSchema	m �
schema
� �
)
� �
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this 
. 

expression 
= 

expression (
;( )
this   
.   
bindingContext   
=    !
bindingContext  " 0
;  0 1
}!! 	
public## 
override## 
CsdlElement## #
Element##$ +
{$$ 	
get%% 
{%% 
return%% 
this%% 
.%% 

expression%% (
;%%( )
}%%* +
}&& 	
public(( 
override(( 
EdmExpressionKind(( )
ExpressionKind((* 8
{)) 	
get** 
{** 
return** 
EdmExpressionKind** *
.*** +
Record**+ 1
;**1 2
}**3 4
}++ 	
public-- '
IEdmStructuredTypeReference-- *
DeclaredType--+ 7
{.. 	
get// 
{// 
return// 
this// 
.// 
declaredTypeCache// /
./// 0
GetValue//0 8
(//8 9
this//9 =
,//= >#
ComputeDeclaredTypeFunc//? V
,//V W
null//X \
)//\ ]
;//] ^
}//_ `
}00 	
public22 
IEnumerable22 
<22 #
IEdmPropertyConstructor22 2
>222 3

Properties224 >
{33 	
get44 
{44 
return44 
this44 
.44 
propertiesCache44 -
.44- .
GetValue44. 6
(446 7
this447 ;
,44; <!
ComputePropertiesFunc44= R
,44R S
null44T X
)44X Y
;44Y Z
}44[ \
}55 	
public77 
IEdmEntityType77 
BindingContext77 ,
{88 	
get99 
{99 
return99 
this99 
.99 
bindingContext99 ,
;99, -
}99. /
}:: 	
private<< 
IEnumerable<< 
<<< #
IEdmPropertyConstructor<< 3
><<3 4
ComputeProperties<<5 F
(<<F G
)<<G H
{== 	
List>> 
<>> #
IEdmPropertyConstructor>> (
>>>( )

properties>>* 4
=>>5 6
new>>7 :
List>>; ?
<>>? @#
IEdmPropertyConstructor>>@ W
>>>W X
(>>X Y
)>>Y Z
;>>Z [
foreach@@ 
(@@ 
CsdlPropertyValue@@ &

in@@5 7
this@@8 <
.@@< =

expression@@= G
.@@G H
PropertyValues@@H V
)@@V W
{AA 

propertiesBB 
.BB 
AddBB 
(BB 
newBB ",
 CsdlSemanticsPropertyConstructorBB# C
(BBC D

,BBQ R
thisBBS W
)BBW X
)BBX Y
;BBY Z
}CC 
returnEE 

propertiesEE 
;EE 
}FF 	
privateHH '
IEdmStructuredTypeReferenceHH +
ComputeDeclaredTypeHH, ?
(HH? @
)HH@ A
{II 	
returnJJ 
thisJJ 
.JJ 

expressionJJ "
.JJ" #
TypeJJ# '
!=JJ( *
nullJJ+ /
?JJ0 1
CsdlSemanticsModelJJ2 D
.JJD E
WrapTypeReferenceJJE V
(JJV W
thisJJW [
.JJ[ \
SchemaJJ\ b
,JJb c
thisJJd h
.JJh i

expressionJJi s
.JJs t
TypeJJt x
)JJx y
.JJy z
AsStructured	JJz �
(
JJ� �
)
JJ� �
:
JJ� �
null
JJ� �
;
JJ� �
}KK 	
}LL 
}MM �
MD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsSingleton.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
CsdlSemanticsSingleton )
:* +)
CsdlSemanticsNavigationSource, I
,I J

{ 
public "
CsdlSemanticsSingleton %
(% &(
CsdlSemanticsEntityContainer& B
	containerC L
,L M

	singleton\ e
)e f
: 
base 
( 
	container 
, 
	singleton '
)' (
{ 	
} 	
public 
override 
IEdmType  
Type! %
{ 	
get 
{ 
return 
this 
. 
	typeCache '
.' (
GetValue( 0
(0 1
this1 5
,5 6"
ComputeElementTypeFunc7 M
,M N
nullO S
)S T
;T U
}V W
} 	
public 
override #
EdmContainerElementKind / 
ContainerElementKind0 D
{ 	
get 
{ 
return #
EdmContainerElementKind 0
.0 1
	Singleton1 :
;: ;
}< =
} 	
	protected   
override   
IEdmEntityType   )
ComputeElementType  * <
(  < =
)  = >
{!! 	
string"" 
type"" 
="" 
("" 
("" 

)"") *
this""* .
."". /
navigationSource""/ ?
)""? @
.""@ A
Type""A E
;""E F
return## 
this## 
.## 
	container## !
.##! "
Context##" )
.##) *
FindType##* 2
(##2 3
type##3 7
)##7 8
as##9 ;
IEdmEntityType##< J
??##K M
new##N Q 
UnresolvedEntityType##R f
(##f g
type##g k
,##k l
this##m q
.##q r
Location##r z
)##z {
;##{ |
}$$ 	
}%% 
}&& �

XD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsSpatialTypeReference.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #

{

 
internal 
class
!CsdlSemanticsSpatialTypeReference 4
:5 6/
#CsdlSemanticsPrimitiveTypeReference7 Z
,Z [$
IEdmSpatialTypeReference\ t
{ 
public
!CsdlSemanticsSpatialTypeReference
(
CsdlSemanticsSchema
schema
,
CsdlSpatialTypeReference
	reference
)
: 
base 
( 
schema 
, 
	reference $
)$ %
{ 	
} 	
public 
int 
? &
SpatialReferenceIdentifier .
{ 	
get 
{ 
return 
( 
( $
CsdlSpatialTypeReference 3
)3 4
this4 8
.8 9
	Reference9 B
)B C
.C D
SridD H
;H I
}J K
} 	
} 
} �
\D:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsStringConstantExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
%CsdlSemanticsStringConstantExpression 8
:9 :#
CsdlSemanticsExpression; R
,R S(
IEdmStringConstantExpressionT p
{ 
private 
readonly "
CsdlConstantExpression /

expression0 :
;: ;
private 
readonly 
Cache 
< 1
%CsdlSemanticsStringConstantExpression D
,D E
stringF L
>L M

valueCacheN X
=Y Z
new[ ^
Cache_ d
<d e2
%CsdlSemanticsStringConstantExpression	e �
,
� �
string
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %1
%CsdlSemanticsStringConstantExpression% J
,J K
stringL R
>R S
ComputeValueFuncT d
=e f
(g h
meh j
)j k
=>l n
meo q
.q r
ComputeValuer ~
(~ 
)	 �
;
� �
public 1
%CsdlSemanticsStringConstantExpression 4
(4 5"
CsdlConstantExpression5 K

expressionL V
,V W
CsdlSemanticsSchemaX k
schemal r
)r s
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this 
. 

expression 
= 

expression (
;( )
} 	
public 
override 
CsdlElement #
Element$ +
{ 	
get 
{ 
return 
this 
. 

expression (
;( )
}* +
}   	
public"" 
string"" 
Value"" 
{## 	
get$$ 
{$$ 
return$$ 
this$$ 
.$$ 

valueCache$$ (
.$$( )
GetValue$$) 1
($$1 2
this$$2 6
,$$6 7
ComputeValueFunc$$8 H
,$$H I
null$$J N
)$$N O
;$$O P
}$$Q R
}%% 	
public'' 
override'' 
EdmExpressionKind'' )
ExpressionKind''* 8
{(( 	
get)) 
{)) 
return)) 
EdmExpressionKind)) *
.))* +
StringConstant))+ 9
;))9 :
})); <
}** 	
public,, 
IEdmTypeReference,,  
Type,,! %
{-- 	
get.. 
{.. 
return.. 
null.. 
;.. 
}..  
}// 	
public11 
EdmValueKind11 
	ValueKind11 %
{22 	
get33 
{33 
return33 
this33 
.33 

expression33 (
.33( )
	ValueKind33) 2
;332 3
}334 5
}44 	
private66 
string66 
ComputeValue66 #
(66# $
)66$ %
{77 	
return99 
this99 
.99 

expression99 "
.99" #
Value99# (
;99( )
}:: 	
};; 
}<< �6
_D:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsTimeOfDayConstantExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
(CsdlSemanticsTimeOfDayConstantExpression ;
:< =#
CsdlSemanticsExpression> U
,U V+
IEdmTimeOfDayConstantExpressionW v
,v w

{ 
private 
readonly "
CsdlConstantExpression /

expression0 :
;: ;
private 
readonly 
Cache 
< 4
(CsdlSemanticsTimeOfDayConstantExpression G
,G H
	TimeOfDayI R
>R S

valueCacheT ^
=_ `
newa d
Cachee j
<j k5
(CsdlSemanticsTimeOfDayConstantExpression	k �
,
� �
	TimeOfDay
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %4
(CsdlSemanticsTimeOfDayConstantExpression% M
,M N
	TimeOfDayO X
>X Y
ComputeValueFuncZ j
=k l
(m n
men p
)p q
=>r t
meu w
.w x
ComputeValue	x �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
< 4
(CsdlSemanticsTimeOfDayConstantExpression G
,G H
IEnumerableI T
<T U
EdmErrorU ]
>] ^
>^ _
errorsCache` k
=l m
newn q
Cacher w
<w x5
(CsdlSemanticsTimeOfDayConstantExpression	x �
,
� �
IEnumerable
� �
<
� �
EdmError
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %4
(CsdlSemanticsTimeOfDayConstantExpression% M
,M N
IEnumerableO Z
<Z [
EdmError[ c
>c d
>d e
ComputeErrorsFuncf w
=x y
(z {
me{ }
)} ~
=>	 �
me
� �
.
� �

� �
(
� �
)
� �
;
� �
public 4
(CsdlSemanticsTimeOfDayConstantExpression 7
(7 8"
CsdlConstantExpression8 N

expressionO Y
,Y Z
CsdlSemanticsSchema[ n
schemao u
)u v
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this   
.   

expression   
=   

expression   (
;  ( )
}!! 	
public## 
override## 
CsdlElement## #
Element##$ +
{$$ 	
get%% 
{%% 
return%% 
this%% 
.%% 

expression%% (
;%%( )
}%%* +
}&& 	
public(( 
	TimeOfDay(( 
Value(( 
{)) 	
get** 
{** 
return** 
this** 
.** 

valueCache** (
.**( )
GetValue**) 1
(**1 2
this**2 6
,**6 7
ComputeValueFunc**8 H
,**H I
null**J N
)**N O
;**O P
}**Q R
}++ 	
public-- 
IEdmTypeReference--  
Type--! %
{.. 	
get// 
{// 
return// 
null// 
;// 
}//  
}00 	
public22 
override22 
EdmExpressionKind22 )
ExpressionKind22* 8
{33 	
get44 
{44 
return44 
EdmExpressionKind44 *
.44* +
TimeOfDayConstant44+ <
;44< =
}44> ?
}55 	
public77 
EdmValueKind77 
	ValueKind77 %
{88 	
get99 
{99 
return99 
this99 
.99 

expression99 (
.99( )
	ValueKind99) 2
;992 3
}994 5
}:: 	
public<< 
IEnumerable<< 
<<< 
EdmError<< #
><<# $
Errors<<% +
{== 	
get>> 
{>> 
return>> 
this>> 
.>> 
errorsCache>> )
.>>) *
GetValue>>* 2
(>>2 3
this>>3 7
,>>7 8
ComputeErrorsFunc>>9 J
,>>J K
null>>L P
)>>P Q
;>>Q R
}>>S T
}?? 	
privateAA 
	TimeOfDayAA 
ComputeValueAA &
(AA& '
)AA' (
{BB 	
	TimeOfDayCC 
?CC 
valueCC 
;CC 
returnDD 
EdmValueParserDD !
.DD! "
TryParseTimeOfDayDD" 3
(DD3 4
thisDD4 8
.DD8 9

expressionDD9 C
.DDC D
ValueDDD I
,DDI J
outDDK N
valueDDO T
)DDT U
?DDV W
valueDDX ]
.DD] ^
ValueDD^ c
:DDd e
	TimeOfDayDDf o
.DDo p
MinValueDDp x
;DDx y
}EE 	
privateGG 
IEnumerableGG 
<GG 
EdmErrorGG $
>GG$ %

(GG3 4
)GG4 5
{HH 	
	TimeOfDayII 
?II 
valueII 
;II 
ifJJ 
(JJ 
!JJ 
EdmValueParserJJ 
.JJ  
TryParseTimeOfDayJJ  1
(JJ1 2
thisJJ2 6
.JJ6 7

expressionJJ7 A
.JJA B
ValueJJB G
,JJG H
outJJI L
valueJJM R
)JJR S
)JJS T
{KK 
returnLL 
newLL 
EdmErrorLL #
[LL# $
]LL$ %
{LL& '
newLL( +
EdmErrorLL, 4
(LL4 5
thisLL5 9
.LL9 :
LocationLL: B
,LLB C
EdmErrorCodeLLD P
.LLP Q
InvalidTimeOfDayLLQ a
,LLa b
EdmLLc f
.LLf g
StringsLLg n
.LLn o)
ValueParser_InvalidTimeOfDay	LLo �
(
LL� �
this
LL� �
.
LL� �

expression
LL� �
.
LL� �
Value
LL� �
)
LL� �
)
LL� �
}
LL� �
;
LL� �
}MM 
elseNN 
{OO 
returnPP 

EnumerablePP !
.PP! "
EmptyPP" '
<PP' (
EdmErrorPP( 0
>PP0 1
(PP1 2
)PP2 3
;PP3 4
}QQ 
}RR 	
}SS 
}TT �6
^D:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsDurationConstantExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
'CsdlSemanticsDurationConstantExpression :
:; <#
CsdlSemanticsExpression= T
,T U*
IEdmDurationConstantExpressionV t
,t u

{ 
private 
readonly "
CsdlConstantExpression /

expression0 :
;: ;
private 
readonly 
Cache 
< 3
'CsdlSemanticsDurationConstantExpression F
,F G
TimeSpanH P
>P Q

valueCacheR \
=] ^
new_ b
Cachec h
<h i4
'CsdlSemanticsDurationConstantExpression	i �
,
� �
TimeSpan
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %3
'CsdlSemanticsDurationConstantExpression% L
,L M
TimeSpanN V
>V W
ComputeValueFuncX h
=i j
(k l
mel n
)n o
=>p r
mes u
.u v
ComputeValue	v �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
< 3
'CsdlSemanticsDurationConstantExpression F
,F G
IEnumerableH S
<S T
EdmErrorT \
>\ ]
>] ^
errorsCache_ j
=k l
newm p
Cacheq v
<v w4
'CsdlSemanticsDurationConstantExpression	w �
,
� �
IEnumerable
� �
<
� �
EdmError
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %3
'CsdlSemanticsDurationConstantExpression% L
,L M
IEnumerableN Y
<Y Z
EdmErrorZ b
>b c
>c d
ComputeErrorsFunce v
=w x
(y z
mez |
)| }
=>	~ �
me
� �
.
� �

� �
(
� �
)
� �
;
� �
public 3
'CsdlSemanticsDurationConstantExpression 6
(6 7"
CsdlConstantExpression7 M

expressionN X
,X Y
CsdlSemanticsSchemaZ m
scheman t
)t u
: 
base 
( 
schema 
, 

expression %
)% &
{ 	
this   
.   

expression   
=   

expression   (
;  ( )
}!! 	
public## 
override## 
CsdlElement## #
Element##$ +
{$$ 	
get%% 
{%% 
return%% 
this%% 
.%% 

expression%% (
;%%( )
}%%* +
}&& 	
public(( 
TimeSpan(( 
Value(( 
{)) 	
get** 
{** 
return** 
this** 
.** 

valueCache** (
.**( )
GetValue**) 1
(**1 2
this**2 6
,**6 7
ComputeValueFunc**8 H
,**H I
null**J N
)**N O
;**O P
}**Q R
}++ 	
public-- 
IEdmTypeReference--  
Type--! %
{.. 	
get// 
{// 
return// 
null// 
;// 
}//  
}00 	
public22 
override22 
EdmExpressionKind22 )
ExpressionKind22* 8
{33 	
get44 
{44 
return44 
EdmExpressionKind44 *
.44* +
DurationConstant44+ ;
;44; <
}44= >
}55 	
public77 
EdmValueKind77 
	ValueKind77 %
{88 	
get99 
{99 
return99 
this99 
.99 

expression99 (
.99( )
	ValueKind99) 2
;992 3
}994 5
}:: 	
public<< 
IEnumerable<< 
<<< 
EdmError<< #
><<# $
Errors<<% +
{== 	
get>> 
{>> 
return>> 
this>> 
.>> 
errorsCache>> )
.>>) *
GetValue>>* 2
(>>2 3
this>>3 7
,>>7 8
ComputeErrorsFunc>>9 J
,>>J K
null>>L P
)>>P Q
;>>Q R
}>>S T
}?? 	
privateAA 
TimeSpanAA 
ComputeValueAA %
(AA% &
)AA& '
{BB 	
TimeSpanCC 
?CC 
valueCC 
;CC 
returnDD 
EdmValueParserDD !
.DD! "
TryParseDurationDD" 2
(DD2 3
thisDD3 7
.DD7 8

expressionDD8 B
.DDB C
ValueDDC H
,DDH I
outDDJ M
valueDDN S
)DDS T
?DDU V
valueDDW \
.DD\ ]
ValueDD] b
:DDc d
TimeSpanDDe m
.DDm n
ZeroDDn r
;DDr s
}EE 	
privateGG 
IEnumerableGG 
<GG 
EdmErrorGG $
>GG$ %

(GG3 4
)GG4 5
{HH 	
TimeSpanII 
?II 
valueII 
;II 
ifJJ 
(JJ 
!JJ 
EdmValueParserJJ 
.JJ  
TryParseDurationJJ  0
(JJ0 1
thisJJ1 5
.JJ5 6

expressionJJ6 @
.JJ@ A
ValueJJA F
,JJF G
outJJH K
valueJJL Q
)JJQ R
)JJR S
{KK 
returnLL 
newLL 
EdmErrorLL #
[LL# $
]LL$ %
{LL& '
newLL( +
EdmErrorLL, 4
(LL4 5
thisLL5 9
.LL9 :
LocationLL: B
,LLB C
EdmErrorCodeLLD P
.LLP Q
InvalidDurationLLQ `
,LL` a
EdmLLb e
.LLe f
StringsLLf m
.LLm n(
ValueParser_InvalidDuration	LLn �
(
LL� �
this
LL� �
.
LL� �

expression
LL� �
.
LL� �
Value
LL� �
)
LL� �
)
LL� �
}
LL� �
;
LL� �
}MM 
elseNN 
{OO 
returnPP 

EnumerablePP !
.PP! "
EmptyPP" '
<PP' (
EdmErrorPP( 0
>PP0 1
(PP1 2
)PP2 3
;PP3 4
}QQ 
}RR 	
}SS 
}TT ��
XD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsVocabularyAnnotation.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
!CsdlSemanticsVocabularyAnnotation 4
:5 6 
CsdlSemanticsElement7 K
,K L$
IEdmVocabularyAnnotationM e
,e f

{ 
	protected 
readonly 
CsdlAnnotation )

Annotation* 4
;4 5
private 
readonly 
CsdlSemanticsSchema ,
schema- 3
;3 4
private 
readonly 
string 
	qualifier  )
;) *
private 
readonly %
IEdmVocabularyAnnotatable 2

;@ A
private 
readonly $
CsdlSemanticsAnnotations 1
annotationsContext2 D
;D E
private 
readonly 
Cache 
< -
!CsdlSemanticsVocabularyAnnotation @
,@ A
IEdmExpressionB P
>P Q

valueCacheR \
=] ^
new_ b
Cachec h
<h i.
!CsdlSemanticsVocabularyAnnotation	i �
,
� �
IEdmExpression
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %-
!CsdlSemanticsVocabularyAnnotation% F
,F G
IEdmExpressionH V
>V W
ComputeValueFuncX h
=i j
(k l
mel n
)n o
=>p r
mes u
.u v
ComputeValue	v �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
< -
!CsdlSemanticsVocabularyAnnotation @
,@ A
IEdmTermB J
>J K
	termCacheL U
=V W
newX [
Cache\ a
<a b.
!CsdlSemanticsVocabularyAnnotation	b �
,
� �
IEdmTerm
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %-
!CsdlSemanticsVocabularyAnnotation% F
,F G
IEdmTermH P
>P Q
ComputeTermFuncR a
=b c
(d e
mee g
)g h
=>i k
mel n
.n o
ComputeTermo z
(z {
){ |
;| }
private"" 
readonly"" 
Cache"" 
<"" -
!CsdlSemanticsVocabularyAnnotation"" @
,""@ A%
IEdmVocabularyAnnotatable""B [
>""[ \
targetCache""] h
=""i j
new""k n
Cache""o t
<""t u.
!CsdlSemanticsVocabularyAnnotation	""u �
,
""� �'
IEdmVocabularyAnnotatable
""� �
>
""� �
(
""� �
)
""� �
;
""� �
private## 
static## 
readonly## 
Func##  $
<##$ %-
!CsdlSemanticsVocabularyAnnotation##% F
,##F G%
IEdmVocabularyAnnotatable##H a
>##a b
ComputeTargetFunc##c t
=##u v
(##w x
me##x z
)##z {
=>##| ~
me	## �
.
##� �

##� �
(
##� �
)
##� �
;
##� �
public%% -
!CsdlSemanticsVocabularyAnnotation%% 0
(%%0 1
CsdlSemanticsSchema%%1 D
schema%%E K
,%%K L%
IEdmVocabularyAnnotatable%%M f

,%%t u%
CsdlSemanticsAnnotations	%%v � 
annotationsContext
%%� �
,
%%� �
CsdlAnnotation
%%� �

annotation
%%� �
,
%%� �
string
%%� �
	qualifier
%%� �
)
%%� �
:&& 
base&& 
(&& 

annotation&& 
)&& 
{'' 	
this(( 
.(( 
schema(( 
=(( 
schema((  
;((  !
this)) 
.)) 

Annotation)) 
=)) 

annotation)) (
;))( )
this** 
.** 
	qualifier** 
=** 
	qualifier** &
??**' )

annotation*** 4
.**4 5
	Qualifier**5 >
;**> ?
this++ 
.++ 

=++  

;++. /
this,, 
.,, 
annotationsContext,, #
=,,$ %
annotationsContext,,& 8
;,,8 9
}-- 	
public// 
CsdlSemanticsSchema// "
Schema//# )
{00 	
get11 
{11 
return11 
this11 
.11 
schema11 $
;11$ %
}11& '
}22 	
public44 
override44 
CsdlElement44 #
Element44$ +
{55 	
get66 
{66 
return66 
this66 
.66 

Annotation66 (
;66( )
}66* +
}77 	
public99 
string99 
	Qualifier99 
{:: 	
get;; 
{;; 
return;; 
this;; 
.;; 
	qualifier;; '
;;;' (
};;) *
}<< 	
public>> 
override>> 
CsdlSemanticsModel>> *
Model>>+ 0
{?? 	
get@@ 
{@@ 
return@@ 
this@@ 
.@@ 
schema@@ $
.@@$ %
Model@@% *
;@@* +
}@@, -
}AA 	
publicCC 
IEdmTermCC 
TermCC 
{DD 	
getEE 
{EE 
returnEE 
thisEE 
.EE 
	termCacheEE '
.EE' (
GetValueEE( 0
(EE0 1
thisEE1 5
,EE5 6
ComputeTermFuncEE7 F
,EEF G
nullEEH L
)EEL M
;EEM N
}EEO P
}FF 	
publicHH %
IEdmVocabularyAnnotatableHH (
TargetHH) /
{II 	
getJJ 
{JJ 
returnJJ 
thisJJ 
.JJ 
targetCacheJJ )
.JJ) *
GetValueJJ* 2
(JJ2 3
thisJJ3 7
,JJ7 8
ComputeTargetFuncJJ9 J
,JJJ K
nullJJL P
)JJP Q
;JJQ R
}JJS T
}KK 	
publicMM 
IEnumerableMM 
<MM 
EdmErrorMM #
>MM# $
ErrorsMM% +
{NN 	
getOO 
{PP 
ifQQ 
(QQ 
thisQQ 
.QQ 
TermQQ 
isQQ  
IUnresolvedElementQQ! 3
)QQ3 4
{RR 
returnSS 
thisSS 
.SS  
TermSS  $
.SS$ %
ErrorsSS% +
(SS+ ,
)SS, -
;SS- .
}TT 
ifVV 
(VV 
thisVV 
.VV 
TargetVV 
isVV  "
IUnresolvedElementVV# 5
)VV5 6
{WW 
returnXX 
thisXX 
.XX  
TargetXX  &
.XX& '
ErrorsXX' -
(XX- .
)XX. /
;XX/ 0
}YY 
return[[ 

Enumerable[[ !
.[[! "
Empty[[" '
<[[' (
EdmError[[( 0
>[[0 1
([[1 2
)[[2 3
;[[3 4
}\\ 
}]] 	
publicdd 
IEdmEntityTypedd  
TargetBindingContextdd 2
{ee 	
getff 
{gg 
IEdmVocabularyAnnotatablehh )

=hh8 9
thishh: >
.hh> ?
Targethh? E
;hhE F
IEdmEntityTypeii 
bindingContextii -
=ii. /

asii> @
IEdmEntityTypeiiA O
;iiO P
ifjj 
(jj 
bindingContextjj "
==jj# %
nulljj& *
)jj* +
{kk  
IEdmNavigationSourcell (
navigationSourcell) 9
=ll: ;

asllJ L 
IEdmNavigationSourcellM a
;lla b
ifmm 
(mm 
navigationSourcemm (
!=mm) +
nullmm, 0
)mm0 1
{nn 
bindingContextoo &
=oo' (
navigationSourceoo) 9
.oo9 :

EntityTypeoo: D
(ooD E
)ooE F
;ooF G
}pp 
}qq 
returnss 
bindingContextss %
;ss% &
}tt 
}uu 	
publicww 
IEdmExpressionww 
Valueww #
{xx 	
getyy 
{yy 
returnyy 
thisyy 
.yy 

valueCacheyy (
.yy( )
GetValueyy) 1
(yy1 2
thisyy2 6
,yy6 7
ComputeValueFuncyy8 H
,yyH I
nullyyJ N
)yyN O
;yyO P
}yyQ R
}zz 	
	protected|| 
IEdmTerm|| 
ComputeTerm|| &
(||& '
)||' (
{}} 	
return~~ 
this~~ 
.~~ 
Schema~~ 
.~~ 
FindTerm~~ '
(~~' (
this~~( ,
.~~, -

Annotation~~- 7
.~~7 8
Term~~8 <
)~~< =
??~~> @
new~~A D$
UnresolvedVocabularyTerm~~E ]
(~~] ^
this~~^ b
.~~b c
Schema~~c i
.~~i j
UnresolvedName~~j x
(~~x y
this~~y }
.~~} ~

Annotation	~~~ �
.
~~� �
Term
~~� �
)
~~� �
)
~~� �
;
~~� �
} 	
private
�� 
IEdmExpression
�� 
ComputeValue
�� +
(
��+ ,
)
��, -
{
�� 	
return
��  
CsdlSemanticsModel
�� %
.
��% &
WrapExpression
��& 4
(
��4 5
(
��5 6
this
��6 :
.
��: ;

Annotation
��; E
)
��E F
.
��F G

Expression
��G Q
,
��Q R"
TargetBindingContext
��S g
,
��g h
this
��i m
.
��m n
Schema
��n t
)
��t u
;
��u v
}
�� 	
private
�� '
IEdmVocabularyAnnotatable
�� )

��* 7
(
��7 8
)
��8 9
{
�� 	
if
�� 
(
�� 
this
�� 
.
�� 

�� "
!=
��# %
null
��& *
)
��* +
{
�� 
return
�� 
this
�� 
.
�� 

�� )
;
��) *
}
�� 
else
�� 
{
�� 
Debug
�� 
.
�� 
Assert
�� 
(
�� 
this
�� !
.
��! " 
annotationsContext
��" 4
!=
��5 7
null
��8 <
,
��< =
$str��> �
)��� �
;��� �
string
�� 
target
�� 
=
�� 
this
��  $
.
��$ % 
annotationsContext
��% 7
.
��7 8
Annotations
��8 C
.
��C D
Target
��D J
;
��J K
string
�� 
[
�� 
]
�� 
targetSegments
�� '
=
��( )
target
��* 0
.
��0 1
Split
��1 6
(
��6 7
$char
��7 :
)
��: ;
;
��; <
int
�� !
targetSegmentsCount
�� '
=
��( )
targetSegments
��* 8
.
��8 9
Count
��9 >
(
��> ?
)
��? @
;
��@ A!
IEdmEntityContainer
�� #
	container
��$ -
;
��- .
if
�� 
(
�� !
targetSegmentsCount
�� '
==
��( *
$num
��+ ,
)
��, -
{
�� 
string
�� 
elementName
�� &
=
��' (
targetSegments
��) 7
[
��7 8
$num
��8 9
]
��9 :
;
��: ;
IEdmSchemaType
�� "
type
��# '
=
��( )
this
��* .
.
��. /
schema
��/ 5
.
��5 6
FindType
��6 >
(
��> ?
elementName
��? J
)
��J K
;
��K L
if
�� 
(
�� 
type
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
return
�� 
type
�� #
;
��# $
}
�� 
IEdmTerm
�� 
term
�� !
=
��" #
this
��$ (
.
��( )
schema
��) /
.
��/ 0
FindTerm
��0 8
(
��8 9
elementName
��9 D
)
��D E
;
��E F
if
�� 
(
�� 
term
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
return
�� 
term
�� #
;
��# $
}
�� 

�� !
	operation
��" +
=
��, -
this
��. 2
.
��2 3(
FindParameterizedOperation
��3 M
(
��M N
elementName
��N Y
,
��Y Z
this
��[ _
.
��_ `
Schema
��` f
.
��f g
FindOperations
��g u
,
��u v
this
��w {
.
��{ |'
CreateAmbiguousOperation��| �
)��� �
;��� �
if
�� 
(
�� 
	operation
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
return
�� 
	operation
�� (
;
��( )
}
�� 
	container
�� 
=
�� 
this
��  $
.
��$ %
schema
��% +
.
��+ ,!
FindEntityContainer
��, ?
(
��? @
elementName
��@ K
)
��K L
;
��L M
if
�� 
(
�� 
	container
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
return
�� 
	container
�� (
;
��( )
}
�� 
return
�� 
new
�� 
UnresolvedType
�� -
(
��- .
this
��. 2
.
��2 3
Schema
��3 9
.
��9 :
UnresolvedName
��: H
(
��H I
targetSegments
��I W
[
��W X
$num
��X Y
]
��Y Z
)
��Z [
,
��[ \
this
��] a
.
��a b
Location
��b j
)
��j k
;
��k l
}
�� 
if
�� 
(
�� !
targetSegmentsCount
�� '
==
��( *
$num
��+ ,
)
��, -
{
�� 
	container
�� 
=
�� 
this
��  $
.
��$ %
schema
��% +
.
��+ ,!
FindEntityContainer
��, ?
(
��? @
targetSegments
��@ N
[
��N O
$num
��O P
]
��P Q
)
��Q R
;
��R S
if
�� 
(
�� 
	container
�� !
!=
��" $
null
��% )
)
��) *
{
�� (
IEdmEntityContainerElement
�� 2
containerElement
��3 C
=
��D E
	container
��F O
.
��O P#
FindEntitySetExtended
��P e
(
��e f
targetSegments
��f t
[
��t u
$num
��u v
]
��v w
)
��w x
;
��x y
if
�� 
(
�� 
containerElement
�� ,
!=
��- /
null
��0 4
)
��4 5
{
�� 
return
�� "
containerElement
��# 3
;
��3 4
}
�� !
IEdmOperationImport
�� +
operationImport
��, ;
=
��< =.
 FindParameterizedOperationImport
��> ^
(
��^ _
targetSegments
��_ m
[
��m n
$num
��n o
]
��o p
,
��p q
	container
��r {
.
��{ |+
FindOperationImportsExtended��| �
,��� �
this��� �
.��� �.
CreateAmbiguousOperationImport��� �
)��� �
;��� �
if
�� 
(
�� 
operationImport
�� +
!=
��, .
null
��/ 3
)
��3 4
{
�� 
return
�� "
operationImport
��# 2
;
��2 3
}
�� 
return
�� 
new
�� "!
UnresolvedEntitySet
��# 6
(
��6 7
targetSegments
��7 E
[
��E F
$num
��F G
]
��G H
,
��H I
	container
��J S
,
��S T
this
��U Y
.
��Y Z
Location
��Z b
)
��b c
;
��c d
}
��  
IEdmStructuredType
�� &
type
��' +
=
��, -
this
��. 2
.
��2 3
schema
��3 9
.
��9 :
FindType
��: B
(
��B C
targetSegments
��C Q
[
��Q R
$num
��R S
]
��S T
)
��T U
as
��V X 
IEdmStructuredType
��Y k
;
��k l
if
�� 
(
�� 
type
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
IEdmProperty
�� $
property
��% -
=
��. /
type
��0 4
.
��4 5
FindProperty
��5 A
(
��A B
targetSegments
��B P
[
��P Q
$num
��Q R
]
��R S
)
��S T
;
��T U
if
�� 
(
�� 
property
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
return
�� "
property
��# +
;
��+ ,
}
�� 
return
�� 
new
�� " 
UnresolvedProperty
��# 5
(
��5 6
type
��6 :
,
��: ;
targetSegments
��< J
[
��J K
$num
��K L
]
��L M
,
��M N
this
��O S
.
��S T
Location
��T \
)
��\ ]
;
��] ^
}
�� 

�� !
	operation
��" +
=
��, -
this
��. 2
.
��2 3(
FindParameterizedOperation
��3 M
(
��M N
targetSegments
��N \
[
��\ ]
$num
��] ^
]
��^ _
,
��_ `
this
��a e
.
��e f
Schema
��f l
.
��l m
FindOperations
��m {
,
��{ |
this��} �
.��� �(
CreateAmbiguousOperation��� �
)��� �
;��� �
if
�� 
(
�� 
	operation
�� !
!=
��" $
null
��% )
)
��) *
{
�� $
IEdmOperationParameter
�� .
	parameter
��/ 8
=
��9 :
	operation
��; D
.
��D E

��E R
(
��R S
targetSegments
��S a
[
��a b
$num
��b c
]
��c d
)
��d e
;
��e f
if
�� 
(
�� 
	parameter
�� %
!=
��& (
null
��) -
)
��- .
{
�� 
return
�� "
	parameter
��# ,
;
��, -
}
�� 
return
�� 
new
�� "!
UnresolvedParameter
��# 6
(
��6 7
	operation
��7 @
,
��@ A
targetSegments
��B P
[
��P Q
$num
��Q R
]
��R S
,
��S T
this
��U Y
.
��Y Z
Location
��Z b
)
��b c
;
��c d
}
�� 
return
�� 
new
��  
UnresolvedProperty
�� 1
(
��1 2
new
��2 5"
UnresolvedEntityType
��6 J
(
��J K
this
��K O
.
��O P
Schema
��P V
.
��V W
UnresolvedName
��W e
(
��e f
targetSegments
��f t
[
��t u
$num
��u v
]
��v w
)
��w x
,
��x y
this
��z ~
.
��~ 
Location�� �
)��� �
,��� �
targetSegments��� �
[��� �
$num��� �
]��� �
,��� �
this��� �
.��� �
Location��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� !
targetSegmentsCount
�� '
==
��( *
$num
��+ ,
)
��, -
{
�� 
string
�� 

�� (
=
��) *
targetSegments
��+ 9
[
��9 :
$num
��: ;
]
��; <
;
��< =
string
�� 

�� (
=
��) *
targetSegments
��+ 9
[
��9 :
$num
��: ;
]
��; <
;
��< =
string
�� 

�� (
=
��) *
targetSegments
��+ 9
[
��9 :
$num
��: ;
]
��; <
;
��< =
	container
�� 
=
�� 
this
��  $
.
��$ %
Model
��% *
.
��* +!
FindEntityContainer
��+ >
(
��> ?

��? L
)
��L M
;
��M N
if
�� 
(
�� 
	container
�� !
!=
��" $
null
��% )
)
��) *
{
�� !
IEdmOperationImport
�� +
operationImport
��, ;
=
��< =.
 FindParameterizedOperationImport
��> ^
(
��^ _

��_ l
,
��l m
	container
��n w
.
��w x+
FindOperationImportsExtended��x �
,��� �
this��� �
.��� �.
CreateAmbiguousOperationImport��� �
)��� �
;��� �
if
�� 
(
�� 
operationImport
�� +
!=
��, .
null
��/ 3
)
��3 4
{
�� $
IEdmOperationParameter
�� 2
	parameter
��3 <
=
��= >
operationImport
��? N
.
��N O
	Operation
��O X
.
��X Y

��Y f
(
��f g

��g t
)
��t u
;
��u v
if
�� 
(
��  
	parameter
��  )
!=
��* ,
null
��- 1
)
��1 2
{
�� 
return
��  &
	parameter
��' 0
;
��0 1
}
�� 
return
�� "
new
��# &!
UnresolvedParameter
��' :
(
��: ;
operationImport
��; J
.
��J K
	Operation
��K T
,
��T U

��V c
,
��c d
this
��e i
.
��i j
Location
��j r
)
��r s
;
��s t
}
�� 
}
�� 
string
�� $
qualifiedOperationName
�� 1
=
��2 3

��4 A
+
��B C
$str
��D G
+
��H I

��J W
;
��W X!
UnresolvedOperation
�� '!
unresolvedOperation
��( ;
=
��< =
new
��> A!
UnresolvedOperation
��B U
(
��U V$
qualifiedOperationName
��V l
,
��l m
Edm
��n q
.
��q r
Strings
��r y
.
��y z&
Bad_UnresolvedOperation��z �
(��� �&
qualifiedOperationName��� �
)��� �
,��� �
this��� �
.��� �
Location��� �
)��� �
;��� �
return
�� 
new
�� !
UnresolvedParameter
�� 2
(
��2 3!
unresolvedOperation
��3 F
,
��F G

��H U
,
��U V
this
��W [
.
��[ \
Location
��\ d
)
��d e
;
��e f
}
�� 
return
�� 
new
�� 

BadElement
�� %
(
��% &
new
��& )
EdmError
��* 2
[
��2 3
]
��3 4
{
��5 6
new
��7 :
EdmError
��; C
(
��C D
this
��D H
.
��H I
Location
��I Q
,
��Q R
EdmErrorCode
��S _
.
��_ `)
ImpossibleAnnotationsTarget
��` {
,
��{ |
Edm��} �
.��� �
Strings��� �
.��� �9
)CsdlSemantics_ImpossibleAnnotationsTarget��� �
(��� �
target��� �
)��� �
)��� �
}��� �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
static
�� !
IEdmOperationImport
�� *.
 FindParameterizedOperationImport
��+ K
(
��K L
string
��L R
parameterizedName
��S d
,
��d e
Func
��f j
<
��j k
string
��k q
,
��q r
IEnumerable
��s ~
<
��~ "
IEdmOperationImport�� �
>��� �
>��� �

,��� �
Func��� �
<��� �
IEnumerable��� �
<��� �#
IEdmOperationImport��� �
>��� �
,��� �#
IEdmOperationImport��� �
>��� � 
ambiguityCreator��� �
)��� �
{
�� 	
IEnumerable
�� 
<
�� !
IEdmOperationImport
�� +
>
��+ ,
matchingFunctions
��- >
=
��? @

��A N
(
��N O
parameterizedName
��O `
)
��` a
;
��a b
if
�� 
(
�� 
matchingFunctions
�� !
.
��! "
Count
��" '
(
��' (
)
��( )
==
��* ,
$num
��- .
)
��. /
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
if
�� 
(
�� 
matchingFunctions
�� !
.
��! "
Count
��" '
(
��' (
)
��( )
==
��* ,
$num
��- .
)
��. /
{
�� 
return
�� 
matchingFunctions
�� (
.
��( )
First
��) .
(
��. /
)
��/ 0
;
��0 1
}
�� 
else
�� 
{
�� 
IEdmOperationImport
�� #
	ambiguous
��$ -
=
��. /
ambiguityCreator
��0 @
(
��@ A
matchingFunctions
��A R
)
��R S
;
��S T
return
�� 
	ambiguous
��  
;
��  !
}
�� 
}
�� 	
private
�� 

�� (
FindParameterizedOperation
�� 8
(
��8 9
string
��9 ?
parameterizedName
��@ Q
,
��Q R
Func
��S W
<
��W X
string
��X ^
,
��^ _
IEnumerable
��` k
<
��k l

��l y
>
��y z
>
��z {

,��� �
Func��� �
<��� �
IEnumerable��� �
<��� �

>��� �
,��� �

>��� � 
ambiguityCreator��� �
)��� �
{
�� 	
int
�� 
	openParen
�� 
=
�� 
parameterizedName
�� -
.
��- .
IndexOf
��. 5
(
��5 6
$char
��6 9
)
��9 :
;
��: ;
int
�� 

closeParen
�� 
=
�� 
parameterizedName
�� .
.
��. /
LastIndexOf
��/ :
(
��: ;
$char
��; >
)
��> ?
;
��? @
if
�� 
(
�� 
	openParen
�� 
<
�� 
$num
�� 
)
�� 
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
string
�� 
name
�� 
=
�� 
parameterizedName
�� +
.
��+ ,
	Substring
��, 5
(
��5 6
$num
��6 7
,
��7 8
	openParen
��9 B
)
��B C
;
��C D
string
�� 
[
�� 
]
�� 

parameters
�� 
=
��  !
parameterizedName
��" 3
.
��3 4
	Substring
��4 =
(
��= >
	openParen
��> G
+
��H I
$num
��J K
,
��K L

closeParen
��M W
-
��X Y
(
��Z [
	openParen
��[ d
+
��e f
$num
��g h
)
��h i
)
��i j
.
��j k
Split
��k p
(
��p q
new
��q t
string
��u {
[
��{ |
]
��| }
{
��~ 
$str��� �
}��� �
,��� �"
StringSplitOptions��� �
.��� �"
RemoveEmptyEntries��� �
)��� �
;��� �
IEnumerable
�� 
<
�� 

�� %
>
��% &
matchingFunctions
��' 8
=
��9 :
this
��; ?
.
��? @0
"FindParameterizedOperationFromList
��@ b
(
��b c

��c p
(
��p q
name
��q u
)
��u v
.
��v w
Cast
��w {
<
��{ |

>��� �
(��� �
)��� �
,��� �

parameters��� �
)��� �
;��� �
if
�� 
(
�� 
matchingFunctions
�� !
.
��! "
Count
��" '
(
��' (
)
��( )
==
��* ,
$num
��- .
)
��. /
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
if
�� 
(
�� 
matchingFunctions
�� !
.
��! "
Count
��" '
(
��' (
)
��( )
==
��* ,
$num
��- .
)
��. /
{
�� 
return
�� 
matchingFunctions
�� (
.
��( )
First
��) .
(
��. /
)
��/ 0
;
��0 1
}
�� 
else
�� 
{
�� 

�� 
	ambiguous
�� '
=
��( )
ambiguityCreator
��* :
(
��: ;
matchingFunctions
��; L
)
��L M
;
��M N
return
�� 
	ambiguous
��  
;
��  !
}
�� 
}
�� 	
private
�� !
IEdmOperationImport
�� #,
CreateAmbiguousOperationImport
��$ B
(
��B C
IEnumerable
��C N
<
��N O!
IEdmOperationImport
��O b
>
��b c

operations
��d n
)
��n o
{
�� 	
Debug
�� 
.
�� 
Assert
�� 
(
�� 

operations
�� #
.
��# $
Count
��$ )
(
��) *
)
��* +
>
��, -
$num
��. /
,
��/ 0
$str
��1 o
)
��o p
;
��p q
IEnumerator
�� 
<
�� !
IEdmOperationImport
�� +
>
��+ ,!
operationEnumerator
��- @
=
��A B

operations
��C M
.
��M N

��N [
(
��[ \
)
��\ ]
;
��] ^!
operationEnumerator
�� 
.
��  
MoveNext
��  (
(
��( )
)
��) *
;
��* +!
IEdmOperationImport
�� 
first
��  %
=
��& '!
operationEnumerator
��( ;
.
��; <
Current
��< C
;
��C D!
operationEnumerator
�� 
.
��  
MoveNext
��  (
(
��( )
)
��) *
;
��* +!
IEdmOperationImport
�� 
second
��  &
=
��' (!
operationEnumerator
��) <
.
��< =
Current
��= D
;
��D E-
AmbiguousOperationImportBinding
�� +
	ambiguous
��, 5
=
��6 7
new
��8 ;-
AmbiguousOperationImportBinding
��< [
(
��[ \
first
��\ a
,
��a b
second
��c i
)
��i j
;
��j k
while
�� 
(
�� !
operationEnumerator
�� &
.
��& '
MoveNext
��' /
(
��/ 0
)
��0 1
)
��1 2
{
�� 
	ambiguous
�� 
.
�� 

AddBinding
�� $
(
��$ %!
operationEnumerator
��% 8
.
��8 9
Current
��9 @
)
��@ A
;
��A B
}
�� 
return
�� 
	ambiguous
�� 
;
�� 
}
�� 	
private
�� 

�� &
CreateAmbiguousOperation
�� 6
(
��6 7
IEnumerable
��7 B
<
��B C

��C P
>
��P Q

operations
��R \
)
��\ ]
{
�� 	
Debug
�� 
.
�� 
Assert
�� 
(
�� 

operations
�� #
.
��# $
Count
��$ )
(
��) *
)
��* +
>
��, -
$num
��. /
,
��/ 0
$str
��1 o
)
��o p
;
��p q
IEnumerator
�� 
<
�� 

�� %
>
��% &!
operationEnumerator
��' :
=
��; <

operations
��= G
.
��G H

��H U
(
��U V
)
��V W
;
��W X!
operationEnumerator
�� 
.
��  
MoveNext
��  (
(
��( )
)
��) *
;
��* +

�� 
first
�� 
=
��  !!
operationEnumerator
��" 5
.
��5 6
Current
��6 =
;
��= >!
operationEnumerator
�� 
.
��  
MoveNext
��  (
(
��( )
)
��) *
;
��* +

�� 
second
��  
=
��! "!
operationEnumerator
��# 6
.
��6 7
Current
��7 >
;
��> ?'
AmbiguousOperationBinding
�� %
	ambiguous
��& /
=
��0 1
new
��2 5'
AmbiguousOperationBinding
��6 O
(
��O P
first
��P U
,
��U V
second
��W ]
)
��] ^
;
��^ _
while
�� 
(
�� !
operationEnumerator
�� &
.
��& '
MoveNext
��' /
(
��/ 0
)
��0 1
)
��1 2
{
�� 
	ambiguous
�� 
.
�� 

AddBinding
�� $
(
��$ %!
operationEnumerator
��% 8
.
��8 9
Current
��9 @
)
��@ A
;
��A B
}
�� 
return
�� 
	ambiguous
�� 
;
�� 
}
�� 	
private
�� 
IEnumerable
�� 
<
�� 

�� )
>
��) *0
"FindParameterizedOperationFromList
��+ M
(
��M N
IEnumerable
��N Y
<
��Y Z

��Z g
>
��g h

operations
��i s
,
��s t
string
��u {
[
��{ |
]
��| }

parameters��~ �
)��� �
{
�� 	
List
�� 
<
�� 

�� 
>
��  
matchingOperations
��  2
=
��3 4
new
��5 8
List
��9 =
<
��= >

��> K
>
��K L
(
��L M
)
��M N
;
��N O
foreach
�� 
(
�� 

�� "
function
��# +
in
��, .

operations
��/ 9
)
��9 :
{
�� 
if
�� 
(
�� 
function
�� 
.
�� 

Parameters
�� '
.
��' (
Count
��( -
(
��- .
)
��. /
!=
��0 2

parameters
��3 =
.
��= >
Count
��> C
(
��C D
)
��D E
)
��E F
{
�� 
continue
�� 
;
�� 
}
�� 
bool
�� 
isMatch
�� 
=
�� 
true
�� #
;
��# $
IEnumerator
�� 
<
�� 
string
�� "
>
��" #)
parameterTypeNameEnumerator
��$ ?
=
��@ A
(
��B C
(
��C D
IEnumerable
��D O
<
��O P
string
��P V
>
��V W
)
��W X

parameters
��X b
)
��b c
.
��c d

��d q
(
��q r
)
��r s
;
��s t
foreach
�� 
(
�� $
IEdmOperationParameter
�� /
	parameter
��0 9
in
��: <
function
��= E
.
��E F

Parameters
��F P
)
��P Q
{
�� )
parameterTypeNameEnumerator
�� /
.
��/ 0
MoveNext
��0 8
(
��8 9
)
��9 :
;
��: ;
string
�� 
[
�� 
]
�� 
typeInformation
�� ,
=
��- .)
parameterTypeNameEnumerator
��/ J
.
��J K
Current
��K R
.
��R S
Split
��S X
(
��X Y
new
��Y \
char
��] a
[
��a b
]
��b c
{
��d e
$char
��f i
,
��i j
$char
��k n
}
��o p
)
��p q
;
��q r
switch
�� 
(
�� 
typeInformation
�� +
[
��+ ,
$num
��, -
]
��- .
)
��. /
{
�� 
case
�� 

�� *
.
��* +
Value_Collection
��+ ;
:
��; <
isMatch
�� #
=
��$ %
	parameter
��& /
.
��/ 0
Type
��0 4
.
��4 5
IsCollection
��5 A
(
��A B
)
��B C
&&
��D F
this
��G K
.
��K L
Schema
��L R
.
��R S
FindType
��S [
(
��[ \
typeInformation
��\ k
[
��k l
$num
��l m
]
��m n
)
��n o
.
��o p
IsEquivalentTo
��p ~
(
��~ 
	parameter�� �
.��� �
Type��� �
.��� �
AsCollection��� �
(��� �
)��� �
.��� �
ElementType��� �
(��� �
)��� �
.��� �

Definition��� �
)��� �
;��� �
break
�� !
;
��! "
case
�� 

�� *
.
��* +
	Value_Ref
��+ 4
:
��4 5
isMatch
�� #
=
��$ %
	parameter
��& /
.
��/ 0
Type
��0 4
.
��4 5
IsEntityReference
��5 F
(
��F G
)
��G H
&&
��I K
this
��L P
.
��P Q
Schema
��Q W
.
��W X
FindType
��X `
(
��` a
typeInformation
��a p
[
��p q
$num
��q r
]
��r s
)
��s t
.
��t u
IsEquivalentTo��u �
(��� �
	parameter��� �
.��� �
Type��� �
.��� �!
AsEntityReference��� �
(��� �
)��� �
.��� �

EntityType��� �
(��� �
)��� �
)��� �
;��� �
break
�� !
;
��! "
default
�� 
:
��  
isMatch
�� #
=
��$ %
EdmCoreModel
��& 2
.
��2 3
Instance
��3 ;
.
��; <
FindDeclaredType
��< L
(
��L M)
parameterTypeNameEnumerator
��M h
.
��h i
Current
��i p
)
��p q
.
��q r
IsEquivalentTo��r �
(��� �
	parameter��� �
.��� �
Type��� �
.��� �

Definition��� �
)��� �
||��� �
this��� �
.��� �
Schema��� �
.��� �
FindType��� �
(��� �+
parameterTypeNameEnumerator��� �
.��� �
Current��� �
)��� �
.��� �
IsEquivalentTo��� �
(��� �
	parameter��� �
.��� �
Type��� �
.��� �

Definition��� �
)��� �
;��� �
break
�� !
;
��! "
}
�� 
if
�� 
(
�� 
!
�� 
isMatch
��  
)
��  !
{
�� 
break
�� 
;
�� 
}
�� 
}
�� 
if
�� 
(
�� 
isMatch
�� 
)
�� 
{
��  
matchingOperations
�� &
.
��& '
Add
��' *
(
��* +
function
��+ 3
)
��3 4
;
��4 5
}
�� 
}
�� 
return
��  
matchingOperations
�� %
;
��% &
}
�� 	
}
�� 
}�� �)
HD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsTerm.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{
[ 
System 
. 
Diagnostics 
. 
DebuggerDisplay '
(' (
$str( C
)C D
]D E
internal 
class
CsdlSemanticsTerm $
:% & 
CsdlSemanticsElement' ;
,; <
IEdmTerm= E
{ 
	protected 
readonly 
CsdlSemanticsSchema .
Context/ 6
;6 7
	protected 
CsdlTerm 
term 
;  
private 
readonly 
Cache 
< 
CsdlSemanticsTerm 0
,0 1
IEdmTypeReference2 C
>C D
	typeCacheE N
=O P
newQ T
CacheU Z
<Z [
CsdlSemanticsTerm[ l
,l m
IEdmTypeReferencen 
>	 �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %
CsdlSemanticsTerm% 6
,6 7
IEdmTypeReference8 I
>I J
ComputeTypeFuncK Z
=[ \
(] ^
me^ `
)` a
=>b d
mee g
.g h
ComputeTypeh s
(s t
)t u
;u v
public 
CsdlSemanticsTerm  
(  !
CsdlSemanticsSchema! 4
context5 <
,< =
CsdlTerm> F
	valueTermG P
)P Q
: 
base 
( 
	valueTerm 
) 
{ 	
this 
. 
Context 
= 
context "
;" #
this 
. 
term 
= 
	valueTerm !
;! "
} 	
public!! 
string!! 
Name!! 
{"" 	
get## 
{## 
return## 
this## 
.## 
term## "
.##" #
Name### '
;##' (
}##) *
}$$ 	
public&& 
string&& 
	Namespace&& 
{'' 	
get(( 
{(( 
return(( 
this(( 
.(( 
Context(( %
.((% &
	Namespace((& /
;((/ 0
}((1 2
})) 	
public++  
EdmSchemaElementKind++ #
SchemaElementKind++$ 5
{,, 	
get-- 
{-- 
return--  
EdmSchemaElementKind-- -
.--- .
Term--. 2
;--2 3
}--4 5
}.. 	
public00 
IEdmTypeReference00  
Type00! %
{11 	
get22 
{22 
return22 
this22 
.22 
	typeCache22 '
.22' (
GetValue22( 0
(220 1
this221 5
,225 6
ComputeTypeFunc227 F
,22F G
null22H L
)22L M
;22M N
}22O P
}33 	
public55 
string55 
	AppliesTo55 
{66 	
get77 
{77 
return77 
this77 
.77 
term77 "
.77" #
	AppliesTo77# ,
;77, -
}77. /
}88 	
public:: 
string:: 
DefaultValue:: "
{;; 	
get<< 
{<< 
return<< 
this<< 
.<< 
term<< "
.<<" #
DefaultValue<<# /
;<</ 0
}<<1 2
}== 	
public?? 
override?? 
CsdlSemanticsModel?? *
Model??+ 0
{@@ 	
getAA 
{AA 
returnAA 
thisAA 
.AA 
ContextAA %
.AA% &
ModelAA& +
;AA+ ,
}AA- .
}BB 	
publicDD 
overrideDD 
CsdlElementDD #
ElementDD$ +
{EE 	
getFF 
{FF 
returnFF 
thisFF 
.FF 
termFF "
;FF" #
}FF$ %
}GG 	
	protectedII 
overrideII 
IEnumerableII &
<II& '$
IEdmVocabularyAnnotationII' ?
>II? @.
"ComputeInlineVocabularyAnnotationsIIA c
(IIc d
)IId e
{JJ 	
returnKK 
thisKK 
.KK 
ModelKK 
.KK +
WrapInlineVocabularyAnnotationsKK =
(KK= >
thisKK> B
,KKB C
thisKKD H
.KKH I
ContextKKI P
)KKP Q
;KKQ R
}LL 	
privateNN 
IEdmTypeReferenceNN !
ComputeTypeNN" -
(NN- .
)NN. /
{OO 	
returnPP 
CsdlSemanticsModelPP %
.PP% &
WrapTypeReferencePP& 7
(PP7 8
thisPP8 <
.PP< =
ContextPP= D
,PPD E
thisPPF J
.PPJ K
termPPK O
.PPO P
TypePPP T
)PPT U
;PPU V
}QQ 	
}RR 
}SS �
[D:\odata.net\src\Microsoft.OData.Edm\Csdl\Serialization\EdmModelReferenceElementsVisitor.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal 
class
 EdmModelReferenceElementsVisitor 3
{ 
private 
readonly $
EdmModelCsdlSchemaWriter 1
schemaWriter2 >
;> ?
internal ,
 EdmModelReferenceElementsVisitor 1
(1 2
	IEdmModel2 ;
model< A
,A B
	XmlWriterC L
	xmlWriterM V
,V W
VersionX _
edmxVersion` k
)k l
{ 	
this 
. 
schemaWriter 
= 
new  #$
EdmModelCsdlSchemaWriter$ <
(< =
model= B
,B C
modelD I
.I J
GetNamespaceAliasesJ ]
(] ^
)^ _
,_ `
	xmlWritera j
,j k
edmxVersionl w
)w x
;x y
} 	
internal 
void 
VisitEdmReferences (
(( )
	IEdmModel) 2
model3 8
)8 9
{ 	
IEnumerable 
< 

>% &

references' 1
=2 3
model4 9
.9 :
GetEdmReferences: J
(J K
)K L
;L M
if 
( 
model 
!= 
null 
&&  

references! +
!=, .
null/ 3
)3 4
{ 
foreach 
( 

tmp' *
in+ -

references. 8
)8 9
{   
this!! 
.!! 
schemaWriter!! %
.!!% &'
WriteReferenceElementHeader!!& A
(!!A B
tmp!!B E
)!!E F
;!!F G
if"" 
("" 
tmp"" 
."" 
Includes"" $
!=""% '
null""( ,
)"", -
{## 
foreach$$ 
($$  !
IEdmInclude$$! ,
include$$- 4
in$$5 7
tmp$$8 ;
.$$; <
Includes$$< D
)$$D E
{%% 
this&&  
.&&  !
schemaWriter&&! -
.&&- .
WriteIncludeElement&&. A
(&&A B
include&&B I
)&&I J
;&&J K
}'' 
}(( 
if** 
(** 
tmp** 
.** 
IncludeAnnotations** .
!=**/ 1
null**2 6
)**6 7
{++ 
foreach,, 
(,,  !"
IEdmIncludeAnnotations,,! 7
includeAnnotations,,8 J
in,,K M
tmp,,N Q
.,,Q R
IncludeAnnotations,,R d
),,d e
{-- 
this..  
...  !
schemaWriter..! -
...- .*
WriteIncludeAnnotationsElement... L
(..L M
includeAnnotations..M _
).._ `
;..` a
}// 
}00 
this22 
.22 
schemaWriter22 %
.22% &
WriteEndElement22& 5
(225 6
)226 7
;227 8
}33 
}44 
}55 	
}88 
}99 �t
QD:\odata.net\src\Microsoft.OData.Edm\Csdl\Serialization\SerializationValidator.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{
internal 
static
class "
SerializationValidator 0
{ 
private 
static 
readonly 
ValidationRule  .
<. /
IEdmTypeReference/ @
>@ A0
$TypeReferenceTargetMustHaveValidNameB f
=g h
new 
ValidationRule 
< 
IEdmTypeReference 0
>0 1
(1 2
( 
context 
, 

)' (
=>) +
{ 
IEdmSchemaType "

schemaType# -
=. /

.= >

Definition> H
asI K
IEdmSchemaTypeL Z
;Z [
if 
( 

schemaType "
!=# %
null& *
)* +
{ 
if 
( 
! 
EdmUtil $
.$ %
IsQualifiedName% 4
(4 5

schemaType5 ?
.? @
FullName@ H
(H I
)I J
)J K
)K L
{ 
context #
.# $
AddError$ ,
(, -

.- .
Location. 6
(6 7
)7 8
,8 9
EdmErrorCode    ,
.  , -+
ReferencedTypeMustHaveValidName  - L
,  L M
Strings!!  '
.!!' (6
*Serializer_ReferencedTypeMustHaveValidName!!( R
(!!R S

schemaType!!S ]
.!!] ^
FullName!!^ f
(!!f g
)!!g h
)!!h i
)!!i j
;!!j k
}"" 
}## 
}$$ 
)$$ 
;$$ 
private)) 
static)) 
readonly)) 
ValidationRule))  .
<)). /#
IEdmEntityReferenceType))/ F
>))F G2
&EntityReferenceTargetMustHaveValidName))H n
=))o p
new** 
ValidationRule** 
<** #
IEdmEntityReferenceType** 6
>**6 7
(**7 8
(++ 
context++ 
,++ 
entityReference++ )
)++) *
=>+++ -
{,, 
if-- 
(-- 
!-- 
EdmUtil--  
.--  !
IsQualifiedName--! 0
(--0 1
entityReference--1 @
.--@ A

EntityType--A K
.--K L
FullName--L T
(--T U
)--U V
)--V W
)--W X
{.. 
context// 
.//  
AddError//  (
(//( )
entityReference00 +
.00+ ,
Location00, 4
(004 5
)005 6
,006 7
EdmErrorCode11 (
.11( )+
ReferencedTypeMustHaveValidName11) H
,11H I
Strings22 #
.22# $6
*Serializer_ReferencedTypeMustHaveValidName22$ N
(22N O
entityReference22O ^
.22^ _

EntityType22_ i
.22i j
FullName22j r
(22r s
)22s t
)22t u
)22u v
;22v w
}33 
}44 
)44 
;44 
private99 
static99 
readonly99 
ValidationRule99  .
<99. /

>99< =*
EntitySetTypeMustHaveValidName99> \
=99] ^
new:: 
ValidationRule:: 
<:: 

>::, -
(::- .
(;; 
context;; 
,;; 
set;; 
);; 
=>;; !
{<< 
if== 
(== 
!== 
EdmUtil==  
.==  !
IsQualifiedName==! 0
(==0 1
set==1 4
.==4 5

EntityType==5 ?
(==? @
)==@ A
.==A B
FullName==B J
(==J K
)==K L
)==L M
)==M N
{>> 
context?? 
.??  
AddError??  (
(??( )
set@@ 
.@@  
Location@@  (
(@@( )
)@@) *
,@@* +
EdmErrorCodeAA (
.AA( )+
ReferencedTypeMustHaveValidNameAA) H
,AAH I
StringsBB #
.BB# $6
*Serializer_ReferencedTypeMustHaveValidNameBB$ N
(BBN O
setBBO R
.BBR S

EntityTypeBBS ]
(BB] ^
)BB^ _
.BB_ `
FullNameBB` h
(BBh i
)BBi j
)BBj k
)BBk l
;BBl m
}CC 
}DD 
)DD 
;DD 
privateII 
staticII 
readonlyII 
ValidationRuleII  .
<II. /
IEdmStructuredTypeII/ A
>IIA B3
'StructuredTypeBaseTypeMustHaveValidNameIIC j
=IIk l
newJJ 
ValidationRuleJJ 
<JJ 
IEdmStructuredTypeJJ 1
>JJ1 2
(JJ2 3
(KK 
contextKK 
,KK 
typeKK 
)KK 
=>KK  "
{LL 
IEdmSchemaTypeMM "
schemaBaseTypeMM# 1
=MM2 3
typeMM4 8
.MM8 9
BaseTypeMM9 A
asMMB D
IEdmSchemaTypeMME S
;MMS T
ifNN 
(NN 
schemaBaseTypeNN &
!=NN' )
nullNN* .
)NN. /
{OO 
ifPP 
(PP 
!PP 
EdmUtilPP $
.PP$ %
IsQualifiedNamePP% 4
(PP4 5
schemaBaseTypePP5 C
.PPC D
FullNamePPD L
(PPL M
)PPM N
)PPN O
)PPO P
{QQ 
contextRR #
.RR# $
AddErrorRR$ ,
(RR, -
typeSS  $
.SS$ %
LocationSS% -
(SS- .
)SS. /
,SS/ 0
EdmErrorCodeTT  ,
.TT, -+
ReferencedTypeMustHaveValidNameTT- L
,TTL M
StringsUU  '
.UU' (6
*Serializer_ReferencedTypeMustHaveValidNameUU( R
(UUR S
schemaBaseTypeUUS a
.UUa b
FullNameUUb j
(UUj k
)UUk l
)UUl m
)UUm n
;UUn o
}VV 
}WW 
}XX 
)XX 
;XX 
private]] 
static]] 
readonly]] 
ValidationRule]]  .
<]]. /$
IEdmVocabularyAnnotation]]/ G
>]]G H@
4VocabularyAnnotationOutOfLineMustHaveValidTargetName]]I }
=]]~ 
new^^ 
ValidationRule^^ 
<^^ $
IEdmVocabularyAnnotation^^ 7
>^^7 8
(^^8 9
(__ 
context__ 
,__ 

annotation__ $
)__$ %
=>__& (
{`` 
ifaa 
(aa 

annotationaa "
.aa" #$
GetSerializationLocationaa# ;
(aa; <
contextaa< C
.aaC D
ModelaaD I
)aaI J
==aaK M8
,EdmVocabularyAnnotationSerializationLocationaaN z
.aaz {
	OutOfLine	aa{ �
&&
aa� �
!
aa� �
EdmUtil
aa� �
.
aa� �
IsQualifiedName
aa� �
(
aa� �

annotation
aa� �
.
aa� �
TargetString
aa� �
(
aa� �
)
aa� �
)
aa� �
)
aa� �
{bb 
contextcc 
.cc  
AddErrorcc  (
(cc( )

annotationdd &
.dd& '
Locationdd' /
(dd/ 0
)dd0 1
,dd1 2
EdmErrorCodeee (
.ee( )
InvalidNameee) 4
,ee4 5
Stringsff #
.ff# $A
5Serializer_OutOfLineAnnotationTargetMustHaveValidNameff$ Y
(ffY Z
EdmUtilffZ a
.ffa b
FullyQualifiedNameffb t
(fft u

annotationffu 
.	ff �
Target
ff� �
)
ff� �
)
ff� �
)
ff� �
;
ff� �
}gg 
}hh 
)hh 
;hh 
privatemm 
staticmm 
readonlymm 
ValidationRulemm  .
<mm. /$
IEdmVocabularyAnnotationmm/ G
>mmG H5
)VocabularyAnnotationMustHaveValidTermNamemmI r
=mms t
newnn 
ValidationRulenn 
<nn $
IEdmVocabularyAnnotationnn 7
>nn7 8
(nn8 9
(oo 
contextoo 
,oo 

annotationoo $
)oo$ %
=>oo& (
{pp 
ifqq 
(qq 
!qq 
EdmUtilqq  
.qq  !
IsQualifiedNameqq! 0
(qq0 1

annotationqq1 ;
.qq; <
Termqq< @
.qq@ A
FullNameqqA I
(qqI J
)qqJ K
)qqK L
)qqL M
{rr 
contextss 
.ss  
AddErrorss  (
(ss( )

annotationtt &
.tt& '
Locationtt' /
(tt/ 0
)tt0 1
,tt1 2
EdmErrorCodeuu (
.uu( )
InvalidNameuu) 4
,uu4 5
Stringsvv #
.vv# $A
5Serializer_OutOfLineAnnotationTargetMustHaveValidNamevv$ Y
(vvY Z

annotationvvZ d
.vvd e
Termvve i
.vvi j
FullNamevvj r
(vvr s
)vvs t
)vvt u
)vvu v
;vvv w
}ww 
}xx 
)xx 
;xx 
private|| 
static|| 
ValidationRuleSet|| ( 
serializationRuleSet||) =
=||> ?
new||@ C
ValidationRuleSet||D U
(||U V
new||V Y
ValidationRule||Z h
[||h i
]||i j
{}} 
$TypeReferenceTargetMustHaveValidName~~ 4
,~~4 52
&EntityReferenceTargetMustHaveValidName 6
,6 7,
EntitySetTypeMustHaveValidName
�� .
,
��. /5
'StructuredTypeBaseTypeMustHaveValidName
�� 7
,
��7 8B
4VocabularyAnnotationOutOfLineMustHaveValidTargetName
�� D
,
��D E7
)VocabularyAnnotationMustHaveValidTermName
�� 9
,
��9 :
ValidationRules
�� 
.
��  9
+OperationImportEntitySetExpressionIsInvalid
��  K
,
��K L
ValidationRules
�� 
.
��  '
TypeMustNotHaveKindOfNone
��  9
,
��9 :
ValidationRules
�� 
.
��  0
"PrimitiveTypeMustNotHaveKindOfNone
��  B
,
��B C
ValidationRules
�� 
.
��  +
PropertyMustNotHaveKindOfNone
��  =
,
��= >
ValidationRules
�� 
.
��  0
"SchemaElementMustNotHaveKindOfNone
��  B
,
��B C
ValidationRules
�� 
.
��  9
+EntityContainerElementMustNotHaveKindOfNone
��  K
,
��K L
ValidationRules
�� 
.
��  /
!EnumMustHaveIntegerUnderlyingType
��  A
,
��A B
ValidationRules
�� 
.
��  =
/EnumMemberValueMustHaveSameTypeAsUnderlyingType
��  O
}
�� 
)
��
;
�� 
public
�� 
static
�� 
IEnumerable
�� !
<
��! "
EdmError
��" *
>
��* +$
GetSerializationErrors
��, B
(
��B C
this
��C G
	IEdmModel
��H Q
root
��R V
)
��V W
{
�� 	
IEnumerable
�� 
<
�� 
EdmError
��  
>
��  !
errors
��" (
;
��( )
root
�� 
.
�� 
Validate
�� 
(
�� "
serializationRuleSet
�� .
,
��. /
out
��0 3
errors
��4 :
)
��: ;
;
��; <
errors
�� 
=
�� 
errors
�� 
.
�� 
Where
�� !
(
��! "(
SignificantToSerialization
��" <
)
��< =
;
��= >
return
�� 
errors
�� 
;
�� 
}
�� 	
internal
�� 
static
�� 
bool
�� (
SignificantToSerialization
�� 7
(
��7 8
EdmError
��8 @
error
��A F
)
��F G
{
�� 	
if
�� 
(
�� 
ValidationHelper
��  
.
��  !!
IsInterfaceCritical
��! 4
(
��4 5
error
��5 :
)
��: ;
)
��; <
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
switch
�� 
(
�� 
error
�� 
.
�� 
	ErrorCode
�� #
)
��# $
{
�� 
case
�� 
EdmErrorCode
�� !
.
��! "
InvalidName
��" -
:
��- .
case
�� 
EdmErrorCode
�� !
.
��! "
NameTooLong
��" -
:
��- .
case
�� 
EdmErrorCode
�� !
.
��! ""
InvalidNamespaceName
��" 6
:
��6 7
case
�� 
EdmErrorCode
�� !
.
��! "(
SystemNamespaceEncountered
��" <
:
��< =
case
�� 
EdmErrorCode
�� !
.
��! "-
ReferencedTypeMustHaveValidName
��" A
:
��A B
case
�� 
EdmErrorCode
�� !
.
��! "9
+OperationImportEntitySetExpressionIsInvalid
��" M
:
��M N
case
�� 
EdmErrorCode
�� !
.
��! "3
%OperationImportParameterIncorrectType
��" G
:
��G H
case
�� 
EdmErrorCode
�� !
.
��! "1
#InvalidOperationImportParameterMode
��" E
:
��E F
case
�� 
EdmErrorCode
�� !
.
��! "'
TypeMustNotHaveKindOfNone
��" ;
:
��; <
case
�� 
EdmErrorCode
�� !
.
��! "0
"PrimitiveTypeMustNotHaveKindOfNone
��" D
:
��D E
case
�� 
EdmErrorCode
�� !
.
��! "+
PropertyMustNotHaveKindOfNone
��" ?
:
��? @
case
�� 
EdmErrorCode
�� !
.
��! "0
"SchemaElementMustNotHaveKindOfNone
��" D
:
��D E
case
�� 
EdmErrorCode
�� !
.
��! "9
+EntityContainerElementMustNotHaveKindOfNone
��" M
:
��M N
case
�� 
EdmErrorCode
�� !
.
��! "-
BinaryValueCannotHaveEmptyValue
��" A
:
��A B
case
�� 
EdmErrorCode
�� !
.
��! "/
!EnumMustHaveIntegerUnderlyingType
��" C
:
��C D
case
�� 
EdmErrorCode
�� !
.
��! "'
EnumMemberValueOutOfRange
��" ;
:
��; <
return
�� 
true
�� 
;
��  
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
JD:\odata.net\src\Microsoft.OData.Edm\Csdl\SerializationExtensionMethods.cs
	namespace
	Microsoft
 
.
OData
.
Edm
.
Csdl
{ 
public 

enum 8
,EdmVocabularyAnnotationSerializationLocation <
{ 
Inline 
, 
	OutOfLine 
} 
public"" 

static"" 
class"" )
SerializationExtensionMethods"" 5
{## 
public++ 
static++ 
Version++ 
GetEdmxVersion++ ,
(++, -
this++- 1
	IEdmModel++2 ;
model++< A
)++A B
{,, 	
EdmUtil-- 
.-- 
CheckArgumentNull-- %
(--% &
model--& +
,--+ ,
$str--- 4
)--4 5
;--5 6
return.. 
model.. 
... 
GetAnnotationValue.. +
<..+ ,
Version.., 3
>..3 4
(..4 5
model..5 :
,..: ;
EdmConstants..< H
...H I
InternalUri..I T
,..T U

...c d!
EdmxVersionAnnotation..d y
)..y z
;..z {
}// 	
public66 
static66 
void66 
SetEdmxVersion66 )
(66) *
this66* .
	IEdmModel66/ 8
model669 >
,66> ?
Version66@ G
version66H O
)66O P
{77 	
EdmUtil88 
.88 
CheckArgumentNull88 %
(88% &
model88& +
,88+ ,
$str88- 4
)884 5
;885 6
model99 
.99 
SetAnnotationValue99 $
(99$ %
model99% *
,99* +
EdmConstants99, 8
.998 9
InternalUri999 D
,99D E

.99S T!
EdmxVersionAnnotation99T i
,99i j
version99k r
)99r s
;99s t
}:: 	
publicEE 
staticEE 
voidEE &
SetNamespacePrefixMappingsEE 5
(EE5 6
thisEE6 :
	IEdmModelEE; D
modelEEE J
,EEJ K
IEnumerableEEL W
<EEW X
KeyValuePairEEX d
<EEd e
stringEEe k
,EEk l
stringEEm s
>EEs t
>EEt u
mappingsEEv ~
)EE~ 
{FF 	
EdmUtilGG 
.GG 
CheckArgumentNullGG %
(GG% &
modelGG& +
,GG+ ,
$strGG- 4
)GG4 5
;GG5 6
modelHH 
.HH 
SetAnnotationValueHH $
(HH$ %
modelHH% *
,HH* +
EdmConstantsHH, 8
.HH8 9
InternalUriHH9 D
,HHD E

.HHS T%
NamespacePrefixAnnotationHHT m
,HHm n
mappingsHHo w
)HHw x
;HHx y
}II 	
publicPP 
staticPP 
IEnumerablePP !
<PP! "
KeyValuePairPP" .
<PP. /
stringPP/ 5
,PP5 6
stringPP7 =
>PP= >
>PP> ?&
GetNamespacePrefixMappingsPP@ Z
(PPZ [
thisPP[ _
	IEdmModelPP` i
modelPPj o
)PPo p
{QQ 	
EdmUtilRR 
.RR 
CheckArgumentNullRR %
(RR% &
modelRR& +
,RR+ ,
$strRR- 4
)RR4 5
;RR5 6
returnSS 
modelSS 
.SS 
GetAnnotationValueSS +
<SS+ ,
IEnumerableSS, 7
<SS7 8
KeyValuePairSS8 D
<SSD E
stringSSE K
,SSK L
stringSSM S
>SSS T
>SST U
>SSU V
(SSV W
modelSSW \
,SS\ ]
EdmConstantsSS^ j
.SSj k
InternalUriSSk v
,SSv w

.
SS� �'
NamespacePrefixAnnotation
SS� �
)
SS� �
;
SS� �
}TT 	
public`` 
static`` 
void`` $
SetSerializationLocation`` 3
(``3 4
this``4 8$
IEdmVocabularyAnnotation``9 Q

annotation``R \
,``\ ]
	IEdmModel``^ g
model``h m
,``m n9
,EdmVocabularyAnnotationSerializationLocation	``o �
?
``� �
location
``� �
)
``� �
{aa 	
EdmUtilbb 
.bb 
CheckArgumentNullbb %
(bb% &

annotationbb& 0
,bb0 1
$strbb2 >
)bb> ?
;bb? @
EdmUtilcc 
.cc 
CheckArgumentNullcc %
(cc% &
modelcc& +
,cc+ ,
$strcc- 4
)cc4 5
;cc5 6
modelee 
.ee 
SetAnnotationValueee $
(ee$ %

annotationee% /
,ee/ 0
EdmConstantsee1 =
.ee= >
InternalUriee> I
,eeI J

.eeX Y6
)AnnotationSerializationLocationAnnotation	eeY �
,
ee� �
(
ee� �
object
ee� �
)
ee� �
location
ee� �
)
ee� �
;
ee� �
}ff 	
publicnn 
staticnn 8
,EdmVocabularyAnnotationSerializationLocationnn B
?nnB C$
GetSerializationLocationnnD \
(nn\ ]
thisnn] a$
IEdmVocabularyAnnotationnnb z

annotation	nn{ �
,
nn� �
	IEdmModel
nn� �
model
nn� �
)
nn� �
{oo 	
EdmUtilpp 
.pp 
CheckArgumentNullpp %
(pp% &

annotationpp& 0
,pp0 1
$strpp2 >
)pp> ?
;pp? @
EdmUtilqq 
.qq 
CheckArgumentNullqq %
(qq% &
modelqq& +
,qq+ ,
$strqq- 4
)qq4 5
;qq5 6
returnss 
modelss 
.ss 
GetAnnotationValuess +
(ss+ ,

annotationss, 6
,ss6 7
EdmConstantsss8 D
.ssD E
InternalUrissE P
,ssP Q

.ss_ `6
)AnnotationSerializationLocationAnnotation	ss` �
)
ss� �
as
ss� �:
,EdmVocabularyAnnotationSerializationLocation
ss� �
?
ss� �
;
ss� �
}tt 	
public
�� 
static
�� 
void
��  
SetSchemaNamespace
�� -
(
��- .
this
��. 2&
IEdmVocabularyAnnotation
��3 K

annotation
��L V
,
��V W
	IEdmModel
��X a
model
��b g
,
��g h
string
��i o
schemaNamespace
��p 
)�� �
{
�� 	
EdmUtil
�� 
.
�� 
CheckArgumentNull
�� %
(
��% &

annotation
��& 0
,
��0 1
$str
��2 >
)
��> ?
;
��? @
EdmUtil
�� 
.
�� 
CheckArgumentNull
�� %
(
��% &
model
��& +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
model
�� 
.
��  
SetAnnotationValue
�� $
(
��$ %

annotation
��% /
,
��/ 0
EdmConstants
��1 =
.
��= >
InternalUri
��> I
,
��I J

��K X
.
��X Y'
SchemaNamespaceAnnotation
��Y r
,
��r s
schemaNamespace��t �
)��� �
;��� �
}
�� 	
public
�� 
static
�� 
string
��  
GetSchemaNamespace
�� /
(
��/ 0
this
��0 4&
IEdmVocabularyAnnotation
��5 M

annotation
��N X
,
��X Y
	IEdmModel
��Z c
model
��d i
)
��i j
{
�� 	
EdmUtil
�� 
.
�� 
CheckArgumentNull
�� %
(
��% &

annotation
��& 0
,
��0 1
$str
��2 >
)
��> ?
;
��? @
EdmUtil
�� 
.
�� 
CheckArgumentNull
�� %
(
��% &
model
��& +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
return
�� 
model
�� 
.
��  
GetAnnotationValue
�� +
<
��+ ,
string
��, 2
>
��2 3
(
��3 4

annotation
��4 >
,
��> ?
EdmConstants
��@ L
.
��L M
InternalUri
��M X
,
��X Y

��Z g
.
��g h(
SchemaNamespaceAnnotation��h �
)��� �
;��� �
}
�� 	
public
�� 
static
�� 
void
��  
SetIsValueExplicit
�� -
(
��- .
this
��. 2
IEdmEnumMember
��3 A
member
��B H
,
��H I
	IEdmModel
��J S
model
��T Y
,
��Y Z
bool
��[ _
?
��_ `

isExplicit
��a k
)
��k l
{
�� 	
EdmUtil
�� 
.
�� 
CheckArgumentNull
�� %
(
��% &
member
��& ,
,
��, -
$str
��. 6
)
��6 7
;
��7 8
EdmUtil
�� 
.
�� 
CheckArgumentNull
�� %
(
��% &
model
��& +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
model
�� 
.
��  
SetAnnotationValue
�� $
(
��$ %
member
��% +
,
��+ ,
EdmConstants
��- 9
.
��9 :
InternalUri
��: E
,
��E F

��G T
.
��T U1
#IsEnumMemberValueExplicitAnnotation
��U x
,
��x y
(
��z {
object��{ �
)��� �

isExplicit��� �
)��� �
;��� �
}
�� 	
public
�� 
static
�� 
bool
�� 
?
�� 
IsValueExplicit
�� +
(
��+ ,
this
��, 0
IEdmEnumMember
��1 ?
member
��@ F
,
��F G
	IEdmModel
��H Q
model
��R W
)
��W X
{
�� 	
EdmUtil
�� 
.
�� 
CheckArgumentNull
�� %
(
��% &
member
��& ,
,
��, -
$str
��. 6
)
��6 7
;
��7 8
EdmUtil
�� 
.
�� 
CheckArgumentNull
�� %
(
��% &
model
��& +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
return
�� 
model
�� 
.
��  
GetAnnotationValue
�� +
(
��+ ,
member
��, 2
,
��2 3
EdmConstants
��4 @
.
��@ A
InternalUri
��A L
,
��L M

��N [
.
��[ \1
#IsEnumMemberValueExplicitAnnotation
��\ 
)�� �
as��� �
bool��� �
?��� �
;��� �
}
�� 	
public
�� 
static
�� 
void
�� &
SetIsSerializedAsElement
�� 3
(
��3 4
this
��4 8
	IEdmValue
��9 B
value
��C H
,
��H I
	IEdmModel
��J S
model
��T Y
,
��Y Z
bool
��[ _#
isSerializedAsElement
��` u
)
��u v
{
�� 	
EdmUtil
�� 
.
�� 
CheckArgumentNull
�� %
(
��% &
value
��& +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
EdmUtil
�� 
.
�� 
CheckArgumentNull
�� %
(
��% &
model
��& +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
if
�� 
(
�� #
isSerializedAsElement
�� %
)
��% &
{
�� 
EdmError
�� 
error
�� 
;
�� 
if
�� 
(
�� 
!
�� 
ValidationHelper
�� %
.
��% &=
/ValidateValueCanBeWrittenAsXmlElementAnnotation
��& U
(
��U V
value
��V [
,
��[ \
null
��] a
,
��a b
null
��c g
,
��g h
out
��i l
error
��m r
)
��r s
)
��s t
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 7
(
��7 8
error
��8 =
.
��= >
ToString
��> F
(
��F G
)
��G H
)
��H I
;
��I J
}
�� 
}
�� 
model
�� 
.
��  
SetAnnotationValue
�� $
(
��$ %
value
��% *
,
��* +
EdmConstants
��, 8
.
��8 9
InternalUri
��9 D
,
��D E

��F S
.
��S T-
IsSerializedAsElementAnnotation
��T s
,
��s t
(
��u v
object
��v |
)
��| }$
isSerializedAsElement��} �
)��� �
;��� �
}
�� 	
public
�� 
static
�� 
bool
�� #
IsSerializedAsElement
�� 0
(
��0 1
this
��1 5
	IEdmValue
��6 ?
value
��@ E
,
��E F
	IEdmModel
��G P
model
��Q V
)
��V W
{
�� 	
EdmUtil
�� 
.
�� 
CheckArgumentNull
�� %
(
��% &
value
��& +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
EdmUtil
�� 
.
�� 
CheckArgumentNull
�� %
(
��% &
model
��& +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
return
�� 
(
�� 
model
�� 
.
��  
GetAnnotationValue
�� ,
(
��, -
value
��- 2
,
��2 3
EdmConstants
��4 @
.
��@ A
InternalUri
��A L
,
��L M

��N [
.
��[ \-
IsSerializedAsElementAnnotation
��\ {
)
��{ |
as
��} 
bool��� �
?��� �
)��� �
??��� �
false��� �
;��� �
}
�� 	
public
�� 
static
�� 
void
�� 
SetNamespaceAlias
�� ,
(
��, -
this
��- 1
	IEdmModel
��2 ;
model
��< A
,
��A B
string
��C I

��J W
,
��W X
string
��Y _
alias
��` e
)
��e f
{
�� 	"
VersioningDictionary
��  
<
��  !
string
��! '
,
��' (
string
��) /
>
��/ 0
mappings
��1 9
=
��: ;
model
��< A
.
��A B 
GetAnnotationValue
��B T
<
��T U"
VersioningDictionary
��U i
<
��i j
string
��j p
,
��p q
string
��r x
>
��x y
>
��y z
(
��z {
model��{ �
,��� �
EdmConstants��� �
.��� �
InternalUri��� �
,��� �

.��� �(
NamespaceAliasAnnotation��� �
)��� �
;��� �
if
�� 
(
�� 
mappings
�� 
==
�� 
null
��  
)
��  !
{
�� 
mappings
�� 
=
�� "
VersioningDictionary
�� /
<
��/ 0
string
��0 6
,
��6 7
string
��8 >
>
��> ?
.
��? @
Create
��@ F
(
��F G
string
��G M
.
��M N
CompareOrdinal
��N \
)
��\ ]
;
��] ^
}
�� 
if
�� 
(
�� 
EdmUtil
�� 
.
�� (
IsNullOrWhiteSpaceInternal
�� 2
(
��2 3
alias
��3 8
)
��8 9
)
��9 :
{
�� 
string
�� 
val
�� 
;
�� 
if
�� 
(
�� 
mappings
�� 
.
�� 
TryGetValue
�� (
(
��( )

��) 6
,
��6 7
out
��8 ;
val
��< ?
)
��? @
)
��@ A
{
�� 
mappings
�� 
=
�� 
mappings
�� '
.
��' (
Remove
��( .
(
��. /

��/ <
)
��< =
;
��= >
}
�� 
}
�� 
else
�� 
{
�� 
mappings
�� 
=
�� 
mappings
�� #
.
��# $
Set
��$ '
(
��' (

��( 5
,
��5 6
alias
��7 <
)
��< =
;
��= >
}
�� 
model
�� 
.
��  
SetAnnotationValue
�� $
(
��$ %
model
��% *
,
��* +
EdmConstants
��, 8
.
��8 9
InternalUri
��9 D
,
��D E

��F S
.
��S T&
NamespaceAliasAnnotation
��T l
,
��l m
mappings
��n v
)
��v w
;
��w x
var
�� 
list
�� 
=
�� 
model
�� 
.
��  
GetAnnotationValue
�� /
<
��/ 0
VersioningList
��0 >
<
��> ?
string
��? E
>
��E F
>
��F G
(
��G H
model
��H M
,
��M N
EdmConstants
��O [
.
��[ \
InternalUri
��\ g
,
��g h

��i v
.
��v w'
UsedNamespacesAnnotation��w �
)��� �
;��� �
if
�� 
(
�� 
list
�� 
==
�� 
null
�� 
)
�� 
{
�� 
list
�� 
=
�� 
VersioningList
�� %
<
��% &
string
��& ,
>
��, -
.
��- .
Create
��. 4
(
��4 5
)
��5 6
;
��6 7
}
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 

�� %
(
��% &

��& 3
)
��3 4
&&
��5 7
!
��8 9
list
��9 =
.
��= >
Contains
��> F
(
��F G

��G T
)
��T U
)
��U V
{
�� 
list
�� 
=
�� 
list
�� 
.
�� 
Add
�� 
(
��  

��  -
)
��- .
;
��. /
}
�� 
model
�� 
.
��  
SetAnnotationValue
�� $
(
��$ %
model
��% *
,
��* +
EdmConstants
��, 8
.
��8 9
InternalUri
��9 D
,
��D E

��F S
.
��S T&
UsedNamespacesAnnotation
��T l
,
��l m
list
��n r
)
��r s
;
��s t
}
�� 	
public
�� 
static
�� 
string
�� 
GetNamespaceAlias
�� .
(
��. /
this
��/ 3
	IEdmModel
��4 =
model
��> C
,
��C D
string
��E K

��L Y
)
��Y Z
{
�� 	"
VersioningDictionary
��  
<
��  !
string
��! '
,
��' (
string
��) /
>
��/ 0
mappings
��1 9
=
��: ;
model
��< A
.
��A B 
GetAnnotationValue
��B T
<
��T U"
VersioningDictionary
��U i
<
��i j
string
��j p
,
��p q
string
��r x
>
��x y
>
��y z
(
��z {
model��{ �
,��� �
EdmConstants��� �
.��� �
InternalUri��� �
,��� �

.��� �(
NamespaceAliasAnnotation��� �
)��� �
;��� �
return
�� 
mappings
�� 
.
�� 
Get
�� 
(
��  

��  -
)
��- .
;
��. /
}
�� 	
internal
�� 
static
�� "
VersioningDictionary
�� ,
<
��, -
string
��- 3
,
��3 4
string
��5 ;
>
��; <!
GetNamespaceAliases
��= P
(
��P Q
this
��Q U
	IEdmModel
��V _
model
��` e
)
��e f
{
�� 	
EdmUtil
�� 
.
�� 
CheckArgumentNull
�� %
(
��% &
model
��& +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
return
�� 
model
�� 
.
��  
GetAnnotationValue
�� +
<
��+ ,"
VersioningDictionary
��, @
<
��@ A
string
��A G
,
��G H
string
��I O
>
��O P
>
��P Q
(
��Q R
model
��R W
,
��W X
EdmConstants
��Y e
.
��e f
InternalUri
��f q
,
��q r

.��� �(
NamespaceAliasAnnotation��� �
)��� �
;��� �
}
�� 	
internal
�� 
static
�� 
VersioningList
�� &
<
��& '
string
��' -
>
��- .*
GetUsedNamespacesHavingAlias
��/ K
(
��K L
this
��L P
	IEdmModel
��Q Z
model
��[ `
)
��` a
{
�� 	
EdmUtil
�� 
.
�� 
CheckArgumentNull
�� %
(
��% &
model
��& +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
return
�� 
model
�� 
.
��  
GetAnnotationValue
�� +
<
��+ ,
VersioningList
��, :
<
��: ;
string
��; A
>
��A B
>
��B C
(
��C D
model
��D I
,
��I J
EdmConstants
��K W
.
��W X
InternalUri
��X c
,
��c d

��e r
.
��r s'
UsedNamespacesAnnotation��s �
)��� �
;��� �
}
�� 	
internal
�� 
static
�� 
bool
�� 
IsInline
�� %
(
��% &
this
��& *&
IEdmVocabularyAnnotation
��+ C

annotation
��D N
,
��N O
	IEdmModel
��P Y
model
��Z _
)
��_ `
{
�� 	
return
�� 

annotation
�� 
.
�� &
GetSerializationLocation
�� 6
(
��6 7
model
��7 <
)
��< =
==
��> @:
,EdmVocabularyAnnotationSerializationLocation
��A m
.
��m n
Inline
��n t
||
��u w

annotation��x �
.��� �
TargetString��� �
(��� �
)��� �
==��� �
null��� �
;��� �
}
�� 	
internal
�� 
static
�� 
string
�� 
TargetString
�� +
(
��+ ,
this
��, 0&
IEdmVocabularyAnnotation
��1 I

annotation
��J T
)
��T U
{
�� 	
return
�� 
EdmUtil
�� 
.
��  
FullyQualifiedName
�� -
(
��- .

annotation
��. 8
.
��8 9
Target
��9 ?
)
��? @
;
��@ A
}
�� 	
}
�� 
}�� �

PD:\odata.net\src\Microsoft.OData.Edm\Csdl\Parsing\Ast\CsdlOperationReturnType.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #
Parsing		# *
.		* +
Ast		+ .
{

 
internal 
class
CsdlOperationReturnType *
:+ ,
CsdlElement- 8
,8 9%
IEdmVocabularyAnnotatable: S
{ 
private 
readonly 
CsdlTypeReference *

returnType+ 5
;5 6
public #
CsdlOperationReturnType &
(& '
CsdlTypeReference' 8

returnType9 C
,C D
CsdlLocationE Q
locationR Z
)Z [
: 
base 
( 
location 
) 
{ 	
this 
. 

returnType 
= 

returnType (
;( )
} 	
public 
CsdlTypeReference  

ReturnType! +
{ 	
get 
{ 
return 
this 
. 

returnType (
;( )
}* +
} 	
} 
} ��
7D:\odata.net\src\Microsoft.OData.Edm\Csdl\CsdlReader.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
{ 
public 

class 

CsdlReader 
{ 
private 
static 
readonly 

Dictionary  *
<* +
string+ 1
,1 2
Action3 9
>9 :
EmptyParserLookup; L
=M N
newO R

DictionaryS ]
<] ^
string^ d
,d e
Actionf l
>l m
(m n
)n o
;o p
private 
readonly 

Dictionary #
<# $
string$ *
,* +
Action, 2
>2 3
edmxParserLookup4 D
;D E
private 
readonly 

Dictionary #
<# $
string$ *
,* +
Action, 2
>2 3
runtimeParserLookup4 G
;G H
private 
readonly 

Dictionary #
<# $
string$ *
,* +
Action, 2
>2 3(
conceptualModelsParserLookup4 P
;P Q
private   
readonly   

Dictionary   #
<  # $
string  $ *
,  * +
Action  , 2
>  2 3$
dataServicesParserLookup  4 L
;  L M
private!! 
readonly!! 
	XmlReader!! "
reader!!# )
;!!) *
private"" 
readonly"" 
List"" 
<"" 
EdmError"" &
>""& '
errors""( .
;"". /
private## 
readonly## 
List## 
<## 

>##+ ,

;##: ;
private$$ 
readonly$$ 

CsdlParser$$ #

csdlParser$$$ .
;$$. /
private%% 
readonly%% 
Func%% 
<%% 
Uri%% !
,%%! "
	XmlReader%%# ,
>%%, -(
getReferencedModelReaderFunc%%. J
;%%J K
private** 
bool** 
targetParsed** !
;**! "
private// 
bool// 1
%ignoreUnexpectedAttributesAndElements// :
;//: ;
private44 
string44 
source44 
;44 
private;; 

CsdlReader;; 
(;; 
	XmlReader;; $
reader;;% +
,;;+ ,
Func;;- 1
<;;1 2
Uri;;2 5
,;;5 6
	XmlReader;;7 @
>;;@ A(
getReferencedModelReaderFunc;;B ^
);;^ _
{<< 	
this== 
.== 
reader== 
=== 
reader==  
;==  !
this>> 
.>> (
getReferencedModelReaderFunc>> -
=>>. /(
getReferencedModelReaderFunc>>0 L
;>>L M
this?? 
.?? 
errors?? 
=?? 
new?? 
List?? "
<??" #
EdmError??# +
>??+ ,
(??, -
)??- .
;??. /
this@@ 
.@@ 

=@@  
new@@! $
List@@% )
<@@) *

>@@7 8
(@@8 9
)@@9 :
;@@: ;
thisAA 
.AA 

csdlParserAA 
=AA 
newAA !

CsdlParserAA" ,
(AA, -
)AA- .
;AA. /
thisDD 
.DD 
edmxParserLookupDD !
=DD" #
newDD$ '

DictionaryDD( 2
<DD2 3
stringDD3 9
,DD9 :
ActionDD; A
>DDA B
{EE 
{FF 

.FF   
Element_DataServicesFF  4
,FF4 5
thisFF6 :
.FF: ;$
ParseDataServicesElementFF; S
}FFT U
,FFU V
{GG 

.GG  
Element_ReferenceGG  1
,GG1 2
thisGG3 7
.GG7 8!
ParseReferenceElementGG8 M
}GGN O
,GGO P
{HH 

.HH  
Element_RuntimeHH  /
,HH/ 0
thisHH1 5
.HH5 6
ParseRuntimeElementHH6 I
}HHJ K
}II 
;II
thisJJ 
.JJ $
dataServicesParserLookupJJ )
=JJ* +
newJJ, /

DictionaryJJ0 :
<JJ: ;
stringJJ; A
,JJA B
ActionJJC I
>JJI J
{KK 
{LL 

.LL  
Element_SchemaLL  .
,LL. /
thisLL0 4
.LL4 5
ParseSchemaElementLL5 G
}LLH I
}MM 
;MM
thisNN 
.NN 
runtimeParserLookupNN $
=NN% &
newNN' *

DictionaryNN+ 5
<NN5 6
stringNN6 <
,NN< =
ActionNN> D
>NND E
{OO 
{PP 

.PP  $
Element_ConceptualModelsPP  8
,PP8 9
thisPP: >
.PP> ?(
ParseConceptualModelsElementPP? [
}PP\ ]
}QQ 
;QQ
thisRR 
.RR (
conceptualModelsParserLookupRR -
=RR. /
newRR0 3

DictionaryRR4 >
<RR> ?
stringRR? E
,RRE F
ActionRRG M
>RRM N
{SS 
{TT 

.TT  
Element_SchemaTT  .
,TT. /
thisTT0 4
.TT4 5
ParseSchemaElementTT5 G
}TTH I
}UU 
;UU
}VV 	
public__ 
static__ 
bool__ 
TryParse__ #
(__# $
	XmlReader__$ -
reader__. 4
,__4 5
out__6 9
	IEdmModel__: C
model__D I
,__I J
out__K N
IEnumerable__O Z
<__Z [
EdmError__[ c
>__c d
errors__e k
)__k l
{`` 	

CsdlReaderaa 

edmxReaderaa !
=aa" #
newaa$ '

CsdlReaderaa( 2
(aa2 3
readeraa3 9
,aa9 :
nullaa; ?
)aa? @
;aa@ A
returnbb 

edmxReaderbb 
.bb 
TryParsebb &
(bb& '

Enumerablebb' 1
.bb1 2
Emptybb2 7
<bb7 8
	IEdmModelbb8 A
>bbA B
(bbB C
)bbC D
,bbD E
outbbF I
modelbbJ O
,bbO P
outbbQ T
errorsbbU [
)bb[ \
;bb\ ]
}cc 	
publicmm 
staticmm 
boolmm 
TryParsemm #
(mm# $
	XmlReadermm$ -
readermm. 4
,mm4 5
boolmm6 :1
%ignoreUnexpectedAttributesAndElementsmm; `
,mm` a
outmmb e
	IEdmModelmmf o
modelmmp u
,mmu v
outmmw z
IEnumerable	mm{ �
<
mm� �
EdmError
mm� �
>
mm� �
errors
mm� �
)
mm� �
{nn 	

CsdlReaderoo 

edmxReaderoo !
=oo" #
newoo$ '

CsdlReaderoo( 2
(oo2 3
readeroo3 9
,oo9 :
nulloo; ?
)oo? @
;oo@ A

edmxReaderpp 
.pp 1
%ignoreUnexpectedAttributesAndElementspp <
=pp= >1
%ignoreUnexpectedAttributesAndElementspp? d
;ppd e
returnqq 

edmxReaderqq 
.qq 
TryParseqq &
(qq& '

Enumerableqq' 1
.qq1 2
Emptyqq2 7
<qq7 8
	IEdmModelqq8 A
>qqA B
(qqB C
)qqC D
,qqD E
outqqF I
modelqqJ O
,qqO P
outqqQ T
errorsqqU [
)qq[ \
;qq\ ]
}rr 	
publicyy 
staticyy 
	IEdmModelyy 
Parseyy  %
(yy% &
	XmlReaderyy& /
readeryy0 6
)yy6 7
{zz 	
	IEdmModel{{ 
model{{ 
;{{ 
IEnumerable|| 
<|| 
EdmError||  
>||  !
parseErrors||" -
;||- .
if}} 
(}} 
!}} 
TryParse}} 
(}} 
reader}}  
,}}  !
out}}" %
model}}& +
,}}+ ,
out}}- 0
parseErrors}}1 <
)}}< =
)}}= >
{~~ 
throw 
new 
EdmParseException +
(+ ,
parseErrors, 7
)7 8
;8 9
}
�� 
return
�� 
model
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
TryParse
�� #
(
��# $
	XmlReader
��$ -
reader
��. 4
,
��4 5
Func
��6 :
<
��: ;
Uri
��; >
,
��> ?
	XmlReader
��@ I
>
��I J*
getReferencedModelReaderFunc
��K g
,
��g h
out
��i l
	IEdmModel
��m v
model
��w |
,
��| }
out��~ �
IEnumerable��� �
<��� �
EdmError��� �
>��� �
errors��� �
)��� �
{
�� 	

CsdlReader
�� 

edmxReader
�� !
=
��" #
new
��$ '

CsdlReader
��( 2
(
��2 3
reader
��3 9
,
��9 :*
getReferencedModelReaderFunc
��; W
)
��W X
;
��X Y
return
�� 

edmxReader
�� 
.
�� 
TryParse
�� &
(
��& '

Enumerable
��' 1
.
��1 2
Empty
��2 7
<
��7 8
	IEdmModel
��8 A
>
��A B
(
��B C
)
��C D
,
��D E
out
��F I
model
��J O
,
��O P
out
��Q T
errors
��U [
)
��[ \
;
��\ ]
}
�� 	
public
�� 
static
�� 
bool
�� 
TryParse
�� #
(
��# $
	XmlReader
��$ -
reader
��. 4
,
��4 5
IEnumerable
��6 A
<
��A B
	IEdmModel
��B K
>
��K L

references
��M W
,
��W X
out
��Y \
	IEdmModel
��] f
model
��g l
,
��l m
out
��n q
IEnumerable
��r }
<
��} ~
EdmError��~ �
>��� �
errors��� �
)��� �
{
�� 	
EdmUtil
�� 
.
�� 
CheckArgumentNull
�� %
(
��% &

references
��& 0
,
��0 1
$str
��2 >
)
��> ?
;
��? @

CsdlReader
�� 

edmxReader
�� !
=
��" #
new
��$ '

CsdlReader
��( 2
(
��2 3
reader
��3 9
,
��9 :
null
��; ?
)
��? @
;
��@ A
return
�� 

edmxReader
�� 
.
�� 
TryParse
�� &
(
��& '

references
��' 1
,
��1 2
out
��3 6
model
��7 <
,
��< =
out
��> A
errors
��B H
)
��H I
;
��I J
}
�� 	
public
�� 
static
�� 
bool
�� 
TryParse
�� #
(
��# $
	XmlReader
��$ -
reader
��. 4
,
��4 5
	IEdmModel
��6 ?
	reference
��@ I
,
��I J
out
��K N
	IEdmModel
��O X
model
��Y ^
,
��^ _
out
��` c
IEnumerable
��d o
<
��o p
EdmError
��p x
>
��x y
errors��z �
)��� �
{
�� 	

CsdlReader
�� 

edmxReader
�� !
=
��" #
new
��$ '

CsdlReader
��( 2
(
��2 3
reader
��3 9
,
��9 :
null
��; ?
)
��? @
;
��@ A
return
�� 

edmxReader
�� 
.
�� 
TryParse
�� &
(
��& '
new
��' *
[
��* +
]
��+ ,
{
��- .
	reference
��/ 8
}
��9 :
,
��: ;
out
��< ?
model
��@ E
,
��E F
out
��G J
errors
��K Q
)
��Q R
;
��R S
}
�� 	
public
�� 
static
�� 
	IEdmModel
�� 
Parse
��  %
(
��% &
	XmlReader
��& /
reader
��0 6
,
��6 7
IEnumerable
��8 C
<
��C D
	IEdmModel
��D M
>
��M N
referencedModels
��O _
)
��_ `
{
�� 	
	IEdmModel
�� 
model
�� 
;
�� 
IEnumerable
�� 
<
�� 
EdmError
��  
>
��  !
parseErrors
��" -
;
��- .
if
�� 
(
�� 
!
�� 
TryParse
�� 
(
�� 
reader
��  
,
��  !
referencedModels
��" 2
,
��2 3
out
��4 7
model
��8 =
,
��= >
out
��? B
parseErrors
��C N
)
��N O
)
��O P
{
�� 
throw
�� 
new
�� 
EdmParseException
�� +
(
��+ ,
parseErrors
��, 7
)
��7 8
;
��8 9
}
�� 
return
�� 
model
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
	IEdmModel
�� 
Parse
��  %
(
��% &
	XmlReader
��& /
reader
��0 6
,
��6 7
	IEdmModel
��8 A
referencedModel
��B Q
)
��Q R
{
�� 	
	IEdmModel
�� 
model
�� 
;
�� 
IEnumerable
�� 
<
�� 
EdmError
��  
>
��  !
parseErrors
��" -
;
��- .
if
�� 
(
�� 
!
�� 
TryParse
�� 
(
�� 
reader
��  
,
��  !
referencedModel
��" 1
,
��1 2
out
��3 6
model
��7 <
,
��< =
out
��> A
parseErrors
��B M
)
��M N
)
��N O
{
�� 
throw
�� 
new
�� 
EdmParseException
�� +
(
��+ ,
parseErrors
��, 7
)
��7 8
;
��8 9
}
�� 
return
�� 
model
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
	IEdmModel
�� 
Parse
��  %
(
��% &
	XmlReader
��& /
reader
��0 6
,
��6 7
Func
��8 <
<
��< =
Uri
��= @
,
��@ A
	XmlReader
��B K
>
��K L*
getReferencedModelReaderFunc
��M i
)
��i j
{
�� 	
	IEdmModel
�� 
model
�� 
;
�� 
IEnumerable
�� 
<
�� 
EdmError
��  
>
��  !
parseErrors
��" -
;
��- .
if
�� 
(
�� 
!
�� 
TryParse
�� 
(
�� 
reader
��  
,
��  !*
getReferencedModelReaderFunc
��" >
,
��> ?
out
��@ C
model
��D I
,
��I J
out
��K N
parseErrors
��O Z
)
��Z [
)
��[ \
{
�� 
throw
�� 
new
�� 
EdmParseException
�� +
(
��+ ,
parseErrors
��, 7
)
��7 8
;
��8 9
}
�� 
return
�� 
model
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
TryParse
�� #
(
��# $
	XmlReader
��$ -
reader
��. 4
,
��4 5
IEnumerable
��6 A
<
��A B
	IEdmModel
��B K
>
��K L

references
��M W
,
��W X 
CsdlReaderSettings
��Y k
settings
��l t
,
��t u
out
��v y
	IEdmModel��z �
model��� �
,��� �
out��� �
IEnumerable��� �
<��� �
EdmError��� �
>��� �
errors��� �
)��� �
{
�� 	
EdmUtil
�� 
.
�� 
CheckArgumentNull
�� %
(
��% &

references
��& 0
,
��0 1
$str
��2 >
)
��> ?
;
��? @
if
�� 
(
�� 
settings
�� 
==
�� 
null
��  
)
��  !
{
�� 
return
�� 
TryParse
�� 
(
��  
reader
��  &
,
��& '

references
��( 2
,
��2 3
out
��4 7
model
��8 =
,
��= >
out
��? B
errors
��C I
)
��I J
;
��J K
}
�� 

CsdlReader
�� 

edmxReader
�� !
=
��" #
new
��$ '

CsdlReader
��( 2
(
��2 3
reader
��3 9
,
��9 :
settings
��; C
.
��C D*
GetReferencedModelReaderFunc
��D `
)
��` a
{
�� 
%ignoreUnexpectedAttributesAndElements
�� 5
=
��6 7
settings
��8 @
.
��@ A3
%IgnoreUnexpectedAttributesAndElements
��A f
}
�� 
;
��
return
�� 

edmxReader
�� 
.
�� 
TryParse
�� &
(
��& '

references
��' 1
,
��1 2
out
��3 6
model
��7 <
,
��< =
out
��> A
errors
��B H
)
��H I
;
��I J
}
�� 	
private
�� 
static
�� 
bool
�� 
TryParseVersion
�� +
(
��+ ,
string
��, 2
input
��3 8
,
��8 9
out
��: =
Version
��> E
version
��F M
)
��M N
{
�� 	
version
�� 
=
�� 
null
�� 
;
�� 
if
�� 
(
�� 
String
�� 
.
�� 

�� $
(
��$ %
input
��% *
)
��* +
)
��+ ,
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
input
�� 
=
�� 
input
�� 
.
�� 
Trim
�� 
(
�� 
)
��  
;
��  !
var
�� 
parts
�� 
=
�� 
input
�� 
.
�� 
Split
�� #
(
��# $
$char
��$ '
)
��' (
;
��( )
if
�� 
(
�� 
parts
�� 
.
�� 
Length
�� 
!=
�� 
$num
��  !
)
��! "
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
int
�� 
major
�� 
;
�� 
int
�� 
minor
�� 
;
�� 
if
�� 
(
�� 
!
�� 
int
�� 
.
�� 
TryParse
�� 
(
�� 
parts
�� #
[
��# $
$num
��$ %
]
��% &
,
��& '
out
��( +
major
��, 1
)
��1 2
||
��3 5
!
��6 7
int
��7 :
.
��: ;
TryParse
��; C
(
��C D
parts
��D I
[
��I J
$num
��J K
]
��K L
,
��L M
out
��N Q
minor
��R W
)
��W X
)
��X Y
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
version
�� 
=
�� 
new
�� 
Version
�� !
(
��! "
major
��" '
,
��' (
minor
��) .
)
��. /
;
��/ 0
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
bool
�� 
TryParse
�� 
(
�� 
IEnumerable
�� )
<
��) *
	IEdmModel
��* 3
>
��3 4
referencedModels
��5 E
,
��E F
out
��G J
	IEdmModel
��K T
model
��U Z
,
��Z [
out
��\ _
IEnumerable
��` k
<
��k l
EdmError
��l t
>
��t u

)��� �
{
�� 	
Version
�� 
edmxVersion
�� 
;
��  
	CsdlModel
�� 
astModel
�� 
;
�� )
TryParseCsdlFileToCsdlModel
�� '
(
��' (
out
��( +
edmxVersion
��, 7
,
��7 8
out
��9 <
astModel
��= E
)
��E F
;
��F G
if
�� 
(
�� 
!
�� 
this
�� 
.
�� !
HasIntolerableError
�� )
(
��) *
)
��* +
)
��+ ,
{
�� 
List
�� 
<
�� 
	CsdlModel
�� 
>
�� !
referencedAstModels
��  3
=
��4 5
this
��6 :
.
��: ;-
LoadAndParseReferencedCsdlFiles
��; Z
(
��Z [
edmxVersion
��[ f
)
��f g
;
��g h
IEnumerable
�� 
<
�� 
EdmError
�� $
>
��$ %

csdlErrors
��& 0
;
��0 1
this
�� 
.
�� 

csdlParser
�� 
.
��  
	GetResult
��  )
(
��) *
out
��* -
astModel
��. 6
,
��6 7
out
��8 ;

csdlErrors
��< F
)
��F G
;
��G H
if
�� 
(
�� 

csdlErrors
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
this
�� 
.
�� 
errors
�� 
.
��  
AddRange
��  (
(
��( )

csdlErrors
��) 3
.
��3 4
Except
��4 :
(
��: ;
this
��; ?
.
��? @
errors
��@ F
)
��F G
)
��G H
;
��H I
}
�� 
if
�� 
(
�� 
!
�� 
this
�� 
.
�� !
HasIntolerableError
�� -
(
��- .
)
��. /
)
��/ 0
{
��  
CsdlSemanticsModel
�� &
tmp
��' *
=
��+ ,
new
��- 0 
CsdlSemanticsModel
��1 C
(
��C D
astModel
��D L
,
��L M
new
��N Q8
*CsdlSemanticsDirectValueAnnotationsManager
��R |
(
��| }
)
��} ~
,
��~ #
referencedAstModels��� �
)��� �
;��� �
tmp
�� 
.
�� #
AddToReferencedModels
�� -
(
��- .
referencedModels
��. >
)
��> ?
;
��? @
model
�� 
=
�� 
tmp
�� 
;
��  
Debug
�� 
.
�� 
Assert
��  
(
��  !
edmxVersion
��! ,
!=
��- /
null
��0 4
,
��4 5
$str
��6 K
)
��K L
;
��L M
model
�� 
.
�� 
SetEdmxVersion
�� (
(
��( )
edmxVersion
��) 4
)
��4 5
;
��5 6
}
�� 
else
�� 
{
�� 
model
�� 
=
�� 
null
��  
;
��  !
}
�� 
}
�� 
else
�� 
{
�� 
model
�� 
=
�� 
null
�� 
;
�� 
}
�� 

�� 
=
�� 
this
��  
.
��  !
errors
��! '
;
��' (
return
�� 
!
�� 
this
�� 
.
�� !
HasIntolerableError
�� ,
(
��, -
)
��- .
;
��. /
}
�� 	
private
�� 
List
�� 
<
�� 
	CsdlModel
�� 
>
�� -
LoadAndParseReferencedCsdlFiles
��  ?
(
��? @
Version
��@ G
mainCsdlVersion
��H W
)
��W X
{
�� 	
List
�� 
<
�� 
	CsdlModel
�� 
>
�� !
referencedAstModels
�� /
=
��0 1
new
��2 5
List
��6 :
<
��: ;
	CsdlModel
��; D
>
��D E
(
��E F
)
��F G
;
��G H
if
�� 
(
�� 
this
�� 
.
�� *
getReferencedModelReaderFunc
�� 1
==
��2 4
null
��5 9
)
��9 :
{
�� 
return
�� !
referencedAstModels
�� *
;
��* +
}
�� 
foreach
�� 
(
�� 
var
�� 
edmReference
�� %
in
��& (
this
��) -
.
��- .

��. ;
)
��; <
{
�� 
if
�� 
(
�� 
!
�� 
edmReference
�� !
.
��! "
Includes
��" *
.
��* +
Any
��+ .
(
��. /
)
��/ 0
&&
��1 3
!
��4 5
edmReference
��5 A
.
��A B 
IncludeAnnotations
��B T
.
��T U
Any
��U X
(
��X Y
)
��Y Z
)
��Z [
{
�� 
this
�� 
.
�� 

RaiseError
�� #
(
��# $
EdmErrorCode
��$ 0
.
��0 1U
GReferenceElementMustContainAtLeastOneIncludeOrIncludeAnnotationsElement
��1 x
,
��x y
Strings��z �
.��� �D
4EdmxParser_InvalidReferenceIncorrectNumberOfIncludes��� �
)��� �
;��� �
continue
�� 
;
�� 
}
�� 
if
�� 
(
�� 
edmReference
��  
.
��  !
Uri
��! $
!=
��% '
null
��( ,
&&
��- /
(
��0 1
edmReference
��1 =
.
��= >
Uri
��> A
.
��A B
OriginalString
��B P
.
��P Q
EndsWith
��Q Y
(
��Y Z%
CoreVocabularyConstants
��Z q
.
��q r"
VocabularyUrlSuffix��r �
,��� � 
StringComparison��� �
.��� �
Ordinal��� �
)��� �
||��� �
edmReference
��  
.
��  !
Uri
��! $
.
��$ %
OriginalString
��% 3
.
��3 4
EndsWith
��4 <
(
��< =-
CapabilitiesVocabularyConstants
��= \
.
��\ ]!
VocabularyUrlSuffix
��] p
,
��p q
StringComparison��r �
.��� �
Ordinal��� �
)��� �
||��� �
edmReference
��  
.
��  !
Uri
��! $
.
��$ %
OriginalString
��% 3
.
��3 4
EndsWith
��4 <
(
��< =
$str
��= ^
,
��^ _
StringComparison
��` p
.
��p q
Ordinal
��q x
)
��x y
||
��z |
edmReference
��  
.
��  !
Uri
��! $
.
��$ %
OriginalString
��% 3
.
��3 4
EndsWith
��4 <
(
��< =.
 AlternateKeysVocabularyConstants
��= ]
.
��] ^!
VocabularyUrlSuffix
��^ q
,
��q r
StringComparison��s �
.��� �
Ordinal��� �
)��� �
)��� �
)��� �
{
�� 
continue
�� 
;
�� 
}
�� 
	XmlReader
�� !
referencedXmlReader
�� -
=
��. /
this
��0 4
.
��4 5*
getReferencedModelReaderFunc
��5 Q
(
��Q R
edmReference
��R ^
.
��^ _
Uri
��_ b
)
��b c
;
��c d
if
�� 
(
�� !
referencedXmlReader
�� '
==
��( *
null
��+ /
)
��/ 0
{
�� 
this
�� 
.
�� 

RaiseError
�� #
(
��# $
EdmErrorCode
��$ 0
.
��0 13
%UnresolvedReferenceUriInEdmxReference
��1 V
,
��V W
Strings
��X _
.
��_ `?
0EdmxParser_UnresolvedReferenceUriInEdmxReference��` �
)��� �
;��� �
continue
�� 
;
�� 
}
�� 

CsdlReader
�� "
referencedEdmxReader
�� /
=
��0 1
new
��2 5

CsdlReader
��6 @
(
��@ A!
referencedXmlReader
��A T
,
��T U
null
��w {
)
��{ |
;
��| }"
referencedEdmxReader
�� $
.
��$ %
source
��% +
=
��, -
edmReference
��. :
.
��: ;
Uri
��; >
!=
��? A
null
��B F
?
��G H
edmReference
��I U
.
��U V
Uri
��V Y
.
��Y Z
OriginalString
��Z h
:
��i j
null
��k o
;
��o p"
referencedEdmxReader
�� $
.
��$ %3
%ignoreUnexpectedAttributesAndElements
��% J
=
��K L
this
��M Q
.
��Q R3
%ignoreUnexpectedAttributesAndElements
��R w
;
��w x
Version
�� #
referencedEdmxVersion
�� -
;
��- .
	CsdlModel
��  
referencedAstModel
�� ,
;
��, -
if
�� 
(
�� "
referencedEdmxReader
�� (
.
��( ))
TryParseCsdlFileToCsdlModel
��) D
(
��D E
out
��E H#
referencedEdmxVersion
��I ^
,
��^ _
out
��` c 
referencedAstModel
��d v
)
��v w
)
��w x
{
�� 
if
�� 
(
�� 
!
�� 
mainCsdlVersion
�� (
.
��( )
Equals
��) /
(
��/ 0#
referencedEdmxVersion
��0 E
)
��E F
)
��F G
{
�� 
this
�� 
.
�� 
errors
�� #
.
��# $
Add
��$ '
(
��' (
null
��( ,
)
��, -
;
��- .
}
��  
referencedAstModel
�� &
.
��& '&
AddParentModelReferences
��' ?
(
��? @
edmReference
��@ L
)
��L M
;
��M N!
referencedAstModels
�� '
.
��' (
Add
��( +
(
��+ , 
referencedAstModel
��, >
)
��> ?
;
��? @
}
�� 
this
�� 
.
�� 
errors
�� 
.
�� 
AddRange
�� $
(
��$ %"
referencedEdmxReader
��% 9
.
��9 :
errors
��: @
)
��@ A
;
��A B
}
�� 
return
�� !
referencedAstModels
�� &
;
��& '
}
�� 	
private
�� 
bool
�� )
TryParseCsdlFileToCsdlModel
�� 0
(
��0 1
out
��1 4
Version
��5 <
csdlVersion
��= H
,
��H I
out
��J M
	CsdlModel
��N W
	csdlModel
��X a
)
��a b
{
�� 	
csdlVersion
�� 
=
�� 
null
�� 
;
�� 
	csdlModel
�� 
=
�� 
null
�� 
;
�� 
try
�� 
{
�� 
if
�� 
(
�� 
this
�� 
.
�� 
reader
�� 
.
��  
NodeType
��  (
!=
��) +
XmlNodeType
��, 7
.
��7 8
Element
��8 ?
)
��? @
{
�� 
while
�� 
(
�� 
this
�� 
.
��  
reader
��  &
.
��& '
Read
��' +
(
��+ ,
)
��, -
&&
��. 0
this
��1 5
.
��5 6
reader
��6 <
.
��< =
NodeType
��= E
!=
��F H
XmlNodeType
��I T
.
��T U
Element
��U \
)
��\ ]
{
�� 
}
�� 
}
�� 
if
�� 
(
�� 
this
�� 
.
�� 
reader
�� 
.
��  
EOF
��  #
)
��# $
{
�� 
this
�� 
.
�� 
RaiseEmptyFile
�� '
(
��' (
)
��( )
;
��) *
return
�� 
false
��  
;
��  !
}
�� 
if
�� 
(
�� 
this
�� 
.
�� 
reader
�� 
.
��  
	LocalName
��  )
!=
��* ,

��- :
.
��: ;
Element_Edmx
��; G
||
��H J
!
�� 

�� "
.
��" #%
SupportedEdmxNamespaces
��# :
.
��: ;
TryGetValue
��; F
(
��F G
this
��G K
.
��K L
reader
��L R
.
��R S
NamespaceURI
��S _
,
��_ `
out
��a d
csdlVersion
��e p
)
��p q
)
��q r
{
�� 
this
�� 
.
�� 

RaiseError
�� #
(
��# $
EdmErrorCode
��$ 0
.
��0 1"
UnexpectedXmlElement
��1 E
,
��E F
Edm
��G J
.
��J K
Strings
��K R
.
��R S-
XmlParser_UnexpectedRootElement
��S r
(
��r s
this
��s w
.
��w x
reader
��x ~
.
��~ 
Name�� �
,��� �

.��� �
Element_Edmx��� �
)��� �
)��� �
;��� �
return
�� 
false
��  
;
��  !
}
�� 
this
�� 
.
�� 
ParseEdmxElement
�� %
(
��% &
csdlVersion
��& 1
)
��1 2
;
��2 3
IEnumerable
�� 
<
�� 
EdmError
�� $
>
��$ %
err
��& )
;
��) *
if
�� 
(
�� 
!
�� 
this
�� 
.
�� 

csdlParser
�� $
.
��$ %
	GetResult
��% .
(
��. /
out
��/ 2
	csdlModel
��3 <
,
��< =
out
��> A
err
��B E
)
��E F
)
��F G
{
�� 
this
�� 
.
�� 
errors
�� 
.
��  
AddRange
��  (
(
��( )
err
��) ,
)
��, -
;
��- .
if
�� 
(
�� 
this
�� 
.
�� !
HasIntolerableError
�� 0
(
��0 1
)
��1 2
)
��2 3
{
�� 
return
�� 
false
�� $
;
��$ %
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
XmlException
�� 
e
��  !
)
��! "
{
�� 
this
�� 
.
�� 
errors
�� 
.
�� 
Add
�� 
(
��  
new
��  #
EdmError
��$ ,
(
��, -
new
��- 0
CsdlLocation
��1 =
(
��= >
this
��> B
.
��B C
source
��C I
,
��I J
e
��K L
.
��L M

LineNumber
��M W
,
��W X
e
��Y Z
.
��Z [
LinePosition
��[ g
)
��g h
,
��h i
EdmErrorCode
��j v
.
��v w
XmlError
��w 
,�� �
e��� �
.��� �
Message��� �
)��� �
)��� �
;��� �
return
�� 
false
�� 
;
�� 
}
�� 
	csdlModel
�� 
.
�� '
AddCurrentModelReferences
�� /
(
��/ 0
this
��0 4
.
��4 5

��5 B
)
��B C
;
��C D
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
bool
�� !
HasIntolerableError
�� (
(
��( )
)
��) *
{
�� 	
if
�� 
(
�� 
this
�� 
.
�� 3
%ignoreUnexpectedAttributesAndElements
�� :
)
��: ;
{
�� 
return
�� 
this
�� 
.
�� 
errors
�� "
.
��" #
Any
��# &
(
��& '
error
��' ,
=>
��- /
error
��0 5
.
��5 6
	ErrorCode
��6 ?
!=
��@ B
EdmErrorCode
��C O
.
��O P"
UnexpectedXmlElement
��P d
&&
��e g
error
��h m
.
��m n
	ErrorCode
��n w
!=
��x z
EdmErrorCode��{ �
.��� �&
UnexpectedXmlAttribute��� �
)��� �
;��� �
}
�� 
return
�� 
this
�� 
.
�� 
errors
�� 
.
�� 
Any
�� "
(
��" #
)
��# $
;
��$ %
}
�� 	
private
�� 
void
�� 
ParseElement
�� !
(
��! "
string
��" (
elementName
��) 4
,
��4 5

Dictionary
��6 @
<
��@ A
string
��A G
,
��G H
Action
��I O
>
��O P
elementParsers
��Q _
)
��_ `
{
�� 	
Debug
�� 
.
�� 
Assert
�� 
(
�� 
this
�� 
.
�� 
reader
�� $
.
��$ %
	LocalName
��% .
==
��/ 1
elementName
��2 =
,
��= >
$str
��? o
)
��o p
;
��p q
if
�� 
(
�� 
this
�� 
.
�� 
reader
�� 
.
�� 
IsEmptyElement
�� *
)
��* +
{
�� 
this
�� 
.
�� 
reader
�� 
.
�� 
Read
��  
(
��  !
)
��! "
;
��" #
}
�� 
else
�� 
{
�� 
this
�� 
.
�� 
reader
�� 
.
�� 
Read
��  
(
��  !
)
��! "
;
��" #
while
�� 
(
�� 
this
�� 
.
�� 
reader
�� "
.
��" #
NodeType
��# +
!=
��, .
XmlNodeType
��/ :
.
��: ;

EndElement
��; E
)
��E F
{
�� 
if
�� 
(
�� 
this
�� 
.
�� 
reader
�� #
.
��# $
NodeType
��$ ,
==
��- /
XmlNodeType
��0 ;
.
��; <
Element
��< C
)
��C D
{
�� 
if
�� 
(
�� 
elementParsers
�� *
.
��* +
ContainsKey
��+ 6
(
��6 7
this
��7 ;
.
��; <
reader
��< B
.
��B C
	LocalName
��C L
)
��L M
)
��M N
{
�� 
elementParsers
�� *
[
��* +
this
��+ /
.
��/ 0
reader
��0 6
.
��6 7
	LocalName
��7 @
]
��@ A
(
��A B
)
��B C
;
��C D
}
�� 
else
�� 
{
�� 
this
��  
.
��  !
ParseElement
��! -
(
��- .
this
��. 2
.
��2 3
reader
��3 9
.
��9 :
	LocalName
��: C
,
��C D
EmptyParserLookup
��E V
)
��V W
;
��W X
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
!
�� 
this
�� !
.
��! "
reader
��" (
.
��( )
Read
��) -
(
��- .
)
��. /
)
��/ 0
{
�� 
break
�� !
;
��! "
}
�� 
}
�� 
}
�� 
Debug
�� 
.
�� 
Assert
�� 
(
�� 
elementName
�� (
==
��) +
this
��, 0
.
��0 1
reader
��1 7
.
��7 8
	LocalName
��8 A
,
��A B
$str��C �
)��� �
;��� �
this
�� 
.
�� 
reader
�� 
.
�� 
Read
��  
(
��  !
)
��! "
;
��" #
}
�� 
}
�� 	
private
�� 
void
�� 
ParseEdmxElement
�� %
(
��% &
Version
��& -
edmxVersion
��. 9
)
��9 :
{
�� 	
Debug
�� 
.
�� 
Assert
�� 
(
�� 
this
�� 
.
�� 
reader
�� $
.
��$ %
	LocalName
��% .
==
��/ 1

��2 ?
.
��? @
Element_Edmx
��@ L
,
��L M
$str��N �
)��� �
;��� �
Debug
�� 
.
�� 
Assert
�� 
(
�� 
edmxVersion
�� $
!=
��% '
null
��( ,
,
��, -
$str
��. C
)
��C D
;
��D E
string
�� 
edmxVersionString
�� $
=
��% &
this
��' +
.
��+ ,
GetAttributeValue
��, =
(
��= >
null
��> B
,
��B C

��D Q
.
��Q R
Attribute_Version
��R c
)
��c d
;
��d e
Version
�� &
edmxVersionFromAttribute
�� ,
;
��, -
if
�� 
(
�� 
edmxVersionString
�� !
!=
��" $
null
��% )
&&
��* ,
(
��- .
!
��. /
TryParseVersion
��/ >
(
��> ?
edmxVersionString
��? P
,
��P Q
out
��R U&
edmxVersionFromAttribute
��V n
)
��n o
||
��p r'
edmxVersionFromAttribute��s �
!=��� �
edmxVersion��� �
)��� �
)��� �
{
�� 
this
�� 
.
�� 

RaiseError
�� 
(
��  
EdmErrorCode
��  ,
.
��, -"
InvalidVersionNumber
��- A
,
��A B
Edm
��C F
.
��F G
Strings
��G N
.
��N O,
EdmxParser_EdmxVersionMismatch
��O m
)
��m n
;
��n o
}
�� 
this
�� 
.
�� 
ParseElement
�� 
(
�� 

�� +
.
��+ ,
Element_Edmx
��, 8
,
��8 9
this
��: >
.
��> ?
edmxParserLookup
��? O
)
��O P
;
��P Q
}
�� 	
private
�� 
string
�� 
GetAttributeValue
�� (
(
��( )
string
��) /
namespaceUri
��0 <
,
��< =
string
��> D
	localName
��E N
)
��N O
{
�� 	
string
�� 
elementNamespace
�� #
=
��$ %
this
��& *
.
��* +
reader
��+ 1
.
��1 2
NamespaceURI
��2 >
;
��> ?
Debug
�� 
.
�� 
Assert
�� 
(
�� 
!
�� 
String
��  
.
��  !

��! .
(
��. /
elementNamespace
��/ ?
)
��? @
,
��@ A
$str
��B k
)
��k l
;
��l m
string
�� 
value
�� 
=
�� 
null
�� 
;
��  
bool
�� 

�� 
=
��  
this
��! %
.
��% &
reader
��& ,
.
��, -"
MoveToFirstAttribute
��- A
(
��A B
)
��B C
;
��C D
while
�� 
(
�� 

��  
)
��  !
{
�� 
if
�� 
(
�� 
(
�� 
namespaceUri
�� !
!=
��" $
null
��% )
&&
��* ,
this
��- 1
.
��1 2
reader
��2 8
.
��8 9
NamespaceURI
��9 E
==
��F H
namespaceUri
��I U
||
��V X
(
��Y Z
String
��Z `
.
��` a

��a n
(
��n o
this
��o s
.
��s t
reader
��t z
.
��z {
NamespaceURI��{ �
)��� �
||��� �
this��� �
.��� �
reader��� �
.��� �
NamespaceURI��� �
==��� � 
elementNamespace��� �
)��� �
)��� �
&&��� �
this
�� 
.
�� 
reader
�� 
.
��  
	LocalName
��  )
==
��* ,
	localName
��- 6
)
��6 7
{
�� 
value
�� 
=
�� 
this
��  
.
��  !
reader
��! '
.
��' (
Value
��( -
;
��- .
break
�� 
;
�� 
}
�� 

�� 
=
�� 
this
��  $
.
��$ %
reader
��% +
.
��+ ,!
MoveToNextAttribute
��, ?
(
��? @
)
��@ A
;
��A B
}
�� 
this
�� 
.
�� 
reader
�� 
.
�� 

�� %
(
��% &
)
��& '
;
��' (
return
�� 
value
�� 
;
�� 
}
�� 	
private
�� 
void
�� !
ParseRuntimeElement
�� (
(
��( )
)
��) *
{
�� 	
this
�� 
.
��  
ParseTargetElement
�� #
(
��# $

��$ 1
.
��1 2
Element_Runtime
��2 A
,
��A B
this
��C G
.
��G H!
runtimeParserLookup
��H [
)
��[ \
;
��\ ]
}
�� 	
private
�� 
void
�� &
ParseDataServicesElement
�� -
(
��- .
)
��. /
{
�� 	
this
�� 
.
��  
ParseTargetElement
�� #
(
��# $

��$ 1
.
��1 2"
Element_DataServices
��2 F
,
��F G
this
��H L
.
��L M&
dataServicesParserLookup
��M e
)
��e f
;
��f g
}
�� 	
private
�� 
void
��  
ParseTargetElement
�� '
(
��' (
string
��( .
elementName
��/ :
,
��: ;

Dictionary
��< F
<
��F G
string
��G M
,
��M N
Action
��O U
>
��U V
elementParsers
��W e
)
��e f
{
�� 	
if
�� 
(
�� 
!
�� 
this
�� 
.
�� 
targetParsed
�� "
)
��" #
{
�� 
this
�� 
.
�� 
targetParsed
�� !
=
��" #
true
��$ (
;
��( )
}
�� 
else
�� 
{
�� 
this
�� 
.
�� 

RaiseError
�� 
(
��  
EdmErrorCode
��  ,
.
��, -"
UnexpectedXmlElement
��- A
,
��A B
Edm
��C F
.
��F G
Strings
��G N
.
��N O$
EdmxParser_BodyElement
��O e
(
��e f

��f s
.
��s t#
Element_DataServices��t �
)��� �
)��� �
;��� �
elementParsers
�� 
=
��  
EmptyParserLookup
��! 2
;
��2 3
}
�� 
this
�� 
.
�� 
ParseElement
�� 
(
�� 
elementName
�� )
,
��) *
elementParsers
��+ 9
)
��9 :
;
��: ;
}
�� 	
private
�� 
void
�� *
ParseConceptualModelsElement
�� 1
(
��1 2
)
��2 3
{
�� 	
this
�� 
.
�� 
ParseElement
�� 
(
�� 

�� +
.
��+ ,&
Element_ConceptualModels
��, D
,
��D E
this
��F J
.
��J K*
conceptualModelsParserLookup
��K g
)
��g h
;
��h i
}
�� 	
private
�� 
void
�� #
ParseReferenceElement
�� *
(
��* +
)
��+ ,
{
�� 	
EdmReference
�� 
result
�� 
=
��  !
new
��" %
EdmReference
��& 2
(
��2 3
new
��3 6
Uri
��7 :
(
��: ;
this
��; ?
.
��? @
GetAttributeValue
��@ Q
(
��Q R
null
��R V
,
��V W

��X e
.
��e f

��f s
)
��s t
,
��t u
UriKind
��v }
.
��} ~!
RelativeOrAbsolute��~ �
)��� �
)��� �
;��� �
if
�� 
(
�� 
this
�� 
.
�� 
reader
�� 
.
�� 
IsEmptyElement
�� *
)
��* +
{
�� 
this
�� 
.
�� 
reader
�� 
.
�� 
Read
��  
(
��  !
)
��! "
;
��" #
this
�� 
.
�� 

�� "
.
��" #
Add
��# &
(
��& '
result
��' -
)
��- .
;
��. /
return
�� 
;
�� 
}
�� 
this
�� 
.
�� 
reader
�� 
.
�� 
Read
�� 
(
�� 
)
�� 
;
�� 
while
�� 
(
�� 
this
�� 
.
�� 
reader
�� 
.
�� 
NodeType
�� '
!=
��( *
XmlNodeType
��+ 6
.
��6 7

EndElement
��7 A
)
��A B
{
�� 
while
�� 
(
�� 
this
�� 
.
�� 
reader
�� "
.
��" #
NodeType
��# +
==
��, .
XmlNodeType
��/ :
.
��: ;

Whitespace
��; E
&&
��F H
this
��I M
.
��M N
reader
��N T
.
��T U
Read
��U Y
(
��Y Z
)
��Z [
)
��[ \
{
�� 
}
�� 
if
�� 
(
�� 
this
�� 
.
�� 
reader
�� 
.
��  
NodeType
��  (
!=
��) +
XmlNodeType
��, 7
.
��7 8
Element
��8 ?
)
��? @
{
�� 
break
�� 
;
�� 
}
�� 
if
�� 
(
�� 
this
�� 
.
�� 
reader
�� 
.
��  
	LocalName
��  )
==
��* ,

��- :
.
��: ;
Element_Include
��; J
)
��J K
{
�� 
IEdmInclude
�� 
tmp
��  #
=
��$ %
new
��& )

EdmInclude
��* 4
(
��4 5
this
��5 9
.
��9 :
GetAttributeValue
��: K
(
��K L
null
��L P
,
��P Q

��R _
.
��_ `
Attribute_Alias
��` o
)
��o p
,
��p q
this
��r v
.
��v w 
GetAttributeValue��w �
(��� �
null��� �
,��� �

.��� �#
Attribute_Namespace��� �
)��� �
)��� �
;��� �
result
�� 
.
�� 

AddInclude
�� %
(
��% &
tmp
��& )
)
��) *
;
��* +
}
�� 
else
�� 
if
�� 
(
�� 
this
�� 
.
�� 
reader
�� $
.
��$ %
	LocalName
��% .
==
��/ 1

��2 ?
.
��? @(
Element_IncludeAnnotations
��@ Z
)
��Z [
{
�� $
IEdmIncludeAnnotations
�� *
tmp
��+ .
=
��/ 0
new
��1 4#
EdmIncludeAnnotations
��5 J
(
��J K
this
��K O
.
��O P
GetAttributeValue
��P a
(
��a b
null
��b f
,
��f g

��h u
.
��u v&
Attribute_TermNamespace��v �
)��� �
,��� �
this��� �
.��� �!
GetAttributeValue��� �
(��� �
null��� �
,��� �

.��� �#
Attribute_Qualifier��� �
)��� �
,��� �
this��� �
.��� �!
GetAttributeValue��� �
(��� �
null��� �
,��� �

.��� �)
Attribute_TargetNamespace��� �
)��� �
)��� �
;��� �
result
�� 
.
�� #
AddIncludeAnnotations
�� 0
(
��0 1
tmp
��1 4
)
��4 5
;
��5 6
}
�� 
else
�� 
if
�� 
(
�� 
this
�� 
.
�� 
reader
�� $
.
��$ %
	LocalName
��% .
==
��/ 1

��2 ?
.
��? @ 
Element_Annotation
��@ R
)
��R S
{
�� 
this
�� 
.
�� 
reader
�� 
.
��  
Skip
��  $
(
��$ %
)
��% &
;
��& '
this
�� 
.
�� 

RaiseError
�� #
(
��# $
EdmErrorCode
��$ 0
.
��0 1"
UnexpectedXmlElement
��1 E
,
��E F
Edm
��G J
.
��J K
Strings
��K R
.
��R S)
XmlParser_UnexpectedElement
��S n
(
��n o
this
��o s
.
��s t
reader
��t z
.
��z {
	LocalName��{ �
)��� �
)��� �
;��� �
continue
�� 
;
�� 
}
�� 
else
�� 
{
�� 
this
�� 
.
�� 

RaiseError
�� #
(
��# $
EdmErrorCode
��$ 0
.
��0 1"
UnexpectedXmlElement
��1 E
,
��E F
Edm
��G J
.
��J K
Strings
��K R
.
��R S)
XmlParser_UnexpectedElement
��S n
(
��n o
this
��o s
.
��s t
reader
��t z
.
��z {
	LocalName��{ �
)��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
!
�� 
this
�� 
.
�� 
reader
��  
.
��  !
IsEmptyElement
��! /
)
��/ 0
{
�� 
this
�� 
.
�� 
reader
�� 
.
��  
Read
��  $
(
��$ %
)
��% &
;
��& '
while
�� 
(
�� 
this
�� 
.
��  
reader
��  &
.
��& '
NodeType
��' /
==
��0 2
XmlNodeType
��3 >
.
��> ?

Whitespace
��? I
&&
��J L
this
��M Q
.
��Q R
reader
��R X
.
��X Y
Read
��Y ]
(
��] ^
)
��^ _
)
��_ `
{
�� 
}
�� 
Debug
�� 
.
�� 
Assert
��  
(
��  !
this
��! %
.
��% &
reader
��& ,
.
��, -
NodeType
��- 5
==
��6 8
XmlNodeType
��9 D
.
��D E

EndElement
��E O
,
��O P
$str��Q �
)��� �
;��� �
}
�� 
this
�� 
.
�� 
reader
�� 
.
�� 
Read
��  
(
��  !
)
��! "
;
��" #
}
�� 
Debug
�� 
.
�� 
Assert
�� 
(
�� 
this
�� 
.
�� 
reader
�� $
.
��$ %
NodeType
��% -
==
��. 0
XmlNodeType
��1 <
.
��< =

EndElement
��= G
,
��G H
$str
��I x
)
��x y
;
��y z
this
�� 
.
�� 
reader
�� 
.
�� 
Read
�� 
(
�� 
)
�� 
;
�� 
this
�� 
.
�� 

�� 
.
�� 
Add
�� "
(
��" #
result
��# )
)
��) *
;
��* +
}
�� 	
private
�� 
void
��  
ParseSchemaElement
�� '
(
��' (
)
��( )
{
�� 	
Debug
�� 
.
�� 
Assert
�� 
(
�� 
this
�� 
.
�� 
reader
�� $
.
��$ %
	LocalName
��% .
==
��/ 1

��2 ?
.
��? @
Element_Schema
��@ N
,
��N O
$str��P �
)��� �
;��� �
XmlReaderSettings
�� 
settings
�� &
=
��' (
new
��) ,
XmlReaderSettings
��- >
(
��> ?
)
��? @
;
��@ A
IXmlLineInfo
�� 
lineInfo
�� !
=
��" #
this
��$ (
.
��( )
reader
��) /
as
��0 2
IXmlLineInfo
��3 ?
;
��? @
if
�� 
(
�� 
lineInfo
�� 
!=
�� 
null
��  
&&
��! #
lineInfo
��$ ,
.
��, -
HasLineInfo
��- 8
(
��8 9
)
��9 :
)
��: ;
{
�� 
settings
�� 
.
�� 
LineNumberOffset
�� )
=
��* +
lineInfo
��, 4
.
��4 5

LineNumber
��5 ?
-
��@ A
$num
��B C
;
��C D
settings
�� 
.
��  
LinePositionOffset
�� +
=
��, -
lineInfo
��. 6
.
��6 7
LinePosition
��7 C
-
��D E
$num
��F G
;
��G H
}
�� 
using
�� 
(
�� 
StringReader
�� 
sr
��  "
=
��# $
new
��% (
StringReader
��) 5
(
��5 6
this
��6 :
.
��: ;
reader
��; A
.
��A B
ReadOuterXml
��B N
(
��N O
)
��O P
)
��P Q
)
��Q R
{
�� 
using
�� 
(
�� 
	XmlReader
��  
xr
��! #
=
��$ %
	XmlReader
��& /
.
��/ 0
Create
��0 6
(
��6 7
sr
��7 9
,
��9 :
settings
��; C
)
��C D
)
��D E
{
�� 
this
�� 
.
�� 

csdlParser
�� #
.
��# $
	AddReader
��$ -
(
��- .
xr
��. 0
,
��0 1
this
��2 6
.
��6 7
source
��7 =
)
��= >
;
��> ?
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
RaiseEmptyFile
�� #
(
��# $
)
��$ %
{
�� 	
this
�� 
.
�� 

RaiseError
�� 
(
�� 
EdmErrorCode
�� (
.
��( )
	EmptyFile
��) 2
,
��2 3
Edm
��4 7
.
��7 8
Strings
��8 ?
.
��? @-
XmlParser_EmptySchemaTextReader
��@ _
)
��_ `
;
��` a
}
�� 	
private
�� 
CsdlLocation
�� 
Location
�� %
(
��% &
)
��& '
{
�� 	
int
�� 

lineNumber
�� 
=
�� 
$num
�� 
;
�� 
int
�� 
linePosition
�� 
=
�� 
$num
��  
;
��  !
IXmlLineInfo
�� 
xmlLineInfo
�� $
=
��% &
this
��' +
.
��+ ,
reader
��, 2
as
��3 5
IXmlLineInfo
��6 B
;
��B C
if
�� 
(
�� 
xmlLineInfo
�� 
!=
�� 
null
�� #
&&
��$ &
xmlLineInfo
��' 2
.
��2 3
HasLineInfo
��3 >
(
��> ?
)
��? @
)
��@ A
{
�� 

lineNumber
�� 
=
�� 
xmlLineInfo
�� (
.
��( )

LineNumber
��) 3
;
��3 4
linePosition
�� 
=
�� 
xmlLineInfo
�� *
.
��* +
LinePosition
��+ 7
;
��7 8
}
�� 
return
�� 
new
�� 
CsdlLocation
�� #
(
��# $
this
��$ (
.
��( )
source
��) /
,
��/ 0

lineNumber
��1 ;
,
��; <
linePosition
��= I
)
��I J
;
��J K
}
�� 	
private
�� 
void
�� 

RaiseError
�� 
(
��  
EdmErrorCode
��  ,
	errorCode
��- 6
,
��6 7
string
��8 >
errorMessage
��? K
)
��K L
{
�� 	
this
�� 
.
�� 
errors
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
EdmError
��  (
(
��( )
this
��) -
.
��- .
Location
��. 6
(
��6 7
)
��7 8
,
��8 9
	errorCode
��: C
,
��C D
errorMessage
��E Q
)
��Q R
)
��R S
;
��S T
}
�� 	
}
�� 
}�� �s
7D:\odata.net\src\Microsoft.OData.Edm\Csdl\CsdlWriter.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
{ 
public 

class 

CsdlWriter 
{ 
private 
readonly 
	IEdmModel "
model# (
;( )
private 
readonly 
IEnumerable $
<$ %
	EdmSchema% .
>. /
schemas0 7
;7 8
private 
readonly 
	XmlWriter "
writer# )
;) *
private 
readonly 
Version  
edmxVersion! ,
;, -
private 
readonly 
string 

;- .
private 
readonly 

CsdlTarget #
target$ *
;* +
private 

CsdlWriter 
( 
	IEdmModel $
model% *
,* +
IEnumerable, 7
<7 8
	EdmSchema8 A
>A B
schemasC J
,J K
	XmlWriterL U
writerV \
,\ ]
Version^ e
edmxVersionf q
,q r

CsdlTargets }
target	~ �
)
� �
{ 	
this 
. 
model 
= 
model 
; 
this   
.   
schemas   
=   
schemas   "
;  " #
this!! 
.!! 
writer!! 
=!! 
writer!!  
;!!  !
this"" 
."" 
edmxVersion"" 
="" 
edmxVersion"" *
;""* +
this## 
.## 
target## 
=## 
target##  
;##  !
Debug%% 
.%% 
Assert%% 
(%% 

.%%& '!
SupportedEdmxVersions%%' <
.%%< =
ContainsKey%%= H
(%%H I
edmxVersion%%I T
)%%T U
,%%U V
$str	%%W �
)
%%� �
;
%%� �
this&& 
.&& 

=&&  

.&&. /!
SupportedEdmxVersions&&/ D
[&&D E
edmxVersion&&E P
]&&P Q
;&&Q R
}'' 	
public11 
static11 
bool11 
TryWriteCsdl11 '
(11' (
	IEdmModel11( 1
model112 7
,117 8
	XmlWriter119 B
writer11C I
,11I J

CsdlTarget11K U
target11V \
,11\ ]
out11^ a
IEnumerable11b m
<11m n
EdmError11n v
>11v w
errors11x ~
)11~ 
{22 	
EdmUtil33 
.33 
CheckArgumentNull33 %
(33% &
model33& +
,33+ ,
$str33- 4
)334 5
;335 6
EdmUtil44 
.44 
CheckArgumentNull44 %
(44% &
writer44& ,
,44, -
$str44. 6
)446 7
;447 8
errors66 
=66 
model66 
.66 "
GetSerializationErrors66 1
(661 2
)662 3
;663 4
if77 
(77 
errors77 
.77 
FirstOrDefault77 %
(77% &
)77& '
!=77( *
null77+ /
)77/ 0
{88 
return99 
false99 
;99 
}:: 
Version<< 
edmxVersion<< 
=<<  !
model<<" '
.<<' (
GetEdmxVersion<<( 6
(<<6 7
)<<7 8
;<<8 9
if>> 
(>> 
edmxVersion>> 
!=>> 
null>> #
)>># $
{?? 
if@@ 
(@@ 
!@@ 

.@@" #!
SupportedEdmxVersions@@# 8
.@@8 9
ContainsKey@@9 D
(@@D E
edmxVersion@@E P
)@@P Q
)@@Q R
{AA 
errorsBB 
=BB 
newBB  
EdmErrorBB! )
[BB) *
]BB* +
{BB, -
newBB. 1
EdmErrorBB2 :
(BB: ;
newBB; >
CsdlLocationBB? K
(BBK L
$numBBL M
,BBM N
$numBBO P
)BBP Q
,BBQ R
EdmErrorCodeBBS _
.BB_ `
UnknownEdmxVersionBB` r
,BBr s
EdmBBt w
.BBw x
StringsBBx 
.	BB �+
Serializer_UnknownEdmxVersion
BB� �
)
BB� �
}
BB� �
;
BB� �
returnCC 
falseCC  
;CC  !
}DD 
}EE 
elseFF 
ifFF 
(FF 
!FF 

.FF# $
EdmToEdmxVersionsFF$ 5
.FF5 6
TryGetValueFF6 A
(FFA B
modelFFB G
.FFG H

(FFU V
)FFV W
??FFX Z
EdmConstantsFF[ g
.FFg h
EdmVersionLatestFFh x
,FFx y
outFFz }
edmxVersion	FF~ �
)
FF� �
)
FF� �
{GG 
errorsHH 
=HH 
newHH 
EdmErrorHH %
[HH% &
]HH& '
{HH( )
newHH* -
EdmErrorHH. 6
(HH6 7
newHH7 :
CsdlLocationHH; G
(HHG H
$numHHH I
,HHI J
$numHHK L
)HHL M
,HHM N
EdmErrorCodeHHO [
.HH[ \
UnknownEdmVersionHH\ m
,HHm n
EdmHHo r
.HHr s
StringsHHs z
.HHz {)
Serializer_UnknownEdmVersion	HH{ �
)
HH� �
}
HH� �
;
HH� �
returnII 
falseII 
;II 
}JJ 
IEnumerableLL 
<LL 
	EdmSchemaLL !
>LL! "
schemasLL# *
=LL+ ,
newLL- 08
,EdmModelSchemaSeparationSerializationVisitorLL1 ]
(LL] ^
modelLL^ c
)LLc d
.LLd e

GetSchemasLLe o
(LLo p
)LLp q
;LLq r

CsdlWriterNN 

edmxWriterNN !
=NN" #
newNN$ '

CsdlWriterNN( 2
(NN2 3
modelNN3 8
,NN8 9
schemasNN: A
,NNA B
writerNNC I
,NNI J
edmxVersionNNK V
,NNV W
targetNNX ^
)NN^ _
;NN_ `

edmxWriterOO 
.OO 
	WriteCsdlOO  
(OO  !
)OO! "
;OO" #
errorsQQ 
=QQ 

EnumerableQQ 
.QQ  
EmptyQQ  %
<QQ% &
EdmErrorQQ& .
>QQ. /
(QQ/ 0
)QQ0 1
;QQ1 2
returnRR 
trueRR 
;RR 
}SS 	
privateUU 
voidUU 
	WriteCsdlUU 
(UU 
)UU  
{VV 	
switchWW 
(WW 
thisWW 
.WW 
targetWW 
)WW  
{XX 
caseYY 

CsdlTargetYY 
.YY  
EntityFrameworkYY  /
:YY/ 0
thisZZ 
.ZZ 
WriteEFCsdlZZ $
(ZZ$ %
)ZZ% &
;ZZ& '
break[[ 
;[[ 
case\\ 

CsdlTarget\\ 
.\\  
OData\\  %
:\\% &
this]] 
.]] 
WriteODataCsdl]] '
(]]' (
)]]( )
;]]) *
break^^ 
;^^ 
default__ 
:__ 
throw`` 
new`` %
InvalidOperationException`` 7
(``7 8
Edm``8 ;
.``; <
Strings``< C
.``C D%
UnknownEnumVal_CsdlTarget``D ]
(``] ^
this``^ b
.``b c
target``c i
.``i j
ToString``j r
(``r s
)``s t
)``t u
)``u v
;``v w
}aa 
}bb 	
privatedd 
voiddd 
WriteODataCsdldd #
(dd# $
)dd$ %
{ee 	
thisff 
.ff 
WriteEdmxElementff !
(ff! "
)ff" #
;ff# $
thisgg 
.gg "
WriteReferenceElementsgg '
(gg' (
)gg( )
;gg) *
thishh 
.hh $
WriteDataServicesElementhh )
(hh) *
)hh* +
;hh+ ,
thisii 
.ii 
WriteSchemasii 
(ii 
)ii 
;ii  
thisjj 
.jj 

EndElementjj 
(jj 
)jj 
;jj 
thiskk 
.kk 

EndElementkk 
(kk 
)kk 
;kk 
}ll 	
privatenn 
voidnn 
WriteEFCsdlnn  
(nn  !
)nn! "
{oo 	
thispp 
.pp 
WriteEdmxElementpp !
(pp! "
)pp" #
;pp# $
thisqq 
.qq 
WriteRuntimeElementqq $
(qq$ %
)qq% &
;qq& '
thisrr 
.rr (
WriteConceptualModelsElementrr -
(rr- .
)rr. /
;rr/ 0
thisss 
.ss 
WriteSchemasss 
(ss 
)ss 
;ss  
thistt 
.tt 

EndElementtt 
(tt 
)tt 
;tt 
thisuu 
.uu 

EndElementuu 
(uu 
)uu 
;uu 
thisvv 
.vv 

EndElementvv 
(vv 
)vv 
;vv 
}ww 	
privateyy 
voidyy 
WriteEdmxElementyy %
(yy% &
)yy& '
{zz 	
this{{ 
.{{ 
writer{{ 
.{{ 
WriteStartElement{{ )
({{) *

.{{7 8
Prefix_Edmx{{8 C
,{{C D

.{{R S
Element_Edmx{{S _
,{{_ `
this{{a e
.{{e f

){{s t
;{{t u
this|| 
.|| 
writer|| 
.||  
WriteAttributeString|| ,
(||, -

.||: ;
Attribute_Version||; L
,||L M
this||N R
.||R S
edmxVersion||S ^
.||^ _
ToString||_ g
(||g h
)||h i
)||i j
;||j k
}}} 	
private 
void 
WriteRuntimeElement (
(( )
)) *
{
�� 	
this
�� 
.
�� 
writer
�� 
.
�� 
WriteStartElement
�� )
(
��) *

��* 7
.
��7 8
Prefix_Edmx
��8 C
,
��C D

��E R
.
��R S
Element_Runtime
��S b
,
��b c
this
��d h
.
��h i

��i v
)
��v w
;
��w x
}
�� 	
private
�� 
void
�� *
WriteConceptualModelsElement
�� 1
(
��1 2
)
��2 3
{
�� 	
this
�� 
.
�� 
writer
�� 
.
�� 
WriteStartElement
�� )
(
��) *

��* 7
.
��7 8
Prefix_Edmx
��8 C
,
��C D

��E R
.
��R S&
Element_ConceptualModels
��S k
,
��k l
this
��m q
.
��q r

��r 
)�� �
;��� �
}
�� 	
private
�� 
void
�� $
WriteReferenceElements
�� +
(
��+ ,
)
��, -
{
�� 	.
 EdmModelReferenceElementsVisitor
�� ,
visitor
��- 4
=
��5 6
new
��7 :.
 EdmModelReferenceElementsVisitor
��; [
(
��[ \
this
��\ `
.
��` a
model
��a f
,
��f g
this
��h l
.
��l m
writer
��m s
,
��s t
this
��u y
.
��y z
edmxVersion��z �
)��� �
;��� �
visitor
�� 
.
��  
VisitEdmReferences
�� &
(
��& '
this
��' +
.
��+ ,
model
��, 1
)
��1 2
;
��2 3
}
�� 	
private
�� 
void
�� &
WriteDataServicesElement
�� -
(
��- .
)
��. /
{
�� 	
this
�� 
.
�� 
writer
�� 
.
�� 
WriteStartElement
�� )
(
��) *

��* 7
.
��7 8
Prefix_Edmx
��8 C
,
��C D

��E R
.
��R S"
Element_DataServices
��S g
,
��g h
this
��i m
.
��m n

��n {
)
��{ |
;
��| }
}
�� 	
private
�� 
void
�� 
WriteSchemas
�� !
(
��! "
)
��" #
{
�� 	.
 EdmModelCsdlSerializationVisitor
�� ,
visitor
��- 4
;
��4 5
Version
�� 

edmVersion
�� 
=
��  
this
��! %
.
��% &
model
��& +
.
��+ ,

��, 9
(
��9 :
)
��: ;
??
��< >
EdmConstants
��? K
.
��K L
EdmVersionLatest
��L \
;
��\ ]
foreach
�� 
(
�� 
	EdmSchema
�� 
schema
�� %
in
��& (
this
��) -
.
��- .
schemas
��. 5
)
��5 6
{
�� 
visitor
�� 
=
�� 
new
�� .
 EdmModelCsdlSerializationVisitor
�� >
(
��> ?
this
��? C
.
��C D
model
��D I
,
��I J
this
��K O
.
��O P
writer
��P V
,
��V W

edmVersion
��X b
)
��b c
;
��c d
visitor
�� 
.
�� 
VisitEdmSchema
�� &
(
��& '
schema
��' -
,
��- .
this
��/ 3
.
��3 4
model
��4 9
.
��9 :(
GetNamespacePrefixMappings
��: T
(
��T U
)
��U V
)
��V W
;
��W X
}
�� 
}
�� 	
private
�� 
void
�� 

EndElement
�� 
(
��  
)
��  !
{
�� 	
this
�� 
.
�� 
writer
�� 
.
�� 
WriteEndElement
�� '
(
��' (
)
��( )
;
��) *
}
�� 	
}
�� 
}�� �
aD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsEntityReferenceTypeExpression.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
.		 
Csdl		 "
.		" #

{

 
internal 
class
*CsdlSemanticsEntityReferenceTypeExpression =
:> ?'
CsdlSemanticsTypeExpression@ [
,[ \,
 IEdmEntityReferenceTypeReference] }
{ 
public
*CsdlSemanticsEntityReferenceTypeExpression
(
CsdlExpressionTypeReference
expressionUsage
,
CsdlSemanticsTypeDefinition	
type

)

: 
base 
( 
expressionUsage "
," #
type$ (
)( )
{ 	
} 	
} 
} �0
SD:\odata.net\src\Microsoft.OData.Edm\Csdl\Semantics\CsdlSemanticsOperationImport.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{
internal 
abstract
class (
CsdlSemanticsOperationImport 8
:9 : 
CsdlSemanticsElement; O
,O P
IEdmOperationImportQ d
{ 
private 
readonly 
CsdlOperationImport ,
operationImport- <
;< =
private 
readonly (
CsdlSemanticsEntityContainer 5
	container6 ?
;? @
private 
readonly 
Cache 
< (
CsdlSemanticsOperationImport ;
,; <
IEdmExpression= K
>K L
entitySetCacheM [
=\ ]
new^ a
Cacheb g
<g h)
CsdlSemanticsOperationImport	h �
,
� �
IEdmExpression
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %(
CsdlSemanticsOperationImport% A
,A B
IEdmExpressionC Q
>Q R 
ComputeEntitySetFuncS g
=h i
(j k
mek m
)m n
=>o q
mer t
.t u
ComputeEntitySet	u �
(
� �
)
� �
;
� �
	protected (
CsdlSemanticsOperationImport .
(. /(
CsdlSemanticsEntityContainer/ K
	containerL U
,U V
CsdlOperationImportW j
operationImportk z
,z {

	operation
� �
)
� �
: 
base 
( 
operationImport "
)" #
{ 	
this 
. 
	container 
= 
	container &
;& '
this 
. 
operationImport  
=! "
operationImport# 2
;2 3
this 
. 
	Operation 
= 
	operation &
;& '
} 	
public 

	Operation &
{' (
get) ,
;, -
private. 5
set6 9
;9 :
}; <
public   
override   
CsdlSemanticsModel   *
Model  + 0
{!! 	
get"" 
{"" 
return"" 
this"" 
."" 
	container"" '
.""' (
Context""( /
.""/ 0
Model""0 5
;""5 6
}""7 8
}## 	
public%% 
override%% 
CsdlElement%% #
Element%%$ +
{&& 	
get'' 
{'' 
return'' 
this'' 
.'' 
operationImport'' -
;''- .
}''/ 0
}(( 	
public** 
string** 
Name** 
{++ 	
get,, 
{,, 
return,, 
this,, 
.,, 
operationImport,, -
.,,- .
Name,,. 2
;,,2 3
},,4 5
}-- 	
public// 
IEdmEntityContainer// "
	Container//# ,
{00 	
get11 
{11 
return11 
this11 
.11 
	container11 '
;11' (
}11) *
}22 	
public44 
IEdmExpression44 
	EntitySet44 '
{55 	
get66 
{77 
return88 
this88 
.88 
entitySetCache88 *
.88* +
GetValue88+ 3
(883 4
this884 8
,888 9 
ComputeEntitySetFunc88: N
,88N O
null88P T
)88T U
;88U V
}99 
}:: 	
public<< 
abstract<< #
EdmContainerElementKind<< / 
ContainerElementKind<<0 D
{<<E F
get<<G J
;<<J K
}<<L M
	protected>> 
override>> 
IEnumerable>> &
<>>& '$
IEdmVocabularyAnnotation>>' ?
>>>? @.
"ComputeInlineVocabularyAnnotations>>A c
(>>c d
)>>d e
{?? 	
return@@ 
this@@ 
.@@ 
Model@@ 
.@@ +
WrapInlineVocabularyAnnotations@@ =
(@@= >
this@@> B
,@@B C
this@@D H
.@@H I
	container@@I R
.@@R S
Context@@S Z
)@@Z [
;@@[ \
}AA 	
privateCC 
IEdmExpressionCC 
ComputeEntitySetCC /
(CC/ 0
)CC0 1
{DD 	
ifEE 
(EE 
thisEE 
.EE 
operationImportEE $
.EE$ %
	EntitySetEE% .
!=EE/ 1
nullEE2 6
)EE6 7
{FF 
returnGG 
newGG )
OperationImportPathExpressionGG 8
(GG8 9
thisGG9 =
.GG= >
operationImportGG> M
.GGM N
	EntitySetGGN W
)GGW X
{GGY Z
LocationGG[ c
=GGd e
thisGGf j
.GGj k
LocationGGk s
}GGt u
;GGu v
}HH 
returnJJ 
nullJJ 
;JJ 
}KK 	
privateMM 
sealedMM 
classMM )
OperationImportPathExpressionMM :
:MM; <
EdmPathExpressionMM= N
,MMN O

{NN 	
internalOO )
OperationImportPathExpressionOO 2
(OO2 3
stringOO3 9
pathOO: >
)OO> ?
:PP 
basePP 
(PP 
pathPP 
)PP 
{QQ 
}RR 
publicTT 
EdmLocationTT 
LocationTT '
{UU 
getVV 
;VV 
setWW 
;WW 
}XX 
}YY 	
}ZZ 
}[[ �~
gD:\odata.net\src\Microsoft.OData.Edm\Csdl\Serialization\EdmModelSchemaSeparationSerializationVisitor.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 
Csdl "
." #

{ 
internal
class
,EdmModelSchemaSeparationSerializationVisitor
:
EdmModelVisitor
{ 
private 
bool 
visitCompleted #
=$ %
false& +
;+ ,
private 

Dictionary 
< 
string !
,! "
	EdmSchema# ,
>, -
modelSchemas. :
=; <
new= @

DictionaryA K
<K L
stringL R
,R S
	EdmSchemaT ]
>] ^
(^ _
)_ `
;` a
private 
	EdmSchema 
activeSchema &
;& '
public 8
,EdmModelSchemaSeparationSerializationVisitor ;
(; <
	IEdmModel< E
visitedModelF R
)R S
: 
base 
( 
visitedModel 
)  
{ 	
} 	
public 
IEnumerable 
< 
	EdmSchema $
>$ %

GetSchemas& 0
(0 1
)1 2
{ 	
if 
( 
! 
this 
. 
visitCompleted $
)$ %
{ 
this 
. 
Visit 
( 
) 
; 
} 
return 
this 
. 
modelSchemas $
.$ %
Values% +
;+ ,
}   	
	protected"" 
void"" 
Visit"" 
("" 
)"" 
{## 	
this$$ 
.$$ 

($$ 
)$$  
;$$  !
this%% 
.%% 
visitCompleted%% 
=%%  !
true%%" &
;%%& '
}&& 	
	protected(( 
override(( 
void(( 
ProcessModel((  ,
(((, -
	IEdmModel((- 6
model((7 <
)((< =
{)) 	
this** 
.** 
ProcessElement** 
(**  
model**  %
)**% &
;**& '
this++ 
.++ 
VisitSchemaElements++ $
(++$ %
model++% *
.++* +
SchemaElements+++ 9
)++9 :
;++: ;
this,, 
.,, &
VisitVocabularyAnnotations,, +
(,,+ ,
model,,, 1
.,,1 2!
VocabularyAnnotations,,2 G
.,,G H
Where,,H M
(,,M N
a,,N O
=>,,P R
!,,S T
a,,T U
.,,U V
IsInline,,V ^
(,,^ _
this,,_ c
.,,c d
Model,,d i
),,i j
),,j k
),,k l
;,,l m
}-- 	
	protected// 
override// 
void// (
ProcessVocabularyAnnotatable//  <
(//< =%
IEdmVocabularyAnnotatable//= V
element//W ^
)//^ _
{00 	
this11 
.11 
VisitAnnotations11 !
(11! "
this11" &
.11& '
Model11' ,
.11, -"
DirectValueAnnotations11- C
(11C D
element11D K
)11K L
)11L M
;11M N
this22 
.22 &
VisitVocabularyAnnotations22 +
(22+ ,
this22, 0
.220 1
Model221 6
.226 7-
!FindDeclaredVocabularyAnnotations227 X
(22X Y
element22Y `
)22` a
.22a b
Where22b g
(22g h
a22h i
=>22j l
a22m n
.22n o
IsInline22o w
(22w x
this22x |
.22| }
Model	22} �
)
22� �
)
22� �
)
22� �
;
22� �
}33 	
	protected55 
override55 
void55  
ProcessSchemaElement55  4
(554 5
IEdmSchemaElement555 F
element55G N
)55N O
{66 	
string77 

=77! "
element77# *
.77* +
	Namespace77+ 4
;774 5
if:: 
(:: 
EdmUtil:: 
.:: &
IsNullOrWhiteSpaceInternal:: 2
(::2 3

)::@ A
)::A B
{;; 

=<< 
string<<  &
.<<& '
Empty<<' ,
;<<, -
}== 
	EdmSchema?? 
schema?? 
;?? 
if@@ 
(@@ 
!@@ 
this@@ 
.@@ 
modelSchemas@@ "
.@@" #
TryGetValue@@# .
(@@. /

,@@< =
out@@> A
schema@@B H
)@@H I
)@@I J
{AA 
schemaBB 
=BB 
newBB 
	EdmSchemaBB &
(BB& '

)BB4 5
;BB5 6
thisCC 
.CC 
modelSchemasCC !
.CC! "
AddCC" %
(CC% &

,CC3 4
schemaCC5 ;
)CC; <
;CC< =
}DD 
schemaFF 
.FF 
AddSchemaElementFF #
(FF# $
elementFF$ +
)FF+ ,
;FF, -
thisGG 
.GG 
activeSchemaGG 
=GG 
schemaGG  &
;GG& '
baseII 
.II  
ProcessSchemaElementII %
(II% &
elementII& -
)II- .
;II. /
}JJ 	
	protectedLL 
overrideLL 
voidLL '
ProcessVocabularyAnnotationLL  ;
(LL; <$
IEdmVocabularyAnnotationLL< T

annotationLLU _
)LL_ `
{MM 	
ifNN 
(NN 
!NN 

annotationNN 
.NN 
IsInlineNN $
(NN$ %
thisNN% )
.NN) *
ModelNN* /
)NN/ 0
)NN0 1
{OO 
varPP %
annotationSchemaNamespacePP -
=PP. /

annotationPP0 :
.PP: ;
GetSchemaNamespacePP; M
(PPM N
thisPPN R
.PPR S
ModelPPS X
)PPX Y
??PPZ \
thisPP] a
.PPa b
modelSchemasPPb n
.PPn o
SelectPPo u
(PPu v
sPPv w
=>PPx z
sPP{ |
.PP| }
Key	PP} �
)
PP� �
.
PP� �
FirstOrDefault
PP� �
(
PP� �
)
PP� �
??
PP� �
string
PP� �
.
PP� �
Empty
PP� �
;
PP� �
	EdmSchemaRR 
annotationSchemaRR *
;RR* +
ifSS 
(SS 
!SS 
thisSS 
.SS 
modelSchemasSS &
.SS& '
TryGetValueSS' 2
(SS2 3%
annotationSchemaNamespaceSS3 L
,SSL M
outSSN Q
annotationSchemaSSR b
)SSb c
)SSc d
{TT 
annotationSchemaUU $
=UU% &
newUU' *
	EdmSchemaUU+ 4
(UU4 5%
annotationSchemaNamespaceUU5 N
)UUN O
;UUO P
thisVV 
.VV 
modelSchemasVV %
.VV% &
AddVV& )
(VV) *
annotationSchemaVV* :
.VV: ;
	NamespaceVV; D
,VVD E
annotationSchemaVVF V
)VVV W
;VVW X
}WW 
annotationSchemaYY  
.YY  !#
AddVocabularyAnnotationYY! 8
(YY8 9

annotationYY9 C
)YYC D
;YYD E
thisZZ 
.ZZ 
activeSchemaZZ !
=ZZ" #
annotationSchemaZZ$ 4
;ZZ4 5
}[[ 
if]] 
(]] 

annotation]] 
.]] 
Term]] 
!=]]  "
null]]# '
)]]' (
{^^ 
this__ 
.__ '
CheckSchemaElementReference__ 0
(__0 1

annotation__1 ;
.__; <
Term__< @
)__@ A
;__A B
}`` 
basebb 
.bb '
ProcessVocabularyAnnotationbb ,
(bb, -

annotationbb- 7
)bb7 8
;bb8 9
}cc 	
	protectedkk 
overridekk 
voidkk "
ProcessEntityContainerkk  6
(kk6 7
IEdmEntityContainerkk7 J
elementkkK R
)kkR S
{ll 	
varmm $
containerSchemaNamespacemm (
=mm) *
elementmm+ 2
.mm2 3
	Namespacemm3 <
;mm< =
	EdmSchemaoo 
containerSchemaoo %
;oo% &
ifpp 
(pp 
!pp 
thispp 
.pp 
modelSchemaspp "
.pp" #
TryGetValuepp# .
(pp. /$
containerSchemaNamespacepp/ G
,ppG H
outppI L
containerSchemappM \
)pp\ ]
)pp] ^
{qq 
containerSchemarr 
=rr  !
newrr" %
	EdmSchemarr& /
(rr/ 0$
containerSchemaNamespacerr0 H
)rrH I
;rrI J
thisss 
.ss 
modelSchemasss !
.ss! "
Addss" %
(ss% &
containerSchemass& 5
.ss5 6
	Namespacess6 ?
,ss? @
containerSchemassA P
)ssP Q
;ssQ R
}tt 
containerSchemavv 
.vv 
AddEntityContainervv .
(vv. /
elementvv/ 6
)vv6 7
;vv7 8
thisww 
.ww 
activeSchemaww 
=ww 
containerSchemaww  /
;ww/ 0
baseyy 
.yy "
ProcessEntityContaineryy '
(yy' (
elementyy( /
)yy/ 0
;yy0 1
}zz 	
	protected|| 
override|| 
void|| '
ProcessComplexTypeReference||  ;
(||; <$
IEdmComplexTypeReference||< T
element||U \
)||\ ]
{}} 	
this~~ 
.~~ '
CheckSchemaElementReference~~ ,
(~~, -
element~~- 4
.~~4 5
ComplexDefinition~~5 F
(~~F G
)~~G H
)~~H I
;~~I J
} 	
	protected
�� 
override
�� 
void
�� (
ProcessEntityTypeReference
��  :
(
��: ;%
IEdmEntityTypeReference
��; R
element
��S Z
)
��Z [
{
�� 	
this
�� 
.
�� )
CheckSchemaElementReference
�� ,
(
��, -
element
��- 4
.
��4 5
EntityDefinition
��5 E
(
��E F
)
��F G
)
��G H
;
��H I
}
�� 	
	protected
�� 
override
�� 
void
�� 1
#ProcessEntityReferenceTypeReference
��  C
(
��C D.
 IEdmEntityReferenceTypeReference
��D d
element
��e l
)
��l m
{
�� 	
this
�� 
.
�� )
CheckSchemaElementReference
�� ,
(
��, -
element
��- 4
.
��4 5

EntityType
��5 ?
(
��? @
)
��@ A
)
��A B
;
��B C
}
�� 	
	protected
�� 
override
�� 
void
�� &
ProcessEnumTypeReference
��  8
(
��8 9#
IEdmEnumTypeReference
��9 N
element
��O V
)
��V W
{
�� 	
this
�� 
.
�� )
CheckSchemaElementReference
�� ,
(
��, -
element
��- 4
.
��4 5
EnumDefinition
��5 C
(
��C D
)
��D E
)
��E F
;
��F G
}
�� 	
	protected
�� 
override
�� 
void
�� ,
ProcessTypeDefinitionReference
��  >
(
��> ?)
IEdmTypeDefinitionReference
��? Z
element
��[ b
)
��b c
{
�� 	
this
�� 
.
�� )
CheckSchemaElementReference
�� ,
(
��, -
element
��- 4
.
��4 5
TypeDefinition
��5 C
(
��C D
)
��D E
)
��E F
;
��F G
}
�� 	
	protected
�� 
override
�� 
void
�� 
ProcessEntityType
��  1
(
��1 2
IEdmEntityType
��2 @
element
��A H
)
��H I
{
�� 	
base
�� 
.
�� 
ProcessEntityType
�� "
(
��" #
element
��# *
)
��* +
;
��+ ,
if
�� 
(
�� 
element
�� 
.
�� 
BaseEntityType
�� &
(
��& '
)
��' (
!=
��) +
null
��, 0
)
��0 1
{
�� 
this
�� 
.
�� )
CheckSchemaElementReference
�� 0
(
��0 1
element
��1 8
.
��8 9
BaseEntityType
��9 G
(
��G H
)
��H I
)
��I J
;
��J K
}
�� 
}
�� 	
	protected
�� 
override
�� 
void
��  
ProcessComplexType
��  2
(
��2 3
IEdmComplexType
��3 B
element
��C J
)
��J K
{
�� 	
base
�� 
.
��  
ProcessComplexType
�� #
(
��# $
element
��$ +
)
��+ ,
;
��, -
if
�� 
(
�� 
element
�� 
.
�� 
BaseComplexType
�� '
(
��' (
)
��( )
!=
��* ,
null
��- 1
)
��1 2
{
�� 
this
�� 
.
�� )
CheckSchemaElementReference
�� 0
(
��0 1
element
��1 8
.
��8 9
BaseComplexType
��9 H
(
��H I
)
��I J
)
��J K
;
��K L
}
�� 
}
�� 	
	protected
�� 
override
�� 
void
�� 
ProcessEnumType
��  /
(
��/ 0
IEdmEnumType
��0 <
element
��= D
)
��D E
{
�� 	
base
�� 
.
�� 
ProcessEnumType
��  
(
��  !
element
��! (
)
��( )
;
��) *
this
�� 
.
�� )
CheckSchemaElementReference
�� ,
(
��, -
element
��- 4
.
��4 5
UnderlyingType
��5 C
)
��C D
;
��D E
}
�� 	
	protected
�� 
override
�� 
void
�� #
ProcessTypeDefinition
��  5
(
��5 6 
IEdmTypeDefinition
��6 H
element
��I P
)
��P Q
{
�� 	
base
�� 
.
�� #
ProcessTypeDefinition
�� &
(
��& '
element
��' .
)
��. /
;
��/ 0
this
�� 
.
�� )
CheckSchemaElementReference
�� ,
(
��, -
element
��- 4
.
��4 5
UnderlyingType
��5 C
)
��C D
;
��D E
}
�� 	
private
�� 
void
�� )
CheckSchemaElementReference
�� 0
(
��0 1
IEdmSchemaElement
��1 B
element
��C J
)
��J K
{
�� 	
this
�� 
.
�� )
CheckSchemaElementReference
�� ,
(
��, -
element
��- 4
.
��4 5
	Namespace
��5 >
)
��> ?
;
��? @
}
�� 	
private
�� 
void
�� )
CheckSchemaElementReference
�� 0
(
��0 1
string
��1 7

��8 E
)
��E F
{
�� 	
if
�� 
(
�� 
this
�� 
.
�� 
activeSchema
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
this
�� 
.
�� 
activeSchema
�� !
.
��! "
AddNamespaceUsing
��" 3
(
��3 4

��4 A
)
��A B
;
��B C
}
�� 
}
�� 	
}
�� 
}�� �
_D:\odata.net\src\Microsoft.OData.Edm\PrimitiveValueConverters\DefaultPrimitiveValueConverter.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
class
DefaultPrimitiveValueConverter 1
:2 3$
IPrimitiveValueConverter4 L
{ 
internal 
static 
readonly  $
IPrimitiveValueConverter! 9
Instance: B
=C D
newE H*
DefaultPrimitiveValueConverterI g
(g h
)h i
;i j
private *
DefaultPrimitiveValueConverter .
(. /
)/ 0
{ 	
} 	
public 
object #
ConvertToUnderlyingType -
(- .
object. 4
value5 :
): ;
{ 	
if 
( 
value 
is 
UInt16 
)  
{ 
return 
Convert 
. 
ToInt32 &
(& '
value' ,
,, -
CultureInfo. 9
.9 :
InvariantCulture: J
)J K
;K L
} 
if!! 
(!! 
value!! 
is!! 
UInt32!! 
)!!  
{"" 
return## 
Convert## 
.## 
ToInt64## &
(##& '
value##' ,
,##, -
CultureInfo##. 9
.##9 :
InvariantCulture##: J
)##J K
;##K L
}$$ 
if&& 
(&& 
value&& 
is&& 
UInt64&& 
)&&  
{'' 
return(( 
Convert(( 
.(( 
	ToDecimal(( (
(((( )
value(() .
,((. /
CultureInfo((0 ;
.((; <
InvariantCulture((< L
)((L M
;((M N
})) 
return++ 
value++ 
;++ 
},, 	
public.. 
object.. %
ConvertFromUnderlyingType.. /
(../ 0
object..0 6
value..7 <
)..< =
{// 	
if00 
(00 
value00 
is00 
Int3200 
)00 
{11 
return22 
Convert22 
.22 
ToUInt1622 '
(22' (
value22( -
,22- .
CultureInfo22/ :
.22: ;
InvariantCulture22; K
)22K L
;22L M
}33 
if55 
(55 
value55 
is55 
Int6455 
)55 
{66 
return77 
Convert77 
.77 
ToUInt3277 '
(77' (
value77( -
,77- .
CultureInfo77/ :
.77: ;
InvariantCulture77; K
)77K L
;77L M
}88 
if:: 
(:: 
value:: 
is:: 
Decimal::  
)::  !
{;; 
return<< 
Convert<< 
.<< 
ToUInt64<< '
(<<' (
value<<( -
,<<- .
CultureInfo<</ :
.<<: ;
InvariantCulture<<; K
)<<K L
;<<L M
}== 
return?? 
value?? 
;?? 
}@@ 	
}AA 
}BB �
3D:\odata.net\src\Microsoft.OData.Edm\EdmLocation.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

abstract 
class 
EdmLocation %
{
public 
abstract 
override  
string! '
ToString( 0
(0 1
)1 2
;2 3
} 
} �
KD:\odata.net\src\Microsoft.OData.Edm\ExtensionMethods\EdmElementComparer.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
{

 
public 

static 
class 
EdmElementComparer *
{ 
public 
static 
bool 
IsEquivalentTo )
() *
this* .
IEdmType/ 7
thisType8 @
,@ A
IEdmTypeB J
	otherTypeK T
)T U
{ 	
if 
( 
thisType 
== 
	otherType %
)% &
{ 
return 
true 
; 
} 
if 
( 
thisType 
== 
null  
||! #
	otherType$ -
==. 0
null1 5
)5 6
{ 
return   
false   
;   
}!! 
thisType## 
=## 
thisType## 
.##  
AsActualType##  ,
(##, -
)##- .
;##. /
	otherType$$ 
=$$ 
	otherType$$ !
.$$! "
AsActualType$$" .
($$. /
)$$/ 0
;$$0 1
if&& 
(&& 
thisType&& 
.&& 
TypeKind&& !
!=&&" $
	otherType&&% .
.&&. /
TypeKind&&/ 7
)&&7 8
{'' 
return(( 
false(( 
;(( 
})) 
switch++ 
(++ 
thisType++ 
.++ 
TypeKind++ %
)++% &
{,, 
case-- 
EdmTypeKind--  
.--  !
	Primitive--! *
:--* +
return.. 
(.. 
(.. 
IEdmPrimitiveType.. .
)... /
thisType../ 7
)..7 8
...8 9
IsEquivalentTo..9 G
(..G H
(..H I
IEdmPrimitiveType..I Z
)..Z [
	otherType..[ d
)..d e
;..e f
case// 
EdmTypeKind//  
.//  !
Complex//! (
://( )
case00 
EdmTypeKind00  
.00  !
Entity00! '
:00' (
case11 
EdmTypeKind11  
.11  !
Enum11! %
:11% &
return22 
(22 
(22 
IEdmSchemaType22 +
)22+ ,
thisType22, 4
)224 5
.225 6
IsEquivalentTo226 D
(22D E
(22E F
IEdmSchemaType22F T
)22T U
	otherType22U ^
)22^ _
;22_ `
case33 
EdmTypeKind33  
.33  !

Collection33! +
:33+ ,
return44 
(44 
(44 
IEdmCollectionType44 /
)44/ 0
thisType440 8
)448 9
.449 :
IsEquivalentTo44: H
(44H I
(44I J
IEdmCollectionType44J \
)44\ ]
	otherType44] f
)44f g
;44g h
case55 
EdmTypeKind55  
.55  !
EntityReference55! 0
:550 1
return66 
(66 
(66 #
IEdmEntityReferenceType66 4
)664 5
thisType665 =
)66= >
.66> ?
IsEquivalentTo66? M
(66M N
(66N O#
IEdmEntityReferenceType66O f
)66f g
	otherType66g p
)66p q
;66q r
case77 
EdmTypeKind77  
.77  !
None77! %
:77% &
return88 
	otherType88 $
.88$ %
TypeKind88% -
==88. 0
EdmTypeKind881 <
.88< =
None88= A
;88A B
default99 
:99 
throw:: 
new:: %
InvalidOperationException:: 7
(::7 8
Edm::8 ;
.::; <
Strings::< C
.::C D#
UnknownEnumVal_TypeKind::D [
(::[ \
thisType::\ d
.::d e
TypeKind::e m
)::m n
)::n o
;::o p
};; 
}<< 	
publicEE 
staticEE 
boolEE 
IsEquivalentToEE )
(EE) *
thisEE* .
IEdmTypeReferenceEE/ @
thisTypeEEA I
,EEI J
IEdmTypeReferenceEEK \
	otherTypeEE] f
)EEf g
{FF 	
ifGG 
(GG 
thisTypeGG 
==GG 
	otherTypeGG %
)GG% &
{HH 
returnII 
trueII 
;II 
}JJ 
ifLL 
(LL 
thisTypeLL 
==LL 
nullLL  
||LL! #
	otherTypeLL$ -
==LL. 0
nullLL1 5
)LL5 6
{MM 
returnNN 
falseNN 
;NN 
}OO 
thisTypeQQ 
=QQ 
thisTypeQQ 
.QQ  !
AsActualTypeReferenceQQ  5
(QQ5 6
)QQ6 7
;QQ7 8
	otherTypeRR 
=RR 
	otherTypeRR !
.RR! "!
AsActualTypeReferenceRR" 7
(RR7 8
)RR8 9
;RR9 :
EdmTypeKindTT 
typeKindTT  
=TT! "
thisTypeTT# +
.TT+ ,
TypeKindTT, 4
(TT4 5
)TT5 6
;TT6 7
ifUU 
(UU 
typeKindUU 
!=UU 
	otherTypeUU %
.UU% &
TypeKindUU& .
(UU. /
)UU/ 0
)UU0 1
{VV 
returnWW 
falseWW 
;WW 
}XX 
ifZZ 
(ZZ 
typeKindZZ 
==ZZ 
EdmTypeKindZZ '
.ZZ' (
	PrimitiveZZ( 1
)ZZ1 2
{[[ 
return\\ 
(\\ 
(\\ &
IEdmPrimitiveTypeReference\\ 3
)\\3 4
thisType\\4 <
)\\< =
.\\= >
IsEquivalentTo\\> L
(\\L M
(\\M N&
IEdmPrimitiveTypeReference\\N h
)\\h i
	otherType\\i r
)\\r s
;\\s t
}]] 
else^^ 
{__ 
return`` 
thisType`` 
.``  

IsNullable``  *
==``+ -
	otherType``. 7
.``7 8

IsNullable``8 B
&&``C E
thisTypeaa 
.aa  

Definitionaa  *
.aa* +
IsEquivalentToaa+ 9
(aa9 :
	otherTypeaa: C
.aaC D

DefinitionaaD N
)aaN O
;aaO P
}bb 
}cc 	
privateee 
staticee 
boolee 
IsEquivalentToee *
(ee* +
thisee+ /
IEdmPrimitiveTypeee0 A
thisTypeeeB J
,eeJ K
IEdmPrimitiveTypeeeL ]
	otherTypeee^ g
)eeg h
{ff 	
returnjj 
thisTypejj 
.jj 

==jj* ,
	otherTypejj- 6
.jj6 7

&&jjE G
thisTypekk 
.kk 
FullNamekk $
(kk$ %
)kk% &
==kk' )
	otherTypekk* 3
.kk3 4
FullNamekk4 <
(kk< =
)kk= >
;kk> ?
}ll 	
privatenn 
staticnn 
boolnn 
IsEquivalentTonn *
(nn* +
thisnn+ /
IEdmSchemaTypenn0 >
thisTypenn? G
,nnG H
IEdmSchemaTypennI W
	otherTypennX a
)nna b
{oo 	
returnpp 
Objectpp 
.pp 
ReferenceEqualspp )
(pp) *
thisTypepp* 2
,pp2 3
	otherTypepp4 =
)pp= >
;pp> ?
}qq 	
privatess 
staticss 
boolss 
IsEquivalentToss *
(ss* +
thisss+ /
IEdmCollectionTypess0 B
thisTypessC K
,ssK L
IEdmCollectionTypessM _
	otherTypess` i
)ssi j
{tt 	
returnuu 
thisTypeuu 
.uu 
ElementTypeuu '
.uu' (
IsEquivalentTouu( 6
(uu6 7
	otherTypeuu7 @
.uu@ A
ElementTypeuuA L
)uuL M
;uuM N
}vv 	
privatexx 
staticxx 
boolxx 
IsEquivalentToxx *
(xx* +
thisxx+ /#
IEdmEntityReferenceTypexx0 G
thisTypexxH P
,xxP Q#
IEdmEntityReferenceTypexxR i
	otherTypexxj s
)xxs t
{yy 	
returnzz 
thisTypezz 
.zz 

EntityTypezz &
.zz& '
IsEquivalentTozz' 5
(zz5 6
	otherTypezz6 ?
.zz? @

EntityTypezz@ J
)zzJ K
;zzK L
}{{ 	
private}} 
static}} 
bool}} 
IsEquivalentTo}} *
(}}* +
this}}+ /&
IEdmPrimitiveTypeReference}}0 J
thisType}}K S
,}}S T&
IEdmPrimitiveTypeReference}}U o
	otherType}}p y
)}}y z
{~~ 	 
EdmPrimitiveTypeKind  !
thisTypePrimitiveKind! 6
=7 8
thisType9 A
.A B

(O P
)P Q
;Q R
if
�� 
(
�� #
thisTypePrimitiveKind
�� %
!=
��& (
	otherType
��) 2
.
��2 3

��3 @
(
��@ A
)
��A B
)
��B C
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
switch
�� 
(
�� #
thisTypePrimitiveKind
�� )
)
��) *
{
�� 
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
Binary
��* 0
:
��0 1
return
�� 
(
�� 
thisType
�� $
as
��% '%
IEdmBinaryTypeReference
��( ?
)
��? @
.
��@ A
IsEquivalentTo
��A O
(
��O P
	otherType
��P Y
as
��Z \%
IEdmBinaryTypeReference
��] t
)
��t u
;
��u v
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
Decimal
��* 1
:
��1 2
return
�� 
(
�� 
thisType
�� $
as
��% '&
IEdmDecimalTypeReference
��( @
)
��@ A
.
��A B
IsEquivalentTo
��B P
(
��P Q
	otherType
��Q Z
as
��[ ]&
IEdmDecimalTypeReference
��^ v
)
��v w
;
��w x
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
String
��* 0
:
��0 1
return
�� 
(
�� 
thisType
�� $
as
��% '%
IEdmStringTypeReference
��( ?
)
��? @
.
��@ A
IsEquivalentTo
��A O
(
��O P
	otherType
��P Y
as
��Z \%
IEdmStringTypeReference
��] t
)
��t u
;
��u v
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
Duration
��* 2
:
��2 3
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
DateTimeOffset
��* 8
:
��8 9
return
�� 
(
�� 
thisType
�� $
as
��% ''
IEdmTemporalTypeReference
��( A
)
��A B
.
��B C
IsEquivalentTo
��C Q
(
��Q R
	otherType
��R [
as
��\ ^'
IEdmTemporalTypeReference
��_ x
)
��x y
;
��y z
default
�� 
:
�� 
if
�� 
(
�� #
thisTypePrimitiveKind
�� -
.
��- .
	IsSpatial
��. 7
(
��7 8
)
��8 9
)
��9 :
{
�� 
return
�� 
(
��  
thisType
��  (
as
��) +&
IEdmSpatialTypeReference
��, D
)
��D E
.
��E F
IsEquivalentTo
��F T
(
��T U
	otherType
��U ^
as
��_ a&
IEdmSpatialTypeReference
��b z
)
��z {
;
��{ |
}
�� 
else
�� 
{
�� 
return
�� 
thisType
�� '
.
��' (

IsNullable
��( 2
==
��3 5
	otherType
��6 ?
.
��? @

IsNullable
��@ J
&&
��K M
thisType
��  (
.
��( )

Definition
��) 3
.
��3 4
IsEquivalentTo
��4 B
(
��B C
	otherType
��C L
.
��L M

Definition
��M W
)
��W X
;
��X Y
}
�� 
}
�� 
}
�� 	
private
�� 
static
�� 
bool
�� 
IsEquivalentTo
�� *
(
��* +
this
��+ /%
IEdmBinaryTypeReference
��0 G
thisType
��H P
,
��P Q%
IEdmBinaryTypeReference
��R i
	otherType
��j s
)
��s t
{
�� 	
return
�� 
thisType
�� 
!=
�� 
null
�� #
&&
��$ &
	otherType
��' 0
!=
��1 3
null
��4 8
&&
��9 ;
thisType
�� 
.
�� 

IsNullable
�� &
==
��' )
	otherType
��* 3
.
��3 4

IsNullable
��4 >
&&
��? A
thisType
�� 
.
�� 
IsUnbounded
�� '
==
��( *
	otherType
��+ 4
.
��4 5
IsUnbounded
��5 @
&&
��A C
thisType
�� 
.
�� 
	MaxLength
�� %
==
��& (
	otherType
��) 2
.
��2 3
	MaxLength
��3 <
;
��< =
}
�� 	
private
�� 
static
�� 
bool
�� 
IsEquivalentTo
�� *
(
��* +
this
��+ /&
IEdmDecimalTypeReference
��0 H
thisType
��I Q
,
��Q R&
IEdmDecimalTypeReference
��S k
	otherType
��l u
)
��u v
{
�� 	
return
�� 
thisType
�� 
!=
�� 
null
�� #
&&
��$ &
	otherType
��' 0
!=
��1 3
null
��4 8
&&
��9 ;
thisType
�� 
.
�� 

IsNullable
�� &
==
��' )
	otherType
��* 3
.
��3 4

IsNullable
��4 >
&&
��? A
thisType
�� 
.
�� 
	Precision
�� %
==
��& (
	otherType
��) 2
.
��2 3
	Precision
��3 <
&&
��= ?
thisType
�� 
.
�� 
Scale
�� !
==
��" $
	otherType
��% .
.
��. /
Scale
��/ 4
;
��4 5
}
�� 	
private
�� 
static
�� 
bool
�� 
IsEquivalentTo
�� *
(
��* +
this
��+ /'
IEdmTemporalTypeReference
��0 I
thisType
��J R
,
��R S'
IEdmTemporalTypeReference
��T m
	otherType
��n w
)
��w x
{
�� 	
return
�� 
thisType
�� 
!=
�� 
null
�� #
&&
��$ &
	otherType
��' 0
!=
��1 3
null
��4 8
&&
��9 ;
thisType
�� 
.
�� 
TypeKind
�� $
(
��$ %
)
��% &
==
��' )
	otherType
��* 3
.
��3 4
TypeKind
��4 <
(
��< =
)
��= >
&&
��? A
thisType
�� 
.
�� 

IsNullable
�� &
==
��' )
	otherType
��* 3
.
��3 4

IsNullable
��4 >
&&
��? A
thisType
�� 
.
�� 
	Precision
�� %
==
��& (
	otherType
��) 2
.
��2 3
	Precision
��3 <
;
��< =
}
�� 	
private
�� 
static
�� 
bool
�� 
IsEquivalentTo
�� *
(
��* +
this
��+ /%
IEdmStringTypeReference
��0 G
thisType
��H P
,
��P Q%
IEdmStringTypeReference
��R i
	otherType
��j s
)
��s t
{
�� 	
return
�� 
thisType
�� 
!=
�� 
null
�� #
&&
��$ &
	otherType
��' 0
!=
��1 3
null
��4 8
&&
��9 ;
thisType
�� 
.
�� 

IsNullable
�� &
==
��' )
	otherType
��* 3
.
��3 4

IsNullable
��4 >
&&
��? A
thisType
�� 
.
�� 
IsUnbounded
�� '
==
��( *
	otherType
��+ 4
.
��4 5
IsUnbounded
��5 @
&&
��A C
thisType
�� 
.
�� 
	MaxLength
�� %
==
��& (
	otherType
��) 2
.
��2 3
	MaxLength
��3 <
&&
��= ?
thisType
�� 
.
�� 
	IsUnicode
�� %
==
��& (
	otherType
��) 2
.
��2 3
	IsUnicode
��3 <
;
��< =
}
�� 	
private
�� 
static
�� 
bool
�� 
IsEquivalentTo
�� *
(
��* +
this
��+ /&
IEdmSpatialTypeReference
��0 H
thisType
��I Q
,
��Q R&
IEdmSpatialTypeReference
��S k
	otherType
��l u
)
��u v
{
�� 	
return
�� 
thisType
�� 
!=
�� 
null
�� #
&&
��$ &
	otherType
��' 0
!=
��1 3
null
��4 8
&&
��9 ;
thisType
�� 
.
�� 

IsNullable
�� &
==
��' )
	otherType
��* 3
.
��3 4

IsNullable
��4 >
&&
��? A
thisType
�� 
.
�� (
SpatialReferenceIdentifier
�� 6
==
��7 9
	otherType
��: C
.
��C D(
SpatialReferenceIdentifier
��D ^
;
��^ _
}
�� 	
}
�� 
}�� �
:D:\odata.net\src\Microsoft.OData.Edm\Schema\BadPathType.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
class
BadPathType 
:  
BadType! (
,( )
IEdmPathType* 6
{ 
public 
BadPathType 
( 
string !

,/ 0
IEnumerable1 <
<< =
EdmError= E
>E F
errorsG M
)M N
: 
base 
( 
errors 
) 
{ 	
} 	
public 
string 
Name 
{ 	
get 
{ 
throw 
new #
NotImplementedException 1
(1 2
)2 3
;3 4
} 
} 	
public 
string 
	Namespace 
{   	
get!! 
{"" 
throw## 
new## #
NotImplementedException## 1
(##1 2
)##2 3
;##3 4
}$$ 
}%% 	
public'' 
EdmPathTypeKind'' 
PathKind'' '
{(( 	
get)) 
{** 
throw++ 
new++ #
NotImplementedException++ 1
(++1 2
)++2 3
;++3 4
},, 
}-- 	
public//  
EdmSchemaElementKind// #
SchemaElementKind//$ 5
{00 	
get11 
{22 
throw33 
new33 #
NotImplementedException33 1
(331 2
)332 3
;333 4
}44 
}55 	
public77 
override77 
EdmTypeKind77 #
TypeKind77$ ,
{88 	
get99 
{99 
return99 
EdmTypeKind99 $
.99$ %
Path99% )
;99) *
}99+ ,
}:: 	
};; 
}<< �
CD:\odata.net\src\Microsoft.OData.Edm\Schema\BadPathTypeReference.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{
internal 
class
BadPathTypeReference '
:( ) 
EdmPathTypeReference* >
,> ?

{ 
private 
readonly 
IEnumerable $
<$ %
EdmError% -
>- .
errors/ 5
;5 6
public  
BadPathTypeReference #
(# $
string$ *

,8 9
bool: >

isNullable? I
,I J
IEnumerableK V
<V W
EdmErrorW _
>_ `
errorsa g
)g h
: 
base 
( 
new 
BadPathType "
(" #

,0 1
errors2 8
)8 9
,9 :

isNullable; E
)E F
{ 	
this 
. 
errors 
= 
errors  
;  !
} 	
public 
IEnumerable 
< 
EdmError #
># $
Errors% +
{ 	
get 
{ 
return 
this 
. 
errors $
;$ %
}& '
} 	
public 
override 
string 
ToString '
(' (
)( )
{ 	
EdmError 
error 
= 
this !
.! "
Errors" (
.( )
FirstOrDefault) 7
(7 8
)8 9
;9 :
Debug   
.   
Assert   
(   
error   
!=   !
null  " &
,  & '
$str  ( 7
)  7 8
;  8 9
string!! 
prefix!! 
=!! 
error!! !
.!!! "
	ErrorCode!!" +
+!!, -
$str!!. 1
;!!1 2
return"" 
prefix"" 
+"" 
this""  
.""  !

("". /
)""/ 0
;""0 1
}## 	
}$$ 
}%% �
PD:\odata.net\src\Microsoft.OData.Edm\Schema\CoreModel\EdmCoreModelComplexType.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
sealed
class #
EdmCoreModelComplexType 1
:2 3
EdmType4 ;
,; <
IEdmComplexType= L
,L M 
IEdmCoreModelElementN b
{ 
public 
static 
readonly #
EdmCoreModelComplexType 6
Instance7 ?
=@ A
newB E#
EdmCoreModelComplexTypeF ]
(] ^
)^ _
;_ `
public 
override 
EdmTypeKind #
TypeKind$ ,
=>- /
EdmTypeKind0 ;
.; <
Complex< C
;C D
public  
EdmSchemaElementKind #
SchemaElementKind$ 5
=>6 8 
EdmSchemaElementKind9 M
.M N
TypeDefinitionN \
;\ ]
public$$ 
string$$ 
Name$$ 
=>$$ 

.$$+ ,"
TypeName_Complex_Short$$, B
;$$B C
public)) 
string)) 
	Namespace)) 
=>))  "
EdmConstants))# /
.))/ 0
EdmNamespace))0 <
;))< =
public// 
bool// 

IsAbstract// 
=>// !
true//" &
;//& '
public55 
bool55 
IsOpen55 
=>55 
false55 #
;55# $
public;; 
IEdmStructuredType;; !
BaseType;;" *
=;;+ ,
null;;- 1
;;;1 2
publicAA 
IEnumerableAA 
<AA 
IEdmPropertyAA '
>AA' (
DeclaredPropertiesAA) ;
=>AA< >

EnumerableAA? I
.AAI J
EmptyAAJ O
<AAO P
IEdmPropertyAAP \
>AA\ ]
(AA] ^
)AA^ _
;AA_ `
IEdmStructuredTypeGG 
IEdmStructuredTypeGG -
.GG- .
BaseTypeGG. 6
=>GG7 9
nullGG: >
;GG> ?
publicNN 
IEdmPropertyNN 
FindPropertyNN (
(NN( )
stringNN) /
nameNN0 4
)NN4 5
=>NN6 8
nullNN9 =
;NN= >
privateSS #
EdmCoreModelComplexTypeSS '
(SS' (
)SS( )
{TT 	
}UU 	
}VV 
}WW �
RD:\odata.net\src\Microsoft.OData.Edm\Schema\CoreModel\EdmCoreModelPrimitiveType.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
sealed
class %
EdmCoreModelPrimitiveType 3
:4 5
EdmType6 =
,= >
IEdmPrimitiveType? P
,P Q 
IEdmCoreModelElementR f
{
public %
EdmCoreModelPrimitiveType (
(( ) 
EdmPrimitiveTypeKind) =

)K L
{ 	
Name 
= 

.  !
ToString! )
() *
)* +
;+ ,

= 

;) *
} 	
public 
string 
Name 
{ 
get  
;  !
}" #
public   
string   
	Namespace   
=>    "
EdmConstants  # /
.  / 0
EdmNamespace  0 <
;  < =
public%% 
override%% 
EdmTypeKind%% #
TypeKind%%$ ,
=>%%- /
EdmTypeKind%%0 ;
.%%; <
	Primitive%%< E
;%%E F
public**  
EdmPrimitiveTypeKind** #

{**2 3
get**4 7
;**7 8
}**9 :
public//  
EdmSchemaElementKind// #
SchemaElementKind//$ 5
=>//6 8 
EdmSchemaElementKind//9 M
.//M N
TypeDefinition//N \
;//\ ]
public44 
string44 
FullName44 
=>44 !
	Namespace44" +
+44, -
$str44. 1
+442 3
Name444 8
;448 9
}55 
}66 �
OD:\odata.net\src\Microsoft.OData.Edm\Schema\CoreModel\EdmCoreModelUntypeType.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
{

 
internal 
sealed
class #
EdmCoreModelUntypedType 1
:2 3
EdmType4 ;
,; <
IEdmUntypedType= L
,L M 
IEdmCoreModelElementN b
{ 
public 
static 
readonly #
EdmCoreModelUntypedType 6
Instance7 ?
=@ A
newB E#
EdmCoreModelUntypedTypeF ]
(] ^
)^ _
;_ `
public 
override 
EdmTypeKind #
TypeKind$ ,
=>- /
EdmTypeKind0 ;
.; <
Untyped< C
;C D
public  
EdmSchemaElementKind #
SchemaElementKind$ 5
=>6 8 
EdmSchemaElementKind9 M
.M N
TypeDefinitionN \
;\ ]
public"" 
string"" 
Name"" 
=>"" 

.""+ ,"
TypeName_Untyped_Short"", B
;""B C
public'' 
string'' 
	Namespace'' 
=>''  "
EdmConstants''# /
.''/ 0
EdmNamespace''0 <
;''< =
private,, #
EdmCoreModelUntypedType,, '
(,,' (
),,( )
{-- 	
}.. 	
}// 
}00 �
MD:\odata.net\src\Microsoft.OData.Edm\Schema\CoreModel\IEdmCoreModelElement.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
	interface
IEdmCoreModelElement +
{
} 
} �
OD:\odata.net\src\Microsoft.OData.Edm\Schema\CoreModel\EdmCoreModelEntityType.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
sealed
class "
EdmCoreModelEntityType 0
:1 2
EdmType3 :
,: ;
IEdmEntityType< J
,J K 
IEdmCoreModelElementL `
{ 
public 
static 
readonly "
EdmCoreModelEntityType 5
Instance6 >
=? @
newA D"
EdmCoreModelEntityTypeE [
([ \
)\ ]
;] ^
public 
override 
EdmTypeKind #
TypeKind$ ,
=>- /
EdmTypeKind0 ;
.; <
Entity< B
;B C
public  
EdmSchemaElementKind #
SchemaElementKind$ 5
=>6 8 
EdmSchemaElementKind9 M
.M N
TypeDefinitionN \
;\ ]
public$$ 
string$$ 
Name$$ 
=>$$ 

.$$+ ,!
TypeName_Entity_Short$$, A
;$$A B
public)) 
string)) 
	Namespace)) 
=>))  "
EdmConstants))# /
.))/ 0
EdmNamespace))0 <
;))< =
public// 
bool// 
	HasStream// 
=>//  
false//! &
;//& '
public55 
bool55 

IsAbstract55 
=>55 !
true55" &
;55& '
public;; 
bool;; 
IsOpen;; 
=>;; 
false;; #
;;;# $
publicAA 
IEdmStructuredTypeAA !
BaseTypeAA" *
=>AA+ -
nullAA. 2
;AA2 3
publicGG 
IEnumerableGG 
<GG 
IEdmPropertyGG '
>GG' (
DeclaredPropertiesGG) ;
=>GG< >

EnumerableGG? I
.GGI J
EmptyGGJ O
<GGO P
IEdmPropertyGGP \
>GG\ ]
(GG] ^
)GG^ _
;GG_ `
publicMM 
IEnumerableMM 
<MM "
IEdmStructuralPropertyMM 1
>MM1 2
DeclaredKeyMM3 >
=>MM? A

EnumerableMMB L
.MML M
EmptyMMM R
<MMR S"
IEdmStructuralPropertyMMS i
>MMi j
(MMj k
)MMk l
;MMl m
publicTT 
IEdmPropertyTT 
FindPropertyTT (
(TT( )
stringTT) /
nameTT0 4
)TT4 5
=>TT6 8
nullTT9 =
;TT= >
privateYY "
EdmCoreModelEntityTypeYY &
(YY& '
)YY' (
{ZZ 	
}[[ 	
}\\ 
}]] �
MD:\odata.net\src\Microsoft.OData.Edm\Schema\CoreModel\EdmCoreModelPathType.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
sealed
class  
EdmCoreModelPathType .
:/ 0
EdmType1 8
,8 9
IEdmPathType: F
,F G 
IEdmCoreModelElementH \
{
public  
EdmCoreModelPathType #
(# $
EdmPathTypeKind$ 3
pathKind4 <
)< =
{ 	
Name 
= 
pathKind 
. 
ToString $
($ %
)% &
;& '
PathKind 
= 
pathKind 
;  
} 	
public 
EdmPathTypeKind 
PathKind '
{( )
get* -
;- .
}/ 0
public   
string   
FullName   
=>   !
	Namespace  " +
+  , -
$str  . 1
+  2 3
Name  4 8
;  8 9
public%% 
override%% 
EdmTypeKind%% #
TypeKind%%$ ,
=>%%- /
EdmTypeKind%%0 ;
.%%; <
Path%%< @
;%%@ A
public**  
EdmSchemaElementKind** #
SchemaElementKind**$ 5
=>**6 8 
EdmSchemaElementKind**9 M
.**M N
TypeDefinition**N \
;**\ ]
public// 
string// 
	Namespace// 
=>//  "
EdmConstants//# /
./// 0
EdmNamespace//0 <
;//< =
public44 
string44 
Name44 
{44 
get44  
;44  !
}44" #
}55 
}66 ��
ED:\odata.net\src\Microsoft.OData.Edm\Schema\CoreModel\EdmCoreModel.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{
public 

class 
EdmCoreModel 
: 

EdmElement  *
,* +
	IEdmModel, 5
,5 6 
IEdmCoreModelElement7 K
{ 
public 
static 
readonly 
EdmCoreModel +
Instance, 4
=5 6
new7 :
EdmCoreModel; G
(G H
)H I
;I J
private 
readonly 
IDictionary $
<$ %
string% +
,+ , 
EdmPrimitiveTypeKind- A
>A B
primitiveTypeKindsC U
=V W
newX [

Dictionary\ f
<f g
stringg m
,m n!
EdmPrimitiveTypeKind	o �
>
� �
(
� �
)
� �
;
� �
private 
readonly 
IDictionary $
<$ % 
EdmPrimitiveTypeKind% 9
,9 :%
EdmCoreModelPrimitiveType; T
>T U 
primitiveTypesByKindV j
=k l
newm p

Dictionaryq {
<{ |!
EdmPrimitiveTypeKind	| �
,
� �'
EdmCoreModelPrimitiveType
� �
>
� �
(
� �
)
� �
;
� �
private 
readonly 
IDictionary $
<$ %
string% +
,+ ,
EdmPathTypeKind- <
>< =

=L M
newN Q

DictionaryR \
<\ ]
string] c
,c d
EdmPathTypeKinde t
>t u
(u v
)v w
;w x
private 
readonly 
IDictionary $
<$ %
EdmPathTypeKind% 4
,4 5 
EdmCoreModelPathType6 J
>J K
pathTypesByKindL [
=\ ]
new^ a

Dictionaryb l
<l m
EdmPathTypeKindm |
,| }!
EdmCoreModelPathType	~ �
>
� �
(
� �
)
� �
;
� �
private 
readonly -
!IEdmDirectValueAnnotationsManager :
annotationsManager; M
=N O
newP S,
 EdmDirectValueAnnotationsManagerT t
(t u
)u v
;v w
private   
readonly   
IList   
<   
IEdmSchemaElement   0
>  0 1
coreSchemaElements  2 D
=  E F
new  G J
List  K O
<  O P
IEdmSchemaElement  P a
>  a b
(  b c
)  c d
;  d e
private"" 
readonly"" 
IDictionary"" $
<""$ %
string""% +
,""+ ,
IEdmSchemaType""- ;
>""; <
coreSchemaTypes""= L
=""M N
new""O R

Dictionary""S ]
<""] ^
string""^ d
,""d e
IEdmSchemaType""f t
>""t u
(""u v
)""v w
;""w x
private$$ 
readonly$$ #
EdmCoreModelComplexType$$ 0
complexType$$1 <
=$$= >#
EdmCoreModelComplexType$$? V
.$$V W
Instance$$W _
;$$_ `
private%% 
readonly%% "
EdmCoreModelEntityType%% /

entityType%%0 :
=%%; <"
EdmCoreModelEntityType%%= S
.%%S T
Instance%%T \
;%%\ ]
private&& 
readonly&& #
EdmCoreModelUntypedType&& 0
untypedType&&1 <
=&&= >#
EdmCoreModelUntypedType&&? V
.&&V W
Instance&&W _
;&&_ `
private'' 
readonly'' %
EdmCoreModelPrimitiveType'' 2

=''A B
new''C F%
EdmCoreModelPrimitiveType''G `
(''` a 
EdmPrimitiveTypeKind''a u
.''u v

)
''� �
;
''� �
private)) 
EdmCoreModel)) 
()) 
))) 
{** 	
IList++ 
<++ %
EdmCoreModelPrimitiveType++ +
>+++ ,
primitiveTypes++- ;
=++< =
new++> A
List++B F
<++F G%
EdmCoreModelPrimitiveType++G `
>++` a
{,, 
new-- %
EdmCoreModelPrimitiveType-- -
(--- . 
EdmPrimitiveTypeKind--. B
.--B C
Double--C I
)--I J
,--J K
new.. %
EdmCoreModelPrimitiveType.. -
(..- . 
EdmPrimitiveTypeKind... B
...B C
Single..C I
)..I J
,..J K
new// %
EdmCoreModelPrimitiveType// -
(//- . 
EdmPrimitiveTypeKind//. B
.//B C
Int64//C H
)//H I
,//I J
new00 %
EdmCoreModelPrimitiveType00 -
(00- . 
EdmPrimitiveTypeKind00. B
.00B C
Int3200C H
)00H I
,00I J
new11 %
EdmCoreModelPrimitiveType11 -
(11- . 
EdmPrimitiveTypeKind11. B
.11B C
Int1611C H
)11H I
,11I J
new22 %
EdmCoreModelPrimitiveType22 -
(22- . 
EdmPrimitiveTypeKind22. B
.22B C
SByte22C H
)22H I
,22I J
new33 %
EdmCoreModelPrimitiveType33 -
(33- . 
EdmPrimitiveTypeKind33. B
.33B C
Byte33C G
)33G H
,33H I
new44 %
EdmCoreModelPrimitiveType44 -
(44- . 
EdmPrimitiveTypeKind44. B
.44B C
Boolean44C J
)44J K
,44K L
new55 %
EdmCoreModelPrimitiveType55 -
(55- . 
EdmPrimitiveTypeKind55. B
.55B C
Guid55C G
)55G H
,55H I
new66 %
EdmCoreModelPrimitiveType66 -
(66- . 
EdmPrimitiveTypeKind66. B
.66B C
Duration66C K
)66K L
,66L M
new77 %
EdmCoreModelPrimitiveType77 -
(77- . 
EdmPrimitiveTypeKind77. B
.77B C
	TimeOfDay77C L
)77L M
,77M N
new88 %
EdmCoreModelPrimitiveType88 -
(88- . 
EdmPrimitiveTypeKind88. B
.88B C
DateTimeOffset88C Q
)88Q R
,88R S
new99 %
EdmCoreModelPrimitiveType99 -
(99- . 
EdmPrimitiveTypeKind99. B
.99B C
Date99C G
)99G H
,99H I
new:: %
EdmCoreModelPrimitiveType:: -
(::- . 
EdmPrimitiveTypeKind::. B
.::B C
Decimal::C J
)::J K
,::K L
new;; %
EdmCoreModelPrimitiveType;; -
(;;- . 
EdmPrimitiveTypeKind;;. B
.;;B C
Binary;;C I
);;I J
,;;J K
new<< %
EdmCoreModelPrimitiveType<< -
(<<- . 
EdmPrimitiveTypeKind<<. B
.<<B C
String<<C I
)<<I J
,<<J K
new== %
EdmCoreModelPrimitiveType== -
(==- . 
EdmPrimitiveTypeKind==. B
.==B C
Stream==C I
)==I J
,==J K
new?? %
EdmCoreModelPrimitiveType?? -
(??- . 
EdmPrimitiveTypeKind??. B
.??B C
	Geography??C L
)??L M
,??M N
new@@ %
EdmCoreModelPrimitiveType@@ -
(@@- . 
EdmPrimitiveTypeKind@@. B
.@@B C
GeographyPoint@@C Q
)@@Q R
,@@R S
newAA %
EdmCoreModelPrimitiveTypeAA -
(AA- . 
EdmPrimitiveTypeKindAA. B
.AAB C
GeographyLineStringAAC V
)AAV W
,AAW X
newBB %
EdmCoreModelPrimitiveTypeBB -
(BB- . 
EdmPrimitiveTypeKindBB. B
.BBB C
GeographyPolygonBBC S
)BBS T
,BBT U
newCC %
EdmCoreModelPrimitiveTypeCC -
(CC- . 
EdmPrimitiveTypeKindCC. B
.CCB C
GeographyCollectionCCC V
)CCV W
,CCW X
newDD %
EdmCoreModelPrimitiveTypeDD -
(DD- . 
EdmPrimitiveTypeKindDD. B
.DDB C!
GeographyMultiPolygonDDC X
)DDX Y
,DDY Z
newEE %
EdmCoreModelPrimitiveTypeEE -
(EE- . 
EdmPrimitiveTypeKindEE. B
.EEB C$
GeographyMultiLineStringEEC [
)EE[ \
,EE\ ]
newFF %
EdmCoreModelPrimitiveTypeFF -
(FF- . 
EdmPrimitiveTypeKindFF. B
.FFB C
GeographyMultiPointFFC V
)FFV W
,FFW X
newGG %
EdmCoreModelPrimitiveTypeGG -
(GG- . 
EdmPrimitiveTypeKindGG. B
.GGB C
GeometryGGC K
)GGK L
,GGL M
newHH %
EdmCoreModelPrimitiveTypeHH -
(HH- . 
EdmPrimitiveTypeKindHH. B
.HHB C

)HHP Q
,HHQ R
newII %
EdmCoreModelPrimitiveTypeII -
(II- . 
EdmPrimitiveTypeKindII. B
.IIB C
GeometryLineStringIIC U
)IIU V
,IIV W
newJJ %
EdmCoreModelPrimitiveTypeJJ -
(JJ- . 
EdmPrimitiveTypeKindJJ. B
.JJB C
GeometryPolygonJJC R
)JJR S
,JJS T
newKK %
EdmCoreModelPrimitiveTypeKK -
(KK- . 
EdmPrimitiveTypeKindKK. B
.KKB C
GeometryCollectionKKC U
)KKU V
,KKV W
newLL %
EdmCoreModelPrimitiveTypeLL -
(LL- . 
EdmPrimitiveTypeKindLL. B
.LLB C 
GeometryMultiPolygonLLC W
)LLW X
,LLX Y
newMM %
EdmCoreModelPrimitiveTypeMM -
(MM- . 
EdmPrimitiveTypeKindMM. B
.MMB C#
GeometryMultiLineStringMMC Z
)MMZ [
,MM[ \
newNN %
EdmCoreModelPrimitiveTypeNN -
(NN- . 
EdmPrimitiveTypeKindNN. B
.NNB C
GeometryMultiPointNNC U
)NNU V
,NNV W

,OO 
}PP 
;PP
foreachRR 
(RR 
varRR 
	primitiveRR "
inRR# %
primitiveTypesRR& 4
)RR4 5
{SS 
primitiveTypeKindsTT "
[TT" #
	primitiveTT# ,
.TT, -
NameTT- 1
]TT1 2
=TT3 4
	primitiveTT5 >
.TT> ?

;TTL M
primitiveTypeKindsUU "
[UU" #
	primitiveUU# ,
.UU, -
	NamespaceUU- 6
+UU7 8
$charUU9 <
+UU= >
	primitiveUU? H
.UUH I
NameUUI M
]UUM N
=UUO P
	primitiveUUQ Z
.UUZ [

;UUh i 
primitiveTypesByKindVV $
[VV$ %
	primitiveVV% .
.VV. /

]VV< =
=VV> ?
	primitiveVV@ I
;VVI J
coreSchemaTypesXX 
[XX  
	primitiveXX  )
.XX) *
	NamespaceXX* 3
+XX4 5
$charXX6 9
+XX: ;
	primitiveXX< E
.XXE F
NameXXF J
]XXJ K
=XXL M
	primitiveXXN W
;XXW X
coreSchemaTypesYY 
[YY  
	primitiveYY  )
.YY) *
NameYY* .
]YY. /
=YY0 1
	primitiveYY2 ;
;YY; <
coreSchemaElements[[ "
.[[" #
Add[[# &
([[& '
	primitive[[' 0
)[[0 1
;[[1 2
}\\ 
coreSchemaElements^^ 
.^^ 
Add^^ "
(^^" #
complexType^^# .
)^^. /
;^^/ 0
coreSchemaTypes__ 
[__ 
complexType__ '
.__' (
	Namespace__( 1
+__2 3
$char__4 7
+__8 9
complexType__: E
.__E F
Name__F J
]__J K
=__L M
complexType__N Y
;__Y Z
coreSchemaTypes`` 
[`` 
complexType`` '
.``' (
Name``( ,
]``, -
=``. /
complexType``0 ;
;``; <
coreSchemaElementsbb 
.bb 
Addbb "
(bb" #

entityTypebb# -
)bb- .
;bb. /
coreSchemaTypescc 
[cc 

entityTypecc &
.cc& '
	Namespacecc' 0
+cc1 2
$charcc3 6
+cc7 8

entityTypecc9 C
.ccC D
NameccD H
]ccH I
=ccJ K

entityTypeccL V
;ccV W
coreSchemaTypesdd 
[dd 

entityTypedd &
.dd& '
Namedd' +
]dd+ ,
=dd- .

entityTypedd/ 9
;dd9 :
coreSchemaElementsff 
.ff 
Addff "
(ff" #
untypedTypeff# .
)ff. /
;ff/ 0
coreSchemaTypesgg 
[gg 
untypedTypegg '
.gg' (
	Namespacegg( 1
+gg2 3
$chargg4 7
+gg8 9
untypedTypegg: E
.ggE F
NameggF J
]ggJ K
=ggL M
untypedTypeggN Y
;ggY Z
coreSchemaTypeshh 
[hh 
untypedTypehh '
.hh' (
Namehh( ,
]hh, -
=hh. /
untypedTypehh0 ;
;hh; < 
EdmCoreModelPathTypejj  
[jj  !
]jj! "
	pathTypesjj# ,
=jj- .
{kk 
newll  
EdmCoreModelPathTypell (
(ll( )
EdmPathTypeKindll) 8
.ll8 9
AnnotationPathll9 G
)llG H
,llH I
newmm  
EdmCoreModelPathTypemm (
(mm( )
EdmPathTypeKindmm) 8
.mm8 9
PropertyPathmm9 E
)mmE F
,mmF G
newnn  
EdmCoreModelPathTypenn (
(nn( )
EdmPathTypeKindnn) 8
.nn8 9"
NavigationPropertyPathnn9 O
)nnO P
,nnP Q
}oo 
;oo
foreachqq 
(qq 
varqq 
pathTypeqq !
inqq" $
	pathTypesqq% .
)qq. /
{rr 

[ss 
pathTypess &
.ss& '
Namess' +
]ss+ ,
=ss- .
pathTypess/ 7
.ss7 8
PathKindss8 @
;ss@ A

[tt 
pathTypett &
.tt& '
	Namespacett' 0
+tt1 2
$chartt3 6
+tt7 8
pathTypett9 A
.ttA B
NamettB F
]ttF G
=ttH I
pathTypettJ R
.ttR S
PathKindttS [
;tt[ \
pathTypesByKinduu 
[uu  
pathTypeuu  (
.uu( )
PathKinduu) 1
]uu1 2
=uu3 4
pathTypeuu5 =
;uu= >
coreSchemaTypesww 
[ww  
pathTypeww  (
.ww( )
	Namespaceww) 2
+ww3 4
$charww5 8
+ww9 :
pathTypeww; C
.wwC D
NamewwD H
]wwH I
=wwJ K
pathTypewwL T
;wwT U
coreSchemaTypesxx 
[xx  
pathTypexx  (
.xx( )
Namexx) -
]xx- .
=xx/ 0
pathTypexx1 9
;xx9 :
coreSchemaElementszz "
.zz" #
Addzz# &
(zz& '
pathTypezz' /
)zz/ 0
;zz0 1
}{{ 
}|| 	
public
�� 
static
�� 
string
�� 
	Namespace
�� &
{
�� 	
get
�� 
{
�� 
return
�� 
EdmConstants
�� %
.
��% &
EdmNamespace
��& 2
;
��2 3
}
��4 5
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 
IEdmSchemaElement
�� ,
>
��, -
SchemaElements
��. <
{
�� 	
get
�� 
{
�� 
return
��  
coreSchemaElements
�� +
;
��+ ,
}
��- .
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 
string
�� !
>
��! " 
DeclaredNamespaces
��# 5
{
�� 	
get
�� 
{
�� 
return
�� 

Enumerable
�� #
.
��# $
Empty
��$ )
<
��) *
string
��* 0
>
��0 1
(
��1 2
)
��2 3
;
��3 4
}
��5 6
}
�� 	
public
�� 
IEnumerable
�� 
<
�� &
IEdmVocabularyAnnotation
�� 3
>
��3 4#
VocabularyAnnotations
��5 J
{
�� 	
get
�� 
{
�� 
return
�� 

Enumerable
�� #
.
��# $
Empty
��$ )
<
��) *&
IEdmVocabularyAnnotation
��* B
>
��B C
(
��C D
)
��D E
;
��E F
}
��G H
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 
	IEdmModel
�� $
>
��$ %
ReferencedModels
��& 6
{
�� 	
get
�� 
{
�� 
return
�� 

Enumerable
�� #
.
��# $
Empty
��$ )
<
��) *
	IEdmModel
��* 3
>
��3 4
(
��4 5
)
��5 6
;
��6 7
}
��8 9
}
�� 	
public
�� /
!IEdmDirectValueAnnotationsManager
�� 0+
DirectValueAnnotationsManager
��1 N
{
�� 	
get
�� 
{
�� 
return
�� 
this
�� 
.
��  
annotationsManager
�� 0
;
��0 1
}
��2 3
}
�� 	
public
�� !
IEdmEntityContainer
�� "
EntityContainer
��# 2
{
�� 	
get
�� 
{
�� 
return
�� 
null
�� 
;
�� 
}
��  
}
�� 	
public
�� 
static
�� )
IEdmCollectionTypeReference
�� 1

��2 ?
(
��? @
IEdmTypeReference
��@ Q
elementType
��R ]
)
��] ^
{
�� 	
return
�� 
new
�� (
EdmCollectionTypeReference
�� 1
(
��1 2
new
��2 5
EdmCollectionType
��6 G
(
��G H
elementType
��H S
)
��S T
)
��T U
;
��U V
}
�� 	
public
�� 
IEdmSchemaType
�� 
FindDeclaredType
�� .
(
��. /
string
��/ 5

��6 C
)
��C D
{
�� 	
IEdmSchemaType
�� 
element
�� "
;
��" #
if
�� 
(
�� 
coreSchemaTypes
�� 
.
��  
TryGetValue
��  +
(
��+ ,

��, 9
,
��9 :
out
��; >
element
��? F
)
��F G
)
��G H
{
�� 
return
�� 
element
�� 
;
�� 
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 

�� (
>
��( ))
FindDeclaredBoundOperations
��* E
(
��E F
IEdmType
��F N
bindingType
��O Z
)
��Z [
{
�� 	
return
�� 

Enumerable
�� 
.
�� 
Empty
�� #
<
��# $

��$ 1
>
��1 2
(
��2 3
)
��3 4
;
��4 5
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 

�� (
>
��( ))
FindDeclaredBoundOperations
��* E
(
��E F
string
��F L

��M Z
,
��Z [
IEdmType
��\ d
bindingType
��e p
)
��p q
{
�� 	
return
�� 

Enumerable
�� 
.
�� 
Empty
�� #
<
��# $

��$ 1
>
��1 2
(
��2 3
)
��3 4
;
��4 5
}
�� 	
public
�� 
IEdmTerm
�� 
FindDeclaredTerm
�� (
(
��( )
string
��) /

��0 =
)
��= >
{
�� 	
return
�� 
null
�� 
;
�� 
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 

�� (
>
��( )$
FindDeclaredOperations
��* @
(
��@ A
string
��A G

��H U
)
��U V
{
�� 	
return
�� 

Enumerable
�� 
.
�� 
Empty
�� #
<
��# $

��$ 1
>
��1 2
(
��2 3
)
��3 4
;
��4 5
}
�� 	
public
�� 
IEnumerable
�� 
<
�� !
IEdmOperationImport
�� .
>
��. /?
1FindOperationImportsByNameNonBindingParameterType
��0 a
(
��a b
string
��b h!
operationImportName
��i |
,
��| }
IEnumerable��~ �
<��� �
string��� �
>��� �
parameterNames��� �
)��� �
{
�� 	
return
�� 

Enumerable
�� 
.
�� 
Empty
�� #
<
��# $!
IEdmOperationImport
��$ 7
>
��7 8
(
��8 9
)
��9 :
;
��: ;
}
�� 	
public
�� 
IEdmPrimitiveType
��  
GetPrimitiveType
��! 1
(
��1 2"
EdmPrimitiveTypeKind
��2 F
kind
��G K
)
��K L
{
�� 	
return
�� 
this
�� 
.
�� '
GetCoreModelPrimitiveType
�� 1
(
��1 2
kind
��2 6
)
��6 7
;
��7 8
}
�� 	
public
�� 
IEdmPrimitiveType
��  
GetPrimitiveType
��! 1
(
��1 2
)
��2 3
{
�� 	
return
�� 
this
�� 
.
�� 

�� %
;
��% &
}
�� 	
public
�� 
IEdmComplexType
�� 
GetComplexType
�� -
(
��- .
)
��. /
{
�� 	
return
�� 
this
�� 
.
�� 
complexType
�� #
;
��# $
}
�� 	
public
�� 
IEdmEntityType
�� 

�� +
(
��+ ,
)
��, -
{
�� 	
return
�� 
this
�� 
.
�� 

entityType
�� "
;
��" #
}
�� 	
public
�� 
IEdmUntypedType
�� 
GetUntypedType
�� -
(
��- .
)
��. /
{
�� 	
return
�� 
this
�� 
.
�� 
untypedType
�� #
;
��# $
}
�� 	
public
�� 
IEdmPathType
�� 
GetPathType
�� '
(
��' (
EdmPathTypeKind
��( 7
kind
��8 <
)
��< =
{
�� 	"
EdmCoreModelPathType
��  

definition
��! +
;
��+ ,
return
�� 
pathTypesByKind
�� "
.
��" #
TryGetValue
��# .
(
��. /
kind
��/ 3
,
��3 4
out
��5 8

definition
��9 C
)
��C D
?
��E F

definition
��G Q
:
��R S
null
��T X
;
��X Y
}
�� 	
public
�� "
EdmPrimitiveTypeKind
�� #"
GetPrimitiveTypeKind
��$ 8
(
��8 9
string
��9 ?
typeName
��@ H
)
��H I
{
�� 	"
EdmPrimitiveTypeKind
��  
kind
��! %
;
��% &
return
��  
primitiveTypeKinds
�� %
.
��% &
TryGetValue
��& 1
(
��1 2
typeName
��2 :
,
��: ;
out
��< ?
kind
��@ D
)
��D E
?
��F G
kind
��H L
:
��M N"
EdmPrimitiveTypeKind
��O c
.
��c d
None
��d h
;
��h i
}
�� 	
public
�� (
IEdmPrimitiveTypeReference
�� )
GetPrimitive
��* 6
(
��6 7"
EdmPrimitiveTypeKind
��7 K
kind
��L P
,
��P Q
bool
��R V

isNullable
��W a
)
��a b
{
�� 	
IEdmPrimitiveType
�� !
primitiveDefinition
�� 1
=
��2 3
this
��4 8
.
��8 9'
GetCoreModelPrimitiveType
��9 R
(
��R S
kind
��S W
)
��W X
;
��X Y
if
�� 
(
�� !
primitiveDefinition
�� #
!=
��$ &
null
��' +
)
��+ ,
{
�� 
return
�� !
primitiveDefinition
�� *
.
��* +'
GetPrimitiveTypeReference
��+ D
(
��D E

isNullable
��E O
)
��O P
;
��P Q
}
�� 
else
�� 
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
Edm
��4 7
.
��7 8
Strings
��8 ?
.
��? @)
EdmPrimitive_UnexpectedKind
��@ [
)
��[ \
;
��\ ]
}
�� 
}
�� 	
public
�� 
EdmPathTypeKind
�� 
GetPathTypeKind
�� .
(
��. /
string
��/ 5
typeName
��6 >
)
��> ?
{
�� 	
EdmPathTypeKind
�� 
kind
��  
;
��  !
return
�� 

��  
.
��  !
TryGetValue
��! ,
(
��, -
typeName
��- 5
,
��5 6
out
��7 :
kind
��; ?
)
��? @
?
��A B
kind
��C G
:
��H I
EdmPathTypeKind
��J Y
.
��Y Z
None
��Z ^
;
��^ _
}
�� 	
public
�� #
IEdmPathTypeReference
�� $
GetPathType
��% 0
(
��0 1
EdmPathTypeKind
��1 @
kind
��A E
,
��E F
bool
��G K

isNullable
��L V
)
��V W
{
�� 	
IEdmPathType
�� 
pathDefinition
�� '
=
��( )
this
��* .
.
��. /
GetPathType
��/ :
(
��: ;
kind
��; ?
)
��? @
;
��@ A
if
�� 
(
�� 
pathDefinition
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
return
�� 
new
�� "
EdmPathTypeReference
�� /
(
��/ 0
pathDefinition
��0 >
,
��> ?

isNullable
��@ J
)
��J K
;
��K L
}
�� 
else
�� 
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
Edm
��4 7
.
��7 8
Strings
��8 ?
.
��? @$
EdmPath_UnexpectedKind
��@ V
)
��V W
;
��W X
}
�� 
}
�� 	
public
�� #
IEdmPathTypeReference
�� $
GetAnnotationPath
��% 6
(
��6 7
bool
��7 ;

isNullable
��< F
)
��F G
{
�� 	
return
�� 
new
�� "
EdmPathTypeReference
�� +
(
��+ ,
this
��, 0
.
��0 1
GetPathType
��1 <
(
��< =
EdmPathTypeKind
��= L
.
��L M
AnnotationPath
��M [
)
��[ \
,
��\ ]

isNullable
��^ h
)
��h i
;
��i j
}
�� 	
public
�� #
IEdmPathTypeReference
�� $
GetPropertyPath
��% 4
(
��4 5
bool
��5 9

isNullable
��: D
)
��D E
{
�� 	
return
�� 
new
�� "
EdmPathTypeReference
�� +
(
��+ ,
this
��, 0
.
��0 1
GetPathType
��1 <
(
��< =
EdmPathTypeKind
��= L
.
��L M
PropertyPath
��M Y
)
��Y Z
,
��Z [

isNullable
��\ f
)
��f g
;
��g h
}
�� 	
public
�� #
IEdmPathTypeReference
�� $'
GetNavigationPropertyPath
��% >
(
��> ?
bool
��? C

isNullable
��D N
)
��N O
{
�� 	
return
�� 
new
�� "
EdmPathTypeReference
�� +
(
��+ ,
this
��, 0
.
��0 1
GetPathType
��1 <
(
��< =
EdmPathTypeKind
��= L
.
��L M$
NavigationPropertyPath
��M c
)
��c d
,
��d e

isNullable
��f p
)
��p q
;
��q r
}
�� 	
public
�� %
IEdmEntityTypeReference
�� &

��' 4
(
��4 5
bool
��5 9

isNullable
��: D
)
��D E
{
�� 	
return
�� 
new
�� $
EdmEntityTypeReference
�� -
(
��- .
this
��. 2
.
��2 3

entityType
��3 =
,
��= >

isNullable
��? I
)
��I J
;
��J K
}
�� 	
public
�� &
IEdmComplexTypeReference
�� '
GetComplexType
��( 6
(
��6 7
bool
��7 ;

isNullable
��< F
)
��F G
{
�� 	
return
�� 
new
�� %
EdmComplexTypeReference
�� .
(
��. /
this
��/ 3
.
��3 4
complexType
��4 ?
,
��? @

isNullable
��A K
)
��K L
;
��L M
}
�� 	
public
�� (
IEdmPrimitiveTypeReference
�� )
GetPrimitiveType
��* :
(
��: ;
bool
��; ?

isNullable
��@ J
)
��J K
{
�� 	
return
�� 
new
�� '
EdmPrimitiveTypeReference
�� 0
(
��0 1
this
��1 5
.
��5 6

��6 C
,
��C D

isNullable
��E O
)
��O P
;
��P Q
}
�� 	
public
�� (
IEdmPrimitiveTypeReference
�� )
GetInt16
��* 2
(
��2 3
bool
��3 7

isNullable
��8 B
)
��B C
{
�� 	
return
�� 
new
�� '
EdmPrimitiveTypeReference
�� 0
(
��0 1
this
��1 5
.
��5 6'
GetCoreModelPrimitiveType
��6 O
(
��O P"
EdmPrimitiveTypeKind
��P d
.
��d e
Int16
��e j
)
��j k
,
��k l

isNullable
��m w
)
��w x
;
��x y
}
�� 	
public
�� (
IEdmPrimitiveTypeReference
�� )
GetInt32
��* 2
(
��2 3
bool
��3 7

isNullable
��8 B
)
��B C
{
�� 	
return
�� 
new
�� '
EdmPrimitiveTypeReference
�� 0
(
��0 1
this
��1 5
.
��5 6'
GetCoreModelPrimitiveType
��6 O
(
��O P"
EdmPrimitiveTypeKind
��P d
.
��d e
Int32
��e j
)
��j k
,
��k l

isNullable
��m w
)
��w x
;
��x y
}
�� 	
public
�� (
IEdmPrimitiveTypeReference
�� )
GetInt64
��* 2
(
��2 3
bool
��3 7

isNullable
��8 B
)
��B C
{
�� 	
return
�� 
new
�� '
EdmPrimitiveTypeReference
�� 0
(
��0 1
this
��1 5
.
��5 6'
GetCoreModelPrimitiveType
��6 O
(
��O P"
EdmPrimitiveTypeKind
��P d
.
��d e
Int64
��e j
)
��j k
,
��k l

isNullable
��m w
)
��w x
;
��x y
}
�� 	
public
�� (
IEdmPrimitiveTypeReference
�� )

GetBoolean
��* 4
(
��4 5
bool
��5 9

isNullable
��: D
)
��D E
{
�� 	
return
�� 
new
�� '
EdmPrimitiveTypeReference
�� 0
(
��0 1
this
��1 5
.
��5 6'
GetCoreModelPrimitiveType
��6 O
(
��O P"
EdmPrimitiveTypeKind
��P d
.
��d e
Boolean
��e l
)
��l m
,
��m n

isNullable
��o y
)
��y z
;
��z {
}
�� 	
public
�� (
IEdmPrimitiveTypeReference
�� )
GetByte
��* 1
(
��1 2
bool
��2 6

isNullable
��7 A
)
��A B
{
�� 	
return
�� 
new
�� '
EdmPrimitiveTypeReference
�� 0
(
��0 1
this
��1 5
.
��5 6'
GetCoreModelPrimitiveType
��6 O
(
��O P"
EdmPrimitiveTypeKind
��P d
.
��d e
Byte
��e i
)
��i j
,
��j k

isNullable
��l v
)
��v w
;
��w x
}
�� 	
public
�� (
IEdmPrimitiveTypeReference
�� )
GetSByte
��* 2
(
��2 3
bool
��3 7

isNullable
��8 B
)
��B C
{
�� 	
return
�� 
new
�� '
EdmPrimitiveTypeReference
�� 0
(
��0 1
this
��1 5
.
��5 6'
GetCoreModelPrimitiveType
��6 O
(
��O P"
EdmPrimitiveTypeKind
��P d
.
��d e
SByte
��e j
)
��j k
,
��k l

isNullable
��m w
)
��w x
;
��x y
}
�� 	
public
�� (
IEdmPrimitiveTypeReference
�� )
GetGuid
��* 1
(
��1 2
bool
��2 6

isNullable
��7 A
)
��A B
{
�� 	
return
�� 
new
�� '
EdmPrimitiveTypeReference
�� 0
(
��0 1
this
��1 5
.
��5 6'
GetCoreModelPrimitiveType
��6 O
(
��O P"
EdmPrimitiveTypeKind
��P d
.
��d e
Guid
��e i
)
��i j
,
��j k

isNullable
��l v
)
��v w
;
��w x
}
�� 	
public
�� (
IEdmPrimitiveTypeReference
�� )
GetDate
��* 1
(
��1 2
bool
��2 6

isNullable
��7 A
)
��A B
{
�� 	
return
�� 
new
�� '
EdmPrimitiveTypeReference
�� 0
(
��0 1
this
��1 5
.
��5 6'
GetCoreModelPrimitiveType
��6 O
(
��O P"
EdmPrimitiveTypeKind
��P d
.
��d e
Date
��e i
)
��i j
,
��j k

isNullable
��l v
)
��v w
;
��w x
}
�� 	
public
�� '
IEdmTemporalTypeReference
�� (
GetDateTimeOffset
��) :
(
��: ;
bool
��; ?

isNullable
��@ J
)
��J K
{
�� 	
return
�� 
new
�� &
EdmTemporalTypeReference
�� /
(
��/ 0
this
��0 4
.
��4 5'
GetCoreModelPrimitiveType
��5 N
(
��N O"
EdmPrimitiveTypeKind
��O c
.
��c d
DateTimeOffset
��d r
)
��r s
,
��s t

isNullable
��u 
)�� �
;��� �
}
�� 	
public
�� '
IEdmTemporalTypeReference
�� (
GetDuration
��) 4
(
��4 5
bool
��5 9

isNullable
��: D
)
��D E
{
�� 	
return
�� 
new
�� &
EdmTemporalTypeReference
�� /
(
��/ 0
this
��0 4
.
��4 5'
GetCoreModelPrimitiveType
��5 N
(
��N O"
EdmPrimitiveTypeKind
��O c
.
��c d
Duration
��d l
)
��l m
,
��m n

isNullable
��o y
)
��y z
;
��z {
}
�� 	
public
�� '
IEdmTemporalTypeReference
�� (
GetTimeOfDay
��) 5
(
��5 6
bool
��6 :

isNullable
��; E
)
��E F
{
�� 	
return
�� 
new
�� &
EdmTemporalTypeReference
�� /
(
��/ 0
this
��0 4
.
��4 5'
GetCoreModelPrimitiveType
��5 N
(
��N O"
EdmPrimitiveTypeKind
��O c
.
��c d
	TimeOfDay
��d m
)
��m n
,
��n o

isNullable
��p z
)
��z {
;
��{ |
}
�� 	
public
�� &
IEdmDecimalTypeReference
�� '

GetDecimal
��( 2
(
��2 3
int
��3 6
?
��6 7
	precision
��8 A
,
��A B
int
��C F
?
��F G
scale
��H M
,
��M N
bool
��O S

isNullable
��T ^
)
��^ _
{
�� 	
if
�� 
(
�� 
	precision
�� 
.
�� 
HasValue
�� "
||
��# %
scale
��& +
.
��+ ,
HasValue
��, 4
)
��4 5
{
�� 
return
�� 
new
�� %
EdmDecimalTypeReference
�� 2
(
��2 3
this
��3 7
.
��7 8'
GetCoreModelPrimitiveType
��8 Q
(
��Q R"
EdmPrimitiveTypeKind
��R f
.
��f g
Decimal
��g n
)
��n o
,
��o p

isNullable
��q {
,
��{ |
	precision��} �
,��� �
scale��� �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
return
�� 
new
�� %
EdmDecimalTypeReference
�� 2
(
��2 3
this
��3 7
.
��7 8'
GetCoreModelPrimitiveType
��8 Q
(
��Q R"
EdmPrimitiveTypeKind
��R f
.
��f g
Decimal
��g n
)
��n o
,
��o p

isNullable
��q {
)
��{ |
;
��| }
}
�� 
}
�� 	
public
�� &
IEdmDecimalTypeReference
�� '

GetDecimal
��( 2
(
��2 3
bool
��3 7

isNullable
��8 B
)
��B C
{
�� 	
return
�� 
new
�� %
EdmDecimalTypeReference
�� .
(
��. /
this
��/ 3
.
��3 4'
GetCoreModelPrimitiveType
��4 M
(
��M N"
EdmPrimitiveTypeKind
��N b
.
��b c
Decimal
��c j
)
��j k
,
��k l

isNullable
��m w
)
��w x
;
��x y
}
�� 	
public
�� (
IEdmPrimitiveTypeReference
�� )
	GetSingle
��* 3
(
��3 4
bool
��4 8

isNullable
��9 C
)
��C D
{
�� 	
return
�� 
new
�� '
EdmPrimitiveTypeReference
�� 0
(
��0 1
this
��1 5
.
��5 6'
GetCoreModelPrimitiveType
��6 O
(
��O P"
EdmPrimitiveTypeKind
��P d
.
��d e
Single
��e k
)
��k l
,
��l m

isNullable
��n x
)
��x y
;
��y z
}
�� 	
public
�� (
IEdmPrimitiveTypeReference
�� )
	GetDouble
��* 3
(
��3 4
bool
��4 8

isNullable
��9 C
)
��C D
{
�� 	
return
�� 
new
�� '
EdmPrimitiveTypeReference
�� 0
(
��0 1
this
��1 5
.
��5 6'
GetCoreModelPrimitiveType
��6 O
(
��O P"
EdmPrimitiveTypeKind
��P d
.
��d e
Double
��e k
)
��k l
,
��l m

isNullable
��n x
)
��x y
;
��y z
}
�� 	
public
�� (
IEdmPrimitiveTypeReference
�� )
	GetStream
��* 3
(
��3 4
bool
��4 8

isNullable
��9 C
)
��C D
{
�� 	
return
�� 
new
�� '
EdmPrimitiveTypeReference
�� 0
(
��0 1
this
��1 5
.
��5 6'
GetCoreModelPrimitiveType
��6 O
(
��O P"
EdmPrimitiveTypeKind
��P d
.
��d e
Stream
��e k
)
��k l
,
��l m

isNullable
��n x
)
��x y
;
��y z
}
�� 	
public
�� '
IEdmTemporalTypeReference
�� (
GetTemporal
��) 4
(
��4 5"
EdmPrimitiveTypeKind
��5 I
kind
��J N
,
��N O
int
��P S
?
��S T
	precision
��U ^
,
��^ _
bool
��` d

isNullable
��e o
)
��o p
{
�� 	
switch
�� 
(
�� 
kind
�� 
)
�� 
{
�� 
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
DateTimeOffset
��* 8
:
��8 9
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
Duration
��* 2
:
��2 3
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
	TimeOfDay
��* 3
:
��3 4
return
�� 
new
�� &
EdmTemporalTypeReference
�� 7
(
��7 8
this
��8 <
.
��< ='
GetCoreModelPrimitiveType
��= V
(
��V W
kind
��W [
)
��[ \
,
��\ ]

isNullable
��^ h
,
��h i
	precision
��j s
)
��s t
;
��t u
default
�� 
:
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 7
(
��7 8
Edm
��8 ;
.
��; <
Strings
��< C
.
��C D)
EdmPrimitive_UnexpectedKind
��D _
)
��_ `
;
��` a
}
�� 
}
�� 	
public
�� '
IEdmTemporalTypeReference
�� (
GetTemporal
��) 4
(
��4 5"
EdmPrimitiveTypeKind
��5 I
kind
��J N
,
��N O
bool
��P T

isNullable
��U _
)
��_ `
{
�� 	
switch
�� 
(
�� 
kind
�� 
)
�� 
{
�� 
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
DateTimeOffset
��* 8
:
��8 9
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
Duration
��* 2
:
��2 3
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
	TimeOfDay
��* 3
:
��3 4
return
�� 
new
�� &
EdmTemporalTypeReference
�� 7
(
��7 8
this
��8 <
.
��< ='
GetCoreModelPrimitiveType
��= V
(
��V W
kind
��W [
)
��[ \
,
��\ ]

isNullable
��^ h
)
��h i
;
��i j
default
�� 
:
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 7
(
��7 8
Edm
��8 ;
.
��; <
Strings
��< C
.
��C D)
EdmPrimitive_UnexpectedKind
��D _
)
��_ `
;
��` a
}
�� 
}
�� 	
public
�� %
IEdmBinaryTypeReference
�� &
	GetBinary
��' 0
(
��0 1
bool
��1 5
isUnbounded
��6 A
,
��A B
int
��C F
?
��F G
	maxLength
��H Q
,
��Q R
bool
��S W

isNullable
��X b
)
��b c
{
�� 	
return
�� 
new
�� $
EdmBinaryTypeReference
�� -
(
��- .
this
��. 2
.
��2 3'
GetCoreModelPrimitiveType
��3 L
(
��L M"
EdmPrimitiveTypeKind
��M a
.
��a b
Binary
��b h
)
��h i
,
��i j

isNullable
��k u
,
��u v
isUnbounded��w �
,��� �
	maxLength��� �
)��� �
;��� �
}
�� 	
public
�� %
IEdmBinaryTypeReference
�� &
	GetBinary
��' 0
(
��0 1
bool
��1 5

isNullable
��6 @
)
��@ A
{
�� 	
return
�� 
new
�� $
EdmBinaryTypeReference
�� -
(
��- .
this
��. 2
.
��2 3'
GetCoreModelPrimitiveType
��3 L
(
��L M"
EdmPrimitiveTypeKind
��M a
.
��a b
Binary
��b h
)
��h i
,
��i j

isNullable
��k u
)
��u v
;
��v w
}
�� 	
public
�� &
IEdmSpatialTypeReference
�� '

GetSpatial
��( 2
(
��2 3"
EdmPrimitiveTypeKind
��3 G
kind
��H L
,
��L M
int
��N Q
?
��Q R(
spatialReferenceIdentifier
��S m
,
��m n
bool
��o s

isNullable
��t ~
)
��~ 
{
�� 	
switch
�� 
(
�� 
kind
�� 
)
�� 
{
�� 
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
	Geography
��* 3
:
��3 4
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
GeographyPoint
��* 8
:
��8 9
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *!
GeographyLineString
��* =
:
��= >
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
GeographyPolygon
��* :
:
��: ;
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *!
GeographyCollection
��* =
:
��= >
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *#
GeographyMultiPolygon
��* ?
:
��? @
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *&
GeographyMultiLineString
��* B
:
��B C
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *!
GeographyMultiPoint
��* =
:
��= >
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
Geometry
��* 2
:
��2 3
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *

��* 7
:
��7 8
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) * 
GeometryLineString
��* <
:
��< =
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
GeometryPolygon
��* 9
:
��9 :
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) * 
GeometryCollection
��* <
:
��< =
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *"
GeometryMultiPolygon
��* >
:
��> ?
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *%
GeometryMultiLineString
��* A
:
��A B
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) * 
GeometryMultiPoint
��* <
:
��< =
return
�� 
new
�� %
EdmSpatialTypeReference
�� 6
(
��6 7
this
��7 ;
.
��; <'
GetCoreModelPrimitiveType
��< U
(
��U V
kind
��V Z
)
��Z [
,
��[ \

isNullable
��] g
,
��g h)
spatialReferenceIdentifier��i �
)��� �
;��� �
default
�� 
:
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 7
(
��7 8
Edm
��8 ;
.
��; <
Strings
��< C
.
��C D)
EdmPrimitive_UnexpectedKind
��D _
)
��_ `
;
��` a
}
�� 
}
�� 	
public
�� &
IEdmSpatialTypeReference
�� '

GetSpatial
��( 2
(
��2 3"
EdmPrimitiveTypeKind
��3 G
kind
��H L
,
��L M
bool
��N R

isNullable
��S ]
)
��] ^
{
�� 	
switch
�� 
(
�� 
kind
�� 
)
�� 
{
�� 
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
	Geography
��* 3
:
��3 4
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
GeographyPoint
��* 8
:
��8 9
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *!
GeographyLineString
��* =
:
��= >
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
GeographyPolygon
��* :
:
��: ;
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *!
GeographyCollection
��* =
:
��= >
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *#
GeographyMultiPolygon
��* ?
:
��? @
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *&
GeographyMultiLineString
��* B
:
��B C
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *!
GeographyMultiPoint
��* =
:
��= >
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
Geometry
��* 2
:
��2 3
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *

��* 7
:
��7 8
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) * 
GeometryLineString
��* <
:
��< =
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *
GeometryPolygon
��* 9
:
��9 :
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) * 
GeometryCollection
��* <
:
��< =
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *"
GeometryMultiPolygon
��* >
:
��> ?
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) *%
GeometryMultiLineString
��* A
:
��A B
case
�� "
EdmPrimitiveTypeKind
�� )
.
��) * 
GeometryMultiPoint
��* <
:
��< =
return
�� 
new
�� %
EdmSpatialTypeReference
�� 6
(
��6 7
this
��7 ;
.
��; <'
GetCoreModelPrimitiveType
��< U
(
��U V
kind
��V Z
)
��Z [
,
��[ \

isNullable
��] g
)
��g h
;
��h i
default
�� 
:
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 7
(
��7 8
Edm
��8 ;
.
��; <
Strings
��< C
.
��C D)
EdmPrimitive_UnexpectedKind
��D _
)
��_ `
;
��` a
}
�� 
}
�� 	
public
�� %
IEdmStringTypeReference
�� &
	GetString
��' 0
(
��0 1
bool
��1 5
isUnbounded
��6 A
,
��A B
int
��C F
?
��F G
	maxLength
��H Q
,
��Q R
bool
��S W
?
��W X
	isUnicode
��Y b
,
��b c
bool
��d h

isNullable
��i s
)
��s t
{
�� 	
return
�� 
new
�� $
EdmStringTypeReference
�� -
(
��- .
this
��. 2
.
��2 3'
GetCoreModelPrimitiveType
��3 L
(
��L M"
EdmPrimitiveTypeKind
��M a
.
��a b
String
��b h
)
��h i
,
��i j

isNullable
��k u
,
��u v
isUnbounded��w �
,��� �
	maxLength��� �
,��� �
	isUnicode��� �
)��� �
;��� �
}
�� 	
public
�� %
IEdmStringTypeReference
�� &
	GetString
��' 0
(
��0 1
bool
��1 5

isNullable
��6 @
)
��@ A
{
�� 	
return
�� 
new
�� $
EdmStringTypeReference
�� -
(
��- .
this
��. 2
.
��2 3'
GetCoreModelPrimitiveType
��3 L
(
��L M"
EdmPrimitiveTypeKind
��M a
.
��a b
String
��b h
)
��h i
,
��i j

isNullable
��k u
)
��u v
;
��v w
}
�� 	
public
�� &
IEdmUntypedTypeReference
�� '

GetUntyped
��( 2
(
��2 3
)
��3 4
{
�� 	
return
�� 
new
�� %
EdmUntypedTypeReference
�� .
(
��. /
this
��/ 3
.
��3 4
GetUntypedType
��4 B
(
��B C
)
��C D
)
��D E
;
��E F
}
�� 	
public
�� 
IEnumerable
�� 
<
�� &
IEdmVocabularyAnnotation
�� 3
>
��3 4/
!FindDeclaredVocabularyAnnotations
��5 V
(
��V W'
IEdmVocabularyAnnotatable
��W p
element
��q x
)
��x y
{
�� 	
return
�� 

Enumerable
�� 
.
�� 
Empty
�� #
<
��# $&
IEdmVocabularyAnnotation
��$ <
>
��< =
(
��= >
)
��> ?
;
��? @
}
�� 	
public
�� 
IEnumerable
�� 
<
��  
IEdmStructuredType
�� -
>
��- .&
FindDirectlyDerivedTypes
��/ G
(
��G H 
IEdmStructuredType
��H Z
baseType
��[ c
)
��c d
{
�� 	
return
�� 

Enumerable
�� 
.
�� 
Empty
�� #
<
��# $ 
IEdmStructuredType
��$ 6
>
��6 7
(
��7 8
)
��8 9
;
��9 :
}
�� 	
private
�� '
EdmCoreModelPrimitiveType
�� )'
GetCoreModelPrimitiveType
��* C
(
��C D"
EdmPrimitiveTypeKind
��D X
kind
��Y ]
)
��] ^
{
�� 	'
EdmCoreModelPrimitiveType
�� %

definition
��& 0
;
��0 1
return
�� "
primitiveTypesByKind
�� '
.
��' (
TryGetValue
��( 3
(
��3 4
kind
��4 8
,
��8 9
out
��: =

definition
��> H
)
��H I
?
��J K

definition
��L V
:
��W X
null
��Y ]
;
��] ^
}
�� 	
}
�� 
}�� �
GD:\odata.net\src\Microsoft.OData.Edm\Schema\EdmUntypedStructuredType.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

sealed 
class $
EdmUntypedStructuredType 0
:1 2
EdmStructuredType3 D
,D E
IEdmStructuredTypeF X
,X Y
IEdmSchemaElementZ k
,k l
IEdmSchemaTypem {
{ 
private 
readonly 
string 

;- .
private 
readonly 
string 
name  $
;$ %
public $
EdmUntypedStructuredType '
(' (
string( .

,< =
string> D
nameE I
)I J
: 
base 
( 
true! %
,% &
true1 5
,5 6
nullD H
)H I
{ 	
EdmUtil 
. 
CheckArgumentNull %
(% &

,3 4
$str5 D
)D E
;E F
EdmUtil 
. 
CheckArgumentNull %
(% &
name& *
,* +
$str, 2
)2 3
;3 4
this   
.   

=    

;  . /
this!! 
.!! 
name!! 
=!! 
name!! 
;!! 
}"" 	
public'' $
EdmUntypedStructuredType'' '
(''' (
)''( )
:(( 
this(( 
((( 
EdmConstants(( 
.((  
EdmNamespace((  ,
,((, -

.((; <"
TypeName_Untyped_Short((< R
)((R S
{)) 	
}** 	
public// 
string// 
	Namespace// 
{00 	
get11 
{11 
return11 
this11 
.11 

;11+ ,
}11- .
}22 	
public77 
string77 
Name77 
{88 	
get99 
{99 
return99 
this99 
.99 
name99 "
;99" #
}99$ %
}:: 	
public?? 
override?? 
EdmTypeKind?? #
TypeKind??$ ,
{@@ 	
getAA 
{BB 
returnCC 
EdmTypeKindCC "
.CC" #
UntypedCC# *
;CC* +
}DD 
}EE 	
publicJJ  
EdmSchemaElementKindJJ #
SchemaElementKindJJ$ 5
{KK 	
getLL 
{MM 
returnNN  
EdmSchemaElementKindNN +
.NN+ ,
TypeDefinitionNN, :
;NN: ;
}OO 
}PP 	
}QQ 
}RR �
PD:\odata.net\src\Microsoft.OData.Edm\Schema\EdmUntypedStructuredTypeReference.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
{

 
public 

class -
!EdmUntypedStructuredTypeReference 2
:3 4
EdmTypeReference5 E
,E F$
IEdmUntypedTypeReferenceG _
,_ `'
IEdmStructuredTypeReferencea |
{ 
public -
!EdmUntypedStructuredTypeReference 0
(0 1
IEdmStructuredType1 C

definitionD N
)N O
: 
base 
( 

definition 
, 
true #
)# $
{ 	
} 	
} 
} �
CD:\odata.net\src\Microsoft.OData.Edm\Schema\EdmPathTypeReference.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

class  
EdmPathTypeReference %
:& '
EdmTypeReference( 8
,8 9!
IEdmPathTypeReference: O
{
public  
EdmPathTypeReference #
(# $
IEdmPathType$ 0

definition1 ;
,; <
bool= A

isNullableB L
)L M
: 
base 
( 

definition 
, 

isNullable )
)) *
{ 	
} 	
} 
} �
FD:\odata.net\src\Microsoft.OData.Edm\Schema\EdmUntypedTypeReference.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
{

 
public 

class #
EdmUntypedTypeReference (
:) *
EdmTypeReference+ ;
,; <$
IEdmUntypedTypeReference= U
{ 
public #
EdmUntypedTypeReference &
(& '
IEdmUntypedType' 6

definition7 A
)A B
: 
base 
( 

definition 
, 
true #
)# $
{ 	
} 	
} 
} �
OD:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmPathTypeReference.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

	interface !
IEdmPathTypeReference *
:+ ,
IEdmTypeReference- >
{
} 
} �
FD:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmPathType.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

enum 
EdmPathTypeKind 
{
None 
, 
AnnotationPath 
, 
PropertyPath 
, "
NavigationPropertyPath   
}!! 
public&& 

	interface&& 
IEdmPathType&& !
:&&" #
IEdmSchemaType&&$ 2
{'' 
EdmPathTypeKind++ 
PathKind++  
{++! "
get++# &
;++& '
}++( )
},, 
}-- �
ID:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmUntypedType.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

	interface 
IEdmUntypedType $
:% &
IEdmSchemaType' 5
{
} 
} �
RD:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmUntypedTypeReference.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

	interface $
IEdmUntypedTypeReference -
:. /
IEdmTypeReference0 A
{
} 
} �
UD:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmTypeDefinitionReference.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

	interface '
IEdmTypeDefinitionReference 0
:1 2
IEdmTypeReference3 D
{
bool 
IsUnbounded
{ 
get 
; 
}  !
int 
? 
	MaxLength
{ 
get 
; 
} 
bool## 
?## 
	IsUnicode## 
{## 
get## 
;## 
}##  
int** 
?** 
	Precision**
{** 
get** 
;** 
}** 
int00 
?00 
Scale00
{00 
get00 
;00 
}00 
int66 
?66 &
SpatialReferenceIdentifier66
{66( )
get66* -
;66- .
}66/ 0
}77 
}88 �
LD:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmTypeDefinition.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

	interface 
IEdmTypeDefinition '
:( )
IEdmSchemaType* 8
{
IEdmPrimitiveType 
UnderlyingType (
{) *
get+ .
;. /
}0 1
} 
} �
JD:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmActionImport.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

	interface 
IEdmActionImport %
:& '
IEdmOperationImport( ;
{

IEdmAction 
Action 
{ 
get 
;  
}! "
} 
} �
PD:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmContainedEntitySet.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

	interface "
IEdmContainedEntitySet +
:, -
IEdmEntitySetBase. ?
{
IEdmNavigationSource "
ParentNavigationSource 3
{4 5
get6 9
;9 :
}; <"
IEdmNavigationProperty 
NavigationProperty 1
{2 3
get4 7
;7 8
}9 :
} 
} �
KD:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmEntitySetBase.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

	interface 
IEdmEntitySetBase &
:' ( 
IEdmNavigationSource) =
{
} 
} �
LD:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmFunctionImport.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

	interface 
IEdmFunctionImport '
:( )
IEdmOperationImport* =
{
bool $
IncludeInServiceDocument
{& '
get( +
;+ ,
}- .
IEdmFunction 
Function 
{ 
get  #
;# $
}% &
} 
} �
DD:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmAction.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

	interface 

IEdmAction 
:  !

{
} 
} �
FD:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmFunction.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

	interface 
IEdmFunction !
:" #

{
bool 
IsComposable
{ 
get 
;  
}! "
} 
} �
ED:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmInclude.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

	interface 
IEdmInclude  
{
string 
Alias 
{ 
get 
; 
} 
string 
	Namespace 
{ 
get 
; 
}  !
} 
} �
PD:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmIncludeAnnotations.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

	interface "
IEdmIncludeAnnotations +
{
string 

{ 
get "
;" #
}$ %
string 
	Qualifier 
{ 
get 
; 
}  !
string 
TargetNamespace 
{  
get! $
;$ %
}& '
} 
} �
WD:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmNavigationPropertyBinding.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

	interface )
IEdmNavigationPropertyBinding 2
{
IEdmNavigationProperty 
NavigationProperty 1
{2 3
get4 7
;7 8
}9 : 
IEdmNavigationSource 
Target #
{$ %
get& )
;) *
}+ ,
IEdmPathExpression 
Path 
{  !
get" %
;% &
}' (
} 
} �
ND:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmNavigationSource.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
{

 
public 

enum #
EdmNavigationSourceKind '
{ 
None 
=
$num 
, 
	EntitySet 
, 
	Singleton 
, 
ContainedEntitySet"" 
,"" 
UnknownEntitySet'' 
,'' 
}(( 
public-- 

	interface--  
IEdmNavigationSource-- )
:--* +
IEdmNamedElement--, <
{.. 
IEnumerable22 
<22 )
IEdmNavigationPropertyBinding22 1
>221 2&
NavigationPropertyBindings223 M
{22N O
get22P S
;22S T
}22U V
IEdmPathExpression77 
Path77 
{77  !
get77" %
;77% &
}77' (
IEdmType<< 
Type<< 
{<< 
get<< 
;<< 
}<<  
IEdmNavigationSourceCC  
FindNavigationTargetCC 1
(CC1 2"
IEdmNavigationPropertyCC2 H
navigationPropertyCCI [
)CC[ \
;CC\ ] 
IEdmNavigationSourceKK  
FindNavigationTargetKK 1
(KK1 2"
IEdmNavigationPropertyKK2 H
navigationPropertyKKI [
,KK[ \
IEdmPathExpressionKK] o
bindingPathKKp {
)KK{ |
;KK| }
IEnumerableRR 
<RR )
IEdmNavigationPropertyBindingRR 1
>RR1 2*
FindNavigationPropertyBindingsRR3 Q
(RRQ R"
IEdmNavigationPropertyRRR h
navigationPropertyRRi {
)RR{ |
;RR| }
}SS 
}TT �
GD:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmReference.cs
	namespace

 	
	Microsoft


 
.

 
OData

 
.

 
Edm

 
{ 
public 

	interface 

:# $
IEdmElement% 0
{ 
Uri 
Uri 
{ 
get 
; 
} 
IEnumerable 
< 
IEdmInclude 
>  
Includes! )
{* +
get, /
;/ 0
}1 2
IEnumerable 
< "
IEdmIncludeAnnotations *
>* +
IncludeAnnotations, >
{? @
getA D
;D E
}F G
} 
}   �
SD:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmReferentialConstraint.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

	interface %
IEdmReferentialConstraint .
{ 
IEnumerable 
< 0
$EdmReferentialConstraintPropertyPair 8
>8 9

{H I
getJ M
;M N
}O P
} 
public 

class 0
$EdmReferentialConstraintPropertyPair 5
{ 
public!! 0
$EdmReferentialConstraintPropertyPair!! 3
(!!3 4"
IEdmStructuralProperty!!4 J
dependentProperty!!K \
,!!\ ]"
IEdmStructuralProperty!!^ t
principalProperty	!!u �
)
!!� �
{"" 	
EdmUtil## 
.## 
CheckArgumentNull## %
(##% &
dependentProperty##& 7
,##7 8
$str##9 L
)##L M
;##M N
EdmUtil$$ 
.$$ 
CheckArgumentNull$$ %
($$% &
principalProperty$$& 7
,$$7 8
$str$$9 L
)$$L M
;$$M N
this&& 
.&& 
DependentProperty&& "
=&&# $
dependentProperty&&% 6
;&&6 7
this'' 
.'' 
PrincipalProperty'' "
=''# $
principalProperty''% 6
;''6 7
}(( 	
public-- "
IEdmStructuralProperty-- %
DependentProperty--& 7
{--8 9
get--: =
;--= >
private--? F
set--G J
;--J K
}--L M
public22 "
IEdmStructuralProperty22 %
PrincipalProperty22& 7
{228 9
get22: =
;22= >
private22? F
set22G J
;22J K
}22L M
}33 
}44 �
GD:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmSingleton.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

	interface 

:# $&
IEdmEntityContainerElement% ?
,? @ 
IEdmNavigationSourceA U
{
} 
} �
ND:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmUnknownEntitySet.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

	interface  
IEdmUnknownEntitySet )
:* +
IEdmEntitySetBase, =
{ 
} 
} �
HD:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmExpression.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
{

 
public 

enum 
EdmExpressionKind !
{ 
None 
=
$num 
, 
BinaryConstant 
, 
BooleanConstant 
, "
DateTimeOffsetConstant"" 
,"" 
DecimalConstant'' 
,'' 
FloatingConstant,, 
,,, 
GuidConstant11 
,11 
IntegerConstant66 
,66 
StringConstant;; 
,;; 
DurationConstant@@ 
,@@ 
NullEE 
,EE 
RecordJJ 
,JJ 

CollectionOO 
,OO 
PathTT 
,TT 
IfYY 

,YY
 
Cast^^ 
,^^ 
IsTypecc 
,cc 
FunctionApplicationhh 
,hh &
LabeledExpressionReferencemm "
,mm" #
Labeledrr 
,rr 
PropertyPathww 
,ww "
NavigationPropertyPath|| 
,|| 
DateConstant
�� 
,
�� 
TimeOfDayConstant
�� 
,
�� 

EnumMember
�� 
,
�� 
AnnotationPath
�� 
}
�� 
public
�� 

	interface
�� 
IEdmExpression
�� #
:
��$ %
IEdmElement
��& 1
{
�� 
EdmExpressionKind
�� 
ExpressionKind
�� (
{
��) *
get
��+ .
;
��. /
}
��0 1
}
�� 
}�� �
LD:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmPathExpression.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
{

 
public 

	interface 
IEdmPathExpression '
:( )
IEdmExpression* 8
{ 
IEnumerable 
< 
string 
> 
PathSegments (
{) *
get+ .
;. /
}0 1
string 
Path 
{ 
get 
; 
} 
} 
} �
MD:\odata.net\src\Microsoft.OData.Edm\Schema\Interfaces\IEdmEnumMemberValue.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

	interface 
IEdmEnumMemberValue (
:) *
IEdmElement+ 6
{
long 
Value
{ 
get 
; 
} 
} 
} �
8D:\odata.net\src\Microsoft.OData.Edm\Schema\TimeOfDay.cs
	namespace

 	
	Microsoft


 
.

 
OData

 
.

 
Edm

 
{ 
public 

struct 
	TimeOfDay 
: 
IComparable )
,) *
IComparable+ 6
<6 7
	TimeOfDay7 @
>@ A
,A B

IEquatableC M
<M N
	TimeOfDayN W
>W X
{ 
public 
const 
long 
MaxTickValue &
=' (
$num) 5
;5 6
public 
const 
long 
MinTickValue &
=' (
$num) *
;* +
public 
const 
long 
TicksPerHour &
=' (
$num) 4
;4 5
public## 
const## 
long## 
TicksPerMinute## (
=##) *
$num##+ 4
;##4 5
public(( 
const(( 
long(( 
TicksPerSecond(( (
=(() *
$num((+ 3
;((3 4
public-- 
static-- 
readonly-- 
	TimeOfDay-- (
MinValue--) 1
=--2 3
new--4 7
	TimeOfDay--8 A
(--A B
MinTickValue--B N
)--N O
;--O P
public22 
static22 
readonly22 
	TimeOfDay22 (
MaxValue22) 1
=222 3
new224 7
	TimeOfDay228 A
(22A B
MaxTickValue22B N
)22N O
;22O P
private77 
TimeSpan77 
timeSpan77 !
;77! "
public@@ 
	TimeOfDay@@ 
(@@ 
int@@ 
hour@@ !
,@@! "
int@@# &
minute@@' -
,@@- .
int@@/ 2
second@@3 9
,@@9 :
int@@; >
millisecond@@? J
)@@J K
:AA 
thisAA 
(AA 
)AA 
{BB 	
ifCC 
(CC 
hourCC 
<CC 
$numCC 
||CC 
hourCC  
>CC! "
$numCC# %
||CC& (
minuteCC) /
<CC0 1
$numCC2 3
||CC4 6
minuteCC7 =
>CC> ?
$numCC@ B
||CCC E
secondCCF L
<CCM N
$numCCO P
||CCQ S
secondCCT Z
>CC[ \
$numCC] _
||CC` b
millisecondCCc n
<CCo p
$numCCq r
||CCs u
millisecond	CCv �
>
CC� �
$num
CC� �
)
CC� �
{DD 
throwEE 
newEE 
FormatExceptionEE )
(EE) *
StringsEE* 1
.EE1 20
$TimeOfDay_InvalidTimeOfDayParametersEE2 V
(EEV W
hourEEW [
,EE[ \
minuteEE] c
,EEc d
secondEEe k
,EEk l
millisecondEEm x
)EEx y
)EEy z
;EEz {
}FF 
elseGG 
{HH 
timeSpanII 
=II 
newII 
TimeSpanII '
(II' (
$numII( )
,II) *
hourII+ /
,II/ 0
minuteII1 7
,II7 8
secondII9 ?
,II? @
millisecondIIA L
)IIL M
;IIM N
}JJ 
}KK 	
publicQQ 
	TimeOfDayQQ 
(QQ 
longQQ 
ticksQQ #
)QQ# $
:RR 
thisRR 
(RR 
)RR 
{SS 	
ifTT 
(TT 
ticksTT 
<TT 
MinTickValueTT $
||TT% '
ticksTT( -
>TT. /
MaxTickValueTT0 <
)TT< =
{UU 
throwVV 
newVV 
FormatExceptionVV )
(VV) *
StringsVV* 1
.VV1 2%
TimeOfDay_TicksOutOfRangeVV2 K
(VVK L
ticksVVL Q
)VVQ R
)VVR S
;VVS T
}WW 
elseXX 
{YY 
timeSpanZZ 
=ZZ 
newZZ 
TimeSpanZZ '
(ZZ' (
ticksZZ( -
)ZZ- .
;ZZ. /
}[[ 
}\\ 	
publicaa 
staticaa 
	TimeOfDayaa 
Nowaa  #
{bb 	
getcc 
{cc 
returncc 
DateTimecc !
.cc! "
Nowcc" %
.cc% &
	TimeOfDaycc& /
;cc/ 0
}cc1 2
}dd 	
publicii 
intii 
Hoursii 
{jj 	
getkk 
{ll 
returnmm 
timeSpanmm 
.mm  
Hoursmm  %
;mm% &
}nn 
}oo 	
publictt 
inttt 
Minutestt 
{uu 	
getvv 
{ww 
returnxx 
timeSpanxx 
.xx  
Minutesxx  '
;xx' (
}yy 
}zz 	
public 
int 
Seconds 
{
�� 	
get
�� 
{
�� 
return
�� 
timeSpan
�� 
.
��  
Seconds
��  '
;
��' (
}
�� 
}
�� 	
public
�� 
long
�� 
Milliseconds
��  
{
�� 	
get
�� 
{
�� 
return
�� 
timeSpan
�� 
.
��  
Milliseconds
��  ,
;
��, -
}
�� 
}
�� 	
public
�� 
long
�� 
Ticks
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
timeSpan
�� 
.
��  
Ticks
��  %
;
��% &
}
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
operator
�� #
!=
��$ &
(
��& '
	TimeOfDay
��' 0
firstOperand
��1 =
,
��= >
	TimeOfDay
��? H

��I V
)
��V W
{
�� 	
return
�� 
firstOperand
�� 
.
��  
timeSpan
��  (
!=
��) +

��, 9
.
��9 :
timeSpan
��: B
;
��B C
}
�� 	
public
�� 
static
�� 
bool
�� 
operator
�� #
==
��$ &
(
��& '
	TimeOfDay
��' 0
firstOperand
��1 =
,
��= >
	TimeOfDay
��? H

��I V
)
��V W
{
�� 	
return
�� 
firstOperand
�� 
.
��  
timeSpan
��  (
==
��) +

��, 9
.
��9 :
timeSpan
��: B
;
��B C
}
�� 	
public
�� 
static
�� 
bool
�� 
operator
�� #
>=
��$ &
(
��& '
	TimeOfDay
��' 0
firstOperand
��1 =
,
��= >
	TimeOfDay
��? H

��I V
)
��V W
{
�� 	
return
�� 
firstOperand
�� 
.
��  
timeSpan
��  (
>=
��) +

��, 9
.
��9 :
timeSpan
��: B
;
��B C
}
�� 	
public
�� 
static
�� 
bool
�� 
operator
�� #
>
��$ %
(
��% &
	TimeOfDay
��& /
firstOperand
��0 <
,
��< =
	TimeOfDay
��> G

��H U
)
��U V
{
�� 	
return
�� 
firstOperand
�� 
.
��  
timeSpan
��  (
>
��) *

��+ 8
.
��8 9
timeSpan
��9 A
;
��A B
}
�� 	
public
�� 
static
�� 
bool
�� 
operator
�� #
<=
��$ &
(
��& '
	TimeOfDay
��' 0
firstOperand
��1 =
,
��= >
	TimeOfDay
��? H

��I V
)
��V W
{
�� 	
return
�� 
firstOperand
�� 
.
��  
timeSpan
��  (
<=
��) +

��, 9
.
��9 :
timeSpan
��: B
;
��B C
}
�� 	
public
�� 
static
�� 
bool
�� 
operator
�� #
<
��$ %
(
��% &
	TimeOfDay
��& /
firstOperand
��0 <
,
��< =
	TimeOfDay
��> G

��H U
)
��U V
{
�� 	
return
�� 
firstOperand
�� 
.
��  
timeSpan
��  (
<
��) *

��+ 8
.
��8 9
timeSpan
��9 A
;
��A B
}
�� 	
public
�� 
static
�� 
implicit
�� 
operator
�� '
TimeSpan
��( 0
(
��0 1
	TimeOfDay
��1 :
time
��; ?
)
��? @
{
�� 	
return
�� 
time
�� 
.
�� 
timeSpan
��  
;
��  !
}
�� 	
public
�� 
static
�� 
implicit
�� 
operator
�� '
	TimeOfDay
��( 1
(
��1 2
TimeSpan
��2 :
timeSpan
��; C
)
��C D
{
�� 	
if
�� 
(
�� 
timeSpan
�� 
.
�� 
Days
�� 
!=
��  
$num
��! "
||
��# %
timeSpan
��& .
.
��. /
Hours
��/ 4
<
��5 6
$num
��7 8
||
�� 
timeSpan
�� 
.
�� 
Minutes
�� #
<
��$ %
$num
��& '
||
��( *
timeSpan
��+ 3
.
��3 4
Milliseconds
��4 @
<
��A B
$num
��C D
||
�� 
timeSpan
�� 
.
�� 
Ticks
�� !
<
��" #
MinTickValue
��$ 0
||
��1 3
timeSpan
��4 <
.
��< =
Ticks
��= B
>
��C D
MaxTickValue
��E Q
)
��Q R
{
�� 
throw
�� 
new
�� 
FormatException
�� )
(
��) *
Strings
��* 1
.
��1 20
"TimeOfDay_ConvertErrorFromTimeSpan
��2 T
(
��T U
timeSpan
��U ]
)
��] ^
)
��^ _
;
��_ `
}
�� 
else
�� 
{
�� 
return
�� 
new
�� 
	TimeOfDay
�� $
(
��$ %
timeSpan
��% -
.
��- .
Ticks
��. 3
)
��3 4
;
��4 5
}
�� 
}
�� 	
public
�� 
bool
�� 
Equals
�� 
(
�� 
	TimeOfDay
�� $
other
��% *
)
��* +
{
�� 	
return
�� 
timeSpan
�� 
.
�� 
Equals
�� "
(
��" #
other
��# (
.
��( )
timeSpan
��) 1
)
��1 2
;
��2 3
}
�� 	
public
�� 
override
�� 
bool
�� 
Equals
�� #
(
��# $
object
��$ *
obj
��+ .
)
��. /
{
�� 	
if
�� 
(
�� 
obj
�� 
==
�� 
null
�� 
||
�� 
!
��  
(
��  !
obj
��! $
is
��% '
	TimeOfDay
��( 1
)
��1 2
)
��2 3
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
this
�� 
.
�� 
timeSpan
��  
.
��  !
Equals
��! '
(
��' (
(
��( )
(
��) *
	TimeOfDay
��* 3
)
��3 4
obj
��4 7
)
��7 8
.
��8 9
timeSpan
��9 A
)
��A B
;
��B C
}
�� 	
public
�� 
override
�� 
int
�� 
GetHashCode
�� '
(
��' (
)
��( )
{
�� 	
return
�� 
timeSpan
�� 
.
�� 
GetHashCode
�� '
(
��' (
)
��( )
;
��) *
}
�� 	
public
�� 
override
�� 
string
�� 
ToString
�� '
(
��' (
)
��( )
{
�� 	
return
�� 
this
�� 
.
�� 
timeSpan
��  
.
��  !
ToString
��! )
(
��) *
$str
��* @
,
��@ A
CultureInfo
��B M
.
��M N
InvariantCulture
��N ^
)
��^ _
;
��_ `
}
�� 	
public
�� 
int
�� 
	CompareTo
�� 
(
�� 
object
�� #
obj
��$ '
)
��' (
{
�� 	
if
�� 
(
�� 
obj
�� 
is
�� 
	TimeOfDay
��  
)
��  !
{
�� 
	TimeOfDay
�� 
time2
�� 
=
��  !
(
��" #
	TimeOfDay
��# ,
)
��, -
obj
��- 0
;
��0 1
return
�� 
this
�� 
.
�� 
	CompareTo
�� %
(
��% &
time2
��& +
)
��+ ,
;
��, -
}
�� 
else
�� 
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
Strings
��, 3
.
��3 4.
 TimeOfDay_InvalidCompareToTarget
��4 T
(
��T U
obj
��U X
)
��X Y
)
��Y Z
;
��Z [
}
�� 
}
�� 	
public
�� 
int
�� 
	CompareTo
�� 
(
�� 
	TimeOfDay
�� &
other
��' ,
)
��, -
{
�� 	
return
�� 
this
�� 
.
�� 
timeSpan
��  
.
��  !
	CompareTo
��! *
(
��* +
other
��+ 0
.
��0 1
timeSpan
��1 9
)
��9 :
;
��: ;
}
�� 	
public
�� 
static
�� 
	TimeOfDay
�� 
Parse
��  %
(
��% &
string
��& ,
text
��- 1
)
��1 2
{
�� 	
return
�� 
Parse
�� 
(
�� 
text
�� 
,
�� 
CultureInfo
�� *
.
��* +
CurrentCulture
��+ 9
)
��9 :
;
��: ;
}
�� 	
public
�� 
static
�� 
	TimeOfDay
�� 
Parse
��  %
(
��% &
string
��& ,
text
��- 1
,
��1 2
IFormatProvider
��3 B
provider
��C K
)
��K L
{
�� 	
	TimeOfDay
�� 
result
�� 
;
�� 
if
�� 
(
�� 
	TimeOfDay
�� 
.
�� 
TryParse
�� "
(
��" #
text
��# '
,
��' (
provider
��) 1
,
��1 2
out
��3 6
result
��7 =
)
��= >
)
��> ?
{
�� 
return
�� 
result
�� 
;
�� 
}
�� 
else
�� 
{
�� 
throw
�� 
new
�� 
FormatException
�� )
(
��) *
Strings
��* 1
.
��1 2,
TimeOfDay_InvalidParsingString
��2 P
(
��P Q
text
��Q U
)
��U V
)
��V W
;
��W X
}
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
TryParse
�� #
(
��# $
string
��$ *
text
��+ /
,
��/ 0
out
��1 4
	TimeOfDay
��5 >
result
��? E
)
��E F
{
�� 	
return
�� 
TryParse
�� 
(
�� 
text
��  
,
��  !
CultureInfo
��" -
.
��- .
CurrentCulture
��. <
,
��< =
out
��> A
result
��B H
)
��H I
;
��I J
}
�� 	
public
�� 
static
�� 
bool
�� 
TryParse
�� #
(
��# $
string
��$ *
text
��+ /
,
��/ 0
IFormatProvider
��1 @
provider
��A I
,
��I J
out
��K N
	TimeOfDay
��O X
result
��Y _
)
��_ `
{
�� 	
TimeSpan
�� 
time
�� 
;
�� 
bool
�� 
b
�� 
;
�� 
b
�� 
=
�� 
TimeSpan
�� 
.
�� 
TryParse
�� !
(
��! "
text
��" &
,
��& '
provider
��( 0
,
��0 1
out
��2 5
time
��6 :
)
��: ;
;
��; <
if
�� 
(
�� 
b
�� 
&&
�� 
time
�� 
.
�� 
Ticks
�� 
>=
��  "
MinTickValue
��# /
&&
��0 2
time
��3 7
.
��7 8
Ticks
��8 =
<=
��> @
MaxTickValue
��A M
)
��M N
{
�� 
result
�� 
=
�� 
new
�� 
	TimeOfDay
�� &
(
��& '
time
��' +
.
��+ ,
Ticks
��, 1
)
��1 2
;
��2 3
return
�� 
true
�� 
;
�� 
}
�� 
result
�� 
=
�� 
	TimeOfDay
�� 
.
�� 
MinValue
�� '
;
��' (
return
�� 
false
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
CD:\odata.net\src\Microsoft.OData.Edm\ExtensionMethods\EnumHelper.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

static 
class 

EnumHelper "
{ 
private 
static 
readonly 
IDictionary  +
<+ ,
IEdmEnumType, 8
,8 9
	HashEntry: C
>C D

=S T
newU X

DictionaryY c
<c d
IEdmEnumTyped p
,p q
	HashEntryr {
>{ |
(| }
)} ~
;~ 
private 
const 
int 
MaxHashElements )
=* +
$num, /
;/ 0
public 
static 
bool 
TryParseEnum '
(' (
this( ,
IEdmEnumType- 9
enumType: B
,B C
stringD J
valueK P
,P Q
boolR V

ignoreCaseW a
,a b
outc f
longg k
parseResultl w
)w x
{   	
char!! 
[!! 
]!! "
enumSeperatorCharArray!! )
=!!* +
new!!, /
[!!/ 0
]!!0 1
{!!2 3
$char!!4 7
}!!8 9
;!!9 :
string## 
[## 
]## 
	enumNames## 
;## 
ulong$$ 
[$$ 
]$$ 

enumValues$$ 
;$$ 
IEdmEnumType%% 
type%% 
=%% 
enumType%%  (
;%%( )
parseResult'' 
='' 
$num'' 
;'' 
if)) 
()) 
value)) 
==)) 
null)) 
))) 
{** 
return++ 
false++ 
;++ 
},, 
value.. 
=.. 
value.. 
... 
Trim.. 
(.. 
)..  
;..  !
if// 
(// 
value// 
.// 
Length// 
==// 
$num//  !
)//! "
{00 
return11 
false11 
;11 
}22 
ulong44 
num44 
=44 
$num44 
;44 
string55 
[55 
]55 
values55 
=55 
value55 #
.55# $
Split55$ )
(55) *"
enumSeperatorCharArray55* @
)55@ A
;55A B
if77 
(77 
(77 
!77 
enumType77 
.77 
IsFlags77 "
)77" #
&&77$ &
values77' -
.77- .
Length77. 4
>775 6
$num777 8
)778 9
{88 
return99 
false99 
;99 
}:: 
type<< 
.<< #
GetCachedValuesAndNames<< (
(<<( )
out<<) ,

enumValues<<- 7
,<<7 8
out<<9 <
	enumNames<<= F
,<<F G
true<<H L
,<<L M
true<<N R
)<<R S
;<<S T
if>> 
(>> 
(>> 
char>> 
.>> 
IsDigit>> 
(>> 
value>> #
[>># $
$num>>$ %
]>>% &
)>>& '
||>>( *
(>>+ ,
value>>, 1
[>>1 2
$num>>2 3
]>>3 4
==>>5 7
$char>>8 ;
)>>; <
)>>< =
||>>> @
(>>A B
value>>B G
[>>G H
$num>>H I
]>>I J
==>>K M
$char>>N Q
)>>Q R
)>>R S
{?? 
ulongAA 
fullBitsAA 
=AA  
$numAA! "
;AA" #
forBB 
(BB 
intBB 
jBB 
=BB 
$numBB 
;BB 
jBB  !
<BB" #

enumValuesBB$ .
.BB. /
LengthBB/ 5
;BB5 6
jBB7 8
++BB8 :
)BB: ;
{CC 
fullBitsDD 
|=DD 

enumValuesDD  *
[DD* +
jDD+ ,
]DD, -
;DD- .
}EE 
forHH 
(HH 
intHH 
iHH 
=HH 
$numHH 
;HH 
iHH  !
<HH" #
valuesHH$ *
.HH* +
LengthHH+ 1
;HH1 2
iHH3 4
++HH4 6
)HH6 7
{II 
longJJ 
	itemValueJJ "
;JJ" #
ifKK 
(KK 
longKK 
.KK 
TryParseKK %
(KK% &
valuesKK& ,
[KK, -
iKK- .
]KK. /
,KK/ 0
outKK1 4
	itemValueKK5 >
)KK> ?
)KK? @
{LL 
numNN 
|=NN 
(NN  
ulongNN  %
)NN% &
	itemValueNN& /
;NN/ 0
}OO 
elsePP 
{QQ 
returnRR 
falseRR $
;RR$ %
}SS 
}TT 
}UU 
elseVV 
{WW 
forXX 
(XX 
intXX 
iXX 
=XX 
$numXX 
;XX 
iXX  !
<XX" #
valuesXX$ *
.XX* +
LengthXX+ 1
;XX1 2
iXX3 4
++XX4 6
)XX6 7
{YY 
valuesZZ 
[ZZ 
iZZ 
]ZZ 
=ZZ 
valuesZZ  &
[ZZ& '
iZZ' (
]ZZ( )
.ZZ) *
TrimZZ* .
(ZZ. /
)ZZ/ 0
;ZZ0 1
bool[[ 
flag[[ 
=[[ 
false[[  %
;[[% &
for\\ 
(\\ 
int\\ 
j\\ 
=\\  
$num\\! "
;\\" #
j\\$ %
<\\& '
	enumNames\\( 1
.\\1 2
Length\\2 8
;\\8 9
j\\: ;
++\\; =
)\\= >
{]] 
if^^ 
(^^ 

ignoreCase^^ &
)^^& '
{__ 
if`` 
(``  
string``  &
.``& '
Compare``' .
(``. /
	enumNames``/ 8
[``8 9
j``9 :
]``: ;
,``; <
values``= C
[``C D
i``D E
]``E F
,``F G
StringComparison``H X
.``X Y
OrdinalIgnoreCase``Y j
)``j k
!=``l n
$num``o p
)``p q
{aa 
continuebb  (
;bb( )
}cc 
}dd 
elseee 
{ff 
ifgg 
(gg  
!gg  !
	enumNamesgg! *
[gg* +
jgg+ ,
]gg, -
.gg- .
Equalsgg. 4
(gg4 5
valuesgg5 ;
[gg; <
igg< =
]gg= >
)gg> ?
)gg? @
{hh 
continueii  (
;ii( )
}jj 
}kk 
ulongmm 
itemmm "
=mm# $

enumValuesmm% /
[mm/ 0
jmm0 1
]mm1 2
;mm2 3
numnn 
|=nn 
itemnn #
;nn# $
flagoo 
=oo 
trueoo #
;oo# $
breakpp 
;pp 
}qq 
ifss 
(ss 
!ss 
flagss 
)ss 
{tt 
returnuu 
falseuu $
;uu$ %
}vv 
}ww 
}xx 
parseResultzz 
=zz 
(zz 
longzz 
)zz  
numzz  #
;zz# $
return{{ 
true{{ 
;{{ 
}|| 	
public
�� 
static
�� 
string
�� 
ToStringLiteral
�� ,
(
��, -
this
��- 1#
IEdmEnumTypeReference
��2 G
type
��H L
,
��L M
Int64
��N S
value
��T Y
)
��Y Z
{
�� 	
if
�� 
(
�� 
type
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
IEdmEnumType
�� 
enumType
�� %
=
��& '
type
��( ,
.
��, -

Definition
��- 7
as
��8 :
IEdmEnumType
��; G
;
��G H
if
�� 
(
�� 
enumType
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
return
�� 
enumType
�� #
.
��# $
IsFlags
��$ +
?
��, -
enumType
��. 6
.
��6 7
ToStringWithFlags
��7 H
(
��H I
value
��I N
)
��N O
:
��P Q
enumType
��R Z
.
��Z [
ToStringNoFlags
��[ j
(
��j k
value
��k p
)
��p q
;
��q r
}
�� 
}
�� 
return
�� 
value
�� 
.
�� 
ToString
�� !
(
��! "
CultureInfo
��" -
.
��- .
InvariantCulture
��. >
)
��> ?
;
��? @
}
�� 	
private
�� 
static
�� 
string
�� 
ToStringWithFlags
�� /
(
��/ 0
this
��0 4
IEdmEnumType
��5 A
enumType
��B J
,
��J K
Int64
��L Q
value
��R W
)
��W X
{
�� 	
string
�� 
[
�� 
]
�� 
strArray
�� 
;
�� 
ulong
�� 
[
�� 
]
�� 
numArray
�� 
;
�� 
ulong
�� 
num
�� 
=
�� 
(
�� 
ulong
�� 
)
�� 
value
�� $
;
��$ %
enumType
�� 
.
�� %
GetCachedValuesAndNames
�� ,
(
��, -
out
��- 0
numArray
��1 9
,
��9 :
out
��; >
strArray
��? G
,
��G H
true
��I M
,
��M N
true
��O S
)
��S T
;
��T U
int
�� 
index
�� 
=
�� 
numArray
��  
.
��  !
Length
��! '
-
��( )
$num
��* +
;
��+ ,

�� 
builder
�� !
=
��" #
new
��$ '

��( 5
(
��5 6
)
��6 7
;
��7 8
bool
�� 
flag
�� 
=
�� 
true
�� 
;
�� 
ulong
�� 
num3
�� 
=
�� 
num
�� 
;
�� 
const
�� 
int
�� 
Zero
�� 
=
�� 
$num
�� 
;
�� 
const
�� 
ulong
�� 
	UlongZero
�� !
=
��" #
$num
��$ &
;
��& '
while
�� 
(
�� 
index
�� 
>=
�� 
Zero
��  
)
��  !
{
�� 
if
�� 
(
�� 
(
�� 
index
�� 
==
�� 
Zero
�� "
)
��" #
&&
��$ &
(
��' (
numArray
��( 0
[
��0 1
index
��1 6
]
��6 7
==
��8 :
	UlongZero
��; D
)
��D E
)
��E F
{
�� 
break
�� 
;
�� 
}
�� 
if
�� 
(
�� 
(
�� 
num
�� 
&
�� 
numArray
�� #
[
��# $
index
��$ )
]
��) *
)
��* +
==
��, .
numArray
��/ 7
[
��7 8
index
��8 =
]
��= >
)
��> ?
{
�� 
num
�� 
-=
�� 
numArray
�� #
[
��# $
index
��$ )
]
��) *
;
��* +
if
�� 
(
�� 
!
�� 
flag
�� 
)
�� 
{
�� 
builder
�� 
.
��  
Insert
��  &
(
��& '
Zero
��' +
,
��+ ,
$str
��- 1
)
��1 2
;
��2 3
}
�� 
builder
�� 
.
�� 
Insert
�� "
(
��" #
Zero
��# '
,
��' (
strArray
��) 1
[
��1 2
index
��2 7
]
��7 8
)
��8 9
;
��9 :
flag
�� 
=
�� 
false
��  
;
��  !
}
�� 
index
�� 
--
�� 
;
�� 
}
�� 
if
�� 
(
�� 
num
�� 
!=
�� 
	UlongZero
��  
)
��  !
{
�� 
return
�� 
value
�� 
.
�� 
ToString
�� %
(
��% &
CultureInfo
��& 1
.
��1 2
InvariantCulture
��2 B
)
��B C
;
��C D
}
�� 
if
�� 
(
�� 
num3
�� 
!=
�� 
	UlongZero
�� !
)
��! "
{
�� 
return
�� 
builder
�� 
.
�� 
ToString
�� '
(
��' (
)
��( )
;
��) *
}
�� 
if
�� 
(
�� 
(
�� 
numArray
�� 
.
�� 
Length
��  
>
��! "
Zero
��# '
)
��' (
&&
��) +
(
��, -
numArray
��- 5
[
��5 6
Zero
��6 :
]
��: ;
==
��< >
	UlongZero
��? H
)
��H I
)
��I J
{
�� 
return
�� 
strArray
�� 
[
��  
Zero
��  $
]
��$ %
;
��% &
}
�� 
return
�� 
Zero
�� 
.
�� 
ToString
��  
(
��  !
CultureInfo
��! ,
.
��, -
InvariantCulture
��- =
)
��= >
;
��> ?
}
�� 	
private
�� 
static
�� 
string
�� 
ToStringNoFlags
�� -
(
��- .
this
��. 2
IEdmEnumType
��3 ?
enumType
��@ H
,
��H I
Int64
��J O
value
��P U
)
��U V
{
�� 	
ulong
�� 
[
�� 
]
�� 
values
�� 
;
�� 
string
�� 
[
�� 
]
�� 
names
�� 
;
�� 
enumType
�� 
.
�� %
GetCachedValuesAndNames
�� ,
(
��, -
out
��- 0
values
��1 7
,
��7 8
out
��9 <
names
��= B
,
��B C
true
��D H
,
��H I
true
��J N
)
��N O
;
��O P
ulong
�� 
num
�� 
=
�� 
(
�� 
ulong
�� 
)
�� 
value
�� $
;
��$ %
int
�� 
index
�� 
=
�� 
Array
�� 
.
�� 
BinarySearch
�� *
(
��* +
values
��+ 1
,
��1 2
num
��3 6
)
��6 7
;
��7 8
return
�� 
index
�� 
>=
�� 
$num
�� 
?
�� 
names
��  %
[
��% &
index
��& +
]
��+ ,
:
��- .
value
��/ 4
.
��4 5
ToString
��5 =
(
��= >
CultureInfo
��> I
.
��I J
InvariantCulture
��J Z
)
��Z [
;
��[ \
}
�� 	
private
�� 
static
�� 
void
�� %
GetCachedValuesAndNames
�� 3
(
��3 4
this
��4 8
IEdmEnumType
��9 E
enumType
��F N
,
��N O
out
��P S
ulong
��T Y
[
��Y Z
]
��Z [
values
��\ b
,
��b c
out
��d g
string
��h n
[
��n o
]
��o p
names
��q v
,
��v w
bool
��x |
	getValues��} �
,��� �
bool��� �
getNames��� �
)��� �
{
�� 	
	HashEntry
�� 
	hashEntry
�� 
=
��  !
GetHashEntry
��" .
(
��. /
enumType
��/ 7
)
��7 8
;
��8 9
values
�� 
=
�� 
	hashEntry
�� 
.
�� 
Values
�� %
;
��% &
if
�� 
(
�� 
values
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
	getValues
�� 
=
�� 
false
�� !
;
��! "
}
�� 
names
�� 
=
�� 
	hashEntry
�� 
.
�� 
Names
�� #
;
��# $
if
�� 
(
�� 
names
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
getNames
�� 
=
�� 
false
��  
;
��  !
}
�� 
if
�� 
(
�� 
!
�� 
	getValues
�� 
&&
�� 
!
�� 
getNames
�� '
)
��' (
{
�� 
return
�� 
;
�� 
}
�� 
GetEnumValuesAndNames
�� !
(
��! "
enumType
��" *
,
��* +
ref
��, /
values
��0 6
,
��6 7
ref
��8 ;
names
��< A
,
��A B
	getValues
��C L
,
��L M
getNames
��N V
)
��V W
;
��W X
if
�� 
(
�� 
	getValues
�� 
)
�� 
{
�� 
	hashEntry
�� 
.
�� 
Values
��  
=
��! "
values
��# )
;
��) *
}
�� 
if
�� 
(
�� 
getNames
�� 
)
�� 
{
�� 
	hashEntry
�� 
.
�� 
Names
�� 
=
��  !
names
��" '
;
��' (
}
�� 
}
�� 	
private
�� 
static
�� 
void
�� #
GetEnumValuesAndNames
�� 1
(
��1 2
IEdmEnumType
��2 >
enumType
��? G
,
��G H
ref
��I L
ulong
��M R
[
��R S
]
��S T
values
��U [
,
��[ \
ref
��] `
string
��a g
[
��g h
]
��h i
names
��j o
,
��o p
bool
��q u
	getValues
��v 
,�� �
bool��� �
getNames��� �
)��� �
{
�� 	

Dictionary
�� 
<
�� 
string
�� 
,
�� 
ulong
�� $
>
��$ %
dict
��& *
=
��+ ,
new
��- 0

Dictionary
��1 ;
<
��; <
string
��< B
,
��B C
ulong
��D I
>
��I J
(
��J K
)
��K L
;
��L M
foreach
�� 
(
�� 
var
�� 
member
�� 
in
��  "
enumType
��# +
.
��+ ,
Members
��, 3
)
��3 4
{
�� 
IEdmEnumMemberValue
�� #
intValue
��$ ,
=
��- .
member
��/ 5
.
��5 6
Value
��6 ;
;
��; <
if
�� 
(
�� 
intValue
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
dict
�� 
.
�� 
Add
�� 
(
�� 
member
�� #
.
��# $
Name
��$ (
,
��( )
(
��* +
ulong
��+ 0
)
��0 1
intValue
��1 9
.
��9 :
Value
��: ?
)
��? @
;
��@ A
}
�� 
}
�� 

Dictionary
�� 
<
�� 
string
�� 
,
�� 
ulong
�� $
>
��$ %

sortedDict
��& 0
=
��1 2
dict
��3 7
.
��7 8
OrderBy
��8 ?
(
��? @
d
��@ A
=>
��B D
d
��E F
.
��F G
Value
��G L
)
��L M
.
��M N
ToDictionary
��N Z
(
��Z [
d
��[ \
=>
��] _
d
��` a
.
��a b
Key
��b e
,
��e f
d
��g h
=>
��i k
d
��l m
.
��m n
Value
��n s
)
��s t
;
��t u
values
�� 
=
�� 

sortedDict
�� 
.
��  
Select
��  &
(
��& '
d
��' (
=>
��) +
d
��, -
.
��- .
Value
��. 3
)
��3 4
.
��4 5
ToArray
��5 <
(
��< =
)
��= >
;
��> ?
names
�� 
=
�� 

sortedDict
�� 
.
�� 
Select
�� %
(
��% &
d
��& '
=>
��( *
d
��+ ,
.
��, -
Key
��- 0
)
��0 1
.
��1 2
ToArray
��2 9
(
��9 :
)
��: ;
;
��; <
}
�� 	
private
�� 
static
�� 
	HashEntry
��  
GetHashEntry
��! -
(
��- .
IEdmEnumType
��. :
enumType
��; C
)
��C D
{
�� 	
if
�� 
(
�� 

�� 
.
�� 
Count
�� #
>
��$ %
MaxHashElements
��& 5
)
��5 6
{
�� 
lock
�� 
(
�� 

�� #
)
��# $
{
�� 
if
�� 
(
�� 

�� %
.
��% &
Count
��& +
>
��, -
MaxHashElements
��. =
)
��= >
{
�� 

�� %
.
��% &
Clear
��& +
(
��+ ,
)
��, -
;
��- .
}
�� 
}
�� 
}
�� 
return
�� 
EdmUtil
�� 
.
�� #
DictionaryGetOrUpdate
�� 0
(
��0 1

��1 >
,
��> ?
enumType
��@ H
,
��H I
type
��J N
=>
��O Q
new
��R U
	HashEntry
��V _
(
��_ `
null
��` d
,
��d e
null
��f j
)
��j k
)
��k l
;
��l m
}
�� 	
private
�� 
class
�� 
	HashEntry
�� 
{
�� 	
public
�� 
string
�� 
[
�� 
]
�� 
Names
�� !
;
��! "
public
�� 
ulong
�� 
[
�� 
]
�� 
Values
�� !
;
��! "
public
�� 
	HashEntry
�� 
(
�� 
string
�� #
[
��# $
]
��$ %
names
��& +
,
��+ ,
ulong
��- 2
[
��2 3
]
��3 4
values
��5 ;
)
��; <
{
�� 
this
�� 
.
�� 
Names
�� 
=
�� 
names
�� "
;
��" #
this
�� 
.
�� 
Values
�� 
=
�� 
values
�� $
;
��$ %
}
�� 
}
�� 	
}
�� 
}�� �
YD:\odata.net\src\Microsoft.OData.Edm\PrimitiveValueConverters\IPrimitiveValueConverter.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

	interface $
IPrimitiveValueConverter -
{ 
object #
ConvertToUnderlyingType &
(& '
object' -
value. 3
)3 4
;4 5
object %
ConvertFromUnderlyingType (
(( )
object) /
value0 5
)5 6
;6 7
} 
}   �
HD:\odata.net\src\Microsoft.OData.Edm\Schema\AmbiguousSingletonBinding.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal
class
AmbiguousSingletonBinding
:
AmbiguousBinding
<

>
,

{ 
public %
AmbiguousSingletonBinding (
(( )

first7 <
,< =

secondL R
)R S
: 
base 
( 
first 
, 
second  
)  !
{ 	
} 	
public 
IEdmType 
Type 
{ 	
get 
{ 
return 
new 

(* +
String+ 1
.1 2
Empty2 7
,7 8
this9 =
.= >
Errors> D
)D E
;E F
}G H
} 	
public #
EdmContainerElementKind & 
ContainerElementKind' ;
{ 	
get 
{ 
return #
EdmContainerElementKind 0
.0 1
	Singleton1 :
;: ;
}< =
} 	
public 
IEdmEntityContainer "
	Container# ,
{   	
get!! 
{"" 

first## #
=##$ %
this##& *
.##* +
Bindings##+ 3
.##3 4
FirstOrDefault##4 B
(##B C
)##C D
;##D E
return$$ 
first$$ 
!=$$ 
null$$  $
?$$% &
first$$' ,
.$$, -
	Container$$- 6
:$$7 8
null$$9 =
;$$= >
}%% 
}&& 	
public(( 
IEdmPathExpression(( !
Path((" &
{)) 	
get** 
{** 
return** 
null** 
;** 
}**  
}++ 	
public-- 
IEnumerable-- 
<-- )
IEdmNavigationPropertyBinding-- 8
>--8 9&
NavigationPropertyBindings--: T
{.. 	
get// 
{// 
return// 

Enumerable// #
.//# $
Empty//$ )
<//) *)
IEdmNavigationPropertyBinding//* G
>//G H
(//H I
)//I J
;//J K
}//L M
}00 	
public22  
IEdmNavigationSource22 # 
FindNavigationTarget22$ 8
(228 9"
IEdmNavigationProperty229 O
property22P X
)22X Y
{33 	
return44 
null44 
;44 
}55 	
public77  
IEdmNavigationSource77 # 
FindNavigationTarget77$ 8
(778 9"
IEdmNavigationProperty779 O
navigationProperty77P b
,77b c
IEdmPathExpression77d v
bindingPath	77w �
)
77� �
{88 	
return99 
null99 
;99 
}:: 	
public<< 
IEnumerable<< 
<<< )
IEdmNavigationPropertyBinding<< 8
><<8 9*
FindNavigationPropertyBindings<<: X
(<<X Y"
IEdmNavigationProperty<<Y o
navigationProperty	<<p �
)
<<� �
{== 	
return>> 
null>> 
;>> 
}?? 	
}@@ 
}AA �
@D:\odata.net\src\Microsoft.OData.Edm\Schema\BadTypeDefinition.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
class
BadTypeDefinition $
:% &
BadType' .
,. /
IEdmTypeDefinition0 B
{ 
private 
readonly 
string 

;- .
private 
readonly 
string 
name  $
;$ %
public 
BadTypeDefinition  
(  !
string! '

,5 6
IEnumerable7 B
<B C
EdmErrorC K
>K L
errorsM S
)S T
: 
base 
( 
errors 
) 
{ 	

= 

??* ,
string- 3
.3 4
Empty4 9
;9 :
EdmUtil 
. 0
$TryGetNamespaceNameFromQualifiedName 8
(8 9

,F G
outH K
thisL P
.P Q

,^ _
out` c
thisd h
.h i
namei m
)m n
;n o
} 	
public 
override 
EdmTypeKind #
TypeKind$ ,
{ 	
get 
{ 
return 
EdmTypeKind $
.$ %
Enum% )
;) *
}+ ,
} 	
public   
IEdmPrimitiveType    
UnderlyingType  ! /
{!! 	
get"" 
{"" 
return"" 
EdmCoreModel"" %
.""% &
Instance""& .
."". /
GetPrimitiveType""/ ?
(""? @ 
EdmPrimitiveTypeKind""@ T
.""T U
Int32""U Z
)""Z [
;""[ \
}""] ^
}## 	
public%%  
EdmSchemaElementKind%% #
SchemaElementKind%%$ 5
{&& 	
get'' 
{'' 
return''  
EdmSchemaElementKind'' -
.''- .
TypeDefinition''. <
;''< =
}''> ?
}(( 	
public** 
string** 
	Namespace** 
{++ 	
get,, 
{,, 
return,, 
this,, 
.,, 

;,,+ ,
},,- .
}-- 	
public// 
string// 
Name// 
{00 	
get11 
{11 
return11 
this11 
.11 
name11 "
;11" #
}11$ %
}22 	
}33 
}44 �
@D:\odata.net\src\Microsoft.OData.Edm\Schema\EdmTypeDefinition.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

class 
EdmTypeDefinition "
:# $
EdmType% ,
,, -
IEdmTypeDefinition. @
{
private 
readonly 
IEdmPrimitiveType *
underlyingType+ 9
;9 :
private 
readonly 
string 

;- .
private 
readonly 
string 
name  $
;$ %
public 
EdmTypeDefinition  
(  !
string! '

,5 6
string7 =
name> B
,B C 
EdmPrimitiveTypeKindD X
underlyingTypeY g
)g h
: 
this 
( 

,  !
name" &
,& '
EdmCoreModel( 4
.4 5
Instance5 =
.= >
GetPrimitiveType> N
(N O
underlyingTypeO ]
)] ^
)^ _
{ 	
} 	
public## 
EdmTypeDefinition##  
(##  !
string##! '

,##5 6
string##7 =
name##> B
,##B C
IEdmPrimitiveType##D U
underlyingType##V d
)##d e
{$$ 	
EdmUtil%% 
.%% 
CheckArgumentNull%% %
(%%% &
underlyingType%%& 4
,%%4 5
$str%%6 F
)%%F G
;%%G H
EdmUtil&& 
.&& 
CheckArgumentNull&& %
(&&% &

,&&3 4
$str&&5 D
)&&D E
;&&E F
EdmUtil'' 
.'' 
CheckArgumentNull'' %
(''% &
name''& *
,''* +
$str'', 2
)''2 3
;''3 4
this)) 
.)) 
underlyingType)) 
=))  !
underlyingType))" 0
;))0 1
this** 
.** 
name** 
=** 
name** 
;** 
this++ 
.++ 

=++  

;++. /
},, 	
public11 
override11 
EdmTypeKind11 #
TypeKind11$ ,
{22 	
get33 
{33 
return33 
EdmTypeKind33 $
.33$ %
TypeDefinition33% 3
;333 4
}335 6
}44 	
public99  
EdmSchemaElementKind99 #
SchemaElementKind99$ 5
{:: 	
get;; 
{;; 
return;;  
EdmSchemaElementKind;; -
.;;- .
TypeDefinition;;. <
;;;< =
};;> ?
}<< 	
publicAA 
stringAA 
	NamespaceAA 
{BB 	
getCC 
{CC 
returnCC 
thisCC 
.CC 

;CC+ ,
}CC- .
}DD 	
publicII 
stringII 
NameII 
{JJ 	
getKK 
{KK 
returnKK 
thisKK 
.KK 
nameKK "
;KK" #
}KK$ %
}LL 	
publicQQ 
IEdmPrimitiveTypeQQ  
UnderlyingTypeQQ! /
{RR 	
getSS 
{SS 
returnSS 
thisSS 
.SS 
underlyingTypeSS ,
;SS, -
}SS. /
}TT 	
}UU 
}VV �7
ID:\odata.net\src\Microsoft.OData.Edm\Schema\EdmTypeDefinitionReference.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
{

 
public 

class &
EdmTypeDefinitionReference +
:, -
EdmTypeReference. >
,> ?'
IEdmTypeDefinitionReference@ [
{ 
public &
EdmTypeDefinitionReference )
() *
IEdmTypeDefinition* <
typeDefinition= K
,K L
boolM Q

isNullableR \
)\ ]
: 
base 
( 
typeDefinition !
,! "

isNullable# -
)- .
{ 	
this 
. 
IsUnbounded 
= 
false $
;$ %
this 
. 
	MaxLength 
= 
null !
;! "
this 
. 
	IsUnicode 
= #
ComputeDefaultIsUnicode 4
(4 5
typeDefinition5 C
)C D
;D E
this 
. 
	Precision 
= #
ComputeDefaultPrecision 4
(4 5
typeDefinition5 C
)C D
;D E
this 
. 
Scale 
= 
ComputeDefaultScale ,
(, -
typeDefinition- ;
); <
;< =
this 
. &
SpatialReferenceIdentifier +
=, -
ComputeSrid. 9
(9 :
typeDefinition: H
)H I
;I J
} 	
public++ &
EdmTypeDefinitionReference++ )
(++) *
IEdmTypeDefinition,, 
typeDefinition,, -
,,,- .
bool-- 

isNullable-- 
,-- 
bool.. 
isUnbounded.. 
,.. 
int// 
?// 
	maxLength// 
,// 
bool00 
?00 
	isUnicode00 
,00 
int11 
?11 
	precision11 
,11 
int22 
?22 
scale22 
,22 
int33 
?33 &
spatialReferenceIdentifier33 +
)33+ ,
:44 
base44 
(44 
typeDefinition44 !
,44! "

isNullable44# -
)44- .
{55 	
this66 
.66 
IsUnbounded66 
=66 
isUnbounded66 *
;66* +
this77 
.77 
	MaxLength77 
=77 
	maxLength77 &
;77& '
this88 
.88 
	IsUnicode88 
=88 
	isUnicode88 &
;88& '
this99 
.99 
	Precision99 
=99 
	precision99 &
;99& '
this:: 
.:: 
Scale:: 
=:: 
scale:: 
;:: 
this;; 
.;; &
SpatialReferenceIdentifier;; +
=;;, -&
spatialReferenceIdentifier;;. H
;;;H I
}<< 	
publicEE 
boolEE 
IsUnboundedEE 
{EE  !
getEE" %
;EE% &
privateEE' .
setEE/ 2
;EE2 3
}EE4 5
publicMM 
intMM 
?MM 
	MaxLengthMM 
{MM 
getMM  #
;MM# $
privateMM% ,
setMM- 0
;MM0 1
}MM2 3
publicSS 
boolSS 
?SS 
	IsUnicodeSS 
{SS  
getSS! $
;SS$ %
privateSS& -
setSS. 1
;SS1 2
}SS3 4
publicZZ 
intZZ 
?ZZ 
	PrecisionZZ 
{ZZ 
getZZ  #
;ZZ# $
privateZZ% ,
setZZ- 0
;ZZ0 1
}ZZ2 3
public`` 
int`` 
?`` 
Scale`` 
{`` 
get`` 
;``  
private``! (
set``) ,
;``, -
}``. /
publicff 
intff 
?ff &
SpatialReferenceIdentifierff .
{ff/ 0
getff1 4
;ff4 5
privateff6 =
setff> A
;ffA B
}ffC D
privatehh 
statichh 
boolhh 
?hh #
ComputeDefaultIsUnicodehh 4
(hh4 5
IEdmTypeDefinitionhh5 G
typeDefinitionhhH V
)hhV W
{ii 	
ifjj 
(jj 
typeDefinitionjj 
.jj 
UnderlyingTypejj -
.jj- .
IsStringjj. 6
(jj6 7
)jj7 8
)jj8 9
{kk 
returnll 
truell 
;ll 
}mm 
returnoo 
nulloo 
;oo 
}pp 	
privaterr 
staticrr 
intrr 
?rr #
ComputeDefaultPrecisionrr 3
(rr3 4
IEdmTypeDefinitionrr4 F
typeDefinitionrrG U
)rrU V
{ss 	
iftt 
(tt 
typeDefinitiontt 
.tt 
UnderlyingTypett -
.tt- .

IsTemporaltt. 8
(tt8 9
)tt9 :
)tt: ;
{uu 
returnvv 

.vv$ %%
Default_TemporalPrecisionvv% >
;vv> ?
}ww 
returnyy 
nullyy 
;yy 
}zz 	
private|| 
static|| 
int|| 
?|| 
ComputeDefaultScale|| /
(||/ 0
IEdmTypeDefinition||0 B
typeDefinition||C Q
)||Q R
{}} 	
if~~ 
(~~ 
typeDefinition~~ 
.~~ 
UnderlyingType~~ -
.~~- .
	IsDecimal~~. 7
(~~7 8
)~~8 9
)~~9 :
{ 
return
�� 

�� $
.
��$ %

��% 2
;
��2 3
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
int
�� 
?
�� 
ComputeSrid
�� '
(
��' ( 
IEdmTypeDefinition
��( :
typeDefinition
��; I
)
��I J
{
�� 	
if
�� 
(
�� 
typeDefinition
�� 
.
�� 
UnderlyingType
�� -
.
��- .
IsGeography
��. 9
(
��9 :
)
��: ;
)
��; <
{
�� 
return
�� 

�� $
.
��$ %*
Default_SpatialGeographySrid
��% A
;
��A B
}
�� 
if
�� 
(
�� 
typeDefinition
�� 
.
�� 
UnderlyingType
�� -
.
��- .

IsGeometry
��. 8
(
��8 9
)
��9 :
)
��: ;
{
�� 
return
�� 

�� $
.
��$ %)
Default_SpatialGeometrySrid
��% @
;
��@ A
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 	
}
�� 
}�� �l
DD:\odata.net\src\Microsoft.OData.Edm\Schema\EdmContainedEntitySet.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
class
EdmContainedEntitySet (
:) *
EdmEntitySetBase+ ;
,; <"
IEdmContainedEntitySet= S
{ 
private 
readonly 
IEdmPathExpression +
navigationPath, :
;: ;
private 
readonly  
IEdmNavigationSource -"
parentNavigationSource. D
;D E
private 
readonly "
IEdmNavigationProperty /
navigationProperty0 B
;B C
private 
IEdmPathExpression "
path# '
;' (
private 
string 
fullPath 
;  
public !
EdmContainedEntitySet $
($ % 
IEdmNavigationSource% 9"
parentNavigationSource: P
,P Q"
IEdmNavigationPropertyR h
navigationPropertyi {
){ |
: 
this 
( "
parentNavigationSource )
,) *
navigationProperty+ =
,= >
new? B
EdmPathExpressionC T
(T U
navigationPropertyU g
.g h
Nameh l
)l m
)m n
{ 	
} 	
public'' !
EdmContainedEntitySet'' $
(''$ % 
IEdmNavigationSource''% 9"
parentNavigationSource'': P
,''P Q"
IEdmNavigationProperty''R h
navigationProperty''i {
,''{ |
IEdmPathExpression	''} �
navigationPath
''� �
)
''� �
:(( 
base(( 
((( 
navigationProperty(( %
.((% &
Name((& *
,((* +
navigationProperty((, >
.((> ?
ToEntityType((? K
(((K L
)((L M
)((M N
{)) 	
EdmUtil** 
.** 
CheckArgumentNull** %
(**% &"
parentNavigationSource**& <
,**< =
$str**> V
)**V W
;**W X
EdmUtil++ 
.++ 
CheckArgumentNull++ %
(++% &
navigationProperty++& 8
,++8 9
$str++: N
)++N O
;++O P
this-- 
.-- "
parentNavigationSource-- '
=--( )"
parentNavigationSource--* @
;--@ A
this.. 
... 
navigationProperty.. #
=..$ %
navigationProperty..& 8
;..8 9
this// 
.// 
navigationPath// 
=//  !
navigationPath//" 0
;//0 1
}00 	
public55 
override55 
IEdmPathExpression55 *
Path55+ /
{66 	
get77 
{77 
return77 
this77 
.77 
path77 "
??77# %
(77& '
this77' +
.77+ ,
path77, 0
=771 2
this773 7
.777 8
ComputePath778 C
(77C D
)77D E
)77E F
;77F G
}77H I
}88 	
public<<  
IEdmNavigationSource<< #"
ParentNavigationSource<<$ :
{== 	
get>> 
{>> 
return>> 
this>> 
.>> "
parentNavigationSource>> 4
;>>4 5
}>>6 7
}?? 	
publicCC "
IEdmNavigationPropertyCC %
NavigationPropertyCC& 8
{DD 	
getEE 
{EE 
returnEE 
thisEE 
.EE 
navigationPropertyEE 0
;EE0 1
}EE2 3
}FF 	
internalHH 
IEdmPathExpressionHH #
NavigationPathHH$ 2
{II 	
getJJ 
{KK 
returnLL 
thisLL 
.LL 
navigationPathLL *
;LL* +
}MM 
}NN 	
privatePP 
stringPP 
FullNavigationPathPP )
{QQ 	
getRR 
{SS 
ifTT 
(TT 
thisTT 
.TT 
fullPathTT !
==TT" $
nullTT% )
)TT) *
{UU 
ListVV 
<VV 
stringVV 
>VV  
fullPathVV! )
=VV* +
newVV, /
ListVV0 4
<VV4 5
stringVV5 ;
>VV; <
(VV< =
)VV= >
;VV> ?!
EdmContainedEntitySetWW )

=WW8 9
thisWW: >
;WW> ?
whileXX 
(XX 

!=XX) +
nullXX, 0
)XX0 1
{YY 
fullPathZZ  
.ZZ  !
AddRangeZZ! )
(ZZ) *

.ZZ7 8
NavigationPathZZ8 F
.ZZF G
PathSegmentsZZG S
)ZZS T
;ZZT U

=[[& '

.[[5 6"
ParentNavigationSource[[6 L
as[[M O!
EdmContainedEntitySet[[P e
;[[e f
}\\ 
fullPath^^ 
.^^ 
Reverse^^ $
(^^$ %
)^^% &
;^^& '
this__ 
.__ 
fullPath__ !
=__" #
new__$ '
EdmPathExpression__( 9
(__9 :
fullPath__: B
)__B C
.__C D
Path__D H
;__H I
}`` 
returnbb 
thisbb 
.bb 
fullPathbb $
;bb$ %
}cc 
}dd 	
publickk 
overridekk 
IEnumerablekk #
<kk# $)
IEdmNavigationPropertyBindingkk$ A
>kkA B*
FindNavigationPropertyBindingskkC a
(kka b"
IEdmNavigationPropertykkb x
navigationProperty	kky �
)
kk� �
{ll 	
IEnumerablemm 
<mm )
IEdmNavigationPropertyBindingmm 5
>mm5 6
bindingsmm7 ?
=mm@ A
basemmB F
.mmF G*
FindNavigationPropertyBindingsmmG e
(mme f
navigationPropertymmf x
)mmx y
;mmy z 
IEdmNavigationSourcenn  
parentnn! '
;nn' ("
IEdmContainedEntitySetoo "
	containedoo# ,
=oo- .
thisoo/ 3
;oo3 4
IEnumerablepp 
<pp )
IEdmNavigationPropertyBindingpp 5
>pp5 6
parentBindingspp7 E
;ppE F
whilerr 
(rr 
	containedrr 
!=rr 
nullrr  $
)rr$ %
{ss 
parenttt 
=tt 
	containedtt "
.tt" #"
ParentNavigationSourcett# 9
;tt9 :
parentBindingsuu 
=uu  
parentuu! '
.uu' (*
FindNavigationPropertyBindingsuu( F
(uuF G
navigationPropertyuuG Y
)uuY Z
;uuZ [
ifvv 
(vv 
parentBindingsvv "
!=vv# %
nullvv& *
)vv* +
{ww 
bindingsxx 
=xx 
bindingsxx '
==xx( *
nullxx+ /
?xx0 1
parentBindingsxx2 @
:xxA B
bindingsxxC K
.xxK L
ConcatxxL R
(xxR S
parentBindingsxxS a
)xxa b
;xxb c
}yy 
	contained{{ 
={{ 
parent{{ "
as{{# %"
IEdmContainedEntitySet{{& <
;{{< =
}|| 
return~~ 
bindings~~ 
;~~ 
} 	
public
�� 
override
�� "
IEdmNavigationSource
�� ,"
FindNavigationTarget
��- A
(
��A B$
IEdmNavigationProperty
��B X 
navigationProperty
��Y k
)
��k l
{
�� 	
return
�� 
this
�� 
.
�� "
FindNavigationTarget
�� ,
(
��, - 
navigationProperty
��- ?
,
��? @
new
��A D
EdmPathExpression
��E V
(
��V W 
navigationProperty
��W i
.
��i j
Name
��j n
)
��n o
)
��o p
;
��p q
}
�� 	
public
�� 
override
�� "
IEdmNavigationSource
�� ,"
FindNavigationTarget
��- A
(
��A B$
IEdmNavigationProperty
��B X 
navigationProperty
��Y k
,
��k l 
IEdmPathExpression
��m 
bindingPath��� �
)��� �
{
�� 	
if
�� 
(
�� 
bindingPath
�� 
!=
�� 
null
�� #
)
��# $
{
�� 
if
�� 
(
�� 
bindingPath
�� 
.
��  
Path
��  $
.
��$ %
Length
��% +
>
��, -
this
��. 2
.
��2 3 
FullNavigationPath
��3 E
.
��E F
Length
��F L
&&
��M O
bindingPath
��P [
.
��[ \
Path
��\ `
.
��` a

StartsWith
��a k
(
��k l
this
��l p
.
��p q!
FullNavigationPath��q �
,��� �
System��� �
.��� � 
StringComparison��� �
.��� �
Ordinal��� �
)��� �
)��� �
{
�� 
bindingPath
�� 
=
��  !
new
��" %
EdmPathExpression
��& 7
(
��7 8
bindingPath
��8 C
.
��C D
Path
��D H
.
��H I
	Substring
��I R
(
��R S
this
��S W
.
��W X 
FullNavigationPath
��X j
.
��j k
Length
��k q
+
��r s
$num
��t u
)
��u v
)
��v w
;
��w x
}
�� 
}
�� 
IEdmNavigationSource
��  
navigationTarget
��! 1
=
��2 3
base
��4 8
.
��8 9"
FindNavigationTarget
��9 M
(
��M N 
navigationProperty
��N `
,
��` a
bindingPath
��b m
)
��m n
;
��n o
if
�� 
(
�� 
navigationTarget
��  
is
��! #"
IEdmUnknownEntitySet
��$ 8
)
��8 9
{
�� 
IEnumerable
�� 
<
�� 
string
�� "
>
��" #
segments
��$ ,
=
��- .
(
��/ 0
bindingPath
��0 ;
==
��< >
null
��? C
||
��D F
string
��G M
.
��M N

��N [
(
��[ \
bindingPath
��\ g
.
��g h
Path
��h l
)
��l m
)
��m n
?
��o p
new
��q t
string
��u {
[
��{ |
]
��| }
{
��~ "
navigationProperty��� �
.��� �
Name��� �
}��� �
:��� �
bindingPath��� �
.��� �
PathSegments��� �
;��� �
bindingPath
�� 
=
�� 
new
�� !
EdmPathExpression
��" 3
(
��3 4
this
��4 8
.
��8 9
NavigationPath
��9 G
.
��G H
PathSegments
��H T
.
��T U
Concat
��U [
(
��[ \
segments
��\ d
)
��d e
)
��e f
;
��f g
return
�� 
this
�� 
.
�� $
parentNavigationSource
�� 2
.
��2 3"
FindNavigationTarget
��3 G
(
��G H 
navigationProperty
��H Z
,
��Z [
bindingPath
��\ g
)
��g h
;
��h i
}
�� 
return
�� 
navigationTarget
�� #
;
��# $
}
�� 	
private
��  
IEdmPathExpression
�� "
ComputePath
��# .
(
��. /
)
��/ 0
{
�� 	
IEdmType
�� 

targetType
�� 
=
��  !
this
��" &
.
��& ' 
navigationProperty
��' 9
.
��9 :

��: G
.
��G H

��H U
(
��U V
)
��V W
;
��W X
List
�� 
<
�� 
string
�� 
>
�� 
newPath
��  
=
��! "
new
��# &
List
��' +
<
��+ ,
string
��, 2
>
��2 3
(
��3 4
this
��4 8
.
��8 9$
parentNavigationSource
��9 O
.
��O P
Path
��P T
.
��T U
PathSegments
��U a
)
��a b
;
��b c
if
�� 
(
�� 
!
�� 
(
�� 

targetType
�� 
is
�� 
IEdmComplexType
��  /
)
��/ 0
&&
��1 3
!
��4 5
this
��5 9
.
��9 :$
parentNavigationSource
��: P
.
��P Q
Type
��Q U
.
��U V

��V c
(
��c d
)
��d e
.
��e f
IsOrInheritsFrom
��f v
(
��v w

targetType��w �
)��� �
)��� �
{
�� 
newPath
�� 
.
�� 
Add
�� 
(
�� 

targetType
�� &
.
��& '
FullTypeName
��' 3
(
��3 4
)
��4 5
)
��5 6
;
��6 7
}
�� 
newPath
�� 
.
�� 
AddRange
�� 
(
�� 
this
�� !
.
��! "
NavigationPath
��" 0
.
��0 1
PathSegments
��1 =
)
��= >
;
��> ?
return
�� 
new
�� 
EdmPathExpression
�� (
(
��( )
newPath
��) 0
.
��0 1
ToArray
��1 8
(
��8 9
)
��9 :
)
��: ;
;
��; <
}
�� 	
}
�� 
}�� �
?D:\odata.net\src\Microsoft.OData.Edm\Schema\EdmEntitySetBase.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

abstract 
class 
EdmEntitySetBase *
:+ ,
EdmNavigationSource- @
,@ A
IEdmEntitySetBaseB S
{
private 
readonly 
IEdmCollectionType +
type, 0
;0 1
	protected 
EdmEntitySetBase "
(" #
string# )
name* .
,. /
IEdmEntityType0 >
elementType? J
)J K
: 
base 
( 
name 
) 
{ 	
EdmUtil 
. 
CheckArgumentNull %
(% &
elementType& 1
,1 2
$str3 @
)@ A
;A B
this 
. 
type 
= 
new 
EdmCollectionType -
(- .
new. 1"
EdmEntityTypeReference2 H
(H I
elementTypeI T
,T U
falseV [
)[ \
)\ ]
;] ^
} 	
public   
override   
IEdmType    
Type  ! %
{!! 	
get"" 
{"" 
return"" 
this"" 
."" 
type"" "
;""" #
}""$ %
}## 	
}$$ 
}%% �
9D:\odata.net\src\Microsoft.OData.Edm\Schema\EdmInclude.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

class 

EdmInclude 
: 
IEdmInclude )
{
private 
readonly 
string 
alias  %
;% &
private 
readonly 
string 
namespaceIncluded  1
;1 2
public 

EdmInclude 
( 
string  
alias! &
,& '
string( .
namespaceIncluded/ @
)@ A
{ 	
this 
. 
alias 
= 
alias 
; 
this 
. 
namespaceIncluded "
=# $
namespaceIncluded% 6
;6 7
} 	
public 
string 
Alias 
{   	
get!! 
{"" 
return## 
this## 
.## 
alias## !
;##! "
}$$ 
}%% 	
public** 
string** 
	Namespace** 
{++ 	
get,, 
{-- 
return.. 
this.. 
... 
namespaceIncluded.. -
;..- .
}// 
}00 	
}11 
}22 �
DD:\odata.net\src\Microsoft.OData.Edm\Schema\EdmIncludeAnnotations.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

class !
EdmIncludeAnnotations &
:' ("
IEdmIncludeAnnotations) ?
{
private 
readonly 
string 

;- .
private 
readonly 
string 
	qualifier  )
;) *
private 
readonly 
string 
targetNamespace  /
;/ 0
public !
EdmIncludeAnnotations $
($ %
string% +

,9 :
string; A
	qualifierB K
,K L
stringM S
targetNamespaceT c
)c d
{ 	
this 
. 

=  

;. /
this 
. 
	qualifier 
= 
	qualifier &
;& '
this 
. 
targetNamespace  
=! "
targetNamespace# 2
;2 3
} 	
public"" 
string"" 

{## 	
get$$ 
{%% 
return&& 
this&& 
.&& 

;&&) *
}'' 
}(( 	
public-- 
string-- 
	Qualifier-- 
{.. 	
get// 
{00 
return11 
this11 
.11 
	qualifier11 %
;11% &
}22 
}33 	
public88 
string88 
TargetNamespace88 %
{99 	
get:: 
{;; 
return<< 
this<< 
.<< 
targetNamespace<< +
;<<+ ,
}== 
}>> 	
}?? 
}@@ ��
BD:\odata.net\src\Microsoft.OData.Edm\Schema\EdmNavigationSource.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

abstract 
class 
EdmNavigationSource -
:. /
EdmNamedElement0 ?
,? @ 
IEdmNavigationSourceA U
{ 
private 
readonly 

Dictionary #
<# $"
IEdmNavigationProperty$ :
,: ;

Dictionary< F
<F G
stringG M
,M N)
IEdmNavigationPropertyBindingO l
>l m
>m n'
navigationPropertyMappings	o �
=
� �
new
� �

Dictionary
� �
<
� �$
IEdmNavigationProperty
� �
,
� �

Dictionary
� �
<
� �
string
� �
,
� �+
IEdmNavigationPropertyBinding
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
readonly 

Dictionary #
<# $"
IEdmNavigationProperty$ :
,: ; 
IEdmUnknownEntitySet< P
>P Q*
unknownNavigationPropertyCacheR p
=q r
news v

Dictionary	w �
<
� �$
IEdmNavigationProperty
� �
,
� �"
IEdmUnknownEntitySet
� �
>
� �
(
� �
)
� �
;
� �
private 
readonly 
Cache 
< 
EdmNavigationSource 2
,2 3
IEnumerable4 ?
<? @)
IEdmNavigationPropertyBinding@ ]
>] ^
>^ _"
navigationTargetsCache` v
=w x
newy |
Cache	} �
<
� �!
EdmNavigationSource
� �
,
� �
IEnumerable
� �
<
� �+
IEdmNavigationPropertyBinding
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %
EdmNavigationSource% 8
,8 9
IEnumerable: E
<E F)
IEdmNavigationPropertyBindingF c
>c d
>d e)
ComputeNavigationTargetsFunc	f �
=
� �
(
� �
me
� �
)
� �
=>
� �
me
� �
.
� �&
ComputeNavigationTargets
� �
(
� �
)
� �
;
� �
	protected 
EdmNavigationSource %
(% &
string& ,
name- 1
)1 2
: 
base 
( 
name 
) 
{ 	
}   	
public%% 
IEnumerable%% 
<%% )
IEdmNavigationPropertyBinding%% 8
>%%8 9&
NavigationPropertyBindings%%: T
{&& 	
get'' 
{'' 
return'' 
this'' 
.'' "
navigationTargetsCache'' 4
.''4 5
GetValue''5 =
(''= >
this''> B
,''B C(
ComputeNavigationTargetsFunc''D `
,''` a
null''b f
)''f g
;''g h
}''i j
}(( 	
public-- 
abstract-- 
IEdmType--  
Type--! %
{--& '
get--( +
;--+ ,
}--- .
public22 
abstract22 
IEdmPathExpression22 *
Path22+ /
{220 1
get222 5
;225 6
}227 8
public99 
void99 
AddNavigationTarget99 '
(99' ("
IEdmNavigationProperty99( >
navigationProperty99? Q
,99Q R 
IEdmNavigationSource99S g
target99h n
)99n o
{:: 	
EdmUtil;; 
.;; 
CheckArgumentNull;; %
(;;% &
navigationProperty;;& 8
,;;8 9
$str;;: N
);;N O
;;;O P
EdmUtil<< 
.<< 
CheckArgumentNull<< %
(<<% &
target<<& ,
,<<, -
$str<<. A
)<<A B
;<<B C
if@@ 
(@@ 
navigationProperty@@ "
.@@" #
ContainsTarget@@# 1
)@@1 2
{AA 
returnBB 
;BB 
}CC 
stringEE 
pathEE 
=EE 
navigationPropertyEE ,
.EE, -
NameEE- 1
;EE1 2
ifGG 
(GG 
!GG 
thisGG 
.GG 
TypeGG 
.GG 

(GG( )
)GG) *
.GG* +
IsOrInheritsFromGG+ ;
(GG; <
navigationPropertyGG< N
.GGN O

)GG\ ]
)GG] ^
{HH 
pathII 
=II 
navigationPropertyII )
.II) *

.II7 8
FullTypeNameII8 D
(IID E
)IIE F
+IIG H
$charIII L
+IIM N
pathIIO S
;IIS T
}JJ 
AddNavigationPropertyBindingLL (
(LL( )
navigationPropertyLL) ;
,LL; <
targetLL= C
,LLC D
newLLE H
EdmPathExpressionLLI Z
(LLZ [
pathLL[ _
)LL_ `
)LL` a
;LLa b
thisMM 
.MM "
navigationTargetsCacheMM '
.MM' (
ClearMM( -
(MM- .
nullMM. 2
)MM2 3
;MM3 4
}NN 	
publicVV 
voidVV 
AddNavigationTargetVV '
(VV' ("
IEdmNavigationPropertyVV( >
navigationPropertyVV? Q
,VVQ R 
IEdmNavigationSourceVVS g
targetVVh n
,VVn o
IEdmPathExpression	VVp �
bindingPath
VV� �
)
VV� �
{WW 	
EdmUtilXX 
.XX 
CheckArgumentNullXX %
(XX% &
navigationPropertyXX& 8
,XX8 9
$strXX: N
)XXN O
;XXO P
EdmUtilYY 
.YY 
CheckArgumentNullYY %
(YY% &
targetYY& ,
,YY, -
$strYY. A
)YYA B
;YYB C
EdmUtilZZ 
.ZZ 
CheckArgumentNullZZ %
(ZZ% &
bindingPathZZ& 1
,ZZ1 2
$strZZ3 A
)ZZA B
;ZZB C
if^^ 
(^^ 
navigationProperty^^ "
.^^" #
ContainsTarget^^# 1
)^^1 2
{__ 
return`` 
;`` 
}aa 
ifcc 
(cc 
navigationPropertycc "
.cc" #
Namecc# '
!=cc( *
bindingPathcc+ 6
.cc6 7
PathSegmentscc7 C
.ccC D
LastccD H
(ccH I
)ccI J
)ccJ K
{dd 
throwee 
newee 
ArgumentExceptionee +
(ee+ ,
Stringsee, 3
.ee3 44
(NavigationPropertyBinding_PathIsNotValidee4 \
)ee\ ]
;ee] ^
}ff 
AddNavigationPropertyBindinghh (
(hh( )
navigationPropertyhh) ;
,hh; <
targethh= C
,hhC D
bindingPathhhE P
)hhP Q
;hhQ R
thisii 
.ii "
navigationTargetsCacheii '
.ii' (
Clearii( -
(ii- .
nullii. 2
)ii2 3
;ii3 4
}jj 	
publicqq 
virtualqq 
IEnumerableqq "
<qq" #)
IEdmNavigationPropertyBindingqq# @
>qq@ A*
FindNavigationPropertyBindingsqqB `
(qq` a"
IEdmNavigationPropertyqqa w
navigationProperty	qqx �
)
qq� �
{rr 	
EdmUtilss 
.ss 
CheckArgumentNullss %
(ss% &
navigationPropertyss& 8
,ss8 9
$strss: N
)ssN O
;ssO P

Dictionaryuu 
<uu 
stringuu 
,uu )
IEdmNavigationPropertyBindinguu <
>uu< =
resultuu> D
=uuE F
EdmUtilvv 
.vv 
DictionarySafeGetvv )
(vv) *
thisvv* .
.vv. /&
navigationPropertyMappingsvv/ I
,vvI J
navigationPropertyvvK ]
)vv] ^
;vv^ _
ifxx 
(xx 
resultxx 
!=xx 
nullxx 
)xx 
{yy 
returnzz 
resultzz 
.zz 
Selectzz $
(zz$ %
itemzz% )
=>zz* ,
itemzz- 1
.zz1 2
Valuezz2 7
)zz7 8
;zz8 9
}{{ 
return}} 
null}} 
;}} 
}~~ 	
public
�� 
virtual
�� "
IEdmNavigationSource
�� +"
FindNavigationTarget
��, @
(
��@ A$
IEdmNavigationProperty
��A W 
navigationProperty
��X j
)
��j k
{
�� 	
EdmUtil
�� 
.
�� 
CheckArgumentNull
�� %
(
��% & 
navigationProperty
��& 8
,
��8 9
$str
��: D
)
��D E
;
��E F
bool
�� 
	isDerived
�� 
=
�� 
!
�� 
(
��  
navigationProperty
�� 1
.
��1 2

��2 ?
.
��? @

��@ M
(
��M N
)
��N O
is
��P R
IEdmComplexType
��S b
)
��b c
&&
��d f
!
��g h
this
��h l
.
��l m
Type
��m q
.
��q r

��r 
(�� �
)��� �
.��� � 
IsOrInheritsFrom��� �
(��� �"
navigationProperty��� �
.��� �

)��� �
;��� � 
IEdmPathExpression
�� 
bindingPath
�� *
=
��+ ,
	isDerived
��- 6
?
�� 
new
�� 
EdmPathExpression
�� '
(
��' ( 
navigationProperty
��( :
.
��: ;

��; H
.
��H I
FullTypeName
��I U
(
��U V
)
��V W
,
��W X 
navigationProperty
��Y k
.
��k l
Name
��l p
)
��p q
:
�� 
new
�� 
EdmPathExpression
�� '
(
��' ( 
navigationProperty
��( :
.
��: ;
Name
��; ?
)
��? @
;
��@ A
return
�� "
FindNavigationTarget
�� '
(
��' ( 
navigationProperty
��( :
,
��: ;
bindingPath
��< G
)
��G H
;
��H I
}
�� 	
public
�� 
virtual
�� "
IEdmNavigationSource
�� +"
FindNavigationTarget
��, @
(
��@ A$
IEdmNavigationProperty
��A W 
navigationProperty
��X j
,
��j k 
IEdmPathExpression
��l ~
bindingPath�� �
)��� �
{
�� 	
EdmUtil
�� 
.
�� 
CheckArgumentNull
�� %
(
��% & 
navigationProperty
��& 8
,
��8 9
$str
��: N
)
��N O
;
��O P
bindingPath
�� 
=
�� 
bindingPath
�� %
??
��& (
new
��) ,
EdmPathExpression
��- >
(
��> ? 
navigationProperty
��? Q
.
��Q R
Name
��R V
)
��V W
;
��W X

Dictionary
�� 
<
�� 
string
�� 
,
�� +
IEdmNavigationPropertyBinding
�� <
>
��< =
result
��> D
=
��E F
EdmUtil
��G N
.
��N O
DictionarySafeGet
��O `
(
��` a
this
��a e
.
��e f)
navigationPropertyMappings��f �
,��� �"
navigationProperty��� �
)��� �
;��� �
if
�� 
(
�� 
result
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
IEdmNavigationPropertyBinding
�� -
binding
��. 5
=
��6 7
EdmUtil
��8 ?
.
��? @
DictionarySafeGet
��@ Q
(
��Q R
result
��R X
,
��X Y
bindingPath
��Z e
.
��e f
Path
��f j
)
��j k
;
��k l
{
�� 
if
�� 
(
�� 
binding
�� 
!=
��  "
null
��# '
)
��' (
{
�� 
return
�� 
binding
�� &
.
��& '
Target
��' -
;
��- .
}
�� 
}
�� 
}
�� 
if
�� 
(
��  
navigationProperty
�� "
.
��" #
ContainsTarget
��# 1
)
��1 2
{
�� 
return
�� *
AddNavigationPropertyBinding
�� 3
(
��3 4 
navigationProperty
�� &
,
��& '
new
�� #
EdmContainedEntitySet
�� -
(
��- .
this
��. 2
,
��2 3 
navigationProperty
��4 F
,
��F G
bindingPath
��H S
)
��S T
,
��T U
bindingPath
�� 
)
��  
.
�� 
Target
�� 
;
�� 
}
�� 
return
�� 
EdmUtil
�� 
.
�� #
DictionaryGetOrUpdate
�� 0
(
��0 1
this
�� 
.
�� ,
unknownNavigationPropertyCache
�� 3
,
��3 4 
navigationProperty
�� "
,
��" #
navProperty
�� 
=>
�� 
new
�� "!
EdmUnknownEntitySet
��# 6
(
��6 7
this
��7 ;
,
��; <
navProperty
��= H
)
��H I
)
��I J
;
��J K
}
�� 	
private
�� +
IEdmNavigationPropertyBinding
�� -*
AddNavigationPropertyBinding
��. J
(
��J K$
IEdmNavigationProperty
��K a 
navigationProperty
��b t
,
��t u#
IEdmNavigationSource��v �
target��� �
,��� �"
IEdmPathExpression��� �
bindingPath��� �
)��� �
{
�� 	

Dictionary
�� 
<
�� 
string
�� 
,
�� +
IEdmNavigationPropertyBinding
�� <
>
��< =
mapping
��> E
=
��F G
EdmUtil
��H O
.
��O P#
DictionaryGetOrUpdate
��P e
(
��e f
this
�� 
.
�� (
navigationPropertyMappings
�� /
,
��/ 0 
navigationProperty
�� "
,
��" #
navProperty
�� 
=>
�� 
new
�� "

Dictionary
��# -
<
��- .
string
��. 4
,
��4 5+
IEdmNavigationPropertyBinding
��6 S
>
��S T
(
��T U
)
��U V
)
��V W
;
��W X+
IEdmNavigationPropertyBinding
�� )
containedBinding
��* :
=
��; <
EdmUtil
��= D
.
��D E#
DictionaryGetOrUpdate
��E Z
<
��Z [
string
��[ a
,
��a b,
IEdmNavigationPropertyBinding��c �
>��� �
(��� �
mapping
�� 
,
�� 
bindingPath
�� 
.
�� 
Path
��  
,
��  !
path
�� 
=>
�� 
new
�� *
EdmNavigationPropertyBinding
�� 8
(
��8 9 
navigationProperty
��9 K
,
��K L
target
��M S
,
��S T
new
��U X
EdmPathExpression
��Y j
(
��j k
path
��k o
)
��o p
)
��p q
)
��q r
;
��r s
return
�� 
containedBinding
�� #
;
��# $
}
�� 	
private
�� 
IEnumerable
�� 
<
�� +
IEdmNavigationPropertyBinding
�� 9
>
��9 :&
ComputeNavigationTargets
��; S
(
��S T
)
��T U
{
�� 	
List
�� 
<
�� +
IEdmNavigationPropertyBinding
�� .
>
��. /
result
��0 6
=
��7 8
new
��9 <
List
��= A
<
��A B+
IEdmNavigationPropertyBinding
��B _
>
��_ `
(
��` a
)
��a b
;
��b c
lock
�� 
(
�� 
this
�� 
.
�� (
navigationPropertyMappings
�� 1
)
��1 2
{
�� 
foreach
�� 
(
�� 
KeyValuePair
�� %
<
��% &$
IEdmNavigationProperty
��& <
,
��< =

Dictionary
��> H
<
��H I
string
��I O
,
��O P+
IEdmNavigationPropertyBinding
��Q n
>
��n o
>
��o p
mapping
��q x
in
��y {
this��| �
.��� �*
navigationPropertyMappings��� �
)��� �
{
�� 
if
�� 
(
�� 
!
�� 
mapping
��  
.
��  !
Key
��! $
.
��$ %
ContainsTarget
��% 3
)
��3 4
{
�� 
foreach
�� 
(
��  !
KeyValuePair
��! -
<
��- .
string
��. 4
,
��4 5+
IEdmNavigationPropertyBinding
��6 S
>
��S T
kv
��U W
in
��X Z
mapping
��[ b
.
��b c
Value
��c h
)
��h i
{
�� 
result
�� "
.
��" #
Add
��# &
(
��& '
kv
��' )
.
��) *
Value
��* /
)
��/ 0
;
��0 1
}
�� 
}
�� 
}
�� 
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
}
�� 
}�� �
;D:\odata.net\src\Microsoft.OData.Edm\Schema\EdmReference.cs
	namespace

 	
	Microsoft


 
.

 
OData

 
.

 
Edm

 
{ 
public 

class 
EdmReference 
: 

{ 
private 
Uri 
uri 
; 
private 
List 
< 
IEdmInclude  
>  !
includes" *
=+ ,
new- 0
List1 5
<5 6
IEdmInclude6 A
>A B
(B C
)C D
;D E
private 
List 
< "
IEdmIncludeAnnotations +
>+ ,
includeAnnotations- ?
=@ A
newB E
ListF J
<J K"
IEdmIncludeAnnotationsK a
>a b
(b c
)c d
;d e
public 
EdmReference 
( 
Uri 
uri  #
)# $
{ 	
this 
. 
uri 
= 
uri 
; 
} 	
public!! 
Uri!! 
Uri!! 
{"" 	
get## 
{$$ 
return%% 
this%% 
.%% 
uri%% 
;%%  
}&& 
}'' 	
public,, 
IEnumerable,, 
<,, 
IEdmInclude,, &
>,,& '
Includes,,( 0
{-- 	
get.. 
{// 
return00 
this00 
.00 
includes00 $
;00$ %
}11 
}22 	
public77 
IEnumerable77 
<77 "
IEdmIncludeAnnotations77 1
>771 2
IncludeAnnotations773 E
{88 	
get99 
{:: 
return;; 
this;; 
.;; 
includeAnnotations;; .
;;;. /
}<< 
}== 	
publicCC 
voidCC 

AddIncludeCC 
(CC 
IEdmIncludeCC *

edmIncludeCC+ 5
)CC5 6
{DD 	
thisEE 
.EE 
includesEE 
.EE 
AddEE 
(EE 

edmIncludeEE (
)EE( )
;EE) *
}FF 	
publicLL 
voidLL !
AddIncludeAnnotationsLL )
(LL) *"
IEdmIncludeAnnotationsLL* @!
edmIncludeAnnotationsLLA V
)LLV W
{MM 	
thisNN 
.NN 
includeAnnotationsNN #
.NN# $
AddNN$ '
(NN' (!
edmIncludeAnnotationsNN( =
)NN= >
;NN> ?
}OO 	
}PP 
}QQ �
;D:\odata.net\src\Microsoft.OData.Edm\Schema\EdmSingleton.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

class 
EdmSingleton 
: 
EdmNavigationSource  3
,3 4

{
private 
readonly 
IEdmEntityContainer ,
	container- 6
;6 7
private 
readonly 
IEdmEntityType '

entityType( 2
;2 3
private 
IEdmPathExpression "
path# '
;' (
public 
EdmSingleton 
( 
IEdmEntityContainer /
	container0 9
,9 :
string; A
nameB F
,F G
IEdmEntityTypeH V

entityTypeW a
)a b
: 
base 
( 
name 
) 
{ 	
EdmUtil 
. 
CheckArgumentNull %
(% &
	container& /
,/ 0
$str1 <
)< =
;= >
EdmUtil 
. 
CheckArgumentNull %
(% &

entityType& 0
,0 1
$str2 >
)> ?
;? @
this 
. 
	container 
= 
	container &
;& '
this 
. 

entityType 
= 

entityType (
;( )
this   
.   
path   
=   
new   
EdmPathExpression   -
(  - .
name  . 2
)  2 3
;  3 4
}!! 	
public&& #
EdmContainerElementKind&& & 
ContainerElementKind&&' ;
{'' 	
get(( 
{(( 
return(( #
EdmContainerElementKind(( 0
.((0 1
	Singleton((1 :
;((: ;
}((< =
})) 	
public.. 
IEdmEntityContainer.. "
	Container..# ,
{// 	
get00 
{00 
return00 
this00 
.00 
	container00 '
;00' (
}00) *
}11 	
public66 
override66 
IEdmType66  
Type66! %
{77 	
get88 
{88 
return88 
this88 
.88 

entityType88 (
;88( )
}88* +
}99 	
public>> 
override>> 
IEdmPathExpression>> *
Path>>+ /
{?? 	
get@@ 
{@@ 
return@@ 
this@@ 
.@@ 
path@@ "
;@@" #
}@@$ %
}AA 	
}BB 
}CC �
BD:\odata.net\src\Microsoft.OData.Edm\Schema\EdmUnknownEntitySet.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
class
EdmUnknownEntitySet &
:' (
EdmEntitySetBase) 9
,9 : 
IEdmUnknownEntitySet; O
{ 
private 
readonly "
IEdmNavigationProperty /
navigationProperty0 B
;B C
private 
readonly  
IEdmNavigationSource -"
parentNavigationSource. D
;D E
private 
IEdmPathExpression "
path# '
;' (
public 
EdmUnknownEntitySet "
(" # 
IEdmNavigationSource# 7"
parentNavigationSource8 N
,N O"
IEdmNavigationPropertyP f
navigationPropertyg y
)y z
: 
base 
( 
navigationProperty %
.% &
Name& *
,* +
navigationProperty, >
.> ?
ToEntityType? K
(K L
)L M
)M N
{ 	
EdmUtil 
. 
CheckArgumentNull %
(% &"
parentNavigationSource& <
,< =
$str> V
)V W
;W X
EdmUtil 
. 
CheckArgumentNull %
(% &
navigationProperty& 8
,8 9
$str: N
)N O
;O P
this 
. "
parentNavigationSource '
=( )"
parentNavigationSource* @
;@ A
this   
.   
navigationProperty   #
=  $ %
navigationProperty  & 8
;  8 9
}!! 	
public&& 
override&& 
IEdmPathExpression&& *
Path&&+ /
{'' 	
get(( 
{(( 
return(( 
this(( 
.(( 
path(( "
??((# %
(((& '
this((' +
.((+ ,
path((, 0
=((1 2
ComputePath((3 >
(((> ?
)((? @
)((@ A
;((A B
}((C D
})) 	
public.. 
override.. 
IEdmType..  
Type..! %
{// 	
get00 
{00 
return00 
this00 
.00 
navigationProperty00 0
.000 1
Type001 5
.005 6

Definition006 @
;00@ A
}00B C
}11 	
public99 
override99  
IEdmNavigationSource99 , 
FindNavigationTarget99- A
(99A B"
IEdmNavigationProperty99B X
property99Y a
)99a b
{:: 	
return;; 
null;; 
;;; 
}<< 	
private>> 
IEdmPathExpression>> "
ComputePath>># .
(>>. /
)>>/ 0
{?? 	
List@@ 
<@@ 
string@@ 
>@@ 
newPath@@  
=@@! "
new@@# &
List@@' +
<@@+ ,
string@@, 2
>@@2 3
(@@3 4
this@@4 8
.@@8 9"
parentNavigationSource@@9 O
.@@O P
Path@@P T
.@@T U
PathSegments@@U a
)@@a b
;@@b c
newPathAA 
.AA 
AddAA 
(AA 
thisAA 
.AA 
navigationPropertyAA /
.AA/ 0
NameAA0 4
)AA4 5
;AA5 6
returnBB 
newBB 
EdmPathExpressionBB (
(BB( )
newPathBB) 0
.BB0 1
ToArrayBB1 8
(BB8 9
)BB9 :
)BB: ;
;BB; <
}CC 	
}DD 
}EE �
@D:\odata.net\src\Microsoft.OData.Edm\Schema\EdmPathExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

class 
EdmPathExpression "
:# $

EdmElement% /
,/ 0
IEdmPathExpression1 C
{ 
private 
IEnumerable 
< 
string "
>" #
pathSegments$ 0
;0 1
private 
string 
path 
; 
public 
EdmPathExpression  
(  !
string! '
path( ,
), -
{ 	
EdmUtil 
. 
CheckArgumentNull %
(% &
path& *
,* +
$str, 2
)2 3
;3 4
this 
. 
path 
= 
path 
; 
} 	
public## 
EdmPathExpression##  
(##  !
params##! '
string##( .
[##. /
]##/ 0
pathSegments##1 =
)##= >
:$$ 
this$$ 
($$ 
($$ 
IEnumerable$$ 
<$$  
string$$  &
>$$& '
)$$' (
pathSegments$$( 4
)$$4 5
{%% 	
}&& 	
public,, 
EdmPathExpression,,  
(,,  !
IEnumerable,,! ,
<,,, -
string,,- 3
>,,3 4
pathSegments,,5 A
),,A B
{-- 	
EdmUtil.. 
... 
CheckArgumentNull.. %
(..% &
pathSegments..& 2
,..2 3
$str..4 B
)..B C
;..C D
if00 
(00 
pathSegments00 
.00 
Any00  
(00  !
segment00! (
=>00) +
segment00, 3
.003 4
Contains004 <
(00< =
$str00= @
)00@ A
)00A B
)00B C
{11 
throw22 
new22 
ArgumentException22 +
(22+ ,
Strings22, 3
.223 4*
PathSegmentMustNotContainSlash224 R
)22R S
;22S T
}33 
this55 
.55 
pathSegments55 
=55 
pathSegments55  ,
.55, -
ToList55- 3
(553 4
)554 5
;555 6
}66 	
public;; 
IEnumerable;; 
<;; 
string;; !
>;;! "
PathSegments;;# /
{<< 	
get== 
{== 
return== 
this== 
.== 
pathSegments== *
??==+ -
(==. /
this==/ 3
.==3 4
pathSegments==4 @
===A B
this==C G
.==G H
path==H L
.==L M
Split==M R
(==R S
$char==S V
)==V W
)==W X
;==X Y
}==Z [
}>> 	
publicCC 
stringCC 
PathCC 
{DD 	
getEE 
{EE 
returnEE 
thisEE 
.EE 
pathEE "
??EE# %
(EE& '
thisEE' +
.EE+ ,
pathEE, 0
=EE1 2
stringEE3 9
.EE9 :
JoinEE: >
(EE> ?
$strEE? B
,EEB C
thisEED H
.EEH I
pathSegmentsEEI U
.EEU V
ToArrayEEV ]
(EE] ^
)EE^ _
)EE_ `
)EE` a
;EEa b
}EEc d
}FF 	
publicKK 
virtualKK 
EdmExpressionKindKK (
ExpressionKindKK) 7
{LL 	
getMM 
{MM 
returnMM 
EdmExpressionKindMM *
.MM* +
PathMM+ /
;MM/ 0
}MM1 2
}NN 	
}OO 
}PP �
AD:\odata.net\src\Microsoft.OData.Edm\Schema\EdmEnumMemberValue.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

class 
EdmEnumMemberValue #
:$ %
IEdmEnumMemberValue& 9
{
private 
readonly 
long 
value #
;# $
public 
EdmEnumMemberValue !
(! "
long" &
value' ,
), -
{ 	
this 
. 
value 
= 
value 
; 
} 	
public 
long 
Value 
{ 	
get 
{ 
return   
this   
.   
value   !
;  ! "
}!! 
}"" 	
}## 
}$$ �<
0D:\odata.net\src\Microsoft.OData.Edm\Memoizer.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{
internal 
sealed
class 
Memoizer "
<" #
TArg# '
,' (
TResult) 0
>0 1
{ 
private 
readonly 
Func 
< 
TArg "
," #
TResult$ +
>+ ,
function- 5
;5 6
private 
readonly 

Dictionary #
<# $
TArg$ (
,( )
Result* 0
>0 1
resultCache2 =
;= >
private 
readonly  
ReaderWriterLockSlim -
slimLock. 6
;6 7
internal 
Memoizer 
( 
Func 
< 
TArg #
,# $
TResult% ,
>, -
function. 6
,6 7
IEqualityComparer8 I
<I J
TArgJ N
>N O
argComparerP [
)[ \
{   	
Debug!! 
.!! 
Assert!! 
(!! 
function!! !
!=!!" $
null!!% )
,!!) *
$str!!+ =
)!!= >
;!!> ?
this## 
.## 
function## 
=## 
function## $
;##$ %
this$$ 
.$$ 
resultCache$$ 
=$$ 
new$$ "

Dictionary$$# -
<$$- .
TArg$$. 2
,$$2 3
Result$$4 :
>$$: ;
($$; <
argComparer$$< G
)$$G H
;$$H I
this&& 
.&& 
slimLock&& 
=&& 
new&&  
ReaderWriterLockSlim&&  4
(&&4 5
)&&5 6
;&&6 7
}'' 	
internal00 
TResult00 
Evaluate00 !
(00! "
TArg00" &
arg00' *
)00* +
{11 	
Result22 
result22 
;22 
bool33 
	hasResult33 
;33 
this66 
.66 
slimLock66 
.66 

(66' (
)66( )
;66) *
try88 
{99 
	hasResult:: 
=:: 
this::  
.::  !
resultCache::! ,
.::, -
TryGetValue::- 8
(::8 9
arg::9 <
,::< =
out::> A
result::B H
)::H I
;::I J
};; 
finally<< 
{== 
this>> 
.>> 
slimLock>> 
.>> 
ExitReadLock>> *
(>>* +
)>>+ ,
;>>, -
}?? 
ifAA 
(AA 
!AA 
	hasResultAA 
)AA 
{BB 
thisDD 
.DD 
slimLockDD 
.DD 
EnterWriteLockDD ,
(DD, -
)DD- .
;DD. /
tryFF 
{GG 
ifII 
(II 
!II 
thisII 
.II 
resultCacheII )
.II) *
TryGetValueII* 5
(II5 6
argII6 9
,II9 :
outII; >
resultII? E
)IIE F
)IIF G
{JJ 
resultKK 
=KK  
newKK! $
ResultKK% +
(KK+ ,
(KK, -
)KK- .
=>KK/ 1
thisKK2 6
.KK6 7
functionKK7 ?
(KK? @
argKK@ C
)KKC D
)KKD E
;KKE F
thisLL 
.LL 
resultCacheLL (
.LL( )
AddLL) ,
(LL, -
argLL- 0
,LL0 1
resultLL2 8
)LL8 9
;LL9 :
}MM 
}NN 
finallyOO 
{PP 
thisQQ 
.QQ 
slimLockQQ !
.QQ! "

(QQ/ 0
)QQ0 1
;QQ1 2
}RR 
}SS 
returnWW 
resultWW 
.WW 
GetValueWW "
(WW" #
)WW# $
;WW$ %
}XX 	
private^^ 
class^^ 
Result^^ 
{__ 	
private`` 
TResult`` 
value`` !
;``! "
privateaa 
Funcaa 
<aa 
TResultaa  
>aa  !
createValueDelegateaa" 5
;aa5 6
internalcc 
Resultcc 
(cc 
Funccc  
<cc  !
TResultcc! (
>cc( )
createValueDelegatecc* =
)cc= >
{dd 
Debugee 
.ee 
Assertee 
(ee 
nullee !
!=ee" $
createValueDelegateee% 8
,ee8 9
$stree: R
)eeR S
;eeS T
thisff 
.ff 
createValueDelegateff (
=ff) *
createValueDelegateff+ >
;ff> ?
}gg 
internalii 
TResultii 
GetValueii %
(ii% &
)ii& '
{jj 
ifkk 
(kk 
nullkk 
==kk 
thiskk  
.kk  !
createValueDelegatekk! 4
)kk4 5
{ll 
returnnn 
thisnn 
.nn  
valuenn  %
;nn% &
}oo 
lockss 
(ss 
thisss 
)ss 
{tt 
ifuu 
(uu 
nulluu 
==uu 
thisuu  $
.uu$ %
createValueDelegateuu% 8
)uu8 9
{vv 
returnyy 
thisyy #
.yy# $
valueyy$ )
;yy) *
}zz 
this|| 
.|| 
value|| 
=||  
this||! %
.||% &
createValueDelegate||& 9
(||9 :
)||: ;
;||; <
this
�� 
.
�� !
createValueDelegate
�� ,
=
��- .
null
��/ 3
;
��3 4
return
�� 
this
�� 
.
��  
value
��  %
;
��% &
}
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� "
ReaderWriterLockSlim
�� 1
{
�� 	
private
�� 
object
�� 
readerWriterLock
�� +
=
��, -
new
��. 1
object
��2 8
(
��8 9
)
��9 :
;
��: ;
internal
�� 
void
�� 

�� '
(
��' (
)
��( )
{
�� 
Monitor
�� 
.
�� 
Enter
�� 
(
�� 
this
�� "
.
��" #
readerWriterLock
��# 3
)
��3 4
;
��4 5
}
�� 
internal
�� 
void
�� 
EnterWriteLock
�� (
(
��( )
)
��) *
{
�� 
Monitor
�� 
.
�� 
Enter
�� 
(
�� 
this
�� "
.
��" #
readerWriterLock
��# 3
)
��3 4
;
��4 5
}
�� 
internal
�� 
void
�� 
ExitReadLock
�� &
(
��& '
)
��' (
{
�� 
Monitor
�� 
.
�� 
Exit
�� 
(
�� 
this
�� !
.
��! "
readerWriterLock
��" 2
)
��2 3
;
��3 4
}
�� 
internal
�� 
void
�� 

�� '
(
��' (
)
��( )
{
�� 
Monitor
�� 
.
�� 
Exit
�� 
(
�� 
this
�� !
.
��! "
readerWriterLock
��" 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
}
�� 
}�� �
@D:\odata.net\src\Microsoft.OData.Edm\Schema\EdmFunctionImport.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

class 
EdmFunctionImport "
:# $
EdmOperationImport% 7
,7 8
IEdmFunctionImport9 K
{
private 
const 
string -
!FunctionArgumentNullParameterName >
=? @
$strA K
;K L
public 
EdmFunctionImport  
(  !
IEdmEntityContainer! 4
	container5 >
,> ?
string@ F
nameG K
,K L
IEdmFunctionM Y
functionZ b
)b c
: 
this 
( 
	container 
, 
name "
," #
function$ ,
,, -
null. 2
,2 3
false4 9
)9 :
{ 	
} 	
public## 
EdmFunctionImport##  
(##  !
IEdmEntityContainer##! 4
	container##5 >
,##> ?
string##@ F
name##G K
,##K L
IEdmFunction##M Y
function##Z b
,##b c
IEdmExpression##d r 
entitySetExpression	##s �
,
##� �
bool
##� �&
includeInServiceDocument
##� �
)
##� �
:$$ 
base$$ 
($$ 
	container$$ 
,$$ 
function$$ &
,$$& '
name$$( ,
,$$, -
entitySetExpression$$. A
)$$A B
{%% 	
EdmUtil&& 
.&& 
CheckArgumentNull&& %
(&&% &
function&&& .
,&&. /
$str&&0 :
)&&: ;
;&&; <
this(( 
.(( 
Function(( 
=(( 
function(( $
;(($ %
this)) 
.)) $
IncludeInServiceDocument)) )
=))* +$
includeInServiceDocument)), D
;))D E
}** 	
public// 
IEdmFunction// 
Function// $
{//% &
get//' *
;//* +
private//, 3
set//4 7
;//7 8
}//9 :
public44 
override44 #
EdmContainerElementKind44 / 
ContainerElementKind440 D
{55 	
get66 
{66 
return66 #
EdmContainerElementKind66 0
.660 1
FunctionImport661 ?
;66? @
}66A B
}77 	
public<< 
bool<< $
IncludeInServiceDocument<< ,
{<<- .
get<</ 2
;<<2 3
private<<4 ;
set<<< ?
;<<? @
}<<A B
	protectedBB 
overrideBB 
stringBB !.
"OperationArgumentNullParameterNameBB" D
(BBD E
)BBE F
{CC 	
returnDD -
!FunctionArgumentNullParameterNameDD 4
;DD4 5
}EE 	
}FF 
}GG �
>D:\odata.net\src\Microsoft.OData.Edm\Schema\EdmActionImport.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

class 
EdmActionImport  
:! "
EdmOperationImport# 5
,5 6
IEdmActionImport7 G
{
private 
const 
string +
ActionArgumentNullParameterName <
== >
$str? G
;G H
public 
EdmActionImport 
( 
IEdmEntityContainer 2
	container3 <
,< =
string> D
nameE I
,I J

IEdmActionK U
actionV \
)\ ]
: 
this 
( 
	container 
, 
name "
," #
action$ *
,* +
null, 0
)0 1
{ 	
} 	
public"" 
EdmActionImport"" 
("" 
IEdmEntityContainer"" 2
	container""3 <
,""< =
string""> D
name""E I
,""I J

IEdmAction""K U
action""V \
,""\ ]
IEdmExpression""^ l 
entitySetExpression	""m �
)
""� �
:## 
base## 
(## 
	container## 
,## 
action## $
,##$ %
name##& *
,##* +
entitySetExpression##, ?
)##? @
{$$ 	
EdmUtil%% 
.%% 
CheckArgumentNull%% %
(%%% &
action%%& ,
,%%, -
$str%%. 6
)%%6 7
;%%7 8
this'' 
.'' 
Action'' 
='' 
action''  
;''  !
}(( 	
public-- 

IEdmAction-- 
Action--  
{--! "
get--# &
;--& '
private--( /
set--0 3
;--3 4
}--5 6
public22 
override22 #
EdmContainerElementKind22 / 
ContainerElementKind220 D
{33 	
get44 
{44 
return44 #
EdmContainerElementKind44 0
.440 1
ActionImport441 =
;44= >
}44? @
}55 	
	protected;; 
override;; 
string;; !.
"OperationArgumentNullParameterName;;" D
(;;D E
);;E F
{<< 	
return== +
ActionArgumentNullParameterName== 2
;==2 3
}>> 	
}?? 
}@@ �
:D:\odata.net\src\Microsoft.OData.Edm\Schema\EdmFunction.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

class 
EdmFunction 
: 
EdmOperation +
,+ ,
IEdmFunction- 9
{
public 
EdmFunction 
( 
string !

,/ 0
string1 7
name8 <
,< =
IEdmTypeReference> O

returnTypeP Z
,Z [
bool\ `
isBounda h
,h i
IEdmPathExpressionj |$
entitySetPathExpression	} �
,
� �
bool
� �
isComposable
� �
)
� �
: 
base 
( 

,  !
name" &
,& '

returnType( 2
,2 3
isBound4 ;
,; <#
entitySetPathExpression= T
)T U
{ 	
EdmUtil 
. 
CheckArgumentNull %
(% &

returnType& 0
,0 1
$str2 >
)> ?
;? @
this 
. 
IsComposable 
= 
isComposable  ,
;, -
} 	
public$$ 
EdmFunction$$ 
($$ 
string$$ !

,$$/ 0
string$$1 7
name$$8 <
,$$< =
IEdmTypeReference$$> O

returnType$$P Z
)$$Z [
:%% 
this%% 
(%% 

,%%  !
name%%" &
,%%& '

returnType%%( 2
,%%2 3
false%%4 9
,%%E F
null%%G K
,%%K L
false%%M R
)%%c d
{&& 	
}'' 	
public-- 
override--  
EdmSchemaElementKind-- ,
SchemaElementKind--- >
{.. 	
get// 
{// 
return//  
EdmSchemaElementKind// -
.//- .
Function//. 6
;//6 7
}//8 9
}00 	
public55 
bool55 
IsComposable55  
{55! "
get55# &
;55& '
private55( /
set550 3
;553 4
}555 6
}66 
}77 �
8D:\odata.net\src\Microsoft.OData.Edm\Schema\EdmAction.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

class 
	EdmAction 
: 
EdmOperation )
,) *

IEdmAction+ 5
{
public 
	EdmAction 
( 
string 

,- .
string/ 5
name6 :
,: ;
IEdmTypeReference< M

returnTypeN X
,X Y
boolZ ^
isBound_ f
,f g
IEdmPathExpressionh z$
entitySetPathExpression	{ �
)
� �
: 
base 
( 

,  !
name" &
,& '

returnType( 2
,2 3
isBound4 ;
,; <#
entitySetPathExpression= T
)T U
{ 	
} 	
public!! 
	EdmAction!! 
(!! 
string!! 

,!!- .
string!!/ 5
name!!6 :
,!!: ;
IEdmTypeReference!!< M

returnType!!N X
)!!X Y
:"" 
base"" 
("" 

,""  !
name""" &
,""& '

returnType""( 2
)""2 3
{## 	
}$$ 	
public)) 
override))  
EdmSchemaElementKind)) ,
SchemaElementKind))- >
{** 	
get++ 
{++ 
return++  
EdmSchemaElementKind++ -
.++- .
Action++. 4
;++4 5
}++6 7
},, 	
}-- 
}.. �
HD:\odata.net\src\Microsoft.OData.Edm\Schema\EdmNavigationPropertyInfo.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
{

 
public 

sealed 
class %
EdmNavigationPropertyInfo 1
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
IEdmEntityType 
Target $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
EdmMultiplicity 
TargetMultiplicity 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public"" 
IEnumerable"" 
<"" "
IEdmStructuralProperty"" 1
>""1 2
DependentProperties""3 F
{""G H
get""I L
;""L M
set""N Q
;""Q R
}""S T
public'' 
IEnumerable'' 
<'' "
IEdmStructuralProperty'' 1
>''1 2
PrincipalProperties''3 F
{''G H
get''I L
;''L M
set''N Q
;''Q R
}''S T
public,, 
bool,, 
ContainsTarget,, "
{,,# $
get,,% (
;,,( )
set,,* -
;,,- .
},,/ 0
public11 
EdmOnDeleteAction11  
OnDelete11! )
{11* +
get11, /
;11/ 0
set111 4
;114 5
}116 7
public77 %
EdmNavigationPropertyInfo77 (
Clone77) .
(77. /
)77/ 0
{88 	
return99 
new99 %
EdmNavigationPropertyInfo99 0
(990 1
)991 2
{:: 
Name;; 
=;; 
this;; 
.;; 
Name;;  
,;;  !
Target<< 
=<< 
this<< 
.<< 
Target<< $
,<<$ %
TargetMultiplicity== "
===# $
this==% )
.==) *
TargetMultiplicity==* <
,==< =
DependentProperties>> #
=>>$ %
this>>& *
.>>* +
DependentProperties>>+ >
,>>> ?
PrincipalProperties?? #
=??$ %
this??& *
.??* +
PrincipalProperties??+ >
,??> ?
ContainsTarget@@ 
=@@  
this@@! %
.@@% &
ContainsTarget@@& 4
,@@4 5
OnDeleteAA 
=AA 
thisAA 
.AA  
OnDeleteAA  (
}BB 
;BB
}CC 	
}DD 
}EE �
KD:\odata.net\src\Microsoft.OData.Edm\Schema\EdmNavigationPropertyBinding.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

class (
EdmNavigationPropertyBinding -
:. /)
IEdmNavigationPropertyBinding0 M
{
private "
IEdmNavigationProperty &
navigationProperty' 9
;9 :
private  
IEdmNavigationSource $
target% +
;+ ,
private 
IEdmPathExpression "
path# '
;' (
public (
EdmNavigationPropertyBinding +
(+ ,"
IEdmNavigationProperty, B
navigationPropertyC U
,U V 
IEdmNavigationSourceW k
targetl r
)r s
{ 	
this 
. 
navigationProperty #
=$ %
navigationProperty& 8
;8 9
this 
. 
target 
= 
target  
;  !
this 
. 
path 
= 
new 
EdmPathExpression -
(- .
navigationProperty. @
==A C
nullD H
?I J
stringK Q
.Q R
EmptyR W
:X Y
navigationPropertyZ l
.l m
Namem q
)q r
;r s
} 	
public$$ (
EdmNavigationPropertyBinding$$ +
($$+ ,"
IEdmNavigationProperty$$, B
navigationProperty$$C U
,$$U V 
IEdmNavigationSource$$W k
target$$l r
,$$r s
IEdmPathExpression	$$t �
bindingPath
$$� �
)
$$� �
{%% 	
this&& 
.&& 
navigationProperty&& #
=&&$ %
navigationProperty&&& 8
;&&8 9
this'' 
.'' 
target'' 
='' 
target''  
;''  !
this(( 
.(( 
path(( 
=(( 
bindingPath(( #
;((# $
})) 	
public.. "
IEdmNavigationProperty.. %
NavigationProperty..& 8
{// 	
get00 
{00 
return00 
this00 
.00 
navigationProperty00 0
;000 1
}002 3
}11 	
public66  
IEdmNavigationSource66 #
Target66$ *
{77 	
get88 
{88 
return88 
this88 
.88 
target88 $
;88$ %
}88& '
}99 	
public>> 
IEdmPathExpression>> !
Path>>" &
{?? 	
get@@ 
{@@ 
return@@ 
this@@ 
.@@ 
path@@ "
;@@" #
}@@$ %
}AA 	
}BB 
}CC �
GD:\odata.net\src\Microsoft.OData.Edm\Schema\EdmReferentialConstraint.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
public 

class $
EdmReferentialConstraint )
:* +%
IEdmReferentialConstraint, E
{ 
private 
readonly 
IEnumerable $
<$ %0
$EdmReferentialConstraintPropertyPair% I
>I J

;X Y
public $
EdmReferentialConstraint '
(' (
IEnumerable( 3
<3 40
$EdmReferentialConstraintPropertyPair4 X
>X Y

)g h
{ 	
EdmUtil 
. 
CheckArgumentNull %
(% &

,3 4
$str5 D
)D E
;E F
this 
. 

=  

.. /
ToList/ 5
(5 6
)6 7
;7 8
} 	
public!! 
IEnumerable!! 
<!! 0
$EdmReferentialConstraintPropertyPair!! ?
>!!? @

{"" 	
get## 
{## 
return## 
this## 
.## 

;##+ ,
}##- .
}$$ 	
public-- 
static-- $
EdmReferentialConstraint-- .
Create--/ 5
(--5 6
IEnumerable--6 A
<--A B"
IEdmStructuralProperty--B X
>--X Y
dependentProperties--Z m
,--m n
IEnumerable--o z
<--z {#
IEdmStructuralProperty	--{ �
>
--� �!
principalProperties
--� �
)
--� �
{.. 	
EdmUtil// 
.// 
CheckArgumentNull// %
(//% &
dependentProperties//& 9
,//9 :
$str//; P
)//P Q
;//Q R
EdmUtil00 
.00 
CheckArgumentNull00 %
(00% &
principalProperties00& 9
,009 :
$str00; P
)00P Q
;00Q R
var22 !
dependentPropertyList22 %
=22& '
new22( +
List22, 0
<220 1"
IEdmStructuralProperty221 G
>22G H
(22H I
dependentProperties22I \
)22\ ]
;22] ^
var33 !
principalPropertyList33 %
=33& '
new33( +
List33, 0
<330 1"
IEdmStructuralProperty331 G
>33G H
(33H I
principalProperties33I \
)33\ ]
;33] ^
if44 
(44 !
dependentPropertyList44 %
.44% &
Count44& +
!=44, .!
principalPropertyList44/ D
.44D E
Count44E J
)44J K
{55 
throw66 
new66 
ArgumentException66 +
(66+ ,
Strings66, 3
.663 4[
NConstructable_DependentPropertyCountMustMatchNumberOfPropertiesOnPrincipalType	664 �
(
66� �#
principalPropertyList
66� �
.
66� �
Count
66� �
,
66� �#
dependentPropertyList
66� �
.
66� �
Count
66� �
)
66� �
)
66� �
;
66� �
}77 
return99 
new99 $
EdmReferentialConstraint99 /
(99/ 0!
dependentPropertyList990 E
.99E F
Select99F L
(99L M
(99M N
d99N O
,99O P
i99Q R
)99R S
=>99T V
new99W Z0
$EdmReferentialConstraintPropertyPair99[ 
(	99 �
d
99� �
,
99� �#
principalPropertyList
99� �
[
99� �
i
99� �
]
99� �
)
99� �
)
99� �
)
99� �
;
99� �
}:: 	
};; 
}<< �
?D:\odata.net\src\Microsoft.OData.Edm\Schema\AmbiguousBinding.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
class
AmbiguousBinding #
<# $
TElement$ ,
>, -
:. /

BadElement0 :
where 
TElement 
: 
class 
, 
IEdmNamedElement  0
{ 
private 
readonly 
List 
< 
TElement &
>& '
bindings( 0
=1 2
new3 6
List7 ;
<; <
TElement< D
>D E
(E F
)F G
;G H
public 
AmbiguousBinding 
(  
TElement  (
first) .
,. /
TElement0 8
second9 ?
)? @
: 
base 
( 
new 
EdmError 
[  
]  !
{" #
new$ '
EdmError( 0
(0 1
null1 5
,5 6
EdmErrorCode7 C
.C D&
BadAmbiguousElementBindingD ^
,^ _
Edm` c
.c d
Stringsd k
.k l(
Bad_AmbiguousElementBinding	l �
(
� �
first
� �
.
� �
Name
� �
)
� �
)
� �
}
� �
)
� �
{ 	
this 
. 

AddBinding 
( 
first !
)! "
;" #
this 
. 

AddBinding 
( 
second "
)" #
;# $
} 	
public 
IEnumerable 
< 
TElement #
># $
Bindings% -
{ 	
get 
{ 
return 
this 
. 
bindings &
;& '
}( )
}   	
public"" 
string"" 
Name"" 
{## 	
get$$ 
{$$ 
return$$ 
this$$ 
.$$ 
bindings$$ &
.$$& '
First$$' ,
($$, -
)$$- .
.$$. /
Name$$/ 3
??$$4 6
string$$7 =
.$$= >
Empty$$> C
;$$C D
}$$E F
}%% 	
public'' 
void'' 

AddBinding'' 
('' 
TElement'' '
binding''( /
)''/ 0
{(( 	
if)) 
()) 
!)) 
this)) 
.)) 
bindings)) 
.)) 
Contains)) '
())' (
binding))( /
)))/ 0
)))0 1
{** 
this++ 
.++ 
bindings++ 
.++ 
Add++ !
(++! "
binding++" )
)++) *
;++* +
},, 
}-- 	
}.. 
}// �
ND:\odata.net\src\Microsoft.OData.Edm\Schema\AmbiguousEntityContainerBinding.cs
	namespace

 	
	Microsoft


 
.

 
OData

 
.

 
Edm

 
{ 
internal 
class
AmbiguousEntityContainerBinding 2
:3 4
AmbiguousBinding5 E
<E F
IEdmEntityContainerF Y
>Y Z
,Z [
IEdmEntityContainer\ o
{
private 
readonly 
string 

;- .
public +
AmbiguousEntityContainerBinding .
(. /
IEdmEntityContainer/ B
firstC H
,H I
IEdmEntityContainerJ ]
second^ d
)d e
: 
base 
( 
first 
, 
second  
)  !
{ 	
this 
. 

=  
first! &
.& '
	Namespace' 0
??1 3
string4 :
.: ;
Empty; @
;@ A
} 	
public  
EdmSchemaElementKind #
SchemaElementKind$ 5
{ 	
get 
{ 
return  
EdmSchemaElementKind -
.- .
EntityContainer. =
;= >
}? @
} 	
public 
string 
	Namespace 
{ 	
get 
{ 
return 
this 
. 

;+ ,
}- .
}   	
public"" 
IEnumerable"" 
<"" &
IEdmEntityContainerElement"" 5
>""5 6
Elements""7 ?
{## 	
get$$ 
{$$ 
return$$ 

Enumerable$$ #
.$$# $
Empty$$$ )
<$$) *&
IEdmEntityContainerElement$$* D
>$$D E
($$E F
)$$F G
;$$G H
}$$I J
}%% 	
public'' 


(''* +
string''+ 1
name''2 6
)''6 7
{(( 	
return)) 
null)) 
;)) 
}** 	
public,, 


(,,* +
string,,+ 1
name,,2 6
),,6 7
{-- 	
return.. 
null.. 
;.. 
}// 	
public11 
IEnumerable11 
<11 
IEdmOperationImport11 .
>11. / 
FindOperationImports110 D
(11D E
string11E K

)11Y Z
{22 	
return33 
null33 
;33 
}44 	
}55 
}66 �
HD:\odata.net\src\Microsoft.OData.Edm\Schema\AmbiguousEntitySetBinding.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal
class
AmbiguousEntitySetBinding
:
AmbiguousBinding
<

>
,

{ 
public %
AmbiguousEntitySetBinding (
(( )

first7 <
,< =

secondL R
)R S
: 
base 
( 
first 
, 
second  
)  !
{ 	
} 	
public #
EdmContainerElementKind & 
ContainerElementKind' ;
{ 	
get 
{ 
return #
EdmContainerElementKind 0
.0 1
	EntitySet1 :
;: ;
}< =
} 	
public 
IEdmEntityContainer "
	Container# ,
{ 	
get 
{ 

first #
=$ %
this& *
.* +
Bindings+ 3
.3 4
FirstOrDefault4 B
(B C
)C D
;D E
return 
first 
!= 
null  $
?% &
first' ,
., -
	Container- 6
:7 8
null9 =
;= >
} 
}   	
public"" 
IEdmPathExpression"" !
Path""" &
{## 	
get$$ 
{$$ 
return$$ 
null$$ 
;$$ 
}$$  
}%% 	
public'' 
IEdmType'' 
Type'' 
{(( 	
get)) 
{)) 
return)) 
new)) 
EdmCollectionType)) .
()). /
new))/ 2"
EdmEntityTypeReference))3 I
())I J
new))J M

())[ \
String))\ b
.))b c
Empty))c h
,))h i
this))j n
.))n o
Errors))o u
)))u v
,))v w
false))x }
)))} ~
)))~ 
;	)) �
}
))� �
}** 	
public,, 
bool,, $
IncludeInServiceDocument,, ,
{-- 	
get.. 
{.. 
return.. 
true.. 
;.. 
}..  
}// 	
public11 
IEnumerable11 
<11 )
IEdmNavigationPropertyBinding11 8
>118 9&
NavigationPropertyBindings11: T
{22 	
get33 
{33 
return33 

Enumerable33 #
.33# $
Empty33$ )
<33) *)
IEdmNavigationPropertyBinding33* G
>33G H
(33H I
)33I J
;33J K
}33L M
}44 	
public66  
IEdmNavigationSource66 # 
FindNavigationTarget66$ 8
(668 9"
IEdmNavigationProperty669 O
property66P X
)66X Y
{77 	
return88 
null88 
;88 
}99 	
public;;  
IEdmNavigationSource;; # 
FindNavigationTarget;;$ 8
(;;8 9"
IEdmNavigationProperty;;9 O
navigationProperty;;P b
,;;b c
IEdmPathExpression;;d v
bindingPath	;;w �
)
;;� �
{<< 	
return== 
null== 
;== 
}>> 	
public@@ 
IEnumerable@@ 
<@@ )
IEdmNavigationPropertyBinding@@ 8
>@@8 9*
FindNavigationPropertyBindings@@: X
(@@X Y"
IEdmNavigationProperty@@Y o
navigationProperty	@@p �
)
@@� �
{AA 	
returnBB 
nullBB 
;BB 
}CC 	
}DD 
}EE �
HD:\odata.net\src\Microsoft.OData.Edm\Schema\AmbiguousOperationBinding.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
{

 
internal 
class
AmbiguousOperationBinding ,
:- .
AmbiguousBinding/ ?
<? @

>M N
,N O

{ 
private

first
;
public %
AmbiguousOperationBinding (
(( )

first7 <
,< =

secondL R
)R S
: 
base 
( 
first 
, 
second  
)  !
{ 	
this 
. 
first 
= 
first 
; 
} 	
public 
IEdmTypeReference  

ReturnType! +
{ 	
get 
{ 
return 
null 
; 
}  
} 	
public 
string 
	Namespace 
{ 	
get 
{ 
return 
this 
. 
first #
.# $
	Namespace$ -
;- .
}/ 0
} 	
public   
IEnumerable   
<   "
IEdmOperationParameter   1
>  1 2

Parameters  3 =
{!! 	
get"" 
{"" 
return"" 
this"" 
."" 
first"" #
.""# $

Parameters""$ .
;"". /
}""0 1
}## 	
public%% 
bool%% 
IsBound%% 
{&& 	
get'' 
{'' 
return'' 
this'' 
.'' 
first'' #
.''# $
IsBound''$ +
;''+ ,
}''- .
}(( 	
public** 
IEdmPathExpression** !

{++ 	
get,, 
{,, 
return,, 
this,, 
.,, 
first,, #
.,,# $

;,,1 2
},,3 4
}-- 	
public//  
EdmSchemaElementKind// #
SchemaElementKind//$ 5
{00 	
get11 
{11 
return11 
this11 
.11 
first11 #
.11# $
SchemaElementKind11$ 5
;115 6
}117 8
}22 	
public44 "
IEdmOperationParameter44 %

(443 4
string444 :
name44; ?
)44? @
{55 	
return66 
this66 
.66 
first66 
.66 

(66+ ,
name66, 0
)660 1
;661 2
}77 	
}88 
}99 �
ND:\odata.net\src\Microsoft.OData.Edm\Schema\AmbiguousOperationImportBinding.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
class
AmbiguousOperationImportBinding 2
:3 4
AmbiguousBinding5 E
<E F
IEdmOperationImportF Y
>Y Z
,Z [
IEdmOperationImport\ o
{
private 
readonly 
IEdmOperationImport ,
first- 2
;2 3
public +
AmbiguousOperationImportBinding .
(. /
IEdmOperationImport/ B
firstC H
,H I
IEdmOperationImportJ ]
second^ d
)d e
: 
base 
( 
first 
, 
second  
)  !
{ 	
this 
. 
first 
= 
first 
; 
} 	
public 

	Operation &
{ 	
get 
{ 
return 
this 
. 
first #
.# $
	Operation$ -
;- .
}/ 0
} 	
public 
IEdmEntityContainer "
	Container# ,
{ 	
get 
{ 
return 
first 
. 
	Container (
;( )
}* +
} 	
public   #
EdmContainerElementKind   & 
ContainerElementKind  ' ;
{!! 	
get"" 
{"" 
return"" 
first"" 
.""  
ContainerElementKind"" 3
;""3 4
}""5 6
}## 	
public%% 
IEdmExpression%% 
	EntitySet%% '
{&& 	
get'' 
{'' 
return'' 
null'' 
;'' 
}''  
}(( 	
})) 
}** �
PD:\odata.net\src\Microsoft.OData.Edm\Schema\AmbiguousLabeledExpressionBinding.cs
	namespace

 	
	Microsoft


 
.

 
OData

 
.

 
Edm

 
{ 
internal 
class
!AmbiguousLabeledExpressionBinding 4
:5 6
AmbiguousBinding7 G
<G H!
IEdmLabeledExpressionH ]
>] ^
,^ _!
IEdmLabeledExpression` u
{ 
private 
readonly 
Cache 
< -
!AmbiguousLabeledExpressionBinding @
,@ A
IEdmExpressionB P
>P Q
expressionCacheR a
=b c
newd g
Cacheh m
<m n.
!AmbiguousLabeledExpressionBinding	n �
,
� �
IEdmExpression
� �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %-
!AmbiguousLabeledExpressionBinding% F
,F G
IEdmExpressionH V
>V W!
ComputeExpressionFuncX m
=n o
(p q
meq s
)s t
=>u w
ComputeExpression	x �
(
� �
)
� �
;
� �
public -
!AmbiguousLabeledExpressionBinding 0
(0 1!
IEdmLabeledExpression1 F
firstG L
,L M!
IEdmLabeledExpressionN c
secondd j
)j k
: 
base 
( 
first 
, 
second  
)  !
{ 	
} 	
public 
IEdmExpression 

Expression (
{ 	
get 
{ 
return 
this 
. 
expressionCache -
.- .
GetValue. 6
(6 7
this7 ;
,; <!
ComputeExpressionFunc= R
,R S
nullT X
)X Y
;Y Z
}[ \
} 	
public 
EdmExpressionKind  
ExpressionKind! /
{ 	
get   
{   
return   
EdmExpressionKind   *
.  * +
Labeled  + 2
;  2 3
}  4 5
}!! 	
private## 
static## 
IEdmExpression## %
ComputeExpression##& 7
(##7 8
)##8 9
{$$ 	
return%% 
EdmNullExpression%% $
.%%$ %
Instance%%% -
;%%- .
}&& 	
}'' 
}(( �
GD:\odata.net\src\Microsoft.OData.Edm\Schema\AmbiguousPropertyBinding.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
{

 
internal 
class
AmbiguousPropertyBinding +
:, -
AmbiguousBinding. >
<> ?
IEdmProperty? K
>K L
,L M
IEdmPropertyN Z
{ 
private
readonly
IEdmStructuredType

;
private 
readonly 
Cache 
< $
AmbiguousPropertyBinding 7
,7 8
IEdmTypeReference9 J
>J K
typeL P
=Q R
newS V
CacheW \
<\ ]$
AmbiguousPropertyBinding] u
,u v
IEdmTypeReference	w �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %$
AmbiguousPropertyBinding% =
,= >
IEdmTypeReference? P
>P Q
ComputeTypeFuncR a
=b c
(d e
mee g
)g h
=>i k
mel n
.n o
ComputeTypeo z
(z {
){ |
;| }
public $
AmbiguousPropertyBinding '
(' (
IEdmStructuredType( :

,H I
IEdmPropertyJ V
firstW \
,\ ]
IEdmProperty^ j
secondk q
)q r
: 
base 
( 
first 
, 
second  
)  !
{ 	
this 
. 

=  

;. /
} 	
public 
EdmPropertyKind 
PropertyKind +
{ 	
get 
{ 
return 
EdmPropertyKind (
.( )
None) -
;- .
}/ 0
} 	
public!! 
IEdmTypeReference!!  
Type!!! %
{"" 	
get## 
{## 
return## 
this## 
.## 
type## "
.##" #
GetValue### +
(##+ ,
this##, 0
,##0 1
ComputeTypeFunc##2 A
,##A B
null##C G
)##G H
;##H I
}##J K
}$$ 	
public)) 
IEdmStructuredType)) !

{** 	
get++ 
{++ 
return++ 
this++ 
.++ 

;+++ ,
}++- .
},, 	
private.. 
IEdmTypeReference.. !
ComputeType.." -
(..- .
)... /
{// 	
return00 
new00 
BadTypeReference00 '
(00' (
new00( +
BadType00, 3
(003 4
Errors004 :
)00: ;
,00; <
true00= A
)00A B
;00B C
}11 	
}22 
}33 �
CD:\odata.net\src\Microsoft.OData.Edm\Schema\AmbiguousTypeBinding.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
{

 
internal 
class
AmbiguousTypeBinding '
:( )
AmbiguousBinding* :
<: ;
IEdmSchemaType; I
>I J
,J K
IEdmSchemaTypeL Z
{ 
private 
readonly 
string 

;- .
public  
AmbiguousTypeBinding #
(# $
IEdmSchemaType$ 2
first3 8
,8 9
IEdmSchemaType: H
secondI O
)O P
: 
base 
( 
first 
, 
second  
)  !
{ 	
Debug 
. 
Assert 
( 
first 
. 
	Namespace (
==) +
second, 2
.2 3
	Namespace3 <
,< =
$str	> �
)
� �
;
� �
this 
. 

=  
first! &
.& '
	Namespace' 0
??1 3
string4 :
.: ;
Empty; @
;@ A
} 	
public  
EdmSchemaElementKind #
SchemaElementKind$ 5
{ 	
get 
{ 
return  
EdmSchemaElementKind -
.- .
TypeDefinition. <
;< =
}> ?
} 	
public 
string 
	Namespace 
{ 	
get   
{   
return   
this   
.   

;  + ,
}  - .
}!! 	
public## 
EdmTypeKind## 
TypeKind## #
{$$ 	
get%% 
{%% 
return%% 
EdmTypeKind%% $
.%%$ %
None%%% )
;%%) *
}%%+ ,
}&& 	
}'' 
}(( �
CD:\odata.net\src\Microsoft.OData.Edm\Schema\AmbiguousTermBinding.cs
	namespace

 	
	Microsoft


 
.

 
OData

 
.

 
Edm

 
{ 
internal 
class
AmbiguousTermBinding '
:( )
AmbiguousBinding* :
<: ;
IEdmTerm; C
>C D
,D E
IEdmTermF N
{ 
private 
readonly 
IEdmTerm !
first" '
;' (
private 
readonly 
Cache 
<  
AmbiguousTermBinding 3
,3 4
IEdmTypeReference5 F
>F G
typeH L
=M N
newO R
CacheS X
<X Y 
AmbiguousTermBindingY m
,m n
IEdmTypeReference	o �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ % 
AmbiguousTermBinding% 9
,9 :
IEdmTypeReference; L
>L M
ComputeTypeFuncN ]
=^ _
(` a
mea c
)c d
=>e g
meh j
.j k
ComputeTypek v
(v w
)w x
;x y
private 
readonly 
string 
	appliesTo  )
=* +
null, 0
;0 1
private 
readonly 
string 
defaultValue  ,
=- .
null/ 3
;3 4
public  
AmbiguousTermBinding #
(# $
IEdmTerm$ ,
first- 2
,2 3
IEdmTerm4 <
second= C
)C D
: 
base 
( 
first 
, 
second  
)  !
{ 	
this 
. 
first 
= 
first 
; 
} 	
public    
EdmSchemaElementKind   #
SchemaElementKind  $ 5
{!! 	
get"" 
{"" 
return""  
EdmSchemaElementKind"" -
.""- .
Term"". 2
;""2 3
}""4 5
}## 	
public%% 
string%% 
	Namespace%% 
{&& 	
get'' 
{'' 
return'' 
this'' 
.'' 
first'' #
.''# $
	Namespace''$ -
??''. 0
string''1 7
.''7 8
Empty''8 =
;''= >
}''? @
}(( 	
public** 
IEdmTypeReference**  
Type**! %
{++ 	
get,, 
{,, 
return,, 
this,, 
.,, 
type,, "
.,," #
GetValue,,# +
(,,+ ,
this,,, 0
,,,0 1
ComputeTypeFunc,,2 A
,,,A B
null,,C G
),,G H
;,,H I
},,J K
}-- 	
public// 
string// 
	AppliesTo// 
{00 	
get11 
{11 
return11 
this11 
.11 
	appliesTo11 '
;11' (
}11) *
}22 	
public44 
string44 
DefaultValue44 "
{55 	
get66 
{66 
return66 
this66 
.66 
defaultValue66 *
;66* +
}66, -
}77 	
private99 
IEdmTypeReference99 !
ComputeType99" -
(99- .
)99. /
{:: 	
return;; 
new;; 
BadTypeReference;; '
(;;' (
new;;( +
BadType;;, 3
(;;3 4
Errors;;4 :
);;: ;
,;;; <
true;;= A
);;A B
;;;B C
}<< 	
}== 
}>> �
ED:\odata.net\src\Microsoft.OData.Edm\Schema\BadBinaryTypeReference.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{
internal 
class
BadBinaryTypeReference )
:* +"
EdmBinaryTypeReference, B
,B C

{ 
private 
readonly 
IEnumerable $
<$ %
EdmError% -
>- .
errors/ 5
;5 6
public "
BadBinaryTypeReference %
(% &
string& ,

,: ;
bool< @

isNullableA K
,K L
IEnumerableM X
<X Y
EdmErrorY a
>a b
errorsc i
)i j
: 
base 
( 
new 
BadPrimitiveType '
(' (

,5 6 
EdmPrimitiveTypeKind7 K
.K L
BinaryL R
,R S
errorsT Z
)Z [
,[ \

isNullable] g
,g h
falsei n
,n o
nullp t
)t u
{ 	
this 
. 
errors 
= 
errors  
;  !
} 	
public 
IEnumerable 
< 
EdmError #
># $
Errors% +
{ 	
get 
{ 
return 
this 
. 
errors $
;$ %
}& '
} 	
public   
override   
string   
ToString   '
(  ' (
)  ( )
{!! 	
EdmError"" 
error"" 
="" 
this"" !
.""! "
Errors""" (
.""( )
FirstOrDefault"") 7
(""7 8
)""8 9
;""9 :
Debug## 
.## 
Assert## 
(## 
error## 
!=## !
null##" &
,##& '
$str##( 7
)##7 8
;##8 9
string$$ 
prefix$$ 
=$$ 
error$$ !
!=$$" $
null$$% )
?$$* +
error$$, 1
.$$1 2
	ErrorCode$$2 ;
.$$; <
ToString$$< D
($$D E
)$$E F
+$$G H
$str$$I L
:$$M N
$str$$O Q
;$$Q R
return%% 
prefix%% 
+%% 
this%%  
.%%  !

(%%. /
)%%/ 0
;%%0 1
}&& 	
}'' 
}(( �
@D:\odata.net\src\Microsoft.OData.Edm\Schema\BadCollectionType.cs
	namespace

 	
	Microsoft


 
.

 
OData

 
.

 
Edm

 
{ 
internal 
class
BadCollectionType $
:% &
BadType' .
,. /
IEdmCollectionType0 B
{ 
private 
readonly 
IEdmTypeReference *
elementType+ 6
;6 7
public 
BadCollectionType  
(  !
IEnumerable! ,
<, -
EdmError- 5
>5 6
errors7 =
)= >
: 
base 
( 
errors 
) 
{ 	
this 
. 
elementType 
= 
new "
BadTypeReference# 3
(3 4
new4 7
BadType8 ?
(? @
errors@ F
)F G
,G H
trueI M
)M N
;N O
} 	
public 
override 
EdmTypeKind #
TypeKind$ ,
{ 	
get 
{ 
return 
EdmTypeKind $
.$ %

Collection% /
;/ 0
}1 2
} 	
public 
IEdmTypeReference  
ElementType! ,
{ 	
get   
{   
return   
this   
.   
elementType   )
;  ) *
}  + ,
}!! 	
}"" 
}## �
=D:\odata.net\src\Microsoft.OData.Edm\Schema\BadComplexType.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
class
BadComplexType !
:" #"
BadNamedStructuredType$ :
,: ;
IEdmComplexType< K
{ 
public 
BadComplexType 
( 
string $

,2 3
IEnumerable4 ?
<? @
EdmError@ H
>H I
errorsJ P
)P Q
: 
base 
( 

,  !
errors" (
)( )
{ 	
} 	
public 
override 
EdmTypeKind #
TypeKind$ ,
{ 	
get 
{ 
return 
EdmTypeKind $
.$ %
Complex% ,
;, -
}. /
} 	
} 
} �
FD:\odata.net\src\Microsoft.OData.Edm\Schema\BadComplexTypeReference.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{
internal 
class
BadComplexTypeReference *
:+ ,#
EdmComplexTypeReference- D
,D E

{ 
private 
readonly 
IEnumerable $
<$ %
EdmError% -
>- .
errors/ 5
;5 6
public #
BadComplexTypeReference &
(& '
string' -

,; <
bool= A

isNullableB L
,L M
IEnumerableN Y
<Y Z
EdmErrorZ b
>b c
errorsd j
)j k
: 
base 
( 
new 
BadComplexType %
(% &

,3 4
errors5 ;
); <
,< =

isNullable> H
)H I
{ 	
this 
. 
errors 
= 
errors  
;  !
} 	
public 
IEnumerable 
< 
EdmError #
># $
Errors% +
{ 	
get 
{ 
return 
this 
. 
errors $
;$ %
}& '
} 	
public 
override 
string 
ToString '
(' (
)( )
{ 	
EdmError 
error 
= 
this !
.! "
Errors" (
.( )
FirstOrDefault) 7
(7 8
)8 9
;9 :
Debug   
.   
Assert   
(   
error   
!=   !
null  " &
,  & '
$str  ( 7
)  7 8
;  8 9
string!! 
prefix!! 
=!! 
error!! !
!=!!" $
null!!% )
?!!* +
error!!, 1
.!!1 2
	ErrorCode!!2 ;
.!!; <
ToString!!< D
(!!D E
)!!E F
+!!G H
$str!!I L
:!!M N
$str!!O Q
;!!Q R
return"" 
prefix"" 
+"" 
this""  
.""  !

("". /
)""/ 0
;""0 1
}## 	
}$$ 
}%% �
FD:\odata.net\src\Microsoft.OData.Edm\Schema\BadDecimalTypeReference.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{
internal 
class
BadDecimalTypeReference *
:+ ,#
EdmDecimalTypeReference- D
,D E

{ 
private 
readonly 
IEnumerable $
<$ %
EdmError% -
>- .
errors/ 5
;5 6
public #
BadDecimalTypeReference &
(& '
string' -

,; <
bool= A

isNullableB L
,L M
IEnumerableN Y
<Y Z
EdmErrorZ b
>b c
errorsd j
)j k
: 
base 
( 
new 
BadPrimitiveType '
(' (

,5 6 
EdmPrimitiveTypeKind7 K
.K L
DecimalL S
,S T
errorsU [
)[ \
,\ ]

isNullable^ h
,h i
nullj n
,n o
nullp t
)t u
{ 	
this 
. 
errors 
= 
errors  
;  !
} 	
public 
IEnumerable 
< 
EdmError #
># $
Errors% +
{ 	
get 
{ 
return 
this 
. 
errors $
;$ %
}& '
} 	
public   
override   
string   
ToString   '
(  ' (
)  ( )
{!! 	
EdmError"" 
error"" 
="" 
this"" !
.""! "
Errors""" (
.""( )
FirstOrDefault"") 7
(""7 8
)""8 9
;""9 :
Debug## 
.## 
Assert## 
(## 
error## 
!=## !
null##" &
,##& '
$str##( 7
)##7 8
;##8 9
string$$ 
prefix$$ 
=$$ 
error$$ !
!=$$" $
null$$% )
?$$* +
error$$, 1
.$$1 2
	ErrorCode$$2 ;
.$$; <
ToString$$< D
($$D E
)$$E F
+$$G H
$str$$I L
:$$M N
$str$$O Q
;$$Q R
return%% 
prefix%% 
+%% 
this%%  
.%%  !

(%%. /
)%%/ 0
;%%0 1
}&& 	
}'' 
}(( �	
9D:\odata.net\src\Microsoft.OData.Edm\Schema\BadElement.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
class

BadElement 
: 
IEdmElement  +
,+ ,

,: ;%
IEdmVocabularyAnnotatable< U
{ 
private 
readonly 
IEnumerable $
<$ %
EdmError% -
>- .
errors/ 5
;5 6
public 

BadElement 
( 
IEnumerable %
<% &
EdmError& .
>. /
errors0 6
)6 7
{ 	
this 
. 
errors 
= 
errors  
;  !
} 	
public 
IEnumerable 
< 
EdmError #
># $
Errors% +
{ 	
get 
{ 
return 
this 
. 
errors $
;$ %
}& '
} 	
} 
} �
AD:\odata.net\src\Microsoft.OData.Edm\Schema\BadEntityContainer.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
class
BadEntityContainer %
:& '

BadElement( 2
,2 3
IEdmEntityContainer4 G
{ 
private 
readonly 
string 

;- .
private 
readonly 
string 
name  $
;$ %
public 
BadEntityContainer !
(! "
string" (

,6 7
IEnumerable8 C
<C D
EdmErrorD L
>L M
errorsN T
)T U
: 
base 
( 
errors 
) 
{ 	

= 

??* ,
string- 3
.3 4
Empty4 9
;9 :
EdmUtil 
. 0
$TryGetNamespaceNameFromQualifiedName 8
(8 9

,F G
outH K
thisL P
.P Q

,^ _
out` c
thisd h
.h i
namei m
)m n
;n o
} 	
public 
IEnumerable 
< &
IEdmEntityContainerElement 5
>5 6
Elements7 ?
{ 	
get 
{ 
return 

Enumerable #
.# $
Empty$ )
<) *&
IEdmEntityContainerElement* D
>D E
(E F
)F G
;G H
}I J
} 	
public!! 
string!! 
	Namespace!! 
{"" 	
get## 
{## 
return## 
this## 
.## 

;##+ ,
}##- .
}$$ 	
public&& 
string&& 
Name&& 
{'' 	
get(( 
{(( 
return(( 
this(( 
.(( 
name(( "
;((" #
}(($ %
})) 	
public..  
EdmSchemaElementKind.. #
SchemaElementKind..$ 5
{// 	
get00 
{00 
return00  
EdmSchemaElementKind00 -
.00- .
EntityContainer00. =
;00= >
}00? @
}11 	
public33 


(33* +
string33+ 1
setName332 9
)339 :
{44 	
return55 
null55 
;55 
}66 	
public88 


(88* +
string88+ 1

)88? @
{99 	
return:: 
null:: 
;:: 
};; 	
public== 
IEnumerable== 
<== 
IEdmOperationImport== .
>==. / 
FindOperationImports==0 D
(==D E
string==E K

)==Y Z
{>> 	
return?? 
null?? 
;?? 
}@@ 	
}AA 
}BB �
ED:\odata.net\src\Microsoft.OData.Edm\Schema\BadEntityReferenceType.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
class
BadEntityReferenceType )
:* +
BadType, 3
,3 4#
IEdmEntityReferenceType5 L
{ 
private 
readonly 
IEdmEntityType '

entityType( 2
;2 3
public "
BadEntityReferenceType %
(% &
IEnumerable& 1
<1 2
EdmError2 :
>: ;
errors< B
)B C
: 
base 
( 
errors 
) 
{ 	
this 
. 

entityType 
= 
new !

(/ 0
String0 6
.6 7
Empty7 <
,< =
this> B
.B C
ErrorsC I
)I J
;J K
} 	
public 
override 
EdmTypeKind #
TypeKind$ ,
{ 	
get 
{ 
return 
EdmTypeKind $
.$ %
EntityReference% 4
;4 5
}6 7
} 	
public 
IEdmEntityType 

EntityType (
{   	
get!! 
{!! 
return!! 
this!! 
.!! 

entityType!! (
;!!( )
}!!* +
}"" 	
}## 
}$$ �"
;D:\odata.net\src\Microsoft.OData.Edm\Schema\BadEntitySet.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{
internal 
class
BadEntitySet 
:  !

BadElement" ,
,, -

{ 
private 
readonly 
string 
name  $
;$ %
private 
readonly 
IEdmEntityContainer ,
	container- 6
;6 7
public 
BadEntitySet 
( 
string "
name# '
,' (
IEdmEntityContainer) <
	container= F
,F G
IEnumerableH S
<S T
EdmErrorT \
>\ ]
errors^ d
)d e
: 
base 
( 
errors 
) 
{ 	
this 
. 
name 
= 
name 
?? 
string  &
.& '
Empty' ,
;, -
this 
. 
	container 
= 
	container &
;& '
} 	
public 
string 
Name 
{ 	
get 
{ 
return 
this 
. 
name "
;" #
}$ %
}   	
public"" #
EdmContainerElementKind"" & 
ContainerElementKind""' ;
{## 	
get$$ 
{$$ 
return$$ #
EdmContainerElementKind$$ 0
.$$0 1
	EntitySet$$1 :
;$$: ;
}$$< =
}%% 	
public'' 
IEdmEntityContainer'' "
	Container''# ,
{(( 	
get)) 
{)) 
return)) 
this)) 
.)) 
	container)) '
;))' (
}))) *
}** 	
public,, 
IEnumerable,, 
<,, )
IEdmNavigationPropertyBinding,, 8
>,,8 9&
NavigationPropertyBindings,,: T
{-- 	
get.. 
{.. 
return.. 

Enumerable.. #
...# $
Empty..$ )
<..) *)
IEdmNavigationPropertyBinding..* G
>..G H
(..H I
)..I J
;..J K
}..L M
}// 	
public11 
IEdmPathExpression11 !
Path11" &
{22 	
get33 
{33 
return33 
null33 
;33 
}33  
}44 	
public66 
IEdmType66 
Type66 
{77 	
get88 
{88 
return88 
new88 
EdmCollectionType88 .
(88. /
new88/ 2"
EdmEntityTypeReference883 I
(88I J
new88J M

(88[ \
String88\ b
.88b c
Empty88c h
,88h i
this88j n
.88n o
Errors88o u
)88u v
,88v w
false88x }
)88} ~
)88~ 
;	88 �
}
88� �
}99 	
public;; 
bool;; $
IncludeInServiceDocument;; ,
{<< 	
get== 
{== 
return== 
true== 
;== 
}==  
}>> 	
public@@  
IEdmNavigationSource@@ # 
FindNavigationTarget@@$ 8
(@@8 9"
IEdmNavigationProperty@@9 O
property@@P X
)@@X Y
{AA 	
returnBB 
nullBB 
;BB 
}CC 	
publicEE  
IEdmNavigationSourceEE # 
FindNavigationTargetEE$ 8
(EE8 9"
IEdmNavigationPropertyEE9 O
navigationPropertyEEP b
,EEb c
IEdmPathExpressionEEd v
bindingPath	EEw �
)
EE� �
{FF 	
returnGG 
nullGG 
;GG 
}HH 	
publicJJ 
IEnumerableJJ 
<JJ )
IEdmNavigationPropertyBindingJJ 8
>JJ8 9*
FindNavigationPropertyBindingsJJ: X
(JJX Y"
IEdmNavigationPropertyJJY o
navigationProperty	JJp �
)
JJ� �
{KK 	
returnLL 
nullLL 
;LL 
}MM 	
}NN 
}OO �
<D:\odata.net\src\Microsoft.OData.Edm\Schema\BadEntityType.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
class

:! ""
BadNamedStructuredType# 9
,9 :
IEdmEntityType; I
{ 
public 

( 
string #

,1 2
IEnumerable3 >
<> ?
EdmError? G
>G H
errorsI O
)O P
: 
base 
( 

,  !
errors" (
)( )
{ 	
} 	
public 
IEnumerable 
< "
IEdmStructuralProperty 1
>1 2
DeclaredKey3 >
{ 	
get 
{ 
return 
null 
; 
}  
} 	
public 
override 
EdmTypeKind #
TypeKind$ ,
{ 	
get 
{ 
return 
EdmTypeKind $
.$ %
Entity% +
;+ ,
}- .
} 	
public!! 
bool!! 
	HasStream!! 
{"" 	
get## 
{## 
return## 
false## 
;## 
}##  !
}$$ 	
}%% 
}&& �
ED:\odata.net\src\Microsoft.OData.Edm\Schema\BadEntityTypeReference.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{
internal 
class
BadEntityTypeReference )
:* +"
EdmEntityTypeReference, B
,B C

{ 
private 
readonly 
IEnumerable $
<$ %
EdmError% -
>- .
errors/ 5
;5 6
public "
BadEntityTypeReference %
(% &
string& ,

,: ;
bool< @

isNullableA K
,K L
IEnumerableM X
<X Y
EdmErrorY a
>a b
errorsc i
)i j
: 
base 
( 
new 

($ %

,2 3
errors4 :
): ;
,; <

isNullable= G
)G H
{ 	
this 
. 
errors 
= 
errors  
;  !
} 	
public 
IEnumerable 
< 
EdmError #
># $
Errors% +
{ 	
get 
{ 
return 
this 
. 
errors $
;$ %
}& '
} 	
public 
override 
string 
ToString '
(' (
)( )
{ 	
EdmError 
error 
= 
this !
.! "
Errors" (
.( )
FirstOrDefault) 7
(7 8
)8 9
;9 :
Debug   
.   
Assert   
(   
error   
!=   !
null  " &
,  & '
$str  ( 7
)  7 8
;  8 9
string!! 
prefix!! 
=!! 
error!! !
!=!!" $
null!!% )
?!!* +
error!!, 1
.!!1 2
	ErrorCode!!2 ;
.!!; <
ToString!!< D
(!!D E
)!!E F
+!!G H
$str!!I L
:!!M N
$str!!O Q
;!!Q R
return"" 
prefix"" 
+"" 
this""  
.""  !

("". /
)""/ 0
;""0 1
}## 	
}$$ 
}%% �
:D:\odata.net\src\Microsoft.OData.Edm\Schema\BadEnumType.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
class
BadEnumType 
:  
BadType! (
,( )
IEdmEnumType* 6
{ 
private 
readonly 
string 

;- .
private 
readonly 
string 
name  $
;$ %
public 
BadEnumType 
( 
string !

,/ 0
IEnumerable1 <
<< =
EdmError= E
>E F
errorsG M
)M N
: 
base 
( 
errors 
) 
{ 	

= 

??* ,
string- 3
.3 4
Empty4 9
;9 :
EdmUtil 
. 0
$TryGetNamespaceNameFromQualifiedName 8
(8 9

,F G
outH K
thisL P
.P Q

,^ _
out` c
thisd h
.h i
namei m
)m n
;n o
} 	
public 
IEnumerable 
< 
IEdmEnumMember )
>) *
Members+ 2
{ 	
get 
{ 
return 

Enumerable #
.# $
Empty$ )
<) *
IEdmEnumMember* 8
>8 9
(9 :
): ;
;; <
}= >
} 	
public!! 
override!! 
EdmTypeKind!! #
TypeKind!!$ ,
{"" 	
get## 
{## 
return## 
EdmTypeKind## $
.##$ %
Enum##% )
;##) *
}##+ ,
}$$ 	
public&& 
IEdmPrimitiveType&&  
UnderlyingType&&! /
{'' 	
get(( 
{(( 
return(( 
EdmCoreModel(( %
.((% &
Instance((& .
.((. /
GetPrimitiveType((/ ?
(((? @ 
EdmPrimitiveTypeKind((@ T
.((T U
Int32((U Z
)((Z [
;(([ \
}((] ^
})) 	
public++ 
bool++ 
IsFlags++ 
{,, 	
get-- 
{-- 
return-- 
false-- 
;-- 
}--  !
}.. 	
public00  
EdmSchemaElementKind00 #
SchemaElementKind00$ 5
{11 	
get22 
{22 
return22  
EdmSchemaElementKind22 -
.22- .
TypeDefinition22. <
;22< =
}22> ?
}33 	
public55 
string55 
	Namespace55 
{66 	
get77 
{77 
return77 
this77 
.77 

;77+ ,
}77- .
}88 	
public:: 
string:: 
Name:: 
{;; 	
get<< 
{<< 
return<< 
this<< 
.<< 
name<< "
;<<" #
}<<$ %
}== 	
}>> 
}?? �
CD:\odata.net\src\Microsoft.OData.Edm\Schema\BadLabeledExpression.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{
internal 
class
BadLabeledExpression '
:( )

BadElement* 4
,4 5!
IEdmLabeledExpression6 K
{ 
private 
readonly 
string 
name  $
;$ %
private 
readonly 
Cache 
<  
BadLabeledExpression 3
,3 4
IEdmExpression5 C
>C D
expressionCacheE T
=U V
newW Z
Cache[ `
<` a 
BadLabeledExpressiona u
,u v
IEdmExpression	w �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ % 
BadLabeledExpression% 9
,9 :
IEdmExpression; I
>I J!
ComputeExpressionFuncK `
=a b
(c d
med f
)f g
=>h j
ComputeExpressionk |
(| }
)} ~
;~ 
public  
BadLabeledExpression #
(# $
string$ *
name+ /
,/ 0
IEnumerable1 <
<< =
EdmError= E
>E F
errorsG M
)M N
: 
base 
( 
errors 
) 
{ 	
this 
. 
name 
= 
name 
?? 
string  &
.& '
Empty' ,
;, -
} 	
public 
string 
Name 
{ 	
get   
{   
return   
this   
.   
name   "
;  " #
}  $ %
}!! 	
public## 
EdmExpressionKind##  
ExpressionKind##! /
{$$ 	
get%% 
{%% 
return%% 
EdmExpressionKind%% *
.%%* +
Labeled%%+ 2
;%%2 3
}%%4 5
}&& 	
public(( 
IEdmExpression(( 

Expression(( (
{)) 	
get** 
{** 
return** 
this** 
.** 
expressionCache** -
.**- .
GetValue**. 6
(**6 7
this**7 ;
,**; <!
ComputeExpressionFunc**= R
,**R S
null**T X
)**X Y
;**Y Z
}**[ \
}++ 	
private-- 
static-- 
IEdmExpression-- %
ComputeExpression--& 7
(--7 8
)--8 9
{.. 	
return// 
EdmNullExpression// $
.//$ %
Instance//% -
;//- .
}00 	
}11 
}22 �
ED:\odata.net\src\Microsoft.OData.Edm\Schema\BadNamedStructuredType.cs
	namespace

 	
	Microsoft


 
.

 
OData

 
.

 
Edm

 
{ 
internal 
abstract
class "
BadNamedStructuredType 2
:3 4
BadStructuredType5 F
,F G
IEdmSchemaElementH Y
{ 
private 
readonly 
string 

;- .
private 
readonly 
string 
name  $
;$ %
	protected "
BadNamedStructuredType (
(( )
string) /

,= >
IEnumerable? J
<J K
EdmErrorK S
>S T
errorsU [
)[ \
: 
base 
( 
errors 
) 
{ 	

= 

??* ,
string- 3
.3 4
Empty4 9
;9 :
EdmUtil 
. 0
$TryGetNamespaceNameFromQualifiedName 8
(8 9

,F G
outH K
thisL P
.P Q

,^ _
out` c
thisd h
.h i
namei m
)m n
;n o
} 	
public 
string 
Name 
{ 	
get 
{ 
return 
this 
. 
name "
;" #
}$ %
} 	
public   
string   
	Namespace   
{!! 	
get"" 
{"" 
return"" 
this"" 
."" 

;""+ ,
}""- .
}## 	
public%%  
EdmSchemaElementKind%% #
SchemaElementKind%%$ 5
{&& 	
get'' 
{'' 
return''  
EdmSchemaElementKind'' -
.''- .
TypeDefinition''. <
;''< =
}''> ?
}(( 	
})) 
}** �
?D:\odata.net\src\Microsoft.OData.Edm\Schema\BadPrimitiveType.cs
	namespace

 	
	Microsoft


 
.

 
OData

 
.

 
Edm

 
{ 
internal 
class
BadPrimitiveType #
:$ %
BadType& -
,- .
IEdmPrimitiveType/ @
{ 
private 
readonly  
EdmPrimitiveTypeKind -

;; <
private 
readonly 
string 
name  $
;$ %
private 
readonly 
string 

;- .
public 
BadPrimitiveType 
(  
string  &

,4 5 
EdmPrimitiveTypeKind6 J

,X Y
IEnumerableZ e
<e f
EdmErrorf n
>n o
errorsp v
)v w
: 
base 
( 
errors 
) 
{ 	
this 
. 

=  

;. /

= 

??* ,
string- 3
.3 4
Empty4 9
;9 :
EdmUtil 
. 0
$TryGetNamespaceNameFromQualifiedName 8
(8 9

,F G
outH K
thisL P
.P Q

,^ _
out` c
thisd h
.h i
namei m
)m n
;n o
} 	
public  
EdmPrimitiveTypeKind #

{ 	
get 
{ 
return 
this 
. 

;+ ,
}- .
}   	
public"" 
string"" 
	Namespace"" 
{## 	
get$$ 
{$$ 
return$$ 
this$$ 
.$$ 

;$$+ ,
}$$- .
}%% 	
public'' 
string'' 
Name'' 
{(( 	
get)) 
{)) 
return)) 
this)) 
.)) 
name)) "
;))" #
}))$ %
}** 	
public,, 
override,, 
EdmTypeKind,, #
TypeKind,,$ ,
{-- 	
get.. 
{.. 
return.. 
EdmTypeKind.. $
...$ %
	Primitive..% .
;... /
}..0 1
}// 	
public11  
EdmSchemaElementKind11 #
SchemaElementKind11$ 5
{22 	
get33 
{33 
return33  
EdmSchemaElementKind33 -
.33- .
TypeDefinition33. <
;33< =
}33> ?
}44 	
}55 
}66 �
HD:\odata.net\src\Microsoft.OData.Edm\Schema\BadPrimitiveTypeReference.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{
internal 
class
BadPrimitiveTypeReference ,
:- .%
EdmPrimitiveTypeReference/ H
,H I

{ 
private 
readonly 
IEnumerable $
<$ %
EdmError% -
>- .
errors/ 5
;5 6
public %
BadPrimitiveTypeReference (
(( )
string) /

,= >
bool? C

isNullableD N
,N O
IEnumerableP [
<[ \
EdmError\ d
>d e
errorsf l
)l m
: 
base 
( 
new 
BadPrimitiveType '
(' (

,5 6 
EdmPrimitiveTypeKind7 K
.K L
NoneL P
,P Q
errorsR X
)X Y
,Y Z

isNullable[ e
)e f
{ 	
this 
. 
errors 
= 
errors  
;  !
} 	
public 
IEnumerable 
< 
EdmError #
># $
Errors% +
{ 	
get 
{ 
return 
this 
. 
errors $
;$ %
}& '
} 	
public   
override   
string   
ToString   '
(  ' (
)  ( )
{!! 	
EdmError"" 
error"" 
="" 
this"" !
.""! "
Errors""" (
.""( )
FirstOrDefault"") 7
(""7 8
)""8 9
;""9 :
Debug## 
.## 
Assert## 
(## 
error## 
!=## !
null##" &
,##& '
$str##( 7
)##7 8
;##8 9
string$$ 
prefix$$ 
=$$ 
error$$ !
!=$$" $
null$$% )
?$$* +
error$$, 1
.$$1 2
	ErrorCode$$2 ;
.$$; <
ToString$$< D
($$D E
)$$E F
+$$G H
$str$$I L
:$$M N
$str$$O Q
;$$Q R
return%% 
prefix%% 
+%% 
this%%  
.%%  !

(%%. /
)%%/ 0
;%%0 1
}&& 	
}'' 
}(( �
DD:\odata.net\src\Microsoft.OData.Edm\Schema\BadEdmEnumMemberValue.cs
	namespace

 	
	Microsoft


 
.

 
OData

 
.

 
Edm

 
{ 
internal 
class
BadEdmEnumMemberValue (
:) *

BadElement+ 5
,5 6
IEdmEnumMemberValue7 J
{
public !
BadEdmEnumMemberValue $
($ %
IEnumerable% 0
<0 1
EdmError1 9
>9 :
errors; A
)A B
: 
base 
( 
errors 
) 
{ 	
} 	
public 
long 
Value 
{ 	
get 
{ 
return 
$num 
; 
} 
} 	
} 
} �#
:D:\odata.net\src\Microsoft.OData.Edm\Schema\BadProperty.cs
	namespace
	Microsoft
 
.
OData
.
Edm
{ 
internal 
class
BadProperty 
:  

BadElement! +
,+ ,"
IEdmStructuralProperty- C
{ 
private 
readonly 
string 
name  $
;$ %
private 
readonly 
IEdmStructuredType +

;9 :
private 
readonly 
Cache 
< 
BadProperty *
,* +
IEdmTypeReference, =
>= >
type? C
=D E
newF I
CacheJ O
<O P
BadPropertyP [
,[ \
IEdmTypeReference] n
>n o
(o p
)p q
;q r
private 
static 
readonly 
Func  $
<$ %
BadProperty% 0
,0 1
IEdmTypeReference2 C
>C D
ComputeTypeFuncE T
=U V
(W X
meX Z
)Z [
=>\ ^
me_ a
.a b
ComputeTypeb m
(m n
)n o
;o p
public 
BadProperty 
( 
IEdmStructuredType -

,; <
string= C
nameD H
,H I
IEnumerableJ U
<U V
EdmErrorV ^
>^ _
errors` f
)f g
: 
base 
( 
errors 
) 
{ 	
this 
. 
name 
= 
name 
?? 
string  &
.& '
Empty' ,
;, -
this 
. 

=  

;. /
}   	
public"" 
string"" 
Name"" 
{## 	
get$$ 
{$$ 
return$$ 
this$$ 
.$$ 
name$$ "
;$$" #
}$$$ %
}%% 	
public'' 
IEdmStructuredType'' !

{(( 	
get)) 
{)) 
return)) 
this)) 
.)) 

;))+ ,
}))- .
}** 	
public,, 
IEdmTypeReference,,  
Type,,! %
{-- 	
get.. 
{.. 
return.. 
this.. 
... 
type.. "
..." #
GetValue..# +
(..+ ,
this.., 0
,..0 1
ComputeTypeFunc..2 A
,..A B
null..C G
)..G H
;..H I
}..J K
}// 	
public11 
string11 
DefaultValueString11 (
{22 	
get33 
{33 
return33 
null33 
;33 
}33  
}44 	
public66 
EdmPropertyKind66 
PropertyKind66 +
{77 	
get88 
{88 
return88 
EdmPropertyKind88 (
.88( )
None88) -
;88- .
}88/ 0
}99 	
public;; 
override;; 
string;; 
ToString;; '
(;;' (
);;( )
{<< 	
EdmError== 
error== 
=== 
this== !
.==! "
Errors==" (
.==( )
FirstOrDefault==) 7
(==7 8
)==8 9
;==9 :
Debug>> 
.>> 
Assert>> 
(>> 
error>> 
!=>> !
null>>" &
,>>& '
$str>>( 7
)>>7 8
;>>8 9
return?? 
error?? 
.?? 
	ErrorCode?? "
+??# $
$str??% (
+??) *
this??+ /
.??/ 0

(??= >
)??> ?
;??? @
}@@ 	
privateBB 
IEdmTypeReferenceBB !
ComputeTypeBB" -
(BB- .
)BB. /
{CC 	
returnDD 
newDD 
BadTypeReferenceDD '
(DD' (
newDD( +
BadTypeDD, 3
(DD3 4
ErrorsDD4 :
)DD: ;
,DD; <
trueDD= A
)DDA B
;DDB C
}EE 	
}FF 
}GG �)
DD:\odata.net\src\Microsoft.OData.Edm\Schema\BadNavigationProperty.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
class
BadNavigationProperty (
:) *

BadElement+ 5
,5 6"
IEdmNavigationProperty7 M
{ 
private 
readonly 
string 
name  $
;$ %
private 
readonly 
IEdmStructuredType +

;9 :
private 
readonly 
Cache 
< !
BadNavigationProperty 4
,4 5
IEdmTypeReference6 G
>G H
typeI M
=N O
newP S
CacheT Y
<Y Z!
BadNavigationPropertyZ o
,o p
IEdmTypeReference	q �
>
� �
(
� �
)
� �
;
� �
private 
static 
readonly 
Func  $
<$ %!
BadNavigationProperty% :
,: ;
IEdmTypeReference< M
>M N
ComputeTypeFuncO ^
=_ `
(a b
meb d
)d e
=>f h
mei k
.k l
ComputeTypel w
(w x
)x y
;y z
public !
BadNavigationProperty $
($ %
IEdmStructuredType% 7

,E F
stringG M
nameN R
,R S
IEnumerableT _
<_ `
EdmError` h
>h i
errorsj p
)p q
: 
base 
( 
errors 
) 
{ 	
this 
. 
name 
= 
name 
?? 
string  &
.& '
Empty' ,
;, -
this 
. 

=  

;. /
}   	
public"" 
string"" 
Name"" 
{## 	
get$$ 
{$$ 
return$$ 
this$$ 
.$$ 
name$$ "
;$$" #
}$$$ %
}%% 	
public'' 
IEdmStructuredType'' !

{(( 	
get)) 
{)) 
return)) 
this)) 
.)) 

;))+ ,
}))- .
}** 	
public,, 
IEdmTypeReference,,  
Type,,! %
{-- 	
get.. 
{.. 
return.. 
this.. 
... 
type.. "
..." #
GetValue..# +
(..+ ,
this.., 0
,..0 1
ComputeTypeFunc..2 A
,..A B
null..C G
)..G H
;..H I
}..J K
}// 	
public11 
EdmPropertyKind11 
PropertyKind11 +
{22 	
get33 
{33 
return33 
EdmPropertyKind33 (
.33( )
None33) -
;33- .
}33/ 0
}44 	
public66 "
IEdmNavigationProperty66 %
Partner66& -
{77 	
get88 
{88 
return88 
null88 
;88 
}88  
}99 	
public;; 
EdmOnDeleteAction;;  
OnDelete;;! )
{<< 	
get== 
{== 
return== 
EdmOnDeleteAction== *
.==* +
None==+ /
;==/ 0
}==1 2
}>> 	
public@@ %
IEdmReferentialConstraint@@ (!
ReferentialConstraint@@) >
{AA 	
getBB 
{BB 
returnBB 
nullBB 
;BB 
}BB  
}CC 	
publicEE 
boolEE 
ContainsTargetEE "
{FF 	
getGG 
{GG 
returnGG 
falseGG 
;GG 
}GG  !
}HH 	
publicJJ 
overrideJJ 
stringJJ 
ToStringJJ '
(JJ' (
)JJ( )
{KK 	
EdmErrorLL 
errorLL 
=LL 
thisLL !
.LL! "
ErrorsLL" (
.LL( )
FirstOrDefaultLL) 7
(LL7 8
)LL8 9
;LL9 :
DebugMM 
.MM 
AssertMM 
(MM 
errorMM 
!=MM !
nullMM" &
,MM& '
$strMM( 7
)MM7 8
;MM8 9
returnNN 
errorNN 
.NN 
	ErrorCodeNN "
+NN# $
$strNN% (
+NN) *
thisNN+ /
.NN/ 0

(NN= >
)NN> ?
;NN? @
}OO 	
privateQQ 
IEdmTypeReferenceQQ !
ComputeTypeQQ" -
(QQ- .
)QQ. /
{RR 	
returnSS 
newSS 
BadTypeReferenceSS '
(SS' (
newSS( +
BadTypeSS, 3
(SS3 4
thisSS4 8
.SS8 9
ErrorsSS9 ?
)SS? @
,SS@ A
trueSSB F
)SSF G
;SSG H
}TT 	
}UU 
}VV �
FD:\odata.net\src\Microsoft.OData.Edm\Schema\BadSpatialTypeReference.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{
internal 
class
BadSpatialTypeReference *
:+ ,#
EdmSpatialTypeReference- D
,D E

{ 
private 
readonly 
IEnumerable $
<$ %
EdmError% -
>- .
errors/ 5
;5 6
public #
BadSpatialTypeReference &
(& '
string' -

,; <
bool= A

isNullableB L
,L M
IEnumerableN Y
<Y Z
EdmErrorZ b
>b c
errorsd j
)j k
: 
base 
( 
new 
BadPrimitiveType '
(' (

,5 6 
EdmPrimitiveTypeKind7 K
.K L
NoneL P
,P Q
errorsR X
)X Y
,Y Z

isNullable[ e
,e f
nullg k
)k l
{ 	
this 
. 
errors 
= 
errors  
;  !
} 	
public 
IEnumerable 
< 
EdmError #
># $
Errors% +
{ 	
get 
{ 
return 
this 
. 
errors $
;$ %
}& '
} 	
public   
override   
string   
ToString   '
(  ' (
)  ( )
{!! 	
EdmError"" 
error"" 
="" 
this"" !
.""! "
Errors""" (
.""( )
FirstOrDefault"") 7
(""7 8
)""8 9
;""9 :
Debug## 
.## 
Assert## 
(## 
error## 
!=## !
null##" &
,##& '
$str##( 7
)##7 8
;##8 9
string$$ 
prefix$$ 
=$$ 
error$$ !
!=$$" $
null$$% )
?$$* +
error$$, 1
.$$1 2
	ErrorCode$$2 ;
.$$; <
ToString$$< D
($$D E
)$$E F
+$$G H
$str$$I L
:$$M N
$str$$O Q
;$$Q R
return%% 
prefix%% 
+%% 
this%%  
.%%  !

(%%. /
)%%/ 0
;%%0 1
}&& 	
}'' 
}(( �
ED:\odata.net\src\Microsoft.OData.Edm\Schema\BadStringTypeReference.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{
internal 
class
BadStringTypeReference )
:* +"
EdmStringTypeReference, B
,B C

{ 
private 
readonly 
IEnumerable $
<$ %
EdmError% -
>- .
errors/ 5
;5 6
public "
BadStringTypeReference %
(% &
string& ,

,: ;
bool< @

isNullableA K
,K L
IEnumerableM X
<X Y
EdmErrorY a
>a b
errorsc i
)i j
: 
base 
( 
new 
BadPrimitiveType '
(' (

,5 6 
EdmPrimitiveTypeKind7 K
.K L
StringL R
,R S
errorsT Z
)Z [
,[ \

isNullable] g
,g h
falsei n
,n o
nullp t
,t u
falsev {
){ |
{ 	
this 
. 
errors 
= 
errors  
;  !
} 	
public 
IEnumerable 
< 
EdmError #
># $
Errors% +
{ 	
get 
{ 
return 
this 
. 
errors $
;$ %
}& '
} 	
public   
override   
string   
ToString   '
(  ' (
)  ( )
{!! 	
EdmError"" 
error"" 
="" 
this"" !
.""! "
Errors""" (
.""( )
FirstOrDefault"") 7
(""7 8
)""8 9
;""9 :
Debug## 
.## 
Assert## 
(## 
error## 
!=## !
null##" &
,##& '
$str##( 7
)##7 8
;##8 9
string$$ 
prefix$$ 
=$$ 
error$$ !
!=$$" $
null$$% )
?$$* +
error$$, 1
.$$1 2
	ErrorCode$$2 ;
.$$; <
ToString$$< D
($$D E
)$$E F
+$$G H
$str$$I L
:$$M N
$str$$O Q
;$$Q R
return%% 
prefix%% 
+%% 
this%%  
.%%  !

(%%. /
)%%/ 0
;%%0 1
}&& 	
}'' 
}(( �
@D:\odata.net\src\Microsoft.OData.Edm\Schema\BadStructuredType.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
abstract
class 
BadStructuredType -
:. /
BadType0 7
,7 8
IEdmStructuredType9 K
,K L

{ 
	protected 
BadStructuredType #
(# $
IEnumerable$ /
</ 0
EdmError0 8
>8 9
errors: @
)@ A
: 
base 
( 
errors 
) 
{ 	
} 	
public 
IEdmStructuredType !
BaseType" *
{ 	
get 
{ 
return 
null 
; 
}  
} 	
public 
IEnumerable 
< 
IEdmProperty '
>' (
DeclaredProperties) ;
{ 	
get 
{ 
return 

Enumerable #
.# $
Empty$ )
<) *
IEdmProperty* 6
>6 7
(7 8
)8 9
;9 :
}; <
} 	
public!! 
bool!! 

IsAbstract!! 
{"" 	
get## 
{## 
return## 
false## 
;## 
}##  !
}$$ 	
public&& 
bool&& 
IsOpen&& 
{'' 	
get(( 
{(( 
return(( 
false(( 
;(( 
}((  !
})) 	
public++ 
IEdmProperty++ 
FindProperty++ (
(++( )
string++) /
name++0 4
)++4 5
{,, 	
return-- 
null-- 
;-- 
}.. 	
}// 
}00 �
GD:\odata.net\src\Microsoft.OData.Edm\Schema\BadTemporalTypeReference.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{
internal 
class
BadTemporalTypeReference +
:, -$
EdmTemporalTypeReference. F
,F G

{ 
private 
readonly 
IEnumerable $
<$ %
EdmError% -
>- .
errors/ 5
;5 6
public $
BadTemporalTypeReference '
(' (
string( .

,< =
bool> B

isNullableC M
,M N
IEnumerableO Z
<Z [
EdmError[ c
>c d
errorse k
)k l
: 
base 
( 
new 
BadPrimitiveType '
(' (

,5 6 
EdmPrimitiveTypeKind7 K
.K L
NoneL P
,P Q
errorsR X
)X Y
,Y Z

isNullable[ e
,e f
nullg k
)k l
{ 	
this 
. 
errors 
= 
errors  
;  !
} 	
public 
IEnumerable 
< 
EdmError #
># $
Errors% +
{ 	
get 
{ 
return 
this 
. 
errors $
;$ %
}& '
} 	
public   
override   
string   
ToString   '
(  ' (
)  ( )
{!! 	
EdmError"" 
error"" 
="" 
this"" !
.""! "
Errors""" (
.""( )
FirstOrDefault"") 7
(""7 8
)""8 9
;""9 :
Debug## 
.## 
Assert## 
(## 
error## 
!=## !
null##" &
,##& '
$str##( 7
)##7 8
;##8 9
string$$ 
prefix$$ 
=$$ 
error$$ !
!=$$" $
null$$% )
?$$* +
error$$, 1
.$$1 2
	ErrorCode$$2 ;
.$$; <
ToString$$< D
($$D E
)$$E F
+$$G H
$str$$I L
:$$M N
$str$$O Q
;$$Q R
return%% 
prefix%% 
+%% 
this%%  
.%%  !

(%%. /
)%%/ 0
;%%0 1
}&& 	
}'' 
}(( �
6D:\odata.net\src\Microsoft.OData.Edm\Schema\BadType.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{
internal 
class
BadType 
: 

BadElement '
,' (
IEdmType) 1
{ 
public 
BadType 
( 
IEnumerable "
<" #
EdmError# +
>+ ,
errors- 3
)3 4
: 
base 
( 
errors 
) 
{ 	
} 	
public 
virtual 
EdmTypeKind "
TypeKind# +
{ 	
get 
{ 
return 
EdmTypeKind $
.$ %
None% )
;) *
}+ ,
} 	
public 
override 
string 
ToString '
(' (
)( )
{ 	
EdmError 
error 
= 
this !
.! "
Errors" (
.( )
FirstOrDefault) 7
(7 8
)8 9
;9 :
Debug 
. 
Assert 
( 
error 
!= !
null" &
,& '
$str( 7
)7 8
;8 9
string 
prefix 
= 
error !
!=" $
null% )
?* +
error, 1
.1 2
	ErrorCode2 ;
.; <
ToString< D
(D E
)E F
+G H
$strI L
:M N
$strO Q
;Q R
return 
prefix 
+ 
this  
.  !

(. /
)/ 0
;0 1
}   	
}!! 
}"" �
?D:\odata.net\src\Microsoft.OData.Edm\Schema\BadTypeReference.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{
internal 
class
BadTypeReference #
:$ %
EdmTypeReference& 6
,6 7

{ 
private 
readonly 
IEnumerable $
<$ %
EdmError% -
>- .
errors/ 5
;5 6
public 
BadTypeReference 
(  
BadType  '

definition( 2
,2 3
bool4 8

isNullable9 C
)C D
: 
base 
( 

definition 
, 

isNullable )
)) *
{ 	
this 
. 
errors 
= 

definition $
.$ %
Errors% +
;+ ,
} 	
public 
IEnumerable 
< 
EdmError #
># $
Errors% +
{ 	
get 
{ 
return 
this 
. 
errors $
;$ %
}& '
} 	
public 
override 
string 
ToString '
(' (
)( )
{ 	
EdmError 
error 
= 
this !
.! "
Errors" (
.( )
FirstOrDefault) 7
(7 8
)8 9
;9 :
Debug   
.   
Assert   
(   
error   
!=   !
null  " &
,  & '
$str  ( 7
)  7 8
;  8 9
string!! 
prefix!! 
=!! 
error!! !
!=!!" $
null!!% )
?!!* +
error!!, 1
.!!1 2
	ErrorCode!!2 ;
.!!; <
ToString!!< D
(!!D E
)!!E F
+!!G H
$str!!I L
:!!M N
$str!!O Q
;!!Q R
return"" 
prefix"" 
+"" 
this""  
.""  !

("". /
)""/ 0
;""0 1
}## 	
}$$ 
}%% �
@D:\odata.net\src\Microsoft.OData.Edm\Schema\CyclicComplexType.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
{

 
internal 
class
CyclicComplexType $
:% &
BadComplexType' 5
{ 
public 
CyclicComplexType  
(  !
string! '

,5 6
EdmLocation7 B
locationC K
)K L
: 
base 
( 

,  !
new" %
EdmError& .
[. /
]/ 0
{1 2
new3 6
EdmError7 ?
(? @
location@ H
,H I
EdmErrorCodeJ V
.V W
BadCyclicComplexW g
,g h
Edmi l
.l m
Stringsm t
.t u
Bad_CyclicComplex	u �
(
� �

� �
)
� �
)
� �
}
� �
)
� �
{ 	
} 	
} 
} �
DD:\odata.net\src\Microsoft.OData.Edm\Schema\CyclicEntityContainer.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
{

 
internal 
class
CyclicEntityContainer (
:) *
BadEntityContainer+ =
{ 
public !
CyclicEntityContainer $
($ %
string% +
name, 0
,0 1
EdmLocation2 =
location> F
)F G
: 
base 
( 
name 
, 
new 
EdmError %
[% &
]& '
{( )
new* -
EdmError. 6
(6 7
location7 ?
,? @
EdmErrorCodeA M
.M N$
BadCyclicEntityContainerN f
,f g
Edmh k
.k l
Stringsl s
.s t&
Bad_CyclicEntityContainer	t �
(
� �
name
� �
)
� �
)
� �
}
� �
)
� �
{ 	
} 	
} 
} �
?D:\odata.net\src\Microsoft.OData.Edm\Schema\CyclicEntityType.cs
	namespace		 	
	Microsoft		
 
.		 
OData		 
.		 
Edm		 
{

 
internal 
class
CyclicEntityType #
:$ %

{ 
public 
CyclicEntityType 
(  
string  &

,4 5
EdmLocation6 A
locationB J
)J K
: 
base 
( 

,  !
new" %
EdmError& .
[. /
]/ 0
{1 2
new3 6
EdmError7 ?
(? @
location@ H
,H I
EdmErrorCodeJ V
.V W
BadCyclicEntityW f
,f g
Edmh k
.k l
Stringsl s
.s t
Bad_CyclicEntity	t �
(
� �

� �
)
� �
)
� �
}
� �
)
� �
{ 	
} 	
} 
} �	
aD:\odata.net\src\Microsoft.OData.Edm\PrimitiveValueConverters\PrimitiveValueConverterConstants.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
{ 
internal 
static
class ,
 PrimitiveValueConverterConstants :
{
internal 
const 
string 
UInt16TypeName ,
=- .
$str/ 7
;7 8
internal 
const 
string 
UInt32TypeName ,
=- .
$str/ 7
;7 8
internal 
const 
string 
UInt64TypeName ,
=- .
$str/ 7
;7 8
internal   
const   
string   '
DefaultUInt16UnderlyingType   9
=  : ;
$str  < G
;  G H
internal%% 
const%% 
string%% '
DefaultUInt32UnderlyingType%% 9
=%%: ;
$str%%< G
;%%G H
internal** 
const** 
string** '
DefaultUInt64UnderlyingType** 9
=**: ;
$str**< I
;**I J
}++ 
},, ��
ED:\odata.net\src\Microsoft.OData.Edm\Validation\InterfaceValidator.cs
	namespace 	
	Microsoft
 
. 
OData 
. 
Edm 
. 

Validation (
{ 
internal 
class
InterfaceValidator %
{ 
private 
static 
readonly 

Dictionary  *
<* +
Type+ /
,/ 0
VisitorBase1 <
>< =
InterfaceVisitors> O
=P Q&
CreateInterfaceVisitorsMapR l
(l m
)m n
;n o
private 
static 
readonly 
Memoizer  (
<( )
Type) -
,- .
IEnumerable/ :
<: ;
VisitorBase; F
>F G
>G H)
ConcreteTypeInterfaceVisitorsI f
=g h
newi l
Memoizerm u
<u v
Typev z
,z {
IEnumerable	| �
<
� �
VisitorBase
� �
>
� �
>
� �
(
� �/
!ComputeInterfaceVisitorsForObject
� �
,
� �
null
� �
)
� �
;
� �
private 
readonly 
HashSetInternal (
<( )
object) /
>/ 0
visited1 8
=9 :
new; >
HashSetInternal? N
<N O
objectO U
>U V
(V W
)W X
;X Y
private 
readonly 
HashSetInternal (
<( )
object) /
>/ 0

visitedBad1 ;
=< =
new> A
HashSetInternalB Q
<Q R
objectR X
>X Y
(Y Z
)Z [
;[ \
private 
readonly 
HashSetInternal (
<( )
object) /
>/ 0
danglingReferences1 C
=D E
newF I
HashSetInternalJ Y
<Y Z
objectZ `
>` a
(a b
)b c
;c d
private 
readonly 
HashSetInternal (
<( )
object) /
>/ 0
skipVisitation1 ?
;? @
private 
readonly 
bool *
validateDirectValueAnnotations <
;< =
private 
readonly 
	IEdmModel "
model# (
;( )
private 
InterfaceValidator "
(" #
HashSetInternal# 2
<2 3
object3 9
>9 :
skipVisitation; I
,I J
	IEdmModelK T
modelU Z
,Z [
bool\ `*
validateDirectValueAnnotationsa 
)	 �
{   	
this!! 
.!! 
skipVisitation!! 
=!!  !
skipVisitation!!" 0
;!!0 1
this"" 
."" 
model"" 
="" 
model"" 
;"" 
this## 
.## *
validateDirectValueAnnotations## /
=##0 1*
validateDirectValueAnnotations##2 P
;##P Q
}$$ 	
public&& 
static&& 
IEnumerable&& !
<&&! "
EdmError&&" *
>&&* +.
"ValidateModelStructureAndSemantics&&, N
(&&N O
	IEdmModel&&O X
model&&Y ^
,&&^ _
ValidationRuleSet&&` q
semanticRuleSet	&&r �
)
&&� �
{'' 	
InterfaceValidator(( 
modelValidator(( -
=((. /
new((0 3
InterfaceValidator((4 F
(((F G
null((G K
,((K L
model((M R
,((R S
true((T X
)((X Y
;((Y Z
List++ 
<++ 
EdmError++ 
>++ 
errors++ !
=++" #
new++$ '
List++( ,
<++, -
EdmError++- 5
>++5 6
(++6 7
modelValidator++7 E
.++E F
ValidateStructure++F W
(++W X
model++X ]
)++] ^
)++^ _
;++_ `
InterfaceValidator.. 
referencesValidator.. 2
=..3 4
new..5 8
InterfaceValidator..9 K
(..K L
modelValidator..L Z
...Z [
visited..[ b
,..b c
model..d i
,..i j
false..k p
)..p q
;..q r
IEnumerable// 
<// 
object// 
>// ,
 referencesToStructurallyValidate//  @
=//A B
modelValidator//C Q
.//Q R
danglingReferences//R d
;//d e
while00 
(00 ,
 referencesToStructurallyValidate00 3
.003 4
FirstOrDefault004 B
(00B C
)00C D
!=00E G
null00H L
)00L M
{11 
foreach22 
(22 
object22 
	reference22  )
in22* ,,
 referencesToStructurallyValidate22- M
)22M N
{33 
errors44 
.44 
AddRange44 #
(44# $
referencesValidator44$ 7
.447 8
ValidateStructure448 I
(44I J
	reference44J S
)44S T
)44T U
;44U V
}55 ,
 referencesToStructurallyValidate77 0
=771 2
referencesValidator773 F
.77F G
danglingReferences77G Y
.77Y Z
ToArray77Z a
(77a b
)77b c
;77c d
}88 
if;; 
(;; 
errors;; 
.;; 
Any;; 
(;; 
ValidationHelper;; +
.;;+ ,
IsInterfaceCritical;;, ?
);;? @
);;@ A
{<< 
return== 
errors== 
;== 
}>> 
ValidationContextAA %
semanticValidationContextAA 7
=AA8 9
newAA: =
ValidationContextAA> O
(AAO P
modelBB 
,BB 
(BB 
itemBB 
)BB 
=>BB  
modelValidatorBB! /
.BB/ 0

visitedBadBB0 :
.BB: ;
ContainsBB; C
(BBC D
itemBBD H
)BBH I
||BBJ L
referencesValidatorBBM `
.BB` a

visitedBadBBa k
.BBk l
ContainsBBl t
(BBt u
itemBBu y
)BBy z
)BBz {
;BB{ |

DictionaryCC 
<CC 
TypeCC 
,CC 
ListCC !
<CC! "
ValidationRuleCC" 0
>CC0 1
>CC1 21
%concreteTypeSemanticInterfaceVisitorsCC3 X
=CCY Z
newCC[ ^

DictionaryCC_ i
<CCi j
TypeCCj n
,CCn o
ListCCp t
<CCt u
ValidationRule	CCu �
>
CC� �
>
CC� �
(
CC� �
)
CC� �
;
CC� �
foreachDD 
(DD 
objectDD 
itemDD  
inDD! #
modelValidatorDD$ 2
.DD2 3
visitedDD3 :
)DD: ;
{EE 
ifFF 
(FF 
!FF 
modelValidatorFF #
.FF# $

visitedBadFF$ .
.FF. /
ContainsFF/ 7
(FF7 8
itemFF8 <
)FF< =
)FF= >
{GG 
foreachHH 
(HH 
ValidationRuleHH +
ruleHH, 0
inHH1 31
%GetSemanticInterfaceVisitorsForObjectHH4 Y
(HHY Z
itemHHZ ^
.HH^ _
GetTypeHH_ f
(HHf g
)HHg h
,HHh i
semanticRuleSetHHj y
,HHy z2
%concreteTypeSemanticInterfaceVisitors	HH{ �
)
HH� �
)
HH� �
{II 
ruleJJ 
.JJ 
EvaluateJJ %
(JJ% &%
semanticValidationContextJJ& ?
,JJ? @
itemJJA E
)JJE F
;JJF G
}KK 
}LL 
}MM 
errorsOO 
.OO 
AddRangeOO 
(OO %
semanticValidationContextOO 5
.OO5 6
ErrorsOO6 <
)OO< =
;OO= >
returnPP 
errorsPP 
;PP 
}QQ 	
publicSS 
staticSS 
IEnumerableSS !
<SS! "
EdmErrorSS" *
>SS* +
GetStructuralErrorsSS, ?
(SS? @
IEdmElementSS@ K
itemSSL P
)SSP Q
{TT 	
	IEdmModelUU 
modelUU 
=UU 
itemUU "
asUU# %
	IEdmModelUU& /
;UU/ 0
InterfaceValidatorVV 
structuralValidatorVV 2
=VV3 4
newVV5 8
InterfaceValidatorVV9 K
(VVK L
nullVVL P
,VVP Q
modelVVR W
,VVW X
modelVVY ^
!=VV_ a
nullVVb f
)VVf g
;VVg h
returnWW 
structuralValidatorWW &
.WW& '
ValidateStructureWW' 8
(WW8 9
itemWW9 =
)WW= >
;WW> ?
}XX 	
private\\ 
static\\ 

Dictionary\\ !
<\\! "
Type\\" &
,\\& '
VisitorBase\\( 3
>\\3 4&
CreateInterfaceVisitorsMap\\5 O
(\\O P
)\\P Q
{]] 	

Dictionary^^ 
<^^ 
Type^^ 
,^^ 
VisitorBase^^ (
>^^( )
map^^* -
=^^. /
new^^0 3

Dictionary^^4 >
<^^> ?
Type^^? C
,^^C D
VisitorBase^^E P
>^^P Q
(^^Q R
)^^R S
;^^S T
var`` 
nestedTypes`` 
=`` 
typeof`` $
(``$ %
InterfaceValidator``% 7
)``7 8
.``8 9#
GetNonPublicNestedTypes``9 P
(``P Q
)``Q R
;``R S
foreachbb 
(bb 
Typebb 

nestedTypebb $
inbb% '
nestedTypesbb( 3
)bb3 4
{cc 
ifdd 
(dd 

nestedTypedd 
.dd 
IsClassdd &
(dd& '
)dd' (
)dd( )
{ee 
Typeff 
baseTypeff !
=ff" #

nestedTypeff$ .
.ff. /
GetBaseTypeff/ :
(ff: ;
)ff; <
;ff< =
ifgg 
(gg 
baseTypegg  
.gg  !

(gg. /
)gg/ 0
&&gg1 3
baseTypegg4 <
.gg< =
GetBaseTypegg= H
(ggH I
)ggI J
==ggK M
typeofggN T
(ggT U
VisitorBaseggU `
)gg` a
)gga b
{hh 
mapii 
.ii 
Addii 
(ii  
baseTypeii  (
.ii( )
GetGenericArgumentsii) <
(ii< =
)ii= >
[ii> ?
$numii? @
]ii@ A
,iiA B
(iiC D
VisitorBaseiiD O
)iiO P
	ActivatoriiP Y
.iiY Z
CreateInstanceiiZ h
(iih i

nestedTypeiii s
)iis t
)iit u
;iiu v
}jj 
}kk 
}ll 
returnnn 
mapnn 
;nn 
}oo 	
privateqq 
staticqq 
IEnumerableqq "
<qq" #
VisitorBaseqq# .
>qq. /-
!ComputeInterfaceVisitorsForObjectqq0 Q
(qqQ R
TypeqqR V

objectTypeqqW a
)qqa b
{rr 	
Listss 
<ss 
VisitorBasess 
>ss 
visitorsss &
=ss' (
newss) ,
Listss- 1
<ss1 2
VisitorBasess2 =
>ss= >
(ss> ?
)ss? @
;ss@ A
foreachtt 
(tt 
Typett 
typett 
intt !

objectTypett" ,
.tt, -

(tt: ;
)tt; <
)tt< =
{uu 
VisitorBasevv 
visitorvv #
;vv# $
ifww 
(ww 
InterfaceVisitorsww %
.ww% &
TryGetValueww& 1
(ww1 2
typeww2 6
,ww6 7
outww8 ;
visitorww< C
)wwC D
)wwD E
{xx 
visitorsyy 
.yy 
Addyy  
(yy  !
visitoryy! (
)yy( )
;yy) *
}zz 
}{{ 
return}} 
visitors}} 
;}} 
}~~ 	
private
�� 
static
�� 
EdmError
�� .
 CreatePropertyMustNotBeNullError
��  @
<
��@ A
T
��A B
>
��B C
(
��C D
T
��D E
item
��F J
,
��J K
string
��L R
propertyName
��S _
)
��_ `
{
�� 	
return
�� 
new
�� 
EdmError
�� 
(
��  
GetLocation
�� 
(
�� 
item
��  
)
��  !
,
��! "
EdmErrorCode
�� 
.
�� 9
+InterfaceCriticalPropertyValueMustNotBeNull
�� H
,
��H I
Strings
�� 
.
�� @
2EdmModel_Validator_Syntactic_PropertyMustNotBeNull
�� J
(
��J K
typeof
��K Q
(
��Q R
T
��R S
)
��S T
.
��T U
Name
��U Y
,
��Y Z
propertyName
��[ g
)
��g h
)
��h i
;
��i j
}
�� 	
private
�� 
static
�� 
EdmError
�� /
!CreateEnumPropertyOutOfRangeError
��  A
<
��A B
T
��B C
,
��C D
E
��E F
>
��F G
(
��G H
T
��H I
item
��J N
,
��N O
E
��P Q
	enumValue
��R [
,
��[ \
string
��] c
propertyName
��d p
)
��p q
{
�� 	
return
�� 
new
�� 
EdmError
�� 
(
��  
GetLocation
�� 
(
�� 
item
��  
)
��  !
,
��! "
EdmErrorCode
�� 
.
�� :
,InterfaceCriticalEnumPropertyValueOutOfRange
�� I
,
��I J
Strings
�� 
.
�� F
8EdmModel_Validator_Syntactic_EnumPropertyValueOutOfRange
�� P
(
��P Q
typeof
��Q W
(
��W X
T
��X Y
)
��Y Z
.
��Z [
Name
��[ _
,
��_ `
propertyName
��a m
,
��m n
typeof
��o u
(
��u v
E
��v w
)
��w x
.
��x y
Name
��y }
,
��} ~
	enumValue�� �
)��� �
)��� �
;��� �
}
�� 	
private
�� 
static
�� 
EdmError
�� 5
'CheckForInterfaceKindValueMismatchError
��  G
<
��G H
T
��H I
,
��I J
K
��K L
,
��L M
I
��N O
>
��O P
(
��P Q
T
��Q R
item
��S W
,
��W X
K
��Y Z
kind
��[ _
,
��_ `
string
��a g
propertyName
��h t
)
��t u
{
�� 	
if
�� 
(
�� 
item
�� 
is
�� 
I
�� 
)
�� 
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
return
�� 
new
�� 
EdmError
�� 
(
��  
GetLocation
�� 
(
�� 
item
��  
)
��  !
,
��! "
EdmErrorCode
�� 
.
�� 0
"InterfaceCriticalKindValueMismatch
�� ?
,
��? @
Strings
�� 
.
�� E
7EdmModel_Validator_Syntactic_InterfaceKindValueMismatch
�� O
(
��O P
kind
��P T
,
��T U
typeof
��V \
(
��\ ]
T
��] ^
)
��^ _
.
��_ `
Name
��` d
,
��d e
propertyName
��f r
,
��r s
typeof
��t z
(
��z {
I
��{ |
)
��| }
.
��} ~
Name��~ �
)��� �
)��� �
;��� �
}
�� 	
private
�� 
static
�� 
EdmError
�� 5
'CreateInterfaceKindValueUnexpectedError
��  G
<
��G H
T
��H I
,
��I J
K
��K L
>
��L M
(
��M N
T
��N O
item
��P T
,
��T U
K
��V W
kind
��X \
,
��\ ]
string
��^ d
propertyName
��e q
)
��q r
{
�� 	
return
�� 
new
�� 
EdmError
�� 
(
��  
GetLocation
�� 
(
�� 
item
��  
)
��  !
,
��! "
EdmErrorCode
�� 
.
�� 2
$InterfaceCriticalKindValueUnexpected
�� A
,
��A B
Strings
�� 
.
�� G
9EdmModel_Validator_Syntactic_InterfaceKindValueUnexpected
�� Q
(
��Q R
kind
��R V
,
��V W
typeof
��X ^
(
��^ _
T
��_ `
)
��` a
.
��a b
Name
��b f
,
��f g
propertyName
��h t
)
��t u
)
��u v
;
��v w
}
�� 	
private
�� 
static
�� 
EdmError
�� >
0CreateTypeRefInterfaceTypeKindValueMismatchError
��  P
<
��P Q
T
��Q R
>
��R S
(
��S T
T
��T U
item
��V Z
)
��Z [
where
��\ a
T
��b c
:
��d e
IEdmTypeReference
��f w
{
�� 	
Debug
�� 
.
�� 
Assert
�� 
(
�� 
item
�� 
.
�� 

Definition
�� (
!=
��) +
null
��, 0
,
��0 1
$str
��2 K
)
��K L
;
��L M
return
�� 
new
�� 
EdmError
�� 
(
��  
GetLocation
�� 
(
�� 
item
��  
)
��  !
,
��! "
EdmErrorCode
�� 
.
�� 0
"InterfaceCriticalKindValueMismatch
�� ?
,
��? @
Strings
�� 
.
�� P
BEdmModel_Validator_Syntactic_TypeRefInterfaceTypeKindValueMismatch
�� Z
(
��Z [
typeof
��[ a
(
��a b
T
��b c
)
��c d
.
��d e
Name
��e i
,
��i j
item
��k o
.
��o p

Definition
��p z
.
��z {
TypeKind��{ �
)��� �
)��� �
;��� �
}
�� 	
private
�� 
static
�� 
EdmError
�� G
9CreatePrimitiveTypeRefInterfaceTypeKindValueMismatchError
��  Y
<
��Y Z
T
��Z [
>
��[ \
(
��\ ]
T
��] ^
item
��_ c
)
��c d
where
��e j
T
��k l
:
��m n)
IEdmPrimitiveTypeReference��o �
{
�� 	
Debug
�� 
.
�� 
Assert
�� 
(
�� 
item
�� 
.
�� 

Definition
�� (
is
��) +
IEdmPrimitiveType
��, =
,
��= >
$str
��? e
)
��e f
;
��f g
return
�� 
new
�� 
EdmError
�� 
(
��  
GetLocation
�� 
(
�� 
item
��  
)
��  !
,
��! "
EdmErrorCode
�� 
.
�� 0
"InterfaceCriticalKindValueMismatch
�� ?
,
��? @
Strings
�� 
.
�� P
BEdmModel_Validator_Syntactic_TypeRefInterfaceTypeKindValueMismatch
�� Z
(
��Z [
typeof
��[ a
(
��a b
T
��b c
)
��c d
.
��d e
Name
��e i
,
��i j
(
��k l
(
��l m
IEdmPrimitiveType
��m ~
)
��~ 
item�� �
.��� �

Definition��� �
)��� �
.��� �

)��� �
)��� �
;��� �
}
�� 	
private
�� 
static
�� 
void
�� 
ProcessEnumerable
�� -
<
��- .
T
��. /
,
��/ 0
E
��1 2
>
��2 3
(
��3 4
T
��4 5
item
��6 :
,
��: ;
IEnumerable
��< G
<
��G H
E
��H I
>
��I J

enumerable
��K U
,
��U V
string
��W ]
propertyName
��^ j
,
��j k
IList
��l q

targetList
��r |
,
��| }
ref��~ �
List��� �
<��� �
EdmError��� �
>��� �
errors��� �
)��� �
{
�� 	
if
�� 
(
�� 

enumerable
�� 
==
�� 
null
�� "
)
��" #
{
�� 

�� 
(
�� .
 CreatePropertyMustNotBeNullError
�� >
(
��> ?
item
��? C
,
��C D
propertyName
��E Q
)
��Q R
,
��R S
ref
��T W
errors
��X ^
)
��^ _
;
��_ `
}
�� 
else
�� 
{
�� 
foreach
�� 
(
�� 
E
�� 

enumMember
�� %
in
��& (

enumerable
��) 3
)
��3 4
{
�� 
if
�� 
(
�� 

enumMember
�� "
!=
��# %
null
��& *
)
��* +
{
�� 

targetList
�� "
.
��" #
Add
��# &
(
��& '

enumMember
��' 1
)
��1 2
;
��2 3
}
�� 
else
�� 
{
�� 

�� %
(
��% &
new
�� 
EdmError
��  (
(
��( )
GetLocation
��) 4
(
��4 5
item
��5 9
)
��9 :
,
��: ;
EdmErrorCode
��< H
.
��H I@
2InterfaceCriticalEnumerableMustNotHaveNullElements
��I {
,
��{ |
Strings��} �
.��� �N
>EdmModel_Validator_Syntactic_EnumerableMustNotHaveNullElements��� �
(��� �
typeof��� �
(��� �
T��� �
)��� �
.��� �
Name��� �
,��� �
propertyName��� �
)��� �
)��� �
,��� �
ref
�� 
errors
��  &
)
��& '
;
��' (
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
static
�� 
void
�� 

�� )
(
��) *
EdmError
��* 2
newError
��3 ;
,
��; <
ref
��= @
List
��A E
<
��E F
EdmError
��F N
>
��N O
errors
��P V
)
��V W
{
�� 	
if
�� 
(
�� 
newError
�� 
!=
�� 
null
��  
)
��  !
{
�� 
if
�� 
(
�� 
errors
�� 
==
�� 
null
�� "
)
��" #
{
�� 
errors
�� 
=
�� 
new
��  
List
��! %
<
��% &
EdmError
��& .
>
��. /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
errors
�� 
.
�� 
Add
�� 
(
�� 
newError
�� #
)
��# $
;
��$ %
}
�� 
}
�� 	
private
�� 
static
�� 
bool
�� 
IsCheckableBad
�� *
(
��* +
object
��+ 1
element
��2 9
)
��9 :
{
�� 	

�� 
	checkable
�� #
=
��$ %
element
��& -
as
��. 0

��1 >
;
��> ?
return
�� 
	checkable
�� 
!=
�� 
null
��  $
&&
��% '
	checkable
��( 1
.
��1 2
Errors
��2 8
!=
��9 ;
null
��< @
&&
��A C
	checkable
��D M
.
��M N
Errors
��N T
.
��T U
Count
��U Z
(
��Z [
)
��[ \
>
��] ^
$num
��_ `
;
��` a
}
�� 	
private
�� 
static
�� 
EdmLocation
�� "
GetLocation
��# .
(
��. /
object
��/ 5
item
��6 :
)
��: ;
{
�� 	

�� 
edmLocatable
�� &
=
��' (
item
��) -
as
��. 0

��1 >
;
��> ?
return
�� 
edmLocatable
�� 
!=
��  "
null
��# '
&&
��( *
edmLocatable
��+ 7
.
��7 8
Location
��8 @
!=
��A C
null
��D H
?
��I J
edmLocatable
��K W
.
��W X
Location
��X `
:
��a b
new
��c f
ObjectLocation
��g u
(
��u v
item
��v z
)
��z {
;
��{ |
}
�� 	
private
�� 
static
�� 
IEnumerable
�� "
<
��" #
ValidationRule
��# 1
>
��1 23
%GetSemanticInterfaceVisitorsForObject
��3 X
(
��X Y
Type
��Y ]

objectType
��^ h
,
��h i
ValidationRuleSet
��j {
ruleSet��| �
,��� �

Dictionary��� �
<��� �
Type��� �
,��� �
List��� �
<��� �
ValidationRule��� �
>��� �
>��� �5
%concreteTypeSemanticInterfaceVisitors��� �
)��� �
{
�� 	
List
�� 
<
�� 
ValidationRule
�� 
>
��  
visitors
��! )
;
��) *
if
�� 
(
�� 
!
�� 3
%concreteTypeSemanticInterfaceVisitors
�� 6
.
��6 7
TryGetValue
��7 B
(
��B C

objectType
��C M
,
��M N
out
��O R
visitors
��S [
)
��[ \
)
��\ ]
{
�� 
visitors
�� 
=
�� 
new
�� 
List
�� #
<
��# $
ValidationRule
��$ 2
>
��2 3
(
��3 4
)
��4 5
;
��5 6
foreach
�� 
(
�� 
Type
�� 
type
�� "
in
��# %

objectType
��& 0
.
��0 1

��1 >
(
��> ?
)
��? @
)
��@ A
{
�� 
visitors
�� 
.
�� 
AddRange
�� %
(
��% &
ruleSet
��& -
.
��- .
GetRules
��. 6
(
��6 7
type
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 3
%concreteTypeSemanticInterfaceVisitors
�� 5
.
��5 6
Add
��6 9
(
��9 :

objectType
��: D
,
��D E
visitors
��F N
)
��N O
;
��O P
}
�� 
return
�� 
visitors
�� 
;
�� 
}
�� 	
private
�� 
IEnumerable
�� 
<
�� 
EdmError
�� $
>
��$ %
ValidateStructure
��& 7
(
��7 8
object
��8 >
item
��? C
)
��C D
{
�� 	
if
�� 
(
�� 
item
�� 
is
�� "
IEdmCoreModelElement
�� ,
||
��- /
this
��0 4
.
��4 5
visited
��5 <
.
��< =
Contains
��= E
(
��E F
item
��F J
)
��J K
||
��L N
(
��O P
this
��P T
.
��T U
skipVisitation
��U c
!=
��d f
null
��g k
&&
��l n
this
��o s
.
��s t
skipVisitation��t �
.��� �
Contains��� �
(��� �
item��� �
)��� �
)��� �
)��� �
{
�� 
return
�� 

Enumerable
�� !
.
��! "
Empty
��" '
<
��' (
EdmError
��( 0
>
��0 1
(
��1 2
)
��2 3
;
��3 4
}
�� 
this
�� 
.
�� 
visited
�� 
.
�� 
Add
�� 
(
�� 
item
�� !
)
��! "
;
��" #
if
�� 
(
�� 
this
�� 
.
��  
danglingReferences
�� '
.
��' (
Contains
��( 0
(
��0 1
item
��1 5
)
��5 6
)
��6 7
{
�� 
this
�� 
.
��  
danglingReferences
�� '
.
��' (
Remove
��( .
(
��. /
item
��/ 3
)
��3 4
;
��4 5
}
�� 
List
�� 
<
�� 
EdmError
�� 
>
�� 
immediateErrors
�� *
=
��+ ,
null
��- 1
;
��1 2
List
�� 
<
�� 
object
�� 
>
�� 
followup
�� !
=
��" #
new
��$ '
List
��( ,
<
��, -
object
��- 3
>
��3 4
(
��4 5
)
��5 6
;
��6 7
List
�� 
<
�� 
object
�� 
>
�� 

references
�� #
=
��$ %
new
��& )
List
��* .
<
��. /
object
��/ 5
>
��5 6
(
��6 7
)
��7 8
;
��8 9
IEnumerable
�� 
<
�� 
VisitorBase
�� #
>
��# $
visitors
��% -
;
��- .
visitors
�� 
=
�� +
ConcreteTypeInterfaceVisitors
�� 4
.
��4 5
Evaluate
��5 =
(
��= >
item
��> B
.
��B C
GetType
��C J
(
��J K
)
��K L
)
��L M
;
��M N
foreach
�� 
(
�� 
VisitorBase
��  
visitor
��! (
in
��) +
visitors
��, 4
)
��4 5
{
�� 
IEnumerable
�� 
<
�� 
EdmError
�� $
>
��$ %
errors
��& ,
=
��- .
visitor
��/ 6
.
��6 7
Visit
��7 <
(
��< =
item
��= A
,
��A B
followup
��C K
,
��K L

references
��M W
)
��W X
;
��X Y
if
�� 
(
�� 
errors
�� 
!=
�� 
null
�� "
)
��" #
{
�� 
foreach
�� 
(
�� 
EdmError
�� %
error
��& +
in
��, .
errors
��/ 5
)
��5 6
{
�� 
if
�� 
(
�� 
immediateErrors
�� +
==
��, .
null
��/ 3
)
��3 4
{
�� 
immediateErrors
�� +
=
��, -
new
��. 1
List
��2 6
<
��6 7
EdmError
��7 ?
>
��? @
(
��@ A
)
��A B
;
��B C
}
�� 
immediateErrors
�� '
.
��' (
Add
��( +
(
��+ ,
error
��, 1
)
��1 2
;
��2 3
}
�� 
}
�� 
}
�� 
if
�� 
(
�� 
immediateErrors
�� 
!=
��  "
null
��# '
)
��' (
{
�� 
this
�� 
.
�� 

visitedBad
�� 
.
��  
Add
��  #
(
��# $
item
��$ (
)
��( )
;
��) *
return
�� 
immediateErrors
�� &
;
��& '
}
�� 
List
�� 
<
�� 
EdmError
�� 
>
�� 
followupErrors
�� )
=
��* +
new
��, /
List
��0 4
<
��4 5
EdmError
��5 =
>
��= >
(
��> ?
)
��? @
;
��@ A
if
�� 
(
�� 
this
�� 
.
�� ,
validateDirectValueAnnotations
�� 3
)
��3 4
{
�� 
IEdmElement
�� 
element
�� #
=
��$ %
item
��& *
as
��+ -
IEdmElement
��. 9
;
��9 :
if
�� 
(
�� 
element
�� 
!=
�� 
null
�� #
)
��# $
{
�� 
foreach
�� 
(
�� '
IEdmDirectValueAnnotation
�� 6

annotation
��7 A
in
��B D
this
��E I
.
��I J
model
��J O
.
��O P$
DirectValueAnnotations
��P f
(
��f g
element
��g n
)
��n o
)
��o p
{
�� 
followupErrors
�� &
.
��& '
AddRange
��' /
(
��/ 0
this
��0 4
.
��4 5
ValidateStructure
��5 F
(
��F G

annotation
��G Q
)
��Q R
)
��R S
;
��S T
}
�� 
}
�� 
}
�� 
IEdmVocabularyAnnotatable
�� %
annotatable
��& 1
=
��2 3
item
��4 8
as
��9 ;'
IEdmVocabularyAnnotatable
��< U
;
��U V
if
�� 
(
�� 
this
�� 
.
�� 
model
�� 
!=
�� 
null
�� "
&&
��# %
annotatable
��& 1
!=
��2 4
null
��5 9
)
��9 :
{
�� 
foreach
�� 
(
�� &
IEdmVocabularyAnnotation
�� 1

annotation
��2 <
in
��= ?
annotatable
��@ K
.
��K L#
VocabularyAnnotations
��L a
(
��a b
this
��b f
.
��f g
model
��g l
)
��l m
)
��m n
{
�� 
if
�� 
(
�� 

annotation
�� "
.
��" #
Target
��# )
==
��* ,
null
��- 1
)
��1 2
{
�� 
followupErrors
�� &
.
��& '
AddRange
��' /
(
��/ 0
this
��0 4
.
��4 5
ValidateStructure
��5 F
(
��F G
new
��G J%
EdmVocabularyAnnotation
��K b
(
��b c
annotatable
��c n
,
��n o

annotation
��p z
.
��z {
Term
��{ 
,�� �

annotation��� �
.��� �
	Qualifier��� �
,��� �

annotation��� �
.��� �
Value��� �
)��� �
)��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 
foreach
�� 
(
�� 
object
�� 
followupItem
�� (
in
��) +
followup
��, 4
)
��4 5
{
�� 
followupErrors
�� 
.
�� 
AddRange
�� '
(
��' (
this
��( ,
.
��, -
ValidateStructure
��- >
(
��> ?
followupItem
��? K
)
��K L
)
��L M
;
��M N
}
�� 
foreach
�� 
(
�� 
object
�� 
referencedItem
�� *
in
��+ -

references
��. 8
)
��8 9
{
�� 
this
�� 
.
�� 
CollectReference
�� %
(
��% &
referencedItem
��& 4
)
��4 5
;
��5 6
}
�� 
return
�� 
followupErrors
�� !
;
��! "
}
�� 	
private
�� 
void
�� 
CollectReference
�� %
(
��% &
object
��& ,
	reference
��- 6
)
��6 7
{
�� 	
if
�� 
(
�� 
!
�� 
(
�� 
	reference
�� 
is
�� "
IEdmCoreModelElement
�� 3
)
��3 4
&&
��5 7
!
�� 
this
�� 
.
�� 
visited
�� 
.
�� 
Contains
�� &
(
��& '
	reference
��' 0
)
��0 1
&&
��2 4
(
�� 
this
�� 
.
�� 
skipVisitation
�� $
==
��% '
null
��( ,
||
��- /
!
��0 1
this
��1 5
.
��5 6
skipVisitation
��6 D
.
��D E
Contains
��E M
(
��M N
	reference
��N W
)
��W X
)
��X Y
)
��Y Z
{
�� 
this
�� 
.
��  
danglingReferences
�� '
.
��' (
Add
��( +
(
��+ ,
	reference
��, 5
)
��5 6
;
��6 7
}
�� 
}
�� 	
private
�� 
abstract
�� 
class
�� 
VisitorBase
�� *
{
�� 	
public
�� 
abstract
�� 
IEnumerable
�� '
<
��' (
EdmError
��( 0
>
��0 1
Visit
��2 7
(
��7 8
object
��8 >
item
��? C
,
��C D
List
��E I
<
��I J
object
��J P
>
��P Q
followup
��R Z
,
��Z [
List
��\ `
<
��` a
object
��a g
>
��g h

references
��i s
)
��s t
;
��t u
}
�� 	
private
�� 
abstract
�� 
class
�� 

VisitorOfT
�� )
<
��) *
T
��* +
>
��+ ,
:
��- .
VisitorBase
��/ :
{
�� 	
public
�� 
override
�� 
IEnumerable
�� '
<
��' (
EdmError
��( 0
>
��0 1
Visit
��2 7
(
��7 8
object
��8 >
item
��? C
,
��C D
List
��E I
<
��I J
object
��J P
>
��P Q
followup
��R Z
,
��Z [
List
��\ `
<
��` a
object
��a g
>
��g h

references
��i s
)
��s t
{
�� 
return
�� 
this
�� 
.
�� 
VisitT
�� "
(
��" #
(
��# $
T
��$ %
)
��% &
item
��& *
,
��* +
followup
��, 4
,
��4 5

references
��6 @
)
��@ A
;
��A B
}
�� 
	protected
�� 
abstract
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <
T
��< =
item
��> B
,
��B C
List
��D H
<
��H I
object
��I O
>
��O P
followup
��Q Y
,
��Y Z
List
��[ _
<
��_ `
object
��` f
>
��f g

references
��h r
)
��r s
;
��s t
}
�� 	
private
�� 
sealed
�� 
class
�� $
VisitorOfIEdmCheckable
�� 3
:
��4 5

VisitorOfT
��6 @
<
��@ A

��A N
>
��N O
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <

��< I
	checkable
��J S
,
��S T
List
��U Y
<
��Y Z
object
��Z `
>
��` a
followup
��b j
,
��j k
List
��l p
<
��p q
object
��q w
>
��w x

references��y �
)��� �
{
�� 
List
�� 
<
�� 
EdmError
�� 
>
�� 
checkableErrors
�� .
=
��/ 0
new
��1 4
List
��5 9
<
��9 :
EdmError
��: B
>
��B C
(
��C D
)
��D E
;
��E F
List
�� 
<
�� 
EdmError
�� 
>
�� 
errors
�� %
=
��& '
null
��( ,
;
��, -
ProcessEnumerable
�� !
(
��! "
	checkable
��" +
,
��+ ,
	checkable
��- 6
.
��6 7
Errors
��7 =
,
��= >
$str
��? G
,
��G H
checkableErrors
��I X
,
��X Y
ref
��Z ]
errors
��^ d
)
��d e
;
��e f
return
�� 
errors
�� 
??
��  
checkableErrors
��! 0
;
��0 1
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� "
VisitorOfIEdmElement
�� 1
:
��2 3

VisitorOfT
��4 >
<
��> ?
IEdmElement
��? J
>
��J K
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <
IEdmElement
��< G
element
��H O
,
��O P
List
��Q U
<
��U V
object
��V \
>
��\ ]
followup
��^ f
,
��f g
List
��h l
<
��l m
object
��m s
>
��s t

references
��u 
)�� �
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� '
VisitorOfIEdmNamedElement
�� 6
:
��7 8

VisitorOfT
��9 C
<
��C D
IEdmNamedElement
��D T
>
��T U
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <
IEdmNamedElement
��< L
element
��M T
,
��T U
List
��V Z
<
��Z [
object
��[ a
>
��a b
followup
��c k
,
��k l
List
��m q
<
��q r
object
��r x
>
��x y

references��z �
)��� �
{
�� 
return
�� 
element
�� 
.
�� 
Name
�� #
!=
��$ &
null
��' +
?
��, -
null
��. 2
:
��3 4
new
��5 8
EdmError
��9 A
[
��A B
]
��B C
{
��D E.
 CreatePropertyMustNotBeNullError
��F f
(
��f g
element
��g n
,
��n o
$str
��p v
)
��v w
}
��x y
;
��y z
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� (
VisitorOfIEdmSchemaElement
�� 7
:
��8 9

VisitorOfT
��: D
<
��D E
IEdmSchemaElement
��E V
>
��V W
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <
IEdmSchemaElement
��< M
element
��N U
,
��U V
List
��W [
<
��[ \
object
��\ b
>
��b c
followup
��d l
,
��l m
List
��n r
<
��r s
object
��s y
>
��y z

references��{ �
)��� �
{
�� 
List
�� 
<
�� 
EdmError
�� 
>
�� 
errors
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1
EdmError
��1 9
>
��9 :
(
��: ;
)
��; <
;
��< =
switch
�� 
(
�� 
element
�� 
.
��  
SchemaElementKind
��  1
)
��1 2
{
�� 
case
�� "
EdmSchemaElementKind
�� -
.
��- .
TypeDefinition
��. <
:
��< =

�� %
(
��% &5
'CheckForInterfaceKindValueMismatchError
��& M
<
��M N
IEdmSchemaElement
��N _
,
��_ `"
EdmSchemaElementKind
��a u
,
��u v
IEdmSchemaType��w �
>��� �
(��� �
element��� �
,��� �
element��� �
.��� �!
SchemaElementKind��� �
,��� �
$str��� �
)��� �
,��� �
ref��� �
errors��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� "
EdmSchemaElementKind
�� -
.
��- .
Action
��. 4
:
��4 5

�� %
(
��% &5
'CheckForInterfaceKindValueMismatchError
��& M
<
��M N
IEdmSchemaElement
��N _
,
��_ `"
EdmSchemaElementKind
��a u
,
��u v

>��� �
(��� �
element��� �
,��� �
element��� �
.��� �!
SchemaElementKind��� �
,��� �
$str��� �
)��� �
,��� �
ref��� �
errors��� �
)��� �
;��� �

�� %
(
��% &5
'CheckForInterfaceKindValueMismatchError
��& M
<
��M N
IEdmSchemaElement
��N _
,
��_ `"
EdmSchemaElementKind
��a u
,
��u v

IEdmAction��w �
>��� �
(��� �
element��� �
,��� �
element��� �
.��� �!
SchemaElementKind��� �
,��� �
$str��� �
)��� �
,��� �
ref��� �
errors��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� "
EdmSchemaElementKind
�� -
.
��- .
Function
��. 6
:
��6 7

�� %
(
��% &5
'CheckForInterfaceKindValueMismatchError
��& M
<
��M N
IEdmSchemaElement
��N _
,
��_ `"
EdmSchemaElementKind
��a u
,
��u v

>��� �
(��� �
element��� �
,��� �
element��� �
.��� �!
SchemaElementKind��� �
,��� �
$str��� �
)��� �
,��� �
ref��� �
errors��� �
)��� �
;��� �

�� %
(
��% &5
'CheckForInterfaceKindValueMismatchError
��& M
<
��M N
IEdmSchemaElement
��N _
,
��_ `"
EdmSchemaElementKind
��a u
,
��u v
IEdmFunction��w �
>��� �
(��� �
element��� �
,��� �
element��� �
.��� �!
SchemaElementKind��� �
,��� �
$str��� �
)��� �
,��� �
ref��� �
errors��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� "
EdmSchemaElementKind
�� -
.
��- .
Term
��. 2
:
��2 3

�� %
(
��% &5
'CheckForInterfaceKindValueMismatchError
��& M
<
��M N
IEdmSchemaElement
��N _
,
��_ `"
EdmSchemaElementKind
��a u
,
��u v
IEdmTerm
��w 
>�� �
(��� �
element��� �
,��� �
element��� �
.��� �!
SchemaElementKind��� �
,��� �
$str��� �
)��� �
,��� �
ref��� �
errors��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� "
EdmSchemaElementKind
�� -
.
��- .
EntityContainer
��. =
:
��= >

�� %
(
��% &5
'CheckForInterfaceKindValueMismatchError
��& M
<
��M N
IEdmSchemaElement
��N _
,
��_ `"
EdmSchemaElementKind
��a u
,
��u v"
IEdmEntityContainer��w �
>��� �
(��� �
element��� �
,��� �
element��� �
.��� �!
SchemaElementKind��� �
,��� �
$str��� �
)��� �
,��� �
ref��� �
errors��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� "
EdmSchemaElementKind
�� -
.
��- .
None
��. 2
:
��2 3
break
�� 
;
�� 
default
�� 
:
�� 

�� %
(
��% &/
!CreateEnumPropertyOutOfRangeError
��& G
(
��G H
element
��H O
,
��O P
element
��Q X
.
��X Y
SchemaElementKind
��Y j
,
��j k
$str
��l 
)�� �
,��� �
ref��� �
errors��� �
)��� �
;��� �
break
�� 
;
�� 
}
�� 
if
�� 
(
�� 
element
�� 
.
�� 
	Namespace
�� %
==
��& (
null
��) -
)
��- .
{
�� 

�� !
(
��! ".
 CreatePropertyMustNotBeNullError
��" B
(
��B C
element
��C J
,
��J K
$str
��L W
)
��W X
,
��X Y
ref
��Z ]
errors
��^ d
)
��d e
;
��e f
}
�� 
return
�� 
errors
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
��  
VisitorOfIEdmModel
�� /
:
��0 1

VisitorOfT
��2 <
<
��< =
	IEdmModel
��= F
>
��F G
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <
	IEdmModel
��< E
model
��F K
,
��K L
List
��M Q
<
��Q R
object
��R X
>
��X Y
followup
��Z b
,
��b c
List
��d h
<
��h i
object
��i o
>
��o p

references
��q {
)
��{ |
{
�� 
List
�� 
<
�� 
EdmError
�� 
>
�� 
errors
�� %
=
��& '
null
��( ,
;
��, -
ProcessEnumerable
�� !
(
��! "
model
��" '
,
��' (
model
��) .
.
��. /
SchemaElements
��/ =
,
��= >
$str
��? O
,
��O P
followup
��Q Y
,
��Y Z
ref
��[ ^
errors
��_ e
)
��e f
;
��f g
ProcessEnumerable
�� !
(
��! "
model
��" '
,
��' (
model
��) .
.
��. /#
VocabularyAnnotations
��/ D
,
��D E
$str
��F ]
,
��] ^
followup
��_ g
,
��g h
ref
��i l
errors
��m s
)
��s t
;
��t u
return
�� 
errors
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� *
VisitorOfIEdmEntityContainer
�� 9
:
��: ;

VisitorOfT
��< F
<
��F G!
IEdmEntityContainer
��G Z
>
��Z [
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <!
IEdmEntityContainer
��< O
	container
��P Y
,
��Y Z
List
��[ _
<
��_ `
object
��` f
>
��f g
followup
��h p
,
��p q
List
��r v
<
��v w
object
��w }
>
��} ~

references�� �
)��� �
{
�� 
List
�� 
<
�� 
EdmError
�� 
>
�� 
errors
�� %
=
��& '
null
��( ,
;
��, -
ProcessEnumerable
�� !
(
��! "
	container
��" +
,
��+ ,
	container
��- 6
.
��6 7
Elements
��7 ?
,
��? @
$str
��A K
,
��K L
followup
��M U
,
��U V
ref
��W Z
errors
��[ a
)
��a b
;
��b c
return
�� 
errors
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� 1
#VisitorOfIEdmEntityContainerElement
�� @
:
��A B

VisitorOfT
��C M
<
��M N(
IEdmEntityContainerElement
��N h
>
��h i
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <(
IEdmEntityContainerElement
��< V
element
��W ^
,
��^ _
List
��` d
<
��d e
object
��e k
>
��k l
followup
��m u
,
��u v
List
��w {
<
��{ |
object��| �
>��� �

references��� �
)��� �
{
�� 
EdmError
�� 

�� &
=
��' (
null
��) -
;
��- .
switch
�� 
(
�� 
element
�� 
.
��  "
ContainerElementKind
��  4
)
��4 5
{
�� 
case
�� %
EdmContainerElementKind
�� 0
.
��0 1
	EntitySet
��1 :
:
��: ;

�� %
=
��& '5
'CheckForInterfaceKindValueMismatchError
��( O
<
��O P(
IEdmEntityContainerElement
��P j
,
��j k&
EdmContainerElementKind��l �
,��� �

>��� �
(��� �
element��� �
,��� �
element��� �
.��� �$
ContainerElementKind��� �
,��� �
$str��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� %
EdmContainerElementKind
�� 0
.
��0 1
	Singleton
��1 :
:
��: ;

�� %
=
��& '5
'CheckForInterfaceKindValueMismatchError
��( O
<
��O P(
IEdmEntityContainerElement
��P j
,
��j k&
EdmContainerElementKind��l �
,��� �

>��� �
(��� �
element��� �
,��� �
element��� �
.��� �$
ContainerElementKind��� �
,��� �
$str��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� %
EdmContainerElementKind
�� 0
.
��0 1
ActionImport
��1 =
:
��= >
case
�� %
EdmContainerElementKind
�� 0
.
��0 1
FunctionImport
��1 ?
:
��? @

�� %
=
��& '5
'CheckForInterfaceKindValueMismatchError
��( O
<
��O P(
IEdmEntityContainerElement
��P j
,
��j k&
EdmContainerElementKind��l �
,��� �#
IEdmOperationImport��� �
>��� �
(��� �
element��� �
,��� �
element��� �
.��� �$
ContainerElementKind��� �
,��� �
$str��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� %
EdmContainerElementKind
�� 0
.
��0 1
None
��1 5
:
��5 6
break
�� 
;
�� 
default
�� 
:
�� 

�� %
=
��& '/
!CreateEnumPropertyOutOfRangeError
��( I
(
��I J
element
��J Q
,
��Q R
element
��S Z
.
��Z ["
ContainerElementKind
��[ o
,
��o p
$str��q �
)��� �
;��� �
break
�� 
;
�� 
}
�� 
return
�� 

�� $
!=
��% '
null
��( ,
?
��- .
new
��/ 2
EdmError
��3 ;
[
��; <
]
��< =
{
��> ?

��@ M
}
��N O
:
��P Q
null
��R V
;
��V W
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� -
VisitorOfIEdmContainedEntitySet
�� <
:
��= >

VisitorOfT
��? I
<
��I J$
IEdmContainedEntitySet
��J `
>
��` a
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <$
IEdmContainedEntitySet
��< R
item
��S W
,
��W X
List
��Y ]
<
��] ^
object
��^ d
>
��d e
followup
��f n
,
��n o
List
��p t
<
��t u
object
��u {
>
��{ |

references��} �
)��� �
{
�� 
List
�� 
<
�� 
EdmError
�� 
>
�� 
errors
�� %
=
��& '
null
��( ,
;
��, -
if
�� 
(
�� 
item
�� 
.
�� $
ParentNavigationSource
�� /
==
��0 2
null
��3 7
)
��7 8
{
�� 

�� !
(
��! ".
 CreatePropertyMustNotBeNullError
��" B
(
��B C
item
��C G
,
��G H
$str
��I a
)
��a b
,
��b c
ref
��d g
errors
��h n
)
��n o
;
��o p
}
�� 
return
�� 
errors
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� +
VisitorOfIEdmNavigationSource
�� :
:
��; <

VisitorOfT
��= G
<
��G H"
IEdmNavigationSource
��H \
>
��\ ]
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <"
IEdmNavigationSource
��< P
set
��Q T
,
��T U
List
��V Z
<
��Z [
object
��[ a
>
��a b
followup
��c k
,
��k l
List
��m q
<
��q r
object
��r x
>
��x y

references��z �
)��� �
{
�� 
List
�� 
<
�� 
EdmError
�� 
>
�� 
errors
�� %
=
��& '
null
��( ,
;
��, -
List
�� 
<
�� +
IEdmNavigationPropertyBinding
�� 2
>
��2 3
navPropBindings
��4 C
=
��D E
new
��F I
List
��J N
<
��N O+
IEdmNavigationPropertyBinding
��O l
>
��l m
(
��m n
)
��n o
;
��o p
ProcessEnumerable
�� !
(
��! "
set
��" %
,
��% &
set
��' *
.
��* +(
NavigationPropertyBindings
��+ E
,
��E F
$str
��G c
,
��c d
navPropBindings
��e t
,
��t u
ref
��v y
errors��z �
)��� �
;��� �
foreach
�� 
(
�� +
IEdmNavigationPropertyBinding
�� 6
navPropBinding
��7 E
in
��F H
navPropBindings
��I X
)
��X Y
{
�� 
if
�� 
(
�� 
navPropBinding
�� &
.
��& ' 
NavigationProperty
��' 9
!=
��: <
null
��= A
)
��A B
{
�� 

references
�� "
.
��" #
Add
��# &
(
��& '
navPropBinding
��' 5
.
��5 6 
NavigationProperty
��6 H
)
��H I
;
��I J
}
�� 
else
�� 
{
�� 

�� %
(
��% &.
 CreatePropertyMustNotBeNullError
��& F
(
��F G
navPropBinding
��G U
,
��U V
$str
��W k
)
��k l
,
��l m
ref
��n q
errors
��r x
)
��x y
;
��y z
}
�� 
if
�� 
(
�� 
navPropBinding
�� &
.
��& '
Target
��' -
!=
��. 0
null
��1 5
)
��5 6
{
�� 

references
�� "
.
��" #
Add
��# &
(
��& '
navPropBinding
��' 5
.
��5 6
Target
��6 <
)
��< =
;
��= >
}
�� 
else
�� 
{
�� 

�� %
(
��% &.
 CreatePropertyMustNotBeNullError
��& F
(
��F G
navPropBinding
��G U
,
��U V
$str
��W _
)
��_ `
,
��` a
ref
��b e
errors
��f l
)
��l m
;
��m n
}
�� 
}
�� 
return
�� 
errors
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� (
VisitorOfIEdmEntitySetBase
�� 7
:
��8 9

VisitorOfT
��: D
<
��D E
IEdmEntitySetBase
��E V
>
��V W
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <
IEdmEntitySetBase
��< M
set
��N Q
,
��Q R
List
��S W
<
��W X
object
��X ^
>
��^ _
followup
��` h
,
��h i
List
��j n
<
��n o
object
��o u
>
��u v

references��w �
)��� �
{
�� 
List
�� 
<
�� 
EdmError
�� 
>
�� 
errors
�� %
=
��& '
null
��( ,
;
��, -
if
�� 
(
�� 
set
�� 
.
�� 
Type
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 

references
�� 
.
�� 
Add
�� "
(
��" #
set
��# &
.
��& '
Type
��' +
)
��+ ,
;
��, -
}
�� 
else
�� 
{
�� 

�� !
(
��! ".
 CreatePropertyMustNotBeNullError
��" B
(
��B C
set
��C F
,
��F G
$str
��H N
)
��N O
,
��O P
ref
��Q T
errors
��U [
)
��[ \
;
��\ ]
}
�� 
return
�� 
errors
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� $
VisitorOfIEdmSingleton
�� 3
:
��4 5

VisitorOfT
��6 @
<
��@ A

��A N
>
��N O
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <

��< I
	singleton
��J S
,
��S T
List
��U Y
<
��Y Z
object
��Z `
>
��` a
followup
��b j
,
��j k
List
��l p
<
��p q
object
��q w
>
��w x

references��y �
)��� �
{
�� 
List
�� 
<
�� 
EdmError
�� 
>
�� 
errors
�� %
=
��& '
null
��( ,
;
��, -
if
�� 
(
�� 
	singleton
�� 
.
�� 
Type
�� "
!=
��# %
null
��& *
)
��* +
{
�� 

references
�� 
.
�� 
Add
�� "
(
��" #
	singleton
��# ,
.
��, -
Type
��- 1
)
��1 2
;
��2 3
}
�� 
else
�� 
{
�� 

�� !
(
��! ".
 CreatePropertyMustNotBeNullError
��" B
(
��B C
	singleton
��C L
,
��L M
$str
��N T
)
��T U
,
��U V
ref
��W Z
errors
��[ a
)
��a b
;
��b c
}
�� 
return
�� 
errors
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� (
VisitorOfIEdmTypeReference
�� 7
:
��8 9

VisitorOfT
��: D
<
��D E
IEdmTypeReference
��E V
>
��V W
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <
IEdmTypeReference
��< M
type
��N R
,
��R S
List
��T X
<
��X Y
object
��Y _
>
��_ `
followup
��a i
,
��i j
List
��k o
<
��o p
object
��p v
>
��v w

references��x �
)��� �
{
�� 
if
�� 
(
�� 
type
�� 
.
�� 

Definition
�� #
!=
��$ &
null
��' +
)
��+ ,
{
�� 
if
�� 
(
�� 
type
�� 
.
�� 

Definition
�� '
is
��( *
IEdmSchemaType
��+ 9
)
��9 :
{
�� 

references
�� "
.
��" #
Add
��# &
(
��& '
type
��' +
.
��+ ,

Definition
��, 6
)
��6 7
;
��7 8
}
�� 
else
�� 
{
�� 
followup
��  
.
��  !
Add
��! $
(
��$ %
type
��% )
.
��) *

Definition
��* 4
)
��4 5
;
��5 6
}
�� 
return
�� 
null
�� 
;
��  
}
�� 
else
�� 
{
�� 
return
�� 
new
�� 
EdmError
�� '
[
��' (
]
��( )
{
��* +.
 CreatePropertyMustNotBeNullError
��, L
(
��L M
type
��M Q
,
��Q R
$str
��S _
)
��_ `
}
��a b
;
��b c
}
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� 
VisitorOfIEdmType
�� .
:
��/ 0

VisitorOfT
��1 ;
<
��; <
IEdmType
��< D
>
��D E
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <
IEdmType
��< D
type
��E I
,
��I J
List
��K O
<
��O P
object
��P V
>
��V W
followup
��X `
,
��` a
List
��b f
<
��f g
object
��g m
>
��m n

references
��o y
)
��y z
{
�� 
EdmError
�� 

�� &
=
��' (
null
��) -
;
��- .
switch
�� 
(
�� 
type
�� 
.
�� 
TypeKind
�� %
)
��% &
{
�� 
case
�� 
EdmTypeKind
�� $
.
��$ %
	Primitive
��% .
:
��. /

�� %
=
��& '5
'CheckForInterfaceKindValueMismatchError
��( O
<
��O P
IEdmType
��P X
,
��X Y
EdmTypeKind
��Z e
,
��e f
IEdmPrimitiveType
��g x
>
��x y
(
��y z
type
��z ~
,
��~ 
type��� �
.��� �
TypeKind��� �
,��� �
$str��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� 
EdmTypeKind
�� $
.
��$ %
Entity
��% +
:
��+ ,

�� %
=
��& '5
'CheckForInterfaceKindValueMismatchError
��( O
<
��O P
IEdmType
��P X
,
��X Y
EdmTypeKind
��Z e
,
��e f
IEdmEntityType
��g u
>
��u v
(
��v w
type
��w {
,
��{ |
type��} �
.��� �
TypeKind��� �
,��� �
$str��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� 
EdmTypeKind
�� $
.
��$ %
Complex
��% ,
:
��, -

�� %
=
��& '5
'CheckForInterfaceKindValueMismatchError
��( O
<
��O P
IEdmType
��P X
,
��X Y
EdmTypeKind
��Z e
,
��e f
IEdmComplexType
��g v
>
��v w
(
��w x
type
��x |
,
��| }
type��~ �
.��� �
TypeKind��� �
,��� �
$str��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� 
EdmTypeKind
�� $
.
��$ %

Collection
��% /
:
��/ 0

�� %
=
��& '5
'CheckForInterfaceKindValueMismatchError
��( O
<
��O P
IEdmType
��P X
,
��X Y
EdmTypeKind
��Z e
,
��e f 
IEdmCollectionType
��g y
>
��y z
(
��z {
type
��{ 
,�� �
type��� �
.��� �
TypeKind��� �
,��� �
$str��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� 
EdmTypeKind
�� $
.
��$ %
EntityReference
��% 4
:
��4 5

�� %
=
��& '5
'CheckForInterfaceKindValueMismatchError
��( O
<
��O P
IEdmType
��P X
,
��X Y
EdmTypeKind
��Z e
,
��e f%
IEdmEntityReferenceType
��g ~
>
��~ 
(�� �
type��� �
,��� �
type��� �
.��� �
TypeKind��� �
,��� �
$str��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� 
EdmTypeKind
�� $
.
��$ %
Enum
��% )
:
��) *

�� %
=
��& '5
'CheckForInterfaceKindValueMismatchError
��( O
<
��O P
IEdmType
��P X
,
��X Y
EdmTypeKind
��Z e
,
��e f
IEdmEnumType
��g s
>
��s t
(
��t u
type
��u y
,
��y z
type
��{ 
.�� �
TypeKind��� �
,��� �
$str��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� 
EdmTypeKind
�� $
.
��$ %
TypeDefinition
��% 3
:
��3 4

�� %
=
��& '5
'CheckForInterfaceKindValueMismatchError
��( O
<
��O P
IEdmType
��P X
,
��X Y
EdmTypeKind
��Z e
,
��e f 
IEdmTypeDefinition
��g y
>
��y z
(
��z {
type
��{ 
,�� �
type��� �
.��� �
TypeKind��� �
,��� �
$str��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� 
EdmTypeKind
�� $
.
��$ %
None
��% )
:
��) *
break
�� 
;
�� 
default
�� 
:
�� 

�� %
=
��& '5
'CreateInterfaceKindValueUnexpectedError
��( O
(
��O P
type
��P T
,
��T U
type
��V Z
.
��Z [
TypeKind
��[ c
,
��c d
$str
��e o
)
��o p
;
��p q
break
�� 
;
�� 
}
�� 
return
�� 

�� $
!=
��% '
null
��( ,
?
��- .
new
��/ 2
EdmError
��3 ;
[
��; <
]
��< =
{
��> ?

��@ M
}
��N O
:
��P Q
null
��R V
;
��V W
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� (
VisitorOfIEdmPrimitiveType
�� 7
:
��8 9

VisitorOfT
��: D
<
��D E
IEdmPrimitiveType
��E V
>
��V W
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <
IEdmPrimitiveType
��< M
type
��N R
,
��R S
List
��T X
<
��X Y
object
��Y _
>
��_ `
followup
��a i
,
��i j
List
��k o
<
��o p
object
��p v
>
��v w

references��x �
)��� �
{
�� 
if
�� 
(
�� 
!
�� 
IsCheckableBad
�� #
(
��# $
type
��$ (
)
��( )
&&
��* ,
(
��- .
type
��. 2
.
��2 3

��3 @
<
��A B"
EdmPrimitiveTypeKind
��C W
.
��W X
None
��X \
||
��] _
type
��` d
.
��d e

��e r
>
��s t#
EdmPrimitiveTypeKind��u �
.��� �"
GeometryMultiPoint��� �
)��� �
)��� �
{
�� 
return
�� 
new
�� 
EdmError
�� '
[
��' (
]
��( )
{
��* +5
'CreateInterfaceKindValueUnexpectedError
��, S
(
��S T
type
��T X
,
��X Y
type
��Z ^
.
��^ _

��_ l
,
��l m
$str
��n }
)
��} ~
}�� �
;��� �
}
�� 
else
�� 
{
�� 
return
�� 
null
�� 
;
��  
}
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� )
VisitorOfIEdmStructuredType
�� 8
:
��9 :

VisitorOfT
��; E
<
��E F 
IEdmStructuredType
��F X
>
��X Y
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; < 
IEdmStructuredType
��< N
type
��O S
,
��S T
List
��U Y
<
��Y Z
object
��Z `
>
��` a
followup
��b j
,
��j k
List
��l p
<
��p q
object
��q w
>
��w x

references��y �
)��� �
{
�� 
List
�� 
<
�� 
EdmError
�� 
>
�� 
errors
�� %
=
��& '
null
��( ,
;
��, -
ProcessEnumerable
�� !
(
��! "
type
��" &
,
��& '
type
��( ,
.
��, - 
DeclaredProperties
��- ?
,
��? @
$str
��A U
,
��U V
followup
��W _
,
��_ `
ref
��a d
errors
��e k
)
��k l
;
��l m
if
�� 
(
�� 
type
�� 
.
�� 
BaseType
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
HashSetInternal
�� #
<
��# $ 
IEdmStructuredType
��$ 6
>
��6 7

��8 E
=
��F G
new
��H K
HashSetInternal
��L [
<
��[ \ 
IEdmStructuredType
��\ n
>
��n o
(
��o p
)
��p q
;
��q r

�� !
.
��! "
Add
��" %
(
��% &
type
��& *
)
��* +
;
��+ ,
for
�� 
(
��  
IEdmStructuredType
�� +
currentBaseType
��, ;
=
��< =
currentBaseType
��> M
=
��N O
type
��P T
.
��T U
BaseType
��U ]
;
��] ^
currentBaseType
��_ n
!=
��o q
null
��r v
;
��v w
currentBaseType��x �
=��� �
currentBaseType��� �
.��� �
BaseType��� �
)��� �
{
�� 
if
�� 
(
�� 

�� )
.
��) *
Contains
��* 2
(
��2 3
currentBaseType
��3 B
)
��B C
)
��C D
{
�� 
IEdmSchemaType
�� *

schemaType
��+ 5
=
��6 7
type
��8 <
as
��= ?
IEdmSchemaType
��@ N
;
��N O
string
�� "
typeName
��# +
=
��, -

schemaType
��. 8
!=
��9 ;
null
��< @
?
��A B

schemaType
��C M
.
��M N
FullName
��N V
(
��V W
)
��W X
:
��Y Z
typeof
��[ a
(
��a b
Type
��b f
)
��f g
.
��g h
Name
��h l
;
��l m

�� )
(
��) *
new
��* -
EdmError
��. 6
(
��6 7
GetLocation
��7 B
(
��B C
type
��C G
)
��G H
,
��H I
EdmErrorCode
��J V
.
��V W3
%InterfaceCriticalCycleInTypeHierarchy
��W |
,
��| }
Strings��~ �
.��� �R
BEdmModel_Validator_Syntactic_InterfaceCriticalCycleInTypeHierarchy��� �
(��� �
typeName��� �
)��� �
)��� �
,��� �
ref��� �
errors��� �
)��� �
;��� �
break
�� !
;
��! "
}
�� 
}
�� 

references
�� 
.
�� 
Add
�� "
(
��" #
type
��# '
.
��' (
BaseType
��( 0
)
��0 1
;
��1 2
}
�� 
return
�� 
errors
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� %
VisitorOfIEdmEntityType
�� 4
:
��5 6

VisitorOfT
��7 A
<
��A B
IEdmEntityType
��B P
>
��P Q
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <
IEdmEntityType
��< J
type
��K O
,
��O P
List
��Q U
<
��U V
object
��V \
>
��\ ]
followup
��^ f
,
��f g
List
��h l
<
��l m
object
��m s
>
��s t

references
��u 
)�� �
{
�� 
List
�� 
<
�� 
EdmError
�� 
>
�� 
errors
�� %
=
��& '
null
��( ,
;
��, -
if
�� 
(
�� 
type
�� 
.
�� 
DeclaredKey
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
ProcessEnumerable
�� %
(
��% &
type
��& *
,
��* +
type
��, 0
.
��0 1
DeclaredKey
��1 <
,
��< =
$str
��> K
,
��K L

references
��M W
,
��W X
ref
��Y \
errors
��] c
)
��c d
;
��d e
}
�� 
return
�� 
errors
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� .
 VisitorOfIEdmEntityReferenceType
�� =
:
��> ?

VisitorOfT
��@ J
<
��J K%
IEdmEntityReferenceType
��K b
>
��b c
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <%
IEdmEntityReferenceType
��< S
type
��T X
,
��X Y
List
��Z ^
<
��^ _
object
��_ e
>
��e f
followup
��g o
,
��o p
List
��q u
<
��u v
object
��v |
>
��| }

references��~ �
)��� �
{
�� 
if
�� 
(
�� 
type
�� 
.
�� 

EntityType
�� #
!=
��$ &
null
��' +
)
��+ ,
{
�� 

references
�� 
.
�� 
Add
�� "
(
��" #
type
��# '
.
��' (

EntityType
��( 2
)
��2 3
;
��3 4
return
�� 
null
�� 
;
��  
}
�� 
else
�� 
{
�� 
return
�� 
new
�� 
EdmError
�� '
[
��' (
]
��( )
{
��* +.
 CreatePropertyMustNotBeNullError
��, L
(
��L M
type
��M Q
,
��Q R
$str
��S _
)
��_ `
}
��a b
;
��b c
}
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� &
VisitorOfIEdmUntypedType
�� 5
:
��6 7

VisitorOfT
��8 B
<
��B C
IEdmUntypedType
��C R
>
��R S
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <
IEdmUntypedType
��< K
type
��L P
,
��P Q
List
��R V
<
��V W
object
��W ]
>
��] ^
followup
��_ g
,
��g h
List
��i m
<
��m n
object
��n t
>
��t u

references��v �
)��� �
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� #
VisitorOfIEdmPathType
�� 2
:
��3 4

VisitorOfT
��5 ?
<
��? @
IEdmPathType
��@ L
>
��L M
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <
IEdmPathType
��< H
type
��I M
,
��M N
List
��O S
<
��S T
object
��T Z
>
��Z [
followup
��\ d
,
��d e
List
��f j
<
��j k
object
��k q
>
��q r

references
��s }
)
��} ~
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� #
VisitorOfIEdmEnumType
�� 2
:
��3 4

VisitorOfT
��5 ?
<
��? @
IEdmEnumType
��@ L
>
��L M
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <
IEdmEnumType
��< H
type
��I M
,
��M N
List
��O S
<
��S T
object
��T Z
>
��Z [
followup
��\ d
,
��d e
List
��f j
<
��j k
object
��k q
>
��q r

references
��s }
)
��} ~
{
�� 
List
�� 
<
�� 
EdmError
�� 
>
�� 
errors
�� %
=
��& '
null
��( ,
;
��, -
ProcessEnumerable
�� !
(
��! "
type
��" &
,
��& '
type
��( ,
.
��, -
Members
��- 4
,
��4 5
$str
��6 ?
,
��? @
followup
��A I
,
��I J
ref
��K N
errors
��O U
)
��U V
;
��V W
if
�� 
(
�� 
type
�� 
.
�� 
UnderlyingType
�� '
!=
��( *
null
��+ /
)
��/ 0
{
�� 

references
�� 
.
�� 
Add
�� "
(
��" #
type
��# '
.
��' (
UnderlyingType
��( 6
)
��6 7
;
��7 8
}
�� 
else
�� 
{
�� 

�� !
(
��! ".
 CreatePropertyMustNotBeNullError
��" B
(
��B C
type
��C G
,
��G H
$str
��I Y
)
��Y Z
,
��Z [
ref
��\ _
errors
��` f
)
��f g
;
��g h
}
�� 
return
�� 
errors
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� )
VisitorOfIEdmTypeDefinition
�� 8
:
��9 :

VisitorOfT
��; E
<
��E F 
IEdmTypeDefinition
��F X
>
��X Y
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; < 
IEdmTypeDefinition
��< N
type
��O S
,
��S T
List
��U Y
<
��Y Z
object
��Z `
>
��` a
followup
��b j
,
��j k
List
��l p
<
��p q
object
��q w
>
��w x

references��y �
)��� �
{
�� 
List
�� 
<
�� 
EdmError
�� 
>
�� 
errors
�� %
=
��& '
null
��( ,
;
��, -
if
�� 
(
�� 
type
�� 
.
�� 
UnderlyingType
�� '
!=
��( *
null
��+ /
)
��/ 0
{
�� 

references
�� 
.
�� 
Add
�� "
(
��" #
type
��# '
.
��' (
UnderlyingType
��( 6
)
��6 7
;
��7 8
}
�� 
else
�� 
{
�� 

�� !
(
��! ".
 CreatePropertyMustNotBeNullError
��" B
(
��B C
type
��C G
,
��G H
$str
��I Y
)
��Y Z
,
��Z [
ref
��\ _
errors
��` f
)
��f g
;
��g h
}
�� 
return
�� 
errors
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� 
VisitorOfIEdmTerm
�� .
:
��/ 0

VisitorOfT
��1 ;
<
��; <
IEdmTerm
��< D
>
��D E
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <
IEdmTerm
��< D
term
��E I
,
��I J
List
��K O
<
��O P
object
��P V
>
��V W
followup
��X `
,
��` a
List
��b f
<
��f g
object
��g m
>
��m n

references
��o y
)
��y z
{
�� 
if
�� 
(
�� 
term
�� 
.
�� 
Type
�� 
!=
��  
null
��! %
)
��% &
{
�� 
followup
�� 
.
�� 
Add
��  
(
��  !
term
��! %
.
��% &
Type
��& *
)
��* +
;
��+ ,
return
�� 
null
�� 
;
��  
}
�� 
else
�� 
{
�� 
return
�� 
new
�� 
EdmError
�� '
[
��' (
]
��( )
{
��* +.
 CreatePropertyMustNotBeNullError
��, L
(
��L M
term
��M Q
,
��Q R
$str
��S Y
)
��Y Z
}
��[ \
;
��\ ]
}
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� )
VisitorOfIEdmCollectionType
�� 8
:
��9 :

VisitorOfT
��; E
<
��E F 
IEdmCollectionType
��F X
>
��X Y
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; < 
IEdmCollectionType
��< N
type
��O S
,
��S T
List
��U Y
<
��Y Z
object
��Z `
>
��` a
followup
��b j
,
��j k
List
��l p
<
��p q
object
��q w
>
��w x

references��y �
)��� �
{
�� 
if
�� 
(
�� 
type
�� 
.
�� 
ElementType
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
followup
�� 
.
�� 
Add
��  
(
��  !
type
��! %
.
��% &
ElementType
��& 1
)
��1 2
;
��2 3
return
�� 
null
�� 
;
��  
}
�� 
else
�� 
{
�� 
return
�� 
new
�� 
EdmError
�� '
[
��' (
]
��( )
{
��* +.
 CreatePropertyMustNotBeNullError
��, L
(
��L M
type
��M Q
,
��Q R
$str
��S `
)
��` a
}
��b c
;
��c d
}
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� #
VisitorOfIEdmProperty
�� 2
:
��3 4

VisitorOfT
��5 ?
<
��? @
IEdmProperty
��@ L
>
��L M
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <
IEdmProperty
��< H
property
��I Q
,
��Q R
List
��S W
<
��W X
object
��X ^
>
��^ _
followup
��` h
,
��h i
List
��j n
<
��n o
object
��o u
>
��u v

references��w �
)��� �
{
�� 
List
�� 
<
�� 
EdmError
�� 
>
�� 
errors
�� %
=
��& '
null
��( ,
;
��, -
switch
�� 
(
�� 
property
��  
.
��  !
PropertyKind
��! -
)
��- .
{
�� 
case
�� 
EdmPropertyKind
�� (
.
��( )

Structural
��) 3
:
��3 4

�� %
(
��% &5
'CheckForInterfaceKindValueMismatchError
��& M
<
��M N
IEdmProperty
��N Z
,
��Z [
EdmPropertyKind
��\ k
,
��k l%
IEdmStructuralProperty��m �
>��� �
(��� �
property��� �
,��� �
property��� �
.��� �
PropertyKind��� �
,��� �
$str��� �
)��� �
,��� �
ref��� �
errors��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� 
EdmPropertyKind
�� (
.
��( )

Navigation
��) 3
:
��3 4

�� %
(
��% &5
'CheckForInterfaceKindValueMismatchError
��& M
<
��M N
IEdmProperty
��N Z
,
��Z [
EdmPropertyKind
��\ k
,
��k l%
IEdmNavigationProperty��m �
>��� �
(��� �
property��� �
,��� �
property��� �
.��� �
PropertyKind��� �
,��� �
$str��� �
)��� �
,��� �
ref��� �
errors��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� 
EdmPropertyKind
�� (
.
��( )
None
��) -
:
��- .
break
�� 
;
�� 
default
�� 
:
�� 

�� %
(
��% &5
'CreateInterfaceKindValueUnexpectedError
��& M
(
��M N
property
��N V
,
��V W
property
��X `
.
��` a
PropertyKind
��a m
,
��m n
$str
��o }
)
��} ~
,
��~ 
ref��� �
errors��� �
)��� �
;��� �
break
�� 
;
�� 
}
�� 
if
�� 
(
�� 
property
�� 
.
�� 
Type
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
followup
�� 
.
�� 
Add
��  
(
��  !
property
��! )
.
��) *
Type
��* .
)
��. /
;
��/ 0
}
�� 
else
�� 
{
�� 

�� !
(
��! ".
 CreatePropertyMustNotBeNullError
��" B
(
��B C
property
��C K
,
��K L
$str
��M S
)
��S T
,
��T U
ref
��V Y
errors
��Z `
)
��` a
;
��a b
}
�� 
if
�� 
(
�� 
property
�� 
.
�� 

�� *
!=
��+ -
null
��. 2
)
��2 3
{
�� 

references
�� 
.
�� 
Add
�� "
(
��" #
property
��# +
.
��+ ,

��, 9
)
��9 :
;
��: ;
}
�� 
else
�� 
{
�� 

�� !
(
��! ".
 CreatePropertyMustNotBeNullError
��" B
(
��B C
property
��C K
,
��K L
$str
��M \
)
��\ ]
,
��] ^
ref
��_ b
errors
��c i
)
��i j
;
��j k
}
�� 
return
�� 
errors
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� -
VisitorOfIEdmStructuralProperty
�� <
:
��= >

VisitorOfT
��? I
<
��I J$
IEdmStructuralProperty
��J `
>
��` a
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <$
IEdmStructuralProperty
��< R
property
��S [
,
��[ \
List
��] a
<
��a b
object
��b h
>
��h i
followup
��j r
,
��r s
List
��t x
<
��x y
object
��y 
>�� �

references��� �
)��� �
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
sealed
�� 
class
�� -
VisitorOfIEdmNavigationProperty
�� <
:
��= >

VisitorOfT
��? I
<
��I J$
IEdmNavigationProperty
��J `
>
��` a
{
�� 	
	protected
�� 
override
�� 
IEnumerable
�� *
<
��* +
EdmError
��+ 3
>
��3 4
VisitT
��5 ;
(
��; <$
IEdmNavigationProperty
��< R
property
��S [
,
��[ \
List
��] a
<
��a b
object
��b h
>
��h i
followup
��j r
,
��r s
List
��t x
<
��x y
object
��y 
>�� �

references��� �
)��� �
{
�� 
List
�� 
<
�� 
EdmError
�� 
>
�� 
errors
�� %
=
��& '
null
��( ,
;
��, -
followup
�� 
.
�� 
Add
�� 
(
�� 
property
�� %
.
��% &
Type
��& *
)
��* +
;
��+ ,
if
�� 
(
�� 
property
�� 
.
�� 
Partner
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
followup
�� 
.
�� 
Add
��  
(
��  !
property
��! )
.
��) *
Partner
��* 1
)
��1 2
;
��2 3
if
�� 
(
�� 
!
�� 
(
�� 
property
�� "
.
��" #
Partner
��# *
is
��+ -#
BadNavigationProperty
��. C
)
��C D
)
��D E
{
�� 
if
�� 
(
�� 
(
�� 
property
�� %
.
��% &
Partner
��& -
.
��- .
Partner
��. 5
!=
��6 8
null
��9 =
&&
��> @
property
��A I
.
��I J
Partner
��J Q
.
��Q R
Partner
��R Y
!=
��Z \
property
��] e
)
��e f
||
�� 
(
��  
property
��  (
.
��( )
Partner
��) 0
==
��1 3
property
��4 <
&&
��= ?
(
��@ A
ValidationHelper
��A Q
.
��Q R-
ComputeNavigationPropertyTarget
��R q
(
��q r
property
��r z
)
��z {
!=
��| ~
property�� �
.��� �

)��� �
)��� �
)��� �
{
�� 

�� )
(
��) *
new
��* -
EdmError
��. 6
(
��6 7
GetLocation
��7 B
(
��B C
property
��C K
)
��K L
,
��L M
EdmErrorCode
��N Z
.
��Z [8
)InterfaceCriticalNavigationPartnerInvalid��[ �
,��� �
Strings��� �
.��� �E
5EdmModel_Validator_Syntactic_NavigationPartnerInvalid��� �
(��� �
property��� �
.��� �
Name��� �
)��� �
}
�� 