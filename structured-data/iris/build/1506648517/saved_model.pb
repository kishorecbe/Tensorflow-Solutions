Á
çĘ
9
Add
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type"
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
ś
AsString

input"T

output"
Ttype:
	2	
"
	precisionint˙˙˙˙˙˙˙˙˙"

scientificbool( "
shortestbool( "
widthint˙˙˙˙˙˙˙˙˙"
fillstring 
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
:
Elu
features"T
activations"T"
Ttype:
2
A
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
S
HistogramSummary
tag
values"T
summary"
Ttype0:
2		
.
Identity

input"T
output"T"	
Ttype
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
ď
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
8
Softmax
logits"T
softmax"T"
Ttype:
2
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.3.02
b'unknown'Č

global_step/Initializer/zerosConst*
value	B	 R *
dtype0	*
_class
loc:@global_step*
_output_shapes
: 

global_step
VariableV2*
shape: *
dtype0	*
	container *
shared_name *
_class
loc:@global_step*
_output_shapes
: 
˛
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
validate_shape(*
use_locking(*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
o
input_example_tensorPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
U
ParseExample/ConstConst*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_1Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_2Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_3Const*
valueB *
dtype0*
_output_shapes
: 
b
ParseExample/ParseExample/namesConst*
valueB *
dtype0*
_output_shapes
: 
r
&ParseExample/ParseExample/dense_keys_0Const*
valueB BPetalLength*
dtype0*
_output_shapes
: 
q
&ParseExample/ParseExample/dense_keys_1Const*
valueB B
PetalWidth*
dtype0*
_output_shapes
: 
r
&ParseExample/ParseExample/dense_keys_2Const*
valueB BSepalLength*
dtype0*
_output_shapes
: 
q
&ParseExample/ParseExample/dense_keys_3Const*
valueB B
SepalWidth*
dtype0*
_output_shapes
: 
Š
ParseExample/ParseExampleParseExampleinput_example_tensorParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0&ParseExample/ParseExample/dense_keys_1&ParseExample/ParseExample/dense_keys_2&ParseExample/ParseExample/dense_keys_3ParseExample/ConstParseExample/Const_1ParseExample/Const_2ParseExample/Const_3*
Nsparse *
Ndense*
sparse_types
 *
Tdense
2**
dense_shapes
::::*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

<dnn/input_from_feature_columns/input_layer/PetalLength/ShapeShapeParseExample/ParseExample*
T0*
out_type0*
_output_shapes
:

Jdnn/input_from_feature_columns/input_layer/PetalLength/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Ldnn/input_from_feature_columns/input_layer/PetalLength/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ldnn/input_from_feature_columns/input_layer/PetalLength/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

Ddnn/input_from_feature_columns/input_layer/PetalLength/strided_sliceStridedSlice<dnn/input_from_feature_columns/input_layer/PetalLength/ShapeJdnn/input_from_feature_columns/input_layer/PetalLength/strided_slice/stackLdnn/input_from_feature_columns/input_layer/PetalLength/strided_slice/stack_1Ldnn/input_from_feature_columns/input_layer/PetalLength/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

Fdnn/input_from_feature_columns/input_layer/PetalLength/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

Ddnn/input_from_feature_columns/input_layer/PetalLength/Reshape/shapePackDdnn/input_from_feature_columns/input_layer/PetalLength/strided_sliceFdnn/input_from_feature_columns/input_layer/PetalLength/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
ę
>dnn/input_from_feature_columns/input_layer/PetalLength/ReshapeReshapeParseExample/ParseExampleDdnn/input_from_feature_columns/input_layer/PetalLength/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

;dnn/input_from_feature_columns/input_layer/PetalWidth/ShapeShapeParseExample/ParseExample:1*
T0*
out_type0*
_output_shapes
:

Idnn/input_from_feature_columns/input_layer/PetalWidth/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Kdnn/input_from_feature_columns/input_layer/PetalWidth/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Kdnn/input_from_feature_columns/input_layer/PetalWidth/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

Cdnn/input_from_feature_columns/input_layer/PetalWidth/strided_sliceStridedSlice;dnn/input_from_feature_columns/input_layer/PetalWidth/ShapeIdnn/input_from_feature_columns/input_layer/PetalWidth/strided_slice/stackKdnn/input_from_feature_columns/input_layer/PetalWidth/strided_slice/stack_1Kdnn/input_from_feature_columns/input_layer/PetalWidth/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

Ednn/input_from_feature_columns/input_layer/PetalWidth/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

Cdnn/input_from_feature_columns/input_layer/PetalWidth/Reshape/shapePackCdnn/input_from_feature_columns/input_layer/PetalWidth/strided_sliceEdnn/input_from_feature_columns/input_layer/PetalWidth/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
ę
=dnn/input_from_feature_columns/input_layer/PetalWidth/ReshapeReshapeParseExample/ParseExample:1Cdnn/input_from_feature_columns/input_layer/PetalWidth/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

<dnn/input_from_feature_columns/input_layer/SepalLength/ShapeShapeParseExample/ParseExample:2*
T0*
out_type0*
_output_shapes
:

Jdnn/input_from_feature_columns/input_layer/SepalLength/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Ldnn/input_from_feature_columns/input_layer/SepalLength/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ldnn/input_from_feature_columns/input_layer/SepalLength/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

Ddnn/input_from_feature_columns/input_layer/SepalLength/strided_sliceStridedSlice<dnn/input_from_feature_columns/input_layer/SepalLength/ShapeJdnn/input_from_feature_columns/input_layer/SepalLength/strided_slice/stackLdnn/input_from_feature_columns/input_layer/SepalLength/strided_slice/stack_1Ldnn/input_from_feature_columns/input_layer/SepalLength/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

Fdnn/input_from_feature_columns/input_layer/SepalLength/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

Ddnn/input_from_feature_columns/input_layer/SepalLength/Reshape/shapePackDdnn/input_from_feature_columns/input_layer/SepalLength/strided_sliceFdnn/input_from_feature_columns/input_layer/SepalLength/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
ě
>dnn/input_from_feature_columns/input_layer/SepalLength/ReshapeReshapeParseExample/ParseExample:2Ddnn/input_from_feature_columns/input_layer/SepalLength/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

;dnn/input_from_feature_columns/input_layer/SepalWidth/ShapeShapeParseExample/ParseExample:3*
T0*
out_type0*
_output_shapes
:

Idnn/input_from_feature_columns/input_layer/SepalWidth/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Kdnn/input_from_feature_columns/input_layer/SepalWidth/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Kdnn/input_from_feature_columns/input_layer/SepalWidth/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

Cdnn/input_from_feature_columns/input_layer/SepalWidth/strided_sliceStridedSlice;dnn/input_from_feature_columns/input_layer/SepalWidth/ShapeIdnn/input_from_feature_columns/input_layer/SepalWidth/strided_slice/stackKdnn/input_from_feature_columns/input_layer/SepalWidth/strided_slice/stack_1Kdnn/input_from_feature_columns/input_layer/SepalWidth/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

Ednn/input_from_feature_columns/input_layer/SepalWidth/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

Cdnn/input_from_feature_columns/input_layer/SepalWidth/Reshape/shapePackCdnn/input_from_feature_columns/input_layer/SepalWidth/strided_sliceEdnn/input_from_feature_columns/input_layer/SepalWidth/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
ę
=dnn/input_from_feature_columns/input_layer/SepalWidth/ReshapeReshapeParseExample/ParseExample:3Cdnn/input_from_feature_columns/input_layer/SepalWidth/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
6dnn/input_from_feature_columns/input_layer/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ş
1dnn/input_from_feature_columns/input_layer/concatConcatV2>dnn/input_from_feature_columns/input_layer/PetalLength/Reshape=dnn/input_from_feature_columns/input_layer/PetalWidth/Reshape>dnn/input_from_feature_columns/input_layer/SepalLength/Reshape=dnn/input_from_feature_columns/input_layer/SepalWidth/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*
N*
T0*

Tidx0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"   d   *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
:
ˇ
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *ôôuž*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: 
ˇ
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *ôôu>*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: 

Hdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shape*

seed*
seed24*
dtype0*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:d

>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: 
Ź
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:d

:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:d
Ç
dnn/hiddenlayer_0/kernel/part_0
VariableV2*
shape
:d*
dtype0*
	container *
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:d

&dnn/hiddenlayer_0/kernel/part_0/AssignAssigndnn/hiddenlayer_0/kernel/part_0:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:d
Ž
$dnn/hiddenlayer_0/kernel/part_0/readIdentitydnn/hiddenlayer_0/kernel/part_0*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:d
Ž
/dnn/hiddenlayer_0/bias/part_0/Initializer/zerosConst*
valueBd*    *
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
:d
ť
dnn/hiddenlayer_0/bias/part_0
VariableV2*
shape:d*
dtype0*
	container *
shared_name *0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
:d
ţ
$dnn/hiddenlayer_0/bias/part_0/AssignAssigndnn/hiddenlayer_0/bias/part_0/dnn/hiddenlayer_0/bias/part_0/Initializer/zeros*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
:d
¤
"dnn/hiddenlayer_0/bias/part_0/readIdentitydnn/hiddenlayer_0/bias/part_0*
T0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
:d
s
dnn/hiddenlayer_0/kernelIdentity$dnn/hiddenlayer_0/kernel/part_0/read*
T0*
_output_shapes

:d
Ç
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concatdnn/hiddenlayer_0/kernel*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
k
dnn/hiddenlayer_0/biasIdentity"dnn/hiddenlayer_0/bias/part_0/read*
T0*
_output_shapes
:d

dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/bias*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
i
dnn/hiddenlayer_0/EluEludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
[
dnn/zero_fraction/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 

dnn/zero_fraction/EqualEqualdnn/hiddenlayer_0/Eludnn/zero_fraction/zero*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
x
dnn/zero_fraction/CastCastdnn/zero_fraction/Equal*

SrcT0
*

DstT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
h
dnn/zero_fraction/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

dnn/zero_fraction/MeanMeandnn/zero_fraction/Castdnn/zero_fraction/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
 
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Ť
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_0/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_0/activation*
dtype0*
_output_shapes
: 

 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Elu*
T0*
_output_shapes
: 
Ĺ
@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"d   F   *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
:
ˇ
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *H`@ž*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: 
ˇ
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *H`@>*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: 

Hdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shape*

seed*
seed2P*
dtype0*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF

>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: 
Ź
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF

:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF
Ç
dnn/hiddenlayer_1/kernel/part_0
VariableV2*
shape
:dF*
dtype0*
	container *
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF

&dnn/hiddenlayer_1/kernel/part_0/AssignAssigndnn/hiddenlayer_1/kernel/part_0:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF
Ž
$dnn/hiddenlayer_1/kernel/part_0/readIdentitydnn/hiddenlayer_1/kernel/part_0*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF
Ž
/dnn/hiddenlayer_1/bias/part_0/Initializer/zerosConst*
valueBF*    *
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
:F
ť
dnn/hiddenlayer_1/bias/part_0
VariableV2*
shape:F*
dtype0*
	container *
shared_name *0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
:F
ţ
$dnn/hiddenlayer_1/bias/part_0/AssignAssigndnn/hiddenlayer_1/bias/part_0/dnn/hiddenlayer_1/bias/part_0/Initializer/zeros*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
:F
¤
"dnn/hiddenlayer_1/bias/part_0/readIdentitydnn/hiddenlayer_1/bias/part_0*
T0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
:F
s
dnn/hiddenlayer_1/kernelIdentity$dnn/hiddenlayer_1/kernel/part_0/read*
T0*
_output_shapes

:dF
Ť
dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Eludnn/hiddenlayer_1/kernel*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙F
k
dnn/hiddenlayer_1/biasIdentity"dnn/hiddenlayer_1/bias/part_0/read*
T0*
_output_shapes
:F

dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/bias*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙F
i
dnn/hiddenlayer_1/EluEludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙F
]
dnn/zero_fraction_1/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 

dnn/zero_fraction_1/EqualEqualdnn/hiddenlayer_1/Eludnn/zero_fraction_1/zero*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙F
|
dnn/zero_fraction_1/CastCastdnn/zero_fraction_1/Equal*

SrcT0
*

DstT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙F
j
dnn/zero_fraction_1/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

dnn/zero_fraction_1/MeanMeandnn/zero_fraction_1/Castdnn/zero_fraction_1/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
 
2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_1/fraction_of_zero_values*
dtype0*
_output_shapes
: 
­
-dnn/dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_1/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_1/activation*
dtype0*
_output_shapes
: 

 dnn/dnn/hiddenlayer_1/activationHistogramSummary$dnn/dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Elu*
T0*
_output_shapes
: 
Ĺ
@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"F      *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes
:
ˇ
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *Ľ2ž*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: 
ˇ
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *Ľ2>*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: 

Hdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shape*

seed*
seed2l*
dtype0*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F

>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: 
Ź
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F

:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F
Ç
dnn/hiddenlayer_2/kernel/part_0
VariableV2*
shape
:F*
dtype0*
	container *
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F

&dnn/hiddenlayer_2/kernel/part_0/AssignAssigndnn/hiddenlayer_2/kernel/part_0:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F
Ž
$dnn/hiddenlayer_2/kernel/part_0/readIdentitydnn/hiddenlayer_2/kernel/part_0*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F
Ž
/dnn/hiddenlayer_2/bias/part_0/Initializer/zerosConst*
valueB*    *
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
_output_shapes
:
ť
dnn/hiddenlayer_2/bias/part_0
VariableV2*
shape:*
dtype0*
	container *
shared_name *0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
_output_shapes
:
ţ
$dnn/hiddenlayer_2/bias/part_0/AssignAssigndnn/hiddenlayer_2/bias/part_0/dnn/hiddenlayer_2/bias/part_0/Initializer/zeros*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
_output_shapes
:
¤
"dnn/hiddenlayer_2/bias/part_0/readIdentitydnn/hiddenlayer_2/bias/part_0*
T0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
_output_shapes
:
s
dnn/hiddenlayer_2/kernelIdentity$dnn/hiddenlayer_2/kernel/part_0/read*
T0*
_output_shapes

:F
Ť
dnn/hiddenlayer_2/MatMulMatMuldnn/hiddenlayer_1/Eludnn/hiddenlayer_2/kernel*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
dnn/hiddenlayer_2/biasIdentity"dnn/hiddenlayer_2/bias/part_0/read*
T0*
_output_shapes
:

dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMuldnn/hiddenlayer_2/bias*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
dnn/hiddenlayer_2/EluEludnn/hiddenlayer_2/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
dnn/zero_fraction_2/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 

dnn/zero_fraction_2/EqualEqualdnn/hiddenlayer_2/Eludnn/zero_fraction_2/zero*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
dnn/zero_fraction_2/CastCastdnn/zero_fraction_2/Equal*

SrcT0
*

DstT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
dnn/zero_fraction_2/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

dnn/zero_fraction_2/MeanMeandnn/zero_fraction_2/Castdnn/zero_fraction_2/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
 
2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_2/fraction_of_zero_values*
dtype0*
_output_shapes
: 
­
-dnn/dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_2/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_2/activation*
dtype0*
_output_shapes
: 

 dnn/dnn/hiddenlayer_2/activationHistogramSummary$dnn/dnn/hiddenlayer_2/activation/tagdnn/hiddenlayer_2/Elu*
T0*
_output_shapes
: 
Ĺ
@dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes
:
ˇ
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *×łÝž*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes
: 
ˇ
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *×łÝ>*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes
: 

Hdnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/shape*

seed*
seed2*
dtype0*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:

>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes
: 
Ź
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:

:dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:
Ç
dnn/hiddenlayer_3/kernel/part_0
VariableV2*
shape
:*
dtype0*
	container *
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:

&dnn/hiddenlayer_3/kernel/part_0/AssignAssigndnn/hiddenlayer_3/kernel/part_0:dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:
Ž
$dnn/hiddenlayer_3/kernel/part_0/readIdentitydnn/hiddenlayer_3/kernel/part_0*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:
Ž
/dnn/hiddenlayer_3/bias/part_0/Initializer/zerosConst*
valueB*    *
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
_output_shapes
:
ť
dnn/hiddenlayer_3/bias/part_0
VariableV2*
shape:*
dtype0*
	container *
shared_name *0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
_output_shapes
:
ţ
$dnn/hiddenlayer_3/bias/part_0/AssignAssigndnn/hiddenlayer_3/bias/part_0/dnn/hiddenlayer_3/bias/part_0/Initializer/zeros*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
_output_shapes
:
¤
"dnn/hiddenlayer_3/bias/part_0/readIdentitydnn/hiddenlayer_3/bias/part_0*
T0*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
_output_shapes
:
s
dnn/hiddenlayer_3/kernelIdentity$dnn/hiddenlayer_3/kernel/part_0/read*
T0*
_output_shapes

:
Ť
dnn/hiddenlayer_3/MatMulMatMuldnn/hiddenlayer_2/Eludnn/hiddenlayer_3/kernel*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
dnn/hiddenlayer_3/biasIdentity"dnn/hiddenlayer_3/bias/part_0/read*
T0*
_output_shapes
:

dnn/hiddenlayer_3/BiasAddBiasAdddnn/hiddenlayer_3/MatMuldnn/hiddenlayer_3/bias*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
dnn/hiddenlayer_3/EluEludnn/hiddenlayer_3/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
dnn/zero_fraction_3/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 

dnn/zero_fraction_3/EqualEqualdnn/hiddenlayer_3/Eludnn/zero_fraction_3/zero*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
dnn/zero_fraction_3/CastCastdnn/zero_fraction_3/Equal*

SrcT0
*

DstT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
dnn/zero_fraction_3/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

dnn/zero_fraction_3/MeanMeandnn/zero_fraction_3/Castdnn/zero_fraction_3/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
 
2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_3/fraction_of_zero_values*
dtype0*
_output_shapes
: 
­
-dnn/dnn/hiddenlayer_3/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsdnn/zero_fraction_3/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_3/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_3/activation*
dtype0*
_output_shapes
: 

 dnn/dnn/hiddenlayer_3/activationHistogramSummary$dnn/dnn/hiddenlayer_3/activation/tagdnn/hiddenlayer_3/Elu*
T0*
_output_shapes
: 
ˇ
9dnn/logits/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
:
Š
7dnn/logits/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *č!ż*
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: 
Š
7dnn/logits/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *č!?*
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: 

Adnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform9dnn/logits/kernel/part_0/Initializer/random_uniform/shape*

seed*
seed2¤*
dtype0*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:
ţ
7dnn/logits/kernel/part_0/Initializer/random_uniform/subSub7dnn/logits/kernel/part_0/Initializer/random_uniform/max7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: 

7dnn/logits/kernel/part_0/Initializer/random_uniform/mulMulAdnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniform7dnn/logits/kernel/part_0/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:

3dnn/logits/kernel/part_0/Initializer/random_uniformAdd7dnn/logits/kernel/part_0/Initializer/random_uniform/mul7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:
š
dnn/logits/kernel/part_0
VariableV2*
shape
:*
dtype0*
	container *
shared_name *+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:
÷
dnn/logits/kernel/part_0/AssignAssigndnn/logits/kernel/part_03dnn/logits/kernel/part_0/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:

dnn/logits/kernel/part_0/readIdentitydnn/logits/kernel/part_0*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:
 
(dnn/logits/bias/part_0/Initializer/zerosConst*
valueB*    *
dtype0*)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes
:
­
dnn/logits/bias/part_0
VariableV2*
shape:*
dtype0*
	container *
shared_name *)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes
:
â
dnn/logits/bias/part_0/AssignAssigndnn/logits/bias/part_0(dnn/logits/bias/part_0/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes
:

dnn/logits/bias/part_0/readIdentitydnn/logits/bias/part_0*
T0*)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes
:
e
dnn/logits/kernelIdentitydnn/logits/kernel/part_0/read*
T0*
_output_shapes

:

dnn/logits/MatMulMatMuldnn/hiddenlayer_3/Eludnn/logits/kernel*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
dnn/logits/biasIdentitydnn/logits/bias/part_0/read*
T0*
_output_shapes
:

dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/bias*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
dnn/zero_fraction_4/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 

dnn/zero_fraction_4/EqualEqualdnn/logits/BiasAdddnn/zero_fraction_4/zero*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
dnn/zero_fraction_4/CastCastdnn/zero_fraction_4/Equal*

SrcT0
*

DstT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
dnn/zero_fraction_4/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

dnn/zero_fraction_4/MeanMeandnn/zero_fraction_4/Castdnn/zero_fraction_4/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

+dnn/dnn/logits/fraction_of_zero_values/tagsConst*7
value.B, B&dnn/dnn/logits/fraction_of_zero_values*
dtype0*
_output_shapes
: 

&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_4/Mean*
T0*
_output_shapes
: 
w
dnn/dnn/logits/activation/tagConst**
value!B Bdnn/dnn/logits/activation*
dtype0*
_output_shapes
: 

dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
T0*
_output_shapes
: 
g
dnn/head/logits/ShapeShapednn/logits/BiasAdd*
T0*
out_type0*
_output_shapes
:
b
 dnn/head/logits/assert_rank/rankConst*
value	B :*
dtype0*
_output_shapes
: 
R
Jdnn/head/logits/assert_rank/assert_type/statically_determined_correct_typeNoOp
C
;dnn/head/logits/assert_rank/static_checks_determined_all_okNoOp
Ť
#dnn/head/logits/strided_slice/stackConst<^dnn/head/logits/assert_rank/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
­
%dnn/head/logits/strided_slice/stack_1Const<^dnn/head/logits/assert_rank/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
­
%dnn/head/logits/strided_slice/stack_2Const<^dnn/head/logits/assert_rank/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
É
dnn/head/logits/strided_sliceStridedSlicednn/head/logits/Shape#dnn/head/logits/strided_slice/stack%dnn/head/logits/strided_slice/stack_1%dnn/head/logits/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

dnn/head/logits/assert_equal/xConst<^dnn/head/logits/assert_rank/static_checks_determined_all_ok*
value	B :*
dtype0*
_output_shapes
: 

"dnn/head/logits/assert_equal/EqualEqualdnn/head/logits/assert_equal/xdnn/head/logits/strided_slice*
T0*
_output_shapes
: 
Ł
"dnn/head/logits/assert_equal/ConstConst<^dnn/head/logits/assert_rank/static_checks_determined_all_ok*
valueB *
dtype0*
_output_shapes
: 
¤
 dnn/head/logits/assert_equal/AllAll"dnn/head/logits/assert_equal/Equal"dnn/head/logits/assert_equal/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 

*dnn/head/logits/assert_equal/Assert/AssertAssert dnn/head/logits/assert_equal/Alldnn/head/logits/Shape*

T
2*
	summarize
Ě
dnn/head/logitsIdentitydnn/logits/BiasAdd<^dnn/head/logits/assert_rank/static_checks_determined_all_ok+^dnn/head/logits/assert_equal/Assert/Assert*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
(dnn/head/predictions/class_ids/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
°
dnn/head/predictions/class_idsArgMaxdnn/head/logits(dnn/head/predictions/class_ids/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
#dnn/head/predictions/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
°
dnn/head/predictions/ExpandDims
ExpandDimsdnn/head/predictions/class_ids#dnn/head/predictions/ExpandDims/dim*
T0	*

Tdim0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ý
 dnn/head/predictions/str_classesAsStringdnn/head/predictions/ExpandDims*
T0	*
	precision˙˙˙˙˙˙˙˙˙*

scientific( *
shortest( *
width˙˙˙˙˙˙˙˙˙*

fill *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
"dnn/head/predictions/probabilitiesSoftmaxdnn/head/logits*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
dnn/head/ShapeShape"dnn/head/predictions/probabilities*
T0*
out_type0*
_output_shapes
:
f
dnn/head/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
h
dnn/head/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
h
dnn/head/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ś
dnn/head/strided_sliceStridedSlicednn/head/Shapednn/head/strided_slice/stackdnn/head/strided_slice/stack_1dnn/head/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
V
dnn/head/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
V
dnn/head/range/limitConst*
value	B :*
dtype0*
_output_shapes
: 
V
dnn/head/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

dnn/head/rangeRangednn/head/range/startdnn/head/range/limitdnn/head/range/delta*

Tidx0*
_output_shapes
:
°
dnn/head/AsStringAsStringdnn/head/range*
T0*
	precision˙˙˙˙˙˙˙˙˙*

scientific( *
shortest( *
width˙˙˙˙˙˙˙˙˙*

fill *
_output_shapes
:
Y
dnn/head/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 

dnn/head/ExpandDims
ExpandDimsdnn/head/AsStringdnn/head/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
[
dnn/head/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 

dnn/head/Tile/multiplesPackdnn/head/strided_slicednn/head/Tile/multiples/1*
N*
T0*

axis *
_output_shapes
:

dnn/head/TileTilednn/head/ExpandDimsdnn/head/Tile/multiples*
T0*

Tmultiples0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_093b4fb818be4e24a9c8fbce4ba5ff81/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
Ű
save/SaveV2/tensor_namesConst*
valueBBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_step*
dtype0*
_output_shapes
:
ę
save/SaveV2/shape_and_slicesConst*
valueBB	100 0,100B4 100 0,4:0,100B70 0,70B100 70 0,100:0,70B20 0,20B70 20 0,70:0,20B12 0,12B20 12 0,20:0,12B3 0,3B12 3 0,12:0,3B *
dtype0*
_output_shapes
:
ď
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices"dnn/hiddenlayer_0/bias/part_0/read$dnn/hiddenlayer_0/kernel/part_0/read"dnn/hiddenlayer_1/bias/part_0/read$dnn/hiddenlayer_1/kernel/part_0/read"dnn/hiddenlayer_2/bias/part_0/read$dnn/hiddenlayer_2/kernel/part_0/read"dnn/hiddenlayer_3/bias/part_0/read$dnn/hiddenlayer_3/kernel/part_0/readdnn/logits/bias/part_0/readdnn/logits/kernel/part_0/readglobal_step*
dtypes
2	

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*
T0*

axis *
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
z
save/RestoreV2/tensor_namesConst*+
value"B Bdnn/hiddenlayer_0/bias*
dtype0*
_output_shapes
:
q
save/RestoreV2/shape_and_slicesConst*
valueBB	100 0,100*
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ä
save/AssignAssigndnn/hiddenlayer_0/bias/part_0save/RestoreV2*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
:d
~
save/RestoreV2_1/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_0/kernel*
dtype0*
_output_shapes
:
y
!save/RestoreV2_1/shape_and_slicesConst*$
valueBB4 100 0,4:0,100*
dtype0*
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
Đ
save/Assign_1Assigndnn/hiddenlayer_0/kernel/part_0save/RestoreV2_1*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:d
|
save/RestoreV2_2/tensor_namesConst*+
value"B Bdnn/hiddenlayer_1/bias*
dtype0*
_output_shapes
:
q
!save/RestoreV2_2/shape_and_slicesConst*
valueBB70 0,70*
dtype0*
_output_shapes
:

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
Č
save/Assign_2Assigndnn/hiddenlayer_1/bias/part_0save/RestoreV2_2*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
:F
~
save/RestoreV2_3/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_1/kernel*
dtype0*
_output_shapes
:
{
!save/RestoreV2_3/shape_and_slicesConst*&
valueBB100 70 0,100:0,70*
dtype0*
_output_shapes
:

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
Đ
save/Assign_3Assigndnn/hiddenlayer_1/kernel/part_0save/RestoreV2_3*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF
|
save/RestoreV2_4/tensor_namesConst*+
value"B Bdnn/hiddenlayer_2/bias*
dtype0*
_output_shapes
:
q
!save/RestoreV2_4/shape_and_slicesConst*
valueBB20 0,20*
dtype0*
_output_shapes
:

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
Č
save/Assign_4Assigndnn/hiddenlayer_2/bias/part_0save/RestoreV2_4*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
_output_shapes
:
~
save/RestoreV2_5/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_2/kernel*
dtype0*
_output_shapes
:
y
!save/RestoreV2_5/shape_and_slicesConst*$
valueBB70 20 0,70:0,20*
dtype0*
_output_shapes
:

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
Đ
save/Assign_5Assigndnn/hiddenlayer_2/kernel/part_0save/RestoreV2_5*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F
|
save/RestoreV2_6/tensor_namesConst*+
value"B Bdnn/hiddenlayer_3/bias*
dtype0*
_output_shapes
:
q
!save/RestoreV2_6/shape_and_slicesConst*
valueBB12 0,12*
dtype0*
_output_shapes
:

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
Č
save/Assign_6Assigndnn/hiddenlayer_3/bias/part_0save/RestoreV2_6*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
_output_shapes
:
~
save/RestoreV2_7/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_3/kernel*
dtype0*
_output_shapes
:
y
!save/RestoreV2_7/shape_and_slicesConst*$
valueBB20 12 0,20:0,12*
dtype0*
_output_shapes
:

save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
Đ
save/Assign_7Assigndnn/hiddenlayer_3/kernel/part_0save/RestoreV2_7*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:
u
save/RestoreV2_8/tensor_namesConst*$
valueBBdnn/logits/bias*
dtype0*
_output_shapes
:
o
!save/RestoreV2_8/shape_and_slicesConst*
valueBB3 0,3*
dtype0*
_output_shapes
:

save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
ş
save/Assign_8Assigndnn/logits/bias/part_0save/RestoreV2_8*
T0*
validate_shape(*
use_locking(*)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes
:
w
save/RestoreV2_9/tensor_namesConst*&
valueBBdnn/logits/kernel*
dtype0*
_output_shapes
:
w
!save/RestoreV2_9/shape_and_slicesConst*"
valueBB12 3 0,12:0,3*
dtype0*
_output_shapes
:

save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
Â
save/Assign_9Assigndnn/logits/kernel/part_0save/RestoreV2_9*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:
r
save/RestoreV2_10/tensor_namesConst* 
valueBBglobal_step*
dtype0*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2	*
_output_shapes
:
˘
save/Assign_10Assignglobal_stepsave/RestoreV2_10*
T0	*
validate_shape(*
use_locking(*
_class
loc:@global_step*
_output_shapes
: 
É
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10
-
save/restore_allNoOp^save/restore_shard

initNoOp

init_all_tablesNoOp
+

group_depsNoOp^init^init_all_tables
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_47286c025bdb450f9f15bb5c523c68ce/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
Ý
save_1/SaveV2/tensor_namesConst*
valueBBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_step*
dtype0*
_output_shapes
:
ě
save_1/SaveV2/shape_and_slicesConst*
valueBB	100 0,100B4 100 0,4:0,100B70 0,70B100 70 0,100:0,70B20 0,20B70 20 0,70:0,20B12 0,12B20 12 0,20:0,12B3 0,3B12 3 0,12:0,3B *
dtype0*
_output_shapes
:
÷
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices"dnn/hiddenlayer_0/bias/part_0/read$dnn/hiddenlayer_0/kernel/part_0/read"dnn/hiddenlayer_1/bias/part_0/read$dnn/hiddenlayer_1/kernel/part_0/read"dnn/hiddenlayer_2/bias/part_0/read$dnn/hiddenlayer_2/kernel/part_0/read"dnn/hiddenlayer_3/bias/part_0/read$dnn/hiddenlayer_3/kernel/part_0/readdnn/logits/bias/part_0/readdnn/logits/kernel/part_0/readglobal_step*
dtypes
2	

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
Ł
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*
T0*

axis *
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
T0*
_output_shapes
: 
|
save_1/RestoreV2/tensor_namesConst*+
value"B Bdnn/hiddenlayer_0/bias*
dtype0*
_output_shapes
:
s
!save_1/RestoreV2/shape_and_slicesConst*
valueBB	100 0,100*
dtype0*
_output_shapes
:

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
Č
save_1/AssignAssigndnn/hiddenlayer_0/bias/part_0save_1/RestoreV2*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
:d

save_1/RestoreV2_1/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_0/kernel*
dtype0*
_output_shapes
:
{
#save_1/RestoreV2_1/shape_and_slicesConst*$
valueBB4 100 0,4:0,100*
dtype0*
_output_shapes
:

save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
Ô
save_1/Assign_1Assigndnn/hiddenlayer_0/kernel/part_0save_1/RestoreV2_1*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:d
~
save_1/RestoreV2_2/tensor_namesConst*+
value"B Bdnn/hiddenlayer_1/bias*
dtype0*
_output_shapes
:
s
#save_1/RestoreV2_2/shape_and_slicesConst*
valueBB70 0,70*
dtype0*
_output_shapes
:

save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ě
save_1/Assign_2Assigndnn/hiddenlayer_1/bias/part_0save_1/RestoreV2_2*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
:F

save_1/RestoreV2_3/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_1/kernel*
dtype0*
_output_shapes
:
}
#save_1/RestoreV2_3/shape_and_slicesConst*&
valueBB100 70 0,100:0,70*
dtype0*
_output_shapes
:

save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
Ô
save_1/Assign_3Assigndnn/hiddenlayer_1/kernel/part_0save_1/RestoreV2_3*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF
~
save_1/RestoreV2_4/tensor_namesConst*+
value"B Bdnn/hiddenlayer_2/bias*
dtype0*
_output_shapes
:
s
#save_1/RestoreV2_4/shape_and_slicesConst*
valueBB20 0,20*
dtype0*
_output_shapes
:

save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
Ě
save_1/Assign_4Assigndnn/hiddenlayer_2/bias/part_0save_1/RestoreV2_4*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
_output_shapes
:

save_1/RestoreV2_5/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_2/kernel*
dtype0*
_output_shapes
:
{
#save_1/RestoreV2_5/shape_and_slicesConst*$
valueBB70 20 0,70:0,20*
dtype0*
_output_shapes
:

save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
Ô
save_1/Assign_5Assigndnn/hiddenlayer_2/kernel/part_0save_1/RestoreV2_5*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F
~
save_1/RestoreV2_6/tensor_namesConst*+
value"B Bdnn/hiddenlayer_3/bias*
dtype0*
_output_shapes
:
s
#save_1/RestoreV2_6/shape_and_slicesConst*
valueBB12 0,12*
dtype0*
_output_shapes
:

save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
Ě
save_1/Assign_6Assigndnn/hiddenlayer_3/bias/part_0save_1/RestoreV2_6*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
_output_shapes
:

save_1/RestoreV2_7/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_3/kernel*
dtype0*
_output_shapes
:
{
#save_1/RestoreV2_7/shape_and_slicesConst*$
valueBB20 12 0,20:0,12*
dtype0*
_output_shapes
:

save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
Ô
save_1/Assign_7Assigndnn/hiddenlayer_3/kernel/part_0save_1/RestoreV2_7*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:
w
save_1/RestoreV2_8/tensor_namesConst*$
valueBBdnn/logits/bias*
dtype0*
_output_shapes
:
q
#save_1/RestoreV2_8/shape_and_slicesConst*
valueBB3 0,3*
dtype0*
_output_shapes
:

save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
ž
save_1/Assign_8Assigndnn/logits/bias/part_0save_1/RestoreV2_8*
T0*
validate_shape(*
use_locking(*)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes
:
y
save_1/RestoreV2_9/tensor_namesConst*&
valueBBdnn/logits/kernel*
dtype0*
_output_shapes
:
y
#save_1/RestoreV2_9/shape_and_slicesConst*"
valueBB12 3 0,12:0,3*
dtype0*
_output_shapes
:

save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
Ć
save_1/Assign_9Assigndnn/logits/kernel/part_0save_1/RestoreV2_9*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:
t
 save_1/RestoreV2_10/tensor_namesConst* 
valueBBglobal_step*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2	*
_output_shapes
:
Ś
save_1/Assign_10Assignglobal_stepsave_1/RestoreV2_10*
T0	*
validate_shape(*
use_locking(*
_class
loc:@global_step*
_output_shapes
: 
á
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"
	variables÷ô
7
global_step:0global_step/Assignglobal_step/read:0

!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign&dnn/hiddenlayer_0/kernel/part_0/read:0"&
dnn/hiddenlayer_0/kerneld  "d

dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign$dnn/hiddenlayer_0/bias/part_0/read:0"!
dnn/hiddenlayer_0/biasd "d

!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign&dnn/hiddenlayer_1/kernel/part_0/read:0"&
dnn/hiddenlayer_1/kerneldF  "dF

dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign$dnn/hiddenlayer_1/bias/part_0/read:0"!
dnn/hiddenlayer_1/biasF "F

!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign&dnn/hiddenlayer_2/kernel/part_0/read:0"&
dnn/hiddenlayer_2/kernelF  "F

dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign$dnn/hiddenlayer_2/bias/part_0/read:0"!
dnn/hiddenlayer_2/bias "

!dnn/hiddenlayer_3/kernel/part_0:0&dnn/hiddenlayer_3/kernel/part_0/Assign&dnn/hiddenlayer_3/kernel/part_0/read:0"&
dnn/hiddenlayer_3/kernel  "

dnn/hiddenlayer_3/bias/part_0:0$dnn/hiddenlayer_3/bias/part_0/Assign$dnn/hiddenlayer_3/bias/part_0/read:0"!
dnn/hiddenlayer_3/bias "

dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assigndnn/logits/kernel/part_0/read:0"
dnn/logits/kernel  "
t
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assigndnn/logits/bias/part_0/read:0"
dnn/logits/bias "" 
global_step

global_step:0"Ö
trainable_variablesžť

!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign&dnn/hiddenlayer_0/kernel/part_0/read:0"&
dnn/hiddenlayer_0/kerneld  "d

dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign$dnn/hiddenlayer_0/bias/part_0/read:0"!
dnn/hiddenlayer_0/biasd "d

!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign&dnn/hiddenlayer_1/kernel/part_0/read:0"&
dnn/hiddenlayer_1/kerneldF  "dF

dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign$dnn/hiddenlayer_1/bias/part_0/read:0"!
dnn/hiddenlayer_1/biasF "F

!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign&dnn/hiddenlayer_2/kernel/part_0/read:0"&
dnn/hiddenlayer_2/kernelF  "F

dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign$dnn/hiddenlayer_2/bias/part_0/read:0"!
dnn/hiddenlayer_2/bias "

!dnn/hiddenlayer_3/kernel/part_0:0&dnn/hiddenlayer_3/kernel/part_0/Assign&dnn/hiddenlayer_3/kernel/part_0/read:0"&
dnn/hiddenlayer_3/kernel  "

dnn/hiddenlayer_3/bias/part_0:0$dnn/hiddenlayer_3/bias/part_0/Assign$dnn/hiddenlayer_3/bias/part_0/read:0"!
dnn/hiddenlayer_3/bias "

dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assigndnn/logits/kernel/part_0/read:0"
dnn/logits/kernel  "
t
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assigndnn/logits/bias/part_0/read:0"
dnn/logits/bias ""Ź
	summaries

/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
/dnn/dnn/hiddenlayer_1/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1/activation:0
/dnn/dnn/hiddenlayer_2/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_2/activation:0
/dnn/dnn/hiddenlayer_3/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_3/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0" 
legacy_init_op


group_deps*Ő
NoneĚ
3
inputs)
input_example_tensor:0˙˙˙˙˙˙˙˙˙1
classes&
dnn/head/Tile:0˙˙˙˙˙˙˙˙˙E
scores;
$dnn/head/predictions/probabilities:0˙˙˙˙˙˙˙˙˙tensorflow/serving/classify*ŕ
serving_defaultĚ
3
inputs)
input_example_tensor:0˙˙˙˙˙˙˙˙˙1
classes&
dnn/head/Tile:0˙˙˙˙˙˙˙˙˙E
scores;
$dnn/head/predictions/probabilities:0˙˙˙˙˙˙˙˙˙tensorflow/serving/classify