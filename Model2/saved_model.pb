Īõ
¯˙
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8ũÔ
~
Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_8/bias/v
w
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes
:*
dtype0

Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_8/kernel/v

)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
: *
dtype0

Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:@ *
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ĀT@*&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes
:	ĀT@*
dtype0

Adam/conv2d_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_7/bias/v
y
(Adam/conv2d_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_7/kernel/v

*Adam/conv2d_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_6/bias/v
y
(Adam/conv2d_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/conv2d_6/kernel/v

*Adam/conv2d_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/v*&
_output_shapes
:  *
dtype0

Adam/conv2d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_5/bias/v
y
(Adam/conv2d_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/conv2d_5/kernel/v

*Adam/conv2d_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/v*&
_output_shapes
:@ *
dtype0

Adam/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_4/bias/v
y
(Adam/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_4/kernel/v

*Adam/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/v*&
_output_shapes
:@*
dtype0
~
Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_8/bias/m
w
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes
:*
dtype0

Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_8/kernel/m

)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
: *
dtype0

Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:@ *
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ĀT@*&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes
:	ĀT@*
dtype0

Adam/conv2d_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_7/bias/m
y
(Adam/conv2d_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_7/kernel/m

*Adam/conv2d_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_6/bias/m
y
(Adam/conv2d_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/conv2d_6/kernel/m

*Adam/conv2d_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/m*&
_output_shapes
:  *
dtype0

Adam/conv2d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_5/bias/m
y
(Adam/conv2d_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/conv2d_5/kernel/m

*Adam/conv2d_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/m*&
_output_shapes
:@ *
dtype0

Adam/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_4/bias/m
y
(Adam/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_4/kernel/m

*Adam/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/m*&
_output_shapes
:@*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
:*
dtype0
x
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_8/kernel
q
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes

: *
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
: *
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:@ *
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:@*
dtype0
y
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ĀT@*
shared_namedense_6/kernel
r
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes
:	ĀT@*
dtype0
r
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:@*
dtype0

conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
: *
dtype0

conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
: *
dtype0

conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ * 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:@ *
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:@*
dtype0

conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:@*
dtype0

serving_default_conv2d_4_inputPlaceholder*1
_output_shapes
:˙˙˙˙˙˙˙˙˙āā*
dtype0*&
shape:˙˙˙˙˙˙˙˙˙āā
Ž
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_4_inputconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biasdense_8/kerneldense_8/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_19743

NoOpNoOp
ŠĨ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ã¤
valueØ¤BÔ¤ BĖ¤
Č
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-3
layer-12
layer-13
layer-14
layer-15
layer-16
layer_with_weights-4
layer-17
layer-18
layer_with_weights-5
layer-19
layer-20
layer-21
layer_with_weights-6
layer-22
layer-23
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
 	optimizer
!
signatures*
Č
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
 *_jit_compiled_convolution_op*

+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses* 
Ĩ
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses
7_random_generator* 

8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses* 
Č
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias
 F_jit_compiled_convolution_op*

G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses* 

M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses* 
Ĩ
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Y_random_generator* 
Č
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

`kernel
abias
 b_jit_compiled_convolution_op*

c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses* 

i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses* 
Ĩ
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses
u_random_generator* 
Č
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses

|kernel
}bias
 ~_jit_compiled_convolution_op*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
Ŧ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
Ž
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias*

 	variables
Ątrainable_variables
ĸregularization_losses
Ŗ	keras_api
¤__call__
+Ĩ&call_and_return_all_conditional_losses* 
Ž
Ļ	variables
§trainable_variables
¨regularization_losses
Š	keras_api
Ē__call__
+Ģ&call_and_return_all_conditional_losses
Ŧkernel
	­bias*

Ž	variables
¯trainable_variables
°regularization_losses
ą	keras_api
˛__call__
+ŗ&call_and_return_all_conditional_losses* 
Ŧ
´	variables
ĩtrainable_variables
ļregularization_losses
ˇ	keras_api
¸__call__
+š&call_and_return_all_conditional_losses
ē_random_generator* 
Ž
ģ	variables
ŧtrainable_variables
Ŋregularization_losses
ž	keras_api
ŋ__call__
+Ā&call_and_return_all_conditional_losses
Ákernel
	Âbias*

Ã	variables
Ätrainable_variables
Åregularization_losses
Æ	keras_api
Į__call__
+Č&call_and_return_all_conditional_losses* 
p
(0
)1
D2
E3
`4
a5
|6
}7
8
9
Ŧ10
­11
Á12
Â13*
p
(0
)1
D2
E3
`4
a5
|6
}7
8
9
Ŧ10
­11
Á12
Â13*
* 
ĩ
Énon_trainable_variables
Ęlayers
Ëmetrics
 Ėlayer_regularization_losses
Ílayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
Îtrace_0
Ītrace_1
Đtrace_2
Ņtrace_3* 
:
Ōtrace_0
Ķtrace_1
Ôtrace_2
Õtrace_3* 
* 
í
	Öiter
×beta_1
Øbeta_2

Ųdecay
Úlearning_rate(m)mDmEm`mam|m}m 	mĄ	mĸ	ŦmŖ	­m¤	ÁmĨ	ÂmĻ(v§)v¨DvŠEvĒ`vĢavŦ|v­}vŽ	v¯	v°	Ŧvą	­v˛	Ávŗ	Âv´*

Ûserving_default* 

(0
)1*

(0
)1*
* 

Ünon_trainable_variables
Ũlayers
Ūmetrics
 ßlayer_regularization_losses
ālayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

átrace_0* 

âtrace_0* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

ãnon_trainable_variables
älayers
åmetrics
 ælayer_regularization_losses
įlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

čtrace_0* 

étrace_0* 
* 
* 
* 

ęnon_trainable_variables
ëlayers
ėmetrics
 ílayer_regularization_losses
îlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses* 

ītrace_0
đtrace_1* 

ņtrace_0
ōtrace_1* 
* 
* 
* 
* 

ķnon_trainable_variables
ôlayers
õmetrics
 ölayer_regularization_losses
÷layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses* 

øtrace_0* 

ųtrace_0* 

D0
E1*

D0
E1*
* 

únon_trainable_variables
ûlayers
ümetrics
 ũlayer_regularization_losses
ūlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses*

˙trace_0* 

trace_0* 
_Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses* 

trace_0
trace_1* 

trace_0
trace_1* 
* 

`0
a1*

`0
a1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*

trace_0* 

trace_0* 
_Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
 layers
Ąmetrics
 ĸlayer_regularization_losses
Ŗlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses* 

¤trace_0* 

Ĩtrace_0* 
* 
* 
* 

Ļnon_trainable_variables
§layers
¨metrics
 Šlayer_regularization_losses
Ēlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses* 

Ģtrace_0* 

Ŧtrace_0* 
* 
* 
* 

­non_trainable_variables
Žlayers
¯metrics
 °layer_regularization_losses
ąlayer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses* 

˛trace_0
ŗtrace_1* 

´trace_0
ĩtrace_1* 
* 

|0
}1*

|0
}1*
* 

ļnon_trainable_variables
ˇlayers
¸metrics
 šlayer_regularization_losses
ēlayer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses*

ģtrace_0* 

ŧtrace_0* 
_Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Ŋnon_trainable_variables
žlayers
ŋmetrics
 Ālayer_regularization_losses
Álayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Âtrace_0* 

Ãtrace_0* 
* 
* 
* 

Änon_trainable_variables
Ålayers
Æmetrics
 Įlayer_regularization_losses
Člayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Étrace_0* 

Ętrace_0* 
* 
* 
* 

Ënon_trainable_variables
Ėlayers
Ímetrics
 Îlayer_regularization_losses
Īlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Đtrace_0
Ņtrace_1* 

Ōtrace_0
Ķtrace_1* 
* 
* 
* 
* 

Ônon_trainable_variables
Õlayers
Ömetrics
 ×layer_regularization_losses
Ølayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Ųtrace_0* 

Útrace_0* 

0
1*

0
1*
* 

Ûnon_trainable_variables
Ülayers
Ũmetrics
 Ūlayer_regularization_losses
ßlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

ātrace_0* 

átrace_0* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

ânon_trainable_variables
ãlayers
ämetrics
 ålayer_regularization_losses
ælayer_metrics
 	variables
Ątrainable_variables
ĸregularization_losses
¤__call__
+Ĩ&call_and_return_all_conditional_losses
'Ĩ"call_and_return_conditional_losses* 

įtrace_0* 

čtrace_0* 

Ŧ0
­1*

Ŧ0
­1*
* 

énon_trainable_variables
ęlayers
ëmetrics
 ėlayer_regularization_losses
ílayer_metrics
Ļ	variables
§trainable_variables
¨regularization_losses
Ē__call__
+Ģ&call_and_return_all_conditional_losses
'Ģ"call_and_return_conditional_losses*

îtrace_0* 

ītrace_0* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

đnon_trainable_variables
ņlayers
ōmetrics
 ķlayer_regularization_losses
ôlayer_metrics
Ž	variables
¯trainable_variables
°regularization_losses
˛__call__
+ŗ&call_and_return_all_conditional_losses
'ŗ"call_and_return_conditional_losses* 

õtrace_0* 

ötrace_0* 
* 
* 
* 

÷non_trainable_variables
ølayers
ųmetrics
 úlayer_regularization_losses
ûlayer_metrics
´	variables
ĩtrainable_variables
ļregularization_losses
¸__call__
+š&call_and_return_all_conditional_losses
'š"call_and_return_conditional_losses* 

ütrace_0
ũtrace_1* 

ūtrace_0
˙trace_1* 
* 

Á0
Â1*

Á0
Â1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ģ	variables
ŧtrainable_variables
Ŋregularization_losses
ŋ__call__
+Ā&call_and_return_all_conditional_losses
'Ā"call_and_return_conditional_losses*

trace_0* 

trace_0* 
^X
VARIABLE_VALUEdense_8/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_8/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ã	variables
Ätrainable_variables
Åregularization_losses
Į__call__
+Č&call_and_return_all_conditional_losses
'Č"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
ē
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23*

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
	variables
	keras_api

total

count*
M
	variables
	keras_api

total

count

_fn_kwargs*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
|
VARIABLE_VALUEAdam/conv2d_4/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_4/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_5/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_5/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_6/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_6/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_7/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_7/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_8/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_8/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_4/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_4/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_5/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_5/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_6/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_6/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_7/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_7/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_8/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_8/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/conv2d_4/kernel/m/Read/ReadVariableOp(Adam/conv2d_4/bias/m/Read/ReadVariableOp*Adam/conv2d_5/kernel/m/Read/ReadVariableOp(Adam/conv2d_5/bias/m/Read/ReadVariableOp*Adam/conv2d_6/kernel/m/Read/ReadVariableOp(Adam/conv2d_6/bias/m/Read/ReadVariableOp*Adam/conv2d_7/kernel/m/Read/ReadVariableOp(Adam/conv2d_7/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp*Adam/conv2d_4/kernel/v/Read/ReadVariableOp(Adam/conv2d_4/bias/v/Read/ReadVariableOp*Adam/conv2d_5/kernel/v/Read/ReadVariableOp(Adam/conv2d_5/bias/v/Read/ReadVariableOp*Adam/conv2d_6/kernel/v/Read/ReadVariableOp(Adam/conv2d_6/bias/v/Read/ReadVariableOp*Adam/conv2d_7/kernel/v/Read/ReadVariableOp(Adam/conv2d_7/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOpConst*@
Tin9
725	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_20537
˙	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biasdense_8/kerneldense_8/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_4/kernel/mAdam/conv2d_4/bias/mAdam/conv2d_5/kernel/mAdam/conv2d_5/bias/mAdam/conv2d_6/kernel/mAdam/conv2d_6/bias/mAdam/conv2d_7/kernel/mAdam/conv2d_7/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/dense_8/kernel/mAdam/dense_8/bias/mAdam/conv2d_4/kernel/vAdam/conv2d_4/bias/vAdam/conv2d_5/kernel/vAdam/conv2d_5/bias/vAdam/conv2d_6/kernel/vAdam/conv2d_6/bias/vAdam/conv2d_7/kernel/vAdam/conv2d_7/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/vAdam/dense_8/kernel/vAdam/dense_8/bias/v*?
Tin8
624*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_20700Ģ
ō	
c
D__inference_dropout_9_layer_call_and_return_conditional_losses_19238

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĖL>Ļ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
ļ
K
/__inference_max_pooling2d_7_layer_call_fn_20204

inputs
identityØ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_18952
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˛

c
D__inference_dropout_6_layer_call_and_return_conditional_losses_20104

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĖL>Ž
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙77 :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 
 
_user_specified_nameinputs
˛

c
D__inference_dropout_8_layer_call_and_return_conditional_losses_20236

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĖL>Ž
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
ī
b
)__inference_dropout_9_layer_call_fn_20315

inputs
identityĸStatefulPartitionedCallŋ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_19238o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
É	
ô
B__inference_dense_6_layer_call_and_return_conditional_losses_20266

inputs1
matmul_readvariableop_resource:	ĀT@-
biasadd_readvariableop_resource:@
identityĸBiasAdd/ReadVariableOpĸMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ĀT@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙ĀT: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĀT
 
_user_specified_nameinputs
÷
b
D__inference_dropout_7_layer_call_and_return_conditional_losses_19053

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙ :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_18952

inputs
identityĸ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˙
b
D__inference_dropout_5_layer_call_and_return_conditional_losses_18990

inputs

identity_1X
IdentityIdentityinputs*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@e

Identity_1IdentityIdentity:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙ßß@:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@
 
_user_specified_nameinputs
ą

ü
C__inference_conv2d_4_layer_call_and_return_conditional_losses_18972

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityĸBiasAdd/ReadVariableOpĸConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙āā: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙āā
 
_user_specified_nameinputs
ļ
K
/__inference_max_pooling2d_5_layer_call_fn_20072

inputs
identityØ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_18928
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ė
d
H__inference_activation_15_layer_call_and_return_conditional_losses_19138

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ Z
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
˙\
ī
G__inference_sequential_2_layer_call_and_return_conditional_losses_19702
conv2d_4_input(
conv2d_4_19649:@
conv2d_4_19651:@(
conv2d_5_19657:@ 
conv2d_5_19659: (
conv2d_6_19665:  
conv2d_6_19667: (
conv2d_7_19673: @
conv2d_7_19675:@ 
dense_6_19682:	ĀT@
dense_6_19684:@
dense_7_19688:@ 
dense_7_19690: 
dense_8_19695: 
dense_8_19697:
identityĸ conv2d_4/StatefulPartitionedCallĸ conv2d_5/StatefulPartitionedCallĸ conv2d_6/StatefulPartitionedCallĸ conv2d_7/StatefulPartitionedCallĸdense_6/StatefulPartitionedCallĸdense_7/StatefulPartitionedCallĸdense_8/StatefulPartitionedCallĸ!dropout_5/StatefulPartitionedCallĸ!dropout_6/StatefulPartitionedCallĸ!dropout_7/StatefulPartitionedCallĸ!dropout_8/StatefulPartitionedCallĸ!dropout_9/StatefulPartitionedCall˙
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallconv2d_4_inputconv2d_4_19649conv2d_4_19651*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_18972î
activation_10/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_10_layer_call_and_return_conditional_losses_18983ķ
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall&activation_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_19416ņ
max_pooling2d_4/PartitionedCallPartitionedCall*dropout_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙oo@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_18916
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_19657conv2d_5_19659*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙nn *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_19003ė
activation_11/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙nn * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_11_layer_call_and_return_conditional_losses_19014í
max_pooling2d_5/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙77 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_18928
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0"^dropout_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙77 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_19377
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0conv2d_6_19665conv2d_6_19667*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙66 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_19034ė
activation_12/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙66 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_12_layer_call_and_return_conditional_losses_19045í
max_pooling2d_6/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_18940
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_19338
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0conv2d_7_19673conv2d_7_19675*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_19065ė
activation_13/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_13_layer_call_and_return_conditional_losses_19076í
max_pooling2d_7/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_18952
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_19299Ū
flatten_2/PartitionedCallPartitionedCall*dropout_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĀT* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_19092
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_6_19682dense_6_19684*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_19104ã
activation_14/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_14_layer_call_and_return_conditional_losses_19115
dense_7/StatefulPartitionedCallStatefulPartitionedCall&activation_14/PartitionedCall:output:0dense_7_19688dense_7_19690*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_19127ã
activation_15/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_15_layer_call_and_return_conditional_losses_19138
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall&activation_15/PartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_19238
dense_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0dense_8_19695dense_8_19697*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_19157ã
activation_16/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_16_layer_call_and_return_conditional_losses_19168u
IdentityIdentity&activation_16/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ė
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:˙˙˙˙˙˙˙˙˙āā: : : : : : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:a ]
1
_output_shapes
:˙˙˙˙˙˙˙˙˙āā
(
_user_specified_nameconv2d_4_input
Å	
ķ
B__inference_dense_7_layer_call_and_return_conditional_losses_19127

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityĸBiasAdd/ReadVariableOpĸMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
Â

c
D__inference_dropout_5_layer_call_and_return_conditional_losses_19416

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @n
dropout/MulMulinputsdropout/Const:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?°
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@y
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@s
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@c
IdentityIdentitydropout/Mul_1:z:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙ßß@:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@
 
_user_specified_nameinputs
Å
I
-__inference_activation_13_layer_call_fn_20194

inputs
identityģ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_13_layer_call_and_return_conditional_losses_19076h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
ü]
Â
 __inference__wrapped_model_18907
conv2d_4_inputN
4sequential_2_conv2d_4_conv2d_readvariableop_resource:@C
5sequential_2_conv2d_4_biasadd_readvariableop_resource:@N
4sequential_2_conv2d_5_conv2d_readvariableop_resource:@ C
5sequential_2_conv2d_5_biasadd_readvariableop_resource: N
4sequential_2_conv2d_6_conv2d_readvariableop_resource:  C
5sequential_2_conv2d_6_biasadd_readvariableop_resource: N
4sequential_2_conv2d_7_conv2d_readvariableop_resource: @C
5sequential_2_conv2d_7_biasadd_readvariableop_resource:@F
3sequential_2_dense_6_matmul_readvariableop_resource:	ĀT@B
4sequential_2_dense_6_biasadd_readvariableop_resource:@E
3sequential_2_dense_7_matmul_readvariableop_resource:@ B
4sequential_2_dense_7_biasadd_readvariableop_resource: E
3sequential_2_dense_8_matmul_readvariableop_resource: B
4sequential_2_dense_8_biasadd_readvariableop_resource:
identityĸ,sequential_2/conv2d_4/BiasAdd/ReadVariableOpĸ+sequential_2/conv2d_4/Conv2D/ReadVariableOpĸ,sequential_2/conv2d_5/BiasAdd/ReadVariableOpĸ+sequential_2/conv2d_5/Conv2D/ReadVariableOpĸ,sequential_2/conv2d_6/BiasAdd/ReadVariableOpĸ+sequential_2/conv2d_6/Conv2D/ReadVariableOpĸ,sequential_2/conv2d_7/BiasAdd/ReadVariableOpĸ+sequential_2/conv2d_7/Conv2D/ReadVariableOpĸ+sequential_2/dense_6/BiasAdd/ReadVariableOpĸ*sequential_2/dense_6/MatMul/ReadVariableOpĸ+sequential_2/dense_7/BiasAdd/ReadVariableOpĸ*sequential_2/dense_7/MatMul/ReadVariableOpĸ+sequential_2/dense_8/BiasAdd/ReadVariableOpĸ*sequential_2/dense_8/MatMul/ReadVariableOp¨
+sequential_2/conv2d_4/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Đ
sequential_2/conv2d_4/Conv2DConv2Dconv2d_4_input3sequential_2/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@*
paddingVALID*
strides

,sequential_2/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Á
sequential_2/conv2d_4/BiasAddBiasAdd%sequential_2/conv2d_4/Conv2D:output:04sequential_2/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@
sequential_2/activation_10/ReluRelu&sequential_2/conv2d_4/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@
sequential_2/dropout_5/IdentityIdentity-sequential_2/activation_10/Relu:activations:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@Æ
$sequential_2/max_pooling2d_4/MaxPoolMaxPool(sequential_2/dropout_5/Identity:output:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙oo@*
ksize
*
paddingVALID*
strides
¨
+sequential_2/conv2d_5/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0í
sequential_2/conv2d_5/Conv2DConv2D-sequential_2/max_pooling2d_4/MaxPool:output:03sequential_2/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn *
paddingVALID*
strides

,sequential_2/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ŋ
sequential_2/conv2d_5/BiasAddBiasAdd%sequential_2/conv2d_5/Conv2D:output:04sequential_2/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn 
sequential_2/activation_11/ReluRelu&sequential_2/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn Ë
$sequential_2/max_pooling2d_5/MaxPoolMaxPool-sequential_2/activation_11/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 *
ksize
*
paddingVALID*
strides

sequential_2/dropout_6/IdentityIdentity-sequential_2/max_pooling2d_5/MaxPool:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 ¨
+sequential_2/conv2d_6/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0č
sequential_2/conv2d_6/Conv2DConv2D(sequential_2/dropout_6/Identity:output:03sequential_2/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 *
paddingVALID*
strides

,sequential_2/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ŋ
sequential_2/conv2d_6/BiasAddBiasAdd%sequential_2/conv2d_6/Conv2D:output:04sequential_2/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 
sequential_2/activation_12/ReluRelu&sequential_2/conv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 Ë
$sequential_2/max_pooling2d_6/MaxPoolMaxPool-sequential_2/activation_12/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
ksize
*
paddingVALID*
strides

sequential_2/dropout_7/IdentityIdentity-sequential_2/max_pooling2d_6/MaxPool:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ ¨
+sequential_2/conv2d_7/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0č
sequential_2/conv2d_7/Conv2DConv2D(sequential_2/dropout_7/Identity:output:03sequential_2/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
paddingVALID*
strides

,sequential_2/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ŋ
sequential_2/conv2d_7/BiasAddBiasAdd%sequential_2/conv2d_7/Conv2D:output:04sequential_2/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
sequential_2/activation_13/ReluRelu&sequential_2/conv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@Ë
$sequential_2/max_pooling2d_7/MaxPoolMaxPool-sequential_2/activation_13/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
ksize
*
paddingVALID*
strides

sequential_2/dropout_8/IdentityIdentity-sequential_2/max_pooling2d_7/MaxPool:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@m
sequential_2/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙@*  ­
sequential_2/flatten_2/ReshapeReshape(sequential_2/dropout_8/Identity:output:0%sequential_2/flatten_2/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĀT
*sequential_2/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_6_matmul_readvariableop_resource*
_output_shapes
:	ĀT@*
dtype0´
sequential_2/dense_6/MatMulMatMul'sequential_2/flatten_2/Reshape:output:02sequential_2/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
+sequential_2/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ĩ
sequential_2/dense_6/BiasAddBiasAdd%sequential_2/dense_6/MatMul:product:03sequential_2/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
sequential_2/activation_14/ReluRelu%sequential_2/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
*sequential_2/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_7_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0ē
sequential_2/dense_7/MatMulMatMul-sequential_2/activation_14/Relu:activations:02sequential_2/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
+sequential_2/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ĩ
sequential_2/dense_7/BiasAddBiasAdd%sequential_2/dense_7/MatMul:product:03sequential_2/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
sequential_2/activation_15/ReluRelu%sequential_2/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
sequential_2/dropout_9/IdentityIdentity-sequential_2/activation_15/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
*sequential_2/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_8_matmul_readvariableop_resource*
_output_shapes

: *
dtype0ĩ
sequential_2/dense_8/MatMulMatMul(sequential_2/dropout_9/Identity:output:02sequential_2/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
+sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ĩ
sequential_2/dense_8/BiasAddBiasAdd%sequential_2/dense_8/MatMul:product:03sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"sequential_2/activation_16/SoftmaxSoftmax%sequential_2/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙{
IdentityIdentity,sequential_2/activation_16/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ë
NoOpNoOp-^sequential_2/conv2d_4/BiasAdd/ReadVariableOp,^sequential_2/conv2d_4/Conv2D/ReadVariableOp-^sequential_2/conv2d_5/BiasAdd/ReadVariableOp,^sequential_2/conv2d_5/Conv2D/ReadVariableOp-^sequential_2/conv2d_6/BiasAdd/ReadVariableOp,^sequential_2/conv2d_6/Conv2D/ReadVariableOp-^sequential_2/conv2d_7/BiasAdd/ReadVariableOp,^sequential_2/conv2d_7/Conv2D/ReadVariableOp,^sequential_2/dense_6/BiasAdd/ReadVariableOp+^sequential_2/dense_6/MatMul/ReadVariableOp,^sequential_2/dense_7/BiasAdd/ReadVariableOp+^sequential_2/dense_7/MatMul/ReadVariableOp,^sequential_2/dense_8/BiasAdd/ReadVariableOp+^sequential_2/dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:˙˙˙˙˙˙˙˙˙āā: : : : : : : : : : : : : : 2\
,sequential_2/conv2d_4/BiasAdd/ReadVariableOp,sequential_2/conv2d_4/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_4/Conv2D/ReadVariableOp+sequential_2/conv2d_4/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_5/BiasAdd/ReadVariableOp,sequential_2/conv2d_5/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_5/Conv2D/ReadVariableOp+sequential_2/conv2d_5/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_6/BiasAdd/ReadVariableOp,sequential_2/conv2d_6/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_6/Conv2D/ReadVariableOp+sequential_2/conv2d_6/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_7/BiasAdd/ReadVariableOp,sequential_2/conv2d_7/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_7/Conv2D/ReadVariableOp+sequential_2/conv2d_7/Conv2D/ReadVariableOp2Z
+sequential_2/dense_6/BiasAdd/ReadVariableOp+sequential_2/dense_6/BiasAdd/ReadVariableOp2X
*sequential_2/dense_6/MatMul/ReadVariableOp*sequential_2/dense_6/MatMul/ReadVariableOp2Z
+sequential_2/dense_7/BiasAdd/ReadVariableOp+sequential_2/dense_7/BiasAdd/ReadVariableOp2X
*sequential_2/dense_7/MatMul/ReadVariableOp*sequential_2/dense_7/MatMul/ReadVariableOp2Z
+sequential_2/dense_8/BiasAdd/ReadVariableOp+sequential_2/dense_8/BiasAdd/ReadVariableOp2X
*sequential_2/dense_8/MatMul/ReadVariableOp*sequential_2/dense_8/MatMul/ReadVariableOp:a ]
1
_output_shapes
:˙˙˙˙˙˙˙˙˙āā
(
_user_specified_nameconv2d_4_input

f
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_20209

inputs
identityĸ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ĩ
I
-__inference_activation_14_layer_call_fn_20271

inputs
identityŗ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_14_layer_call_and_return_conditional_losses_19115`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙@:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_18928

inputs
identityĸ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
đ

(__inference_conv2d_4_layer_call_fn_19981

inputs!
unknown:@
	unknown_0:@
identityĸStatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_18972y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙āā: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙āā
 
_user_specified_nameinputs
˛

c
D__inference_dropout_7_layer_call_and_return_conditional_losses_20170

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĖL>Ž
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙ :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
Å
I
-__inference_activation_12_layer_call_fn_20128

inputs
identityģ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙66 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_12_layer_call_and_return_conditional_losses_19045h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙66 :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 
 
_user_specified_nameinputs
ė
d
H__inference_activation_13_layer_call_and_return_conditional_losses_19076

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
§U
ģ
G__inference_sequential_2_layer_call_and_return_conditional_losses_19646
conv2d_4_input(
conv2d_4_19593:@
conv2d_4_19595:@(
conv2d_5_19601:@ 
conv2d_5_19603: (
conv2d_6_19609:  
conv2d_6_19611: (
conv2d_7_19617: @
conv2d_7_19619:@ 
dense_6_19626:	ĀT@
dense_6_19628:@
dense_7_19632:@ 
dense_7_19634: 
dense_8_19639: 
dense_8_19641:
identityĸ conv2d_4/StatefulPartitionedCallĸ conv2d_5/StatefulPartitionedCallĸ conv2d_6/StatefulPartitionedCallĸ conv2d_7/StatefulPartitionedCallĸdense_6/StatefulPartitionedCallĸdense_7/StatefulPartitionedCallĸdense_8/StatefulPartitionedCall˙
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallconv2d_4_inputconv2d_4_19593conv2d_4_19595*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_18972î
activation_10/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_10_layer_call_and_return_conditional_losses_18983ã
dropout_5/PartitionedCallPartitionedCall&activation_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_18990é
max_pooling2d_4/PartitionedCallPartitionedCall"dropout_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙oo@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_18916
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_19601conv2d_5_19603*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙nn *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_19003ė
activation_11/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙nn * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_11_layer_call_and_return_conditional_losses_19014í
max_pooling2d_5/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙77 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_18928ã
dropout_6/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙77 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_19022
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0conv2d_6_19609conv2d_6_19611*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙66 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_19034ė
activation_12/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙66 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_12_layer_call_and_return_conditional_losses_19045í
max_pooling2d_6/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_18940ã
dropout_7/PartitionedCallPartitionedCall(max_pooling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_19053
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0conv2d_7_19617conv2d_7_19619*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_19065ė
activation_13/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_13_layer_call_and_return_conditional_losses_19076í
max_pooling2d_7/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_18952ã
dropout_8/PartitionedCallPartitionedCall(max_pooling2d_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_19084Ö
flatten_2/PartitionedCallPartitionedCall"dropout_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĀT* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_19092
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_6_19626dense_6_19628*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_19104ã
activation_14/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_14_layer_call_and_return_conditional_losses_19115
dense_7/StatefulPartitionedCallStatefulPartitionedCall&activation_14/PartitionedCall:output:0dense_7_19632dense_7_19634*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_19127ã
activation_15/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_15_layer_call_and_return_conditional_losses_19138Ų
dropout_9/PartitionedCallPartitionedCall&activation_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_19145
dense_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0dense_8_19639dense_8_19641*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_19157ã
activation_16/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_16_layer_call_and_return_conditional_losses_19168u
IdentityIdentity&activation_16/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:˙˙˙˙˙˙˙˙˙āā: : : : : : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall:a ]
1
_output_shapes
:˙˙˙˙˙˙˙˙˙āā
(
_user_specified_nameconv2d_4_input
÷
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_20092

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙77 :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 
 
_user_specified_nameinputs
û

,__inference_sequential_2_layer_call_fn_19776

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:	ĀT@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11: 

unknown_12:
identityĸStatefulPartitionedCallû
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_19171o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:˙˙˙˙˙˙˙˙˙āā: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙āā
 
_user_specified_nameinputs
Ė
d
H__inference_activation_15_layer_call_and_return_conditional_losses_20305

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ Z
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
¯
E
)__inference_flatten_2_layer_call_fn_20241

inputs
identity°
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĀT* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_19092a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĀT"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
Ņ
d
H__inference_activation_16_layer_call_and_return_conditional_losses_20361

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
É	
ô
B__inference_dense_6_layer_call_and_return_conditional_losses_19104

inputs1
matmul_readvariableop_resource:	ĀT@-
biasadd_readvariableop_resource:@
identityĸBiasAdd/ReadVariableOpĸMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ĀT@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙ĀT: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĀT
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_20038

inputs
identityĸ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˛

c
D__inference_dropout_8_layer_call_and_return_conditional_losses_19299

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĖL>Ž
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
Æ
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_20247

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙@*  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĀTY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĀT"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
ė
d
H__inference_activation_11_layer_call_and_return_conditional_losses_19014

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙nn :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn 
 
_user_specified_nameinputs
ô
d
H__inference_activation_10_layer_call_and_return_conditional_losses_20001

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙ßß@:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@
 
_user_specified_nameinputs
Å	
ķ
B__inference_dense_8_layer_call_and_return_conditional_losses_19157

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityĸBiasAdd/ReadVariableOpĸMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs

b
)__inference_dropout_6_layer_call_fn_20087

inputs
identityĸStatefulPartitionedCallĮ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙77 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_19377w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙77 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 
 
_user_specified_nameinputs
s
õ

G__inference_sequential_2_layer_call_and_return_conditional_losses_19972

inputsA
'conv2d_4_conv2d_readvariableop_resource:@6
(conv2d_4_biasadd_readvariableop_resource:@A
'conv2d_5_conv2d_readvariableop_resource:@ 6
(conv2d_5_biasadd_readvariableop_resource: A
'conv2d_6_conv2d_readvariableop_resource:  6
(conv2d_6_biasadd_readvariableop_resource: A
'conv2d_7_conv2d_readvariableop_resource: @6
(conv2d_7_biasadd_readvariableop_resource:@9
&dense_6_matmul_readvariableop_resource:	ĀT@5
'dense_6_biasadd_readvariableop_resource:@8
&dense_7_matmul_readvariableop_resource:@ 5
'dense_7_biasadd_readvariableop_resource: 8
&dense_8_matmul_readvariableop_resource: 5
'dense_8_biasadd_readvariableop_resource:
identityĸconv2d_4/BiasAdd/ReadVariableOpĸconv2d_4/Conv2D/ReadVariableOpĸconv2d_5/BiasAdd/ReadVariableOpĸconv2d_5/Conv2D/ReadVariableOpĸconv2d_6/BiasAdd/ReadVariableOpĸconv2d_6/Conv2D/ReadVariableOpĸconv2d_7/BiasAdd/ReadVariableOpĸconv2d_7/Conv2D/ReadVariableOpĸdense_6/BiasAdd/ReadVariableOpĸdense_6/MatMul/ReadVariableOpĸdense_7/BiasAdd/ReadVariableOpĸdense_7/MatMul/ReadVariableOpĸdense_8/BiasAdd/ReadVariableOpĸdense_8/MatMul/ReadVariableOp
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ž
conv2d_4/Conv2DConv2Dinputs&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@*
paddingVALID*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@q
activation_10/ReluReluconv2d_4/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@\
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_5/dropout/MulMul activation_10/Relu:activations:0 dropout_5/dropout/Const:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@g
dropout_5/dropout/ShapeShape activation_10/Relu:activations:0*
T0*
_output_shapes
:Ē
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@*
dtype0e
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Î
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@Ŧ
max_pooling2d_4/MaxPoolMaxPooldropout_5/dropout/Mul_1:z:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙oo@*
ksize
*
paddingVALID*
strides

conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Æ
conv2d_5/Conv2DConv2D max_pooling2d_4/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn *
paddingVALID*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn o
activation_11/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn ą
max_pooling2d_5/MaxPoolMaxPool activation_11/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 *
ksize
*
paddingVALID*
strides
\
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_6/dropout/MulMul max_pooling2d_5/MaxPool:output:0 dropout_6/dropout/Const:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 g
dropout_6/dropout/ShapeShape max_pooling2d_5/MaxPool:output:0*
T0*
_output_shapes
:¨
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 *
dtype0e
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĖL>Ė
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Á
conv2d_6/Conv2DConv2Ddropout_6/dropout/Mul_1:z:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 *
paddingVALID*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 o
activation_12/ReluReluconv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 ą
max_pooling2d_6/MaxPoolMaxPool activation_12/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
ksize
*
paddingVALID*
strides
\
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_7/dropout/MulMul max_pooling2d_6/MaxPool:output:0 dropout_7/dropout/Const:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ g
dropout_7/dropout/ShapeShape max_pooling2d_6/MaxPool:output:0*
T0*
_output_shapes
:¨
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
dtype0e
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĖL>Ė
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Á
conv2d_7/Conv2DConv2Ddropout_7/dropout/Mul_1:z:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
paddingVALID*
strides

conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@o
activation_13/ReluReluconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@ą
max_pooling2d_7/MaxPoolMaxPool activation_13/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
ksize
*
paddingVALID*
strides
\
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_8/dropout/MulMul max_pooling2d_7/MaxPool:output:0 dropout_8/dropout/Const:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@g
dropout_8/dropout/ShapeShape max_pooling2d_7/MaxPool:output:0*
T0*
_output_shapes
:¨
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
dtype0e
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĖL>Ė
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙@*  
flatten_2/ReshapeReshapedropout_8/dropout/Mul_1:z:0flatten_2/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĀT
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	ĀT@*
dtype0
dense_6/MatMulMatMulflatten_2/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@f
activation_14/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
dense_7/MatMulMatMul activation_14/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ f
activation_15/ReluReludense_7/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ \
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_9/dropout/MulMul activation_15/Relu:activations:0 dropout_9/dropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ g
dropout_9/dropout/ShapeShape activation_15/Relu:activations:0*
T0*
_output_shapes
: 
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
dtype0e
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĖL>Ä
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_8/MatMulMatMuldropout_9/dropout/Mul_1:z:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙l
activation_16/SoftmaxSoftmaxdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙n
IdentityIdentityactivation_16/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:˙˙˙˙˙˙˙˙˙āā: : : : : : : : : : : : : : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙āā
 
_user_specified_nameinputs
˛

c
D__inference_dropout_6_layer_call_and_return_conditional_losses_19377

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĖL>Ž
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙77 :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 
 
_user_specified_nameinputs
§

ü
C__inference_conv2d_5_layer_call_and_return_conditional_losses_19003

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityĸBiasAdd/ReadVariableOpĸConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙oo@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙oo@
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_18916

inputs
identityĸ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
U
ŗ
G__inference_sequential_2_layer_call_and_return_conditional_losses_19171

inputs(
conv2d_4_18973:@
conv2d_4_18975:@(
conv2d_5_19004:@ 
conv2d_5_19006: (
conv2d_6_19035:  
conv2d_6_19037: (
conv2d_7_19066: @
conv2d_7_19068:@ 
dense_6_19105:	ĀT@
dense_6_19107:@
dense_7_19128:@ 
dense_7_19130: 
dense_8_19158: 
dense_8_19160:
identityĸ conv2d_4/StatefulPartitionedCallĸ conv2d_5/StatefulPartitionedCallĸ conv2d_6/StatefulPartitionedCallĸ conv2d_7/StatefulPartitionedCallĸdense_6/StatefulPartitionedCallĸdense_7/StatefulPartitionedCallĸdense_8/StatefulPartitionedCall÷
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_4_18973conv2d_4_18975*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_18972î
activation_10/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_10_layer_call_and_return_conditional_losses_18983ã
dropout_5/PartitionedCallPartitionedCall&activation_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_18990é
max_pooling2d_4/PartitionedCallPartitionedCall"dropout_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙oo@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_18916
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_19004conv2d_5_19006*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙nn *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_19003ė
activation_11/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙nn * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_11_layer_call_and_return_conditional_losses_19014í
max_pooling2d_5/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙77 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_18928ã
dropout_6/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙77 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_19022
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0conv2d_6_19035conv2d_6_19037*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙66 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_19034ė
activation_12/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙66 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_12_layer_call_and_return_conditional_losses_19045í
max_pooling2d_6/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_18940ã
dropout_7/PartitionedCallPartitionedCall(max_pooling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_19053
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0conv2d_7_19066conv2d_7_19068*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_19065ė
activation_13/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_13_layer_call_and_return_conditional_losses_19076í
max_pooling2d_7/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_18952ã
dropout_8/PartitionedCallPartitionedCall(max_pooling2d_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_19084Ö
flatten_2/PartitionedCallPartitionedCall"dropout_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĀT* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_19092
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_6_19105dense_6_19107*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_19104ã
activation_14/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_14_layer_call_and_return_conditional_losses_19115
dense_7/StatefulPartitionedCallStatefulPartitionedCall&activation_14/PartitionedCall:output:0dense_7_19128dense_7_19130*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_19127ã
activation_15/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_15_layer_call_and_return_conditional_losses_19138Ų
dropout_9/PartitionedCallPartitionedCall&activation_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_19145
dense_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0dense_8_19158dense_8_19160*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_19157ã
activation_16/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_16_layer_call_and_return_conditional_losses_19168u
IdentityIdentity&activation_16/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:˙˙˙˙˙˙˙˙˙āā: : : : : : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙āā
 
_user_specified_nameinputs


,__inference_sequential_2_layer_call_fn_19590
conv2d_4_input!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:	ĀT@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11: 

unknown_12:
identityĸStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_19526o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:˙˙˙˙˙˙˙˙˙āā: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
1
_output_shapes
:˙˙˙˙˙˙˙˙˙āā
(
_user_specified_nameconv2d_4_input

b
)__inference_dropout_7_layer_call_fn_20153

inputs
identityĸStatefulPartitionedCallĮ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_19338w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙ 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
Á

'__inference_dense_6_layer_call_fn_20256

inputs
unknown:	ĀT@
	unknown_0:@
identityĸStatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_19104o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙ĀT: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĀT
 
_user_specified_nameinputs
ļ
K
/__inference_max_pooling2d_6_layer_call_fn_20138

inputs
identityØ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_18940
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Å	
ķ
B__inference_dense_8_layer_call_and_return_conditional_losses_20351

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityĸBiasAdd/ReadVariableOpĸMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
Ŋ
E
)__inference_dropout_8_layer_call_fn_20214

inputs
identityˇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_19084h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
ã

#__inference_signature_wrapper_19743
conv2d_4_input!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:	ĀT@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11: 

unknown_12:
identityĸStatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallconv2d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_18907o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:˙˙˙˙˙˙˙˙˙āā: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
1
_output_shapes
:˙˙˙˙˙˙˙˙˙āā
(
_user_specified_nameconv2d_4_input
Ŋ
E
)__inference_dropout_6_layer_call_fn_20082

inputs
identityˇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙77 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_19022h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙77 :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 
 
_user_specified_nameinputs

b
)__inference_dropout_5_layer_call_fn_20011

inputs
identityĸStatefulPartitionedCallÉ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_19416y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙ßß@22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@
 
_user_specified_nameinputs
ž

'__inference_dense_8_layer_call_fn_20341

inputs
unknown: 
	unknown_0:
identityĸStatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_19157o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
Ĩ
I
-__inference_activation_15_layer_call_fn_20300

inputs
identityŗ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_15_layer_call_and_return_conditional_losses_19138`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
ė
d
H__inference_activation_13_layer_call_and_return_conditional_losses_20199

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
f
Ī
__inference__traced_save_20537
file_prefix.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop.
*savev2_conv2d_7_kernel_read_readvariableop,
(savev2_conv2d_7_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_conv2d_4_kernel_m_read_readvariableop3
/savev2_adam_conv2d_4_bias_m_read_readvariableop5
1savev2_adam_conv2d_5_kernel_m_read_readvariableop3
/savev2_adam_conv2d_5_bias_m_read_readvariableop5
1savev2_adam_conv2d_6_kernel_m_read_readvariableop3
/savev2_adam_conv2d_6_bias_m_read_readvariableop5
1savev2_adam_conv2d_7_kernel_m_read_readvariableop3
/savev2_adam_conv2d_7_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableop5
1savev2_adam_conv2d_4_kernel_v_read_readvariableop3
/savev2_adam_conv2d_4_bias_v_read_readvariableop5
1savev2_adam_conv2d_5_kernel_v_read_readvariableop3
/savev2_adam_conv2d_5_bias_v_read_readvariableop5
1savev2_adam_conv2d_6_kernel_v_read_readvariableop3
/savev2_adam_conv2d_6_bias_v_read_readvariableop5
1savev2_adam_conv2d_7_kernel_v_read_readvariableop3
/savev2_adam_conv2d_7_bias_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableop
savev2_const

identity_1ĸMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ũ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*
valueüBų4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÕ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B û
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop(savev2_conv2d_7_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_conv2d_4_kernel_m_read_readvariableop/savev2_adam_conv2d_4_bias_m_read_readvariableop1savev2_adam_conv2d_5_kernel_m_read_readvariableop/savev2_adam_conv2d_5_bias_m_read_readvariableop1savev2_adam_conv2d_6_kernel_m_read_readvariableop/savev2_adam_conv2d_6_bias_m_read_readvariableop1savev2_adam_conv2d_7_kernel_m_read_readvariableop/savev2_adam_conv2d_7_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableop1savev2_adam_conv2d_4_kernel_v_read_readvariableop/savev2_adam_conv2d_4_bias_v_read_readvariableop1savev2_adam_conv2d_5_kernel_v_read_readvariableop/savev2_adam_conv2d_5_bias_v_read_readvariableop1savev2_adam_conv2d_6_kernel_v_read_readvariableop/savev2_adam_conv2d_6_bias_v_read_readvariableop1savev2_adam_conv2d_7_kernel_v_read_readvariableop/savev2_adam_conv2d_7_bias_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *B
dtypes8
624	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ū
_input_shapesĖ
É: :@:@:@ : :  : : @:@:	ĀT@:@:@ : : :: : : : : : : : : :@:@:@ : :  : : @:@:	ĀT@:@:@ : : ::@:@:@ : :  : : @:@:	ĀT@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:%	!

_output_shapes
:	ĀT@: 


_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:% !

_output_shapes
:	ĀT@: !

_output_shapes
:@:$" 

_output_shapes

:@ : #

_output_shapes
: :$$ 

_output_shapes

: : %

_output_shapes
::,&(
&
_output_shapes
:@: '

_output_shapes
:@:,((
&
_output_shapes
:@ : )

_output_shapes
: :,*(
&
_output_shapes
:  : +

_output_shapes
: :,,(
&
_output_shapes
: @: -

_output_shapes
:@:%.!

_output_shapes
:	ĀT@: /

_output_shapes
:@:$0 

_output_shapes

:@ : 1

_output_shapes
: :$2 

_output_shapes

: : 3

_output_shapes
::4

_output_shapes
: 
ė
d
H__inference_activation_11_layer_call_and_return_conditional_losses_20067

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙nn :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn 
 
_user_specified_nameinputs
Å	
ķ
B__inference_dense_7_layer_call_and_return_conditional_losses_20295

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityĸBiasAdd/ReadVariableOpĸMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
Ŋ
E
)__inference_dropout_7_layer_call_fn_20148

inputs
identityˇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_19053h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙ :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
č

(__inference_conv2d_5_layer_call_fn_20047

inputs!
unknown:@ 
	unknown_0: 
identityĸStatefulPartitionedCallā
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙nn *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_19003w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙oo@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙oo@
 
_user_specified_nameinputs
ė
d
H__inference_activation_12_layer_call_and_return_conditional_losses_19045

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙66 :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 
 
_user_specified_nameinputs
û

,__inference_sequential_2_layer_call_fn_19809

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:	ĀT@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11: 

unknown_12:
identityĸStatefulPartitionedCallû
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_19526o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:˙˙˙˙˙˙˙˙˙āā: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙āā
 
_user_specified_nameinputs
÷
b
D__inference_dropout_8_layer_call_and_return_conditional_losses_20224

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
Å
I
-__inference_activation_11_layer_call_fn_20062

inputs
identityģ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙nn * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_11_layer_call_and_return_conditional_losses_19014h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙nn :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn 
 
_user_specified_nameinputs
ž

'__inference_dense_7_layer_call_fn_20285

inputs
unknown:@ 
	unknown_0: 
identityĸStatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_19127o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
č

(__inference_conv2d_7_layer_call_fn_20179

inputs!
unknown: @
	unknown_0:@
identityĸStatefulPartitionedCallā
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_19065w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
Â

c
D__inference_dropout_5_layer_call_and_return_conditional_losses_20028

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @n
dropout/MulMulinputsdropout/Const:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?°
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@y
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@s
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@c
IdentityIdentitydropout/Mul_1:z:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙ßß@:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@
 
_user_specified_nameinputs
÷
b
D__inference_dropout_7_layer_call_and_return_conditional_losses_20158

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙ :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_20143

inputs
identityĸ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ė
d
H__inference_activation_14_layer_call_and_return_conditional_losses_19115

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@Z
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙@:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
Ë
ĸ
!__inference__traced_restore_20700
file_prefix:
 assignvariableop_conv2d_4_kernel:@.
 assignvariableop_1_conv2d_4_bias:@<
"assignvariableop_2_conv2d_5_kernel:@ .
 assignvariableop_3_conv2d_5_bias: <
"assignvariableop_4_conv2d_6_kernel:  .
 assignvariableop_5_conv2d_6_bias: <
"assignvariableop_6_conv2d_7_kernel: @.
 assignvariableop_7_conv2d_7_bias:@4
!assignvariableop_8_dense_6_kernel:	ĀT@-
assignvariableop_9_dense_6_bias:@4
"assignvariableop_10_dense_7_kernel:@ .
 assignvariableop_11_dense_7_bias: 4
"assignvariableop_12_dense_8_kernel: .
 assignvariableop_13_dense_8_bias:'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: 0
&assignvariableop_18_adam_learning_rate: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: #
assignvariableop_21_total: #
assignvariableop_22_count: D
*assignvariableop_23_adam_conv2d_4_kernel_m:@6
(assignvariableop_24_adam_conv2d_4_bias_m:@D
*assignvariableop_25_adam_conv2d_5_kernel_m:@ 6
(assignvariableop_26_adam_conv2d_5_bias_m: D
*assignvariableop_27_adam_conv2d_6_kernel_m:  6
(assignvariableop_28_adam_conv2d_6_bias_m: D
*assignvariableop_29_adam_conv2d_7_kernel_m: @6
(assignvariableop_30_adam_conv2d_7_bias_m:@<
)assignvariableop_31_adam_dense_6_kernel_m:	ĀT@5
'assignvariableop_32_adam_dense_6_bias_m:@;
)assignvariableop_33_adam_dense_7_kernel_m:@ 5
'assignvariableop_34_adam_dense_7_bias_m: ;
)assignvariableop_35_adam_dense_8_kernel_m: 5
'assignvariableop_36_adam_dense_8_bias_m:D
*assignvariableop_37_adam_conv2d_4_kernel_v:@6
(assignvariableop_38_adam_conv2d_4_bias_v:@D
*assignvariableop_39_adam_conv2d_5_kernel_v:@ 6
(assignvariableop_40_adam_conv2d_5_bias_v: D
*assignvariableop_41_adam_conv2d_6_kernel_v:  6
(assignvariableop_42_adam_conv2d_6_bias_v: D
*assignvariableop_43_adam_conv2d_7_kernel_v: @6
(assignvariableop_44_adam_conv2d_7_bias_v:@<
)assignvariableop_45_adam_dense_6_kernel_v:	ĀT@5
'assignvariableop_46_adam_dense_6_bias_v:@;
)assignvariableop_47_adam_dense_7_kernel_v:@ 5
'assignvariableop_48_adam_dense_7_bias_v: ;
)assignvariableop_49_adam_dense_8_kernel_v: 5
'assignvariableop_50_adam_dense_8_bias_v:
identity_52ĸAssignVariableOpĸAssignVariableOp_1ĸAssignVariableOp_10ĸAssignVariableOp_11ĸAssignVariableOp_12ĸAssignVariableOp_13ĸAssignVariableOp_14ĸAssignVariableOp_15ĸAssignVariableOp_16ĸAssignVariableOp_17ĸAssignVariableOp_18ĸAssignVariableOp_19ĸAssignVariableOp_2ĸAssignVariableOp_20ĸAssignVariableOp_21ĸAssignVariableOp_22ĸAssignVariableOp_23ĸAssignVariableOp_24ĸAssignVariableOp_25ĸAssignVariableOp_26ĸAssignVariableOp_27ĸAssignVariableOp_28ĸAssignVariableOp_29ĸAssignVariableOp_3ĸAssignVariableOp_30ĸAssignVariableOp_31ĸAssignVariableOp_32ĸAssignVariableOp_33ĸAssignVariableOp_34ĸAssignVariableOp_35ĸAssignVariableOp_36ĸAssignVariableOp_37ĸAssignVariableOp_38ĸAssignVariableOp_39ĸAssignVariableOp_4ĸAssignVariableOp_40ĸAssignVariableOp_41ĸAssignVariableOp_42ĸAssignVariableOp_43ĸAssignVariableOp_44ĸAssignVariableOp_45ĸAssignVariableOp_46ĸAssignVariableOp_47ĸAssignVariableOp_48ĸAssignVariableOp_49ĸAssignVariableOp_5ĸAssignVariableOp_50ĸAssignVariableOp_6ĸAssignVariableOp_7ĸAssignVariableOp_8ĸAssignVariableOp_9ā
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*
valueüBų4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHØ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ĩ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*æ
_output_shapesĶ
Đ::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
624	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_conv2d_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_5_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_5_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_6_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_6_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_7_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_7_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_6_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_6_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_7_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_7_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_8_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_8_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv2d_4_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv2d_4_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv2d_5_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv2d_5_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_conv2d_6_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_conv2d_6_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_conv2d_7_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_conv2d_7_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_6_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_6_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_7_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_7_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_8_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_8_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_conv2d_4_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_conv2d_4_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_conv2d_5_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_conv2d_5_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_conv2d_6_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_conv2d_6_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_conv2d_7_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_conv2d_7_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_dense_6_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp'assignvariableop_46_adam_dense_6_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_7_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_7_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_dense_8_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_dense_8_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ą	
Identity_51Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_52IdentityIdentity_51:output:0^NoOp_1*
T0*
_output_shapes
: 	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_52Identity_52:output:0*{
_input_shapesj
h: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
§

ü
C__inference_conv2d_7_layer_call_and_return_conditional_losses_20189

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityĸBiasAdd/ReadVariableOpĸConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs

b
)__inference_dropout_8_layer_call_fn_20219

inputs
identityĸStatefulPartitionedCallĮ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_19299w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
§

ü
C__inference_conv2d_7_layer_call_and_return_conditional_losses_19065

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityĸBiasAdd/ReadVariableOpĸConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
§

ü
C__inference_conv2d_6_layer_call_and_return_conditional_losses_20123

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityĸBiasAdd/ReadVariableOpĸConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙77 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 
 
_user_specified_nameinputs
ļ
K
/__inference_max_pooling2d_4_layer_call_fn_20033

inputs
identityØ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_18916
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
č

(__inference_conv2d_6_layer_call_fn_20113

inputs!
unknown:  
	unknown_0: 
identityĸStatefulPartitionedCallā
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙66 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_19034w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙77 : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 
 
_user_specified_nameinputs
§

ü
C__inference_conv2d_6_layer_call_and_return_conditional_losses_19034

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityĸBiasAdd/ReadVariableOpĸConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙77 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 
 
_user_specified_nameinputs
Ė
d
H__inference_activation_14_layer_call_and_return_conditional_losses_20276

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@Z
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙@:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
÷
b
D__inference_dropout_8_layer_call_and_return_conditional_losses_19084

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
§

ü
C__inference_conv2d_5_layer_call_and_return_conditional_losses_20057

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityĸBiasAdd/ReadVariableOpĸConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙oo@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙oo@
 
_user_specified_nameinputs
Ņ
d
H__inference_activation_16_layer_call_and_return_conditional_losses_19168

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

E
)__inference_dropout_9_layer_call_fn_20310

inputs
identity¯
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_19145`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_18940

inputs
identityĸ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Æ
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_19092

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙@*  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĀTY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĀT"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
÷
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_19022

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙77 :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 
 
_user_specified_nameinputs
Ĩ
I
-__inference_activation_16_layer_call_fn_20356

inputs
identityŗ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_16_layer_call_and_return_conditional_losses_19168`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_20077

inputs
identityĸ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˙
b
D__inference_dropout_5_layer_call_and_return_conditional_losses_20016

inputs

identity_1X
IdentityIdentityinputs*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@e

Identity_1IdentityIdentity:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙ßß@:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@
 
_user_specified_nameinputs
L
õ

G__inference_sequential_2_layer_call_and_return_conditional_losses_19873

inputsA
'conv2d_4_conv2d_readvariableop_resource:@6
(conv2d_4_biasadd_readvariableop_resource:@A
'conv2d_5_conv2d_readvariableop_resource:@ 6
(conv2d_5_biasadd_readvariableop_resource: A
'conv2d_6_conv2d_readvariableop_resource:  6
(conv2d_6_biasadd_readvariableop_resource: A
'conv2d_7_conv2d_readvariableop_resource: @6
(conv2d_7_biasadd_readvariableop_resource:@9
&dense_6_matmul_readvariableop_resource:	ĀT@5
'dense_6_biasadd_readvariableop_resource:@8
&dense_7_matmul_readvariableop_resource:@ 5
'dense_7_biasadd_readvariableop_resource: 8
&dense_8_matmul_readvariableop_resource: 5
'dense_8_biasadd_readvariableop_resource:
identityĸconv2d_4/BiasAdd/ReadVariableOpĸconv2d_4/Conv2D/ReadVariableOpĸconv2d_5/BiasAdd/ReadVariableOpĸconv2d_5/Conv2D/ReadVariableOpĸconv2d_6/BiasAdd/ReadVariableOpĸconv2d_6/Conv2D/ReadVariableOpĸconv2d_7/BiasAdd/ReadVariableOpĸconv2d_7/Conv2D/ReadVariableOpĸdense_6/BiasAdd/ReadVariableOpĸdense_6/MatMul/ReadVariableOpĸdense_7/BiasAdd/ReadVariableOpĸdense_7/MatMul/ReadVariableOpĸdense_8/BiasAdd/ReadVariableOpĸdense_8/MatMul/ReadVariableOp
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ž
conv2d_4/Conv2DConv2Dinputs&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@*
paddingVALID*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@q
activation_10/ReluReluconv2d_4/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@|
dropout_5/IdentityIdentity activation_10/Relu:activations:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@Ŧ
max_pooling2d_4/MaxPoolMaxPooldropout_5/Identity:output:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙oo@*
ksize
*
paddingVALID*
strides

conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Æ
conv2d_5/Conv2DConv2D max_pooling2d_4/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn *
paddingVALID*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn o
activation_11/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙nn ą
max_pooling2d_5/MaxPoolMaxPool activation_11/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 *
ksize
*
paddingVALID*
strides
z
dropout_6/IdentityIdentity max_pooling2d_5/MaxPool:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙77 
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Á
conv2d_6/Conv2DConv2Ddropout_6/Identity:output:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 *
paddingVALID*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 o
activation_12/ReluReluconv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 ą
max_pooling2d_6/MaxPoolMaxPool activation_12/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
ksize
*
paddingVALID*
strides
z
dropout_7/IdentityIdentity max_pooling2d_6/MaxPool:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Á
conv2d_7/Conv2DConv2Ddropout_7/Identity:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
paddingVALID*
strides

conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@o
activation_13/ReluReluconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@ą
max_pooling2d_7/MaxPoolMaxPool activation_13/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
ksize
*
paddingVALID*
strides
z
dropout_8/IdentityIdentity max_pooling2d_7/MaxPool:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙@*  
flatten_2/ReshapeReshapedropout_8/Identity:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĀT
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	ĀT@*
dtype0
dense_6/MatMulMatMulflatten_2/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@f
activation_14/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
dense_7/MatMulMatMul activation_14/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ f
activation_15/ReluReludense_7/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ r
dropout_9/IdentityIdentity activation_15/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_8/MatMulMatMuldropout_9/Identity:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙l
activation_16/SoftmaxSoftmaxdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙n
IdentityIdentityactivation_16/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:˙˙˙˙˙˙˙˙˙āā: : : : : : : : : : : : : : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙āā
 
_user_specified_nameinputs
ō	
c
D__inference_dropout_9_layer_call_and_return_conditional_losses_20332

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĖL>Ļ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs


,__inference_sequential_2_layer_call_fn_19202
conv2d_4_input!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:	ĀT@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11: 

unknown_12:
identityĸStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_19171o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:˙˙˙˙˙˙˙˙˙āā: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
1
_output_shapes
:˙˙˙˙˙˙˙˙˙āā
(
_user_specified_nameconv2d_4_input
×
b
D__inference_dropout_9_layer_call_and_return_conditional_losses_20320

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
į\
į
G__inference_sequential_2_layer_call_and_return_conditional_losses_19526

inputs(
conv2d_4_19473:@
conv2d_4_19475:@(
conv2d_5_19481:@ 
conv2d_5_19483: (
conv2d_6_19489:  
conv2d_6_19491: (
conv2d_7_19497: @
conv2d_7_19499:@ 
dense_6_19506:	ĀT@
dense_6_19508:@
dense_7_19512:@ 
dense_7_19514: 
dense_8_19519: 
dense_8_19521:
identityĸ conv2d_4/StatefulPartitionedCallĸ conv2d_5/StatefulPartitionedCallĸ conv2d_6/StatefulPartitionedCallĸ conv2d_7/StatefulPartitionedCallĸdense_6/StatefulPartitionedCallĸdense_7/StatefulPartitionedCallĸdense_8/StatefulPartitionedCallĸ!dropout_5/StatefulPartitionedCallĸ!dropout_6/StatefulPartitionedCallĸ!dropout_7/StatefulPartitionedCallĸ!dropout_8/StatefulPartitionedCallĸ!dropout_9/StatefulPartitionedCall÷
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_4_19473conv2d_4_19475*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_18972î
activation_10/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_10_layer_call_and_return_conditional_losses_18983ķ
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall&activation_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_19416ņ
max_pooling2d_4/PartitionedCallPartitionedCall*dropout_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙oo@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_18916
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_19481conv2d_5_19483*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙nn *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_19003ė
activation_11/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙nn * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_11_layer_call_and_return_conditional_losses_19014í
max_pooling2d_5/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙77 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_18928
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0"^dropout_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙77 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_19377
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0conv2d_6_19489conv2d_6_19491*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙66 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_19034ė
activation_12/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙66 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_12_layer_call_and_return_conditional_losses_19045í
max_pooling2d_6/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_18940
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_19338
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0conv2d_7_19497conv2d_7_19499*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_19065ė
activation_13/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_13_layer_call_and_return_conditional_losses_19076í
max_pooling2d_7/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_18952
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_19299Ū
flatten_2/PartitionedCallPartitionedCall*dropout_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĀT* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_19092
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_6_19506dense_6_19508*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_19104ã
activation_14/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_14_layer_call_and_return_conditional_losses_19115
dense_7/StatefulPartitionedCallStatefulPartitionedCall&activation_14/PartitionedCall:output:0dense_7_19512dense_7_19514*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_19127ã
activation_15/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_15_layer_call_and_return_conditional_losses_19138
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall&activation_15/PartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_19238
dense_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0dense_8_19519dense_8_19521*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_19157ã
activation_16/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_16_layer_call_and_return_conditional_losses_19168u
IdentityIdentity&activation_16/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ė
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:˙˙˙˙˙˙˙˙˙āā: : : : : : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙āā
 
_user_specified_nameinputs
Å
E
)__inference_dropout_5_layer_call_fn_20006

inputs
identityš
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_18990j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙ßß@:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@
 
_user_specified_nameinputs
Í
I
-__inference_activation_10_layer_call_fn_19996

inputs
identityŊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_10_layer_call_and_return_conditional_losses_18983j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙ßß@:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@
 
_user_specified_nameinputs
˛

c
D__inference_dropout_7_layer_call_and_return_conditional_losses_19338

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĖL>Ž
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙ :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
ô
d
H__inference_activation_10_layer_call_and_return_conditional_losses_18983

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙ßß@:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@
 
_user_specified_nameinputs
ą

ü
C__inference_conv2d_4_layer_call_and_return_conditional_losses_19991

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityĸBiasAdd/ReadVariableOpĸConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ßß@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙āā: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙āā
 
_user_specified_nameinputs
ė
d
H__inference_activation_12_layer_call_and_return_conditional_losses_20133

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙66 :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙66 
 
_user_specified_nameinputs
×
b
D__inference_dropout_9_layer_call_and_return_conditional_losses_19145

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs"ĩ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Č
serving_default´
S
conv2d_4_inputA
 serving_default_conv2d_4_input:0˙˙˙˙˙˙˙˙˙āāA
activation_160
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:
â
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-3
layer-12
layer-13
layer-14
layer-15
layer-16
layer_with_weights-4
layer-17
layer-18
layer_with_weights-5
layer-19
layer-20
layer-21
layer_with_weights-6
layer-22
layer-23
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
 	optimizer
!
signatures"
_tf_keras_sequential
Ũ
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
 *_jit_compiled_convolution_op"
_tf_keras_layer
Ĩ
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
ŧ
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses
7_random_generator"
_tf_keras_layer
Ĩ
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
Ũ
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias
 F_jit_compiled_convolution_op"
_tf_keras_layer
Ĩ
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
Ĩ
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
ŧ
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Y_random_generator"
_tf_keras_layer
Ũ
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

`kernel
abias
 b_jit_compiled_convolution_op"
_tf_keras_layer
Ĩ
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
Ĩ
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
ŧ
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses
u_random_generator"
_tf_keras_layer
Ũ
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses

|kernel
}bias
 ~_jit_compiled_convolution_op"
_tf_keras_layer
Ē
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ģ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
Ģ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias"
_tf_keras_layer
Ģ
 	variables
Ątrainable_variables
ĸregularization_losses
Ŗ	keras_api
¤__call__
+Ĩ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
Ļ	variables
§trainable_variables
¨regularization_losses
Š	keras_api
Ē__call__
+Ģ&call_and_return_all_conditional_losses
Ŧkernel
	­bias"
_tf_keras_layer
Ģ
Ž	variables
¯trainable_variables
°regularization_losses
ą	keras_api
˛__call__
+ŗ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
´	variables
ĩtrainable_variables
ļregularization_losses
ˇ	keras_api
¸__call__
+š&call_and_return_all_conditional_losses
ē_random_generator"
_tf_keras_layer
Ã
ģ	variables
ŧtrainable_variables
Ŋregularization_losses
ž	keras_api
ŋ__call__
+Ā&call_and_return_all_conditional_losses
Ákernel
	Âbias"
_tf_keras_layer
Ģ
Ã	variables
Ätrainable_variables
Åregularization_losses
Æ	keras_api
Į__call__
+Č&call_and_return_all_conditional_losses"
_tf_keras_layer

(0
)1
D2
E3
`4
a5
|6
}7
8
9
Ŧ10
­11
Á12
Â13"
trackable_list_wrapper

(0
)1
D2
E3
`4
a5
|6
}7
8
9
Ŧ10
­11
Á12
Â13"
trackable_list_wrapper
 "
trackable_list_wrapper
Ī
Énon_trainable_variables
Ęlayers
Ëmetrics
 Ėlayer_regularization_losses
Ílayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
í
Îtrace_0
Ītrace_1
Đtrace_2
Ņtrace_32ú
,__inference_sequential_2_layer_call_fn_19202
,__inference_sequential_2_layer_call_fn_19776
,__inference_sequential_2_layer_call_fn_19809
,__inference_sequential_2_layer_call_fn_19590ŋ
ļ˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zÎtrace_0zĪtrace_1zĐtrace_2zŅtrace_3
Ų
Ōtrace_0
Ķtrace_1
Ôtrace_2
Õtrace_32æ
G__inference_sequential_2_layer_call_and_return_conditional_losses_19873
G__inference_sequential_2_layer_call_and_return_conditional_losses_19972
G__inference_sequential_2_layer_call_and_return_conditional_losses_19646
G__inference_sequential_2_layer_call_and_return_conditional_losses_19702ŋ
ļ˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zŌtrace_0zĶtrace_1zÔtrace_2zÕtrace_3
ŌBĪ
 __inference__wrapped_model_18907conv2d_4_input"
˛
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
ü
	Öiter
×beta_1
Øbeta_2

Ųdecay
Úlearning_rate(m)mDmEm`mam|m}m 	mĄ	mĸ	ŦmŖ	­m¤	ÁmĨ	ÂmĻ(v§)v¨DvŠEvĒ`vĢavŦ|v­}vŽ	v¯	v°	Ŧvą	­v˛	Ávŗ	Âv´"
	optimizer
-
Ûserving_default"
signature_map
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Ünon_trainable_variables
Ũlayers
Ūmetrics
 ßlayer_regularization_losses
ālayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
î
átrace_02Ī
(__inference_conv2d_4_layer_call_fn_19981ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zátrace_0

âtrace_02ę
C__inference_conv2d_4_layer_call_and_return_conditional_losses_19991ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zâtrace_0
):'@2conv2d_4/kernel
:@2conv2d_4/bias
´2ąŽ
Ŗ˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
ãnon_trainable_variables
älayers
åmetrics
 ælayer_regularization_losses
įlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
ķ
čtrace_02Ô
-__inference_activation_10_layer_call_fn_19996ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zčtrace_0

étrace_02ī
H__inference_activation_10_layer_call_and_return_conditional_losses_20001ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zétrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
ęnon_trainable_variables
ëlayers
ėmetrics
 ílayer_regularization_losses
îlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
Į
ītrace_0
đtrace_12
)__inference_dropout_5_layer_call_fn_20006
)__inference_dropout_5_layer_call_fn_20011ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zītrace_0zđtrace_1
ũ
ņtrace_0
ōtrace_12Â
D__inference_dropout_5_layer_call_and_return_conditional_losses_20016
D__inference_dropout_5_layer_call_and_return_conditional_losses_20028ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zņtrace_0zōtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
ķnon_trainable_variables
ôlayers
õmetrics
 ölayer_regularization_losses
÷layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
õ
øtrace_02Ö
/__inference_max_pooling2d_4_layer_call_fn_20033ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zøtrace_0

ųtrace_02ņ
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_20038ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zųtrace_0
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
únon_trainable_variables
ûlayers
ümetrics
 ũlayer_regularization_losses
ūlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
î
˙trace_02Ī
(__inference_conv2d_5_layer_call_fn_20047ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 z˙trace_0

trace_02ę
C__inference_conv2d_5_layer_call_and_return_conditional_losses_20057ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 ztrace_0
):'@ 2conv2d_5/kernel
: 2conv2d_5/bias
´2ąŽ
Ŗ˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
ķ
trace_02Ô
-__inference_activation_11_layer_call_fn_20062ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 ztrace_0

trace_02ī
H__inference_activation_11_layer_call_and_return_conditional_losses_20067ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
õ
trace_02Ö
/__inference_max_pooling2d_5_layer_call_fn_20072ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 ztrace_0

trace_02ņ
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_20077ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
Į
trace_0
trace_12
)__inference_dropout_6_layer_call_fn_20082
)__inference_dropout_6_layer_call_fn_20087ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 ztrace_0ztrace_1
ũ
trace_0
trace_12Â
D__inference_dropout_6_layer_call_and_return_conditional_losses_20092
D__inference_dropout_6_layer_call_and_return_conditional_losses_20104ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 ztrace_0ztrace_1
"
_generic_user_object
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
î
trace_02Ī
(__inference_conv2d_6_layer_call_fn_20113ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 ztrace_0

trace_02ę
C__inference_conv2d_6_layer_call_and_return_conditional_losses_20123ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 ztrace_0
):'  2conv2d_6/kernel
: 2conv2d_6/bias
´2ąŽ
Ŗ˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
 layers
Ąmetrics
 ĸlayer_regularization_losses
Ŗlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
ķ
¤trace_02Ô
-__inference_activation_12_layer_call_fn_20128ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 z¤trace_0

Ĩtrace_02ī
H__inference_activation_12_layer_call_and_return_conditional_losses_20133ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zĨtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Ļnon_trainable_variables
§layers
¨metrics
 Šlayer_regularization_losses
Ēlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
õ
Ģtrace_02Ö
/__inference_max_pooling2d_6_layer_call_fn_20138ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zĢtrace_0

Ŧtrace_02ņ
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_20143ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zŦtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
­non_trainable_variables
Žlayers
¯metrics
 °layer_regularization_losses
ąlayer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
Į
˛trace_0
ŗtrace_12
)__inference_dropout_7_layer_call_fn_20148
)__inference_dropout_7_layer_call_fn_20153ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 z˛trace_0zŗtrace_1
ũ
´trace_0
ĩtrace_12Â
D__inference_dropout_7_layer_call_and_return_conditional_losses_20158
D__inference_dropout_7_layer_call_and_return_conditional_losses_20170ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 z´trace_0zĩtrace_1
"
_generic_user_object
.
|0
}1"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
ļnon_trainable_variables
ˇlayers
¸metrics
 šlayer_regularization_losses
ēlayer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
î
ģtrace_02Ī
(__inference_conv2d_7_layer_call_fn_20179ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zģtrace_0

ŧtrace_02ę
C__inference_conv2d_7_layer_call_and_return_conditional_losses_20189ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zŧtrace_0
):' @2conv2d_7/kernel
:@2conv2d_7/bias
´2ąŽ
Ŗ˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ˇ
Ŋnon_trainable_variables
žlayers
ŋmetrics
 Ālayer_regularization_losses
Álayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ķ
Âtrace_02Ô
-__inference_activation_13_layer_call_fn_20194ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zÂtrace_0

Ãtrace_02ī
H__inference_activation_13_layer_call_and_return_conditional_losses_20199ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zÃtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Änon_trainable_variables
Ålayers
Æmetrics
 Įlayer_regularization_losses
Člayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
õ
Étrace_02Ö
/__inference_max_pooling2d_7_layer_call_fn_20204ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zÉtrace_0

Ętrace_02ņ
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_20209ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zĘtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ënon_trainable_variables
Ėlayers
Ímetrics
 Îlayer_regularization_losses
Īlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Į
Đtrace_0
Ņtrace_12
)__inference_dropout_8_layer_call_fn_20214
)__inference_dropout_8_layer_call_fn_20219ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zĐtrace_0zŅtrace_1
ũ
Ōtrace_0
Ķtrace_12Â
D__inference_dropout_8_layer_call_and_return_conditional_losses_20224
D__inference_dropout_8_layer_call_and_return_conditional_losses_20236ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zŌtrace_0zĶtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ônon_trainable_variables
Õlayers
Ömetrics
 ×layer_regularization_losses
Ølayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ī
Ųtrace_02Đ
)__inference_flatten_2_layer_call_fn_20241ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zŲtrace_0

Útrace_02ë
D__inference_flatten_2_layer_call_and_return_conditional_losses_20247ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zÚtrace_0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ûnon_trainable_variables
Ülayers
Ũmetrics
 Ūlayer_regularization_losses
ßlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
í
ātrace_02Î
'__inference_dense_6_layer_call_fn_20256ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zātrace_0

átrace_02é
B__inference_dense_6_layer_call_and_return_conditional_losses_20266ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zátrace_0
!:	ĀT@2dense_6/kernel
:@2dense_6/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ânon_trainable_variables
ãlayers
ämetrics
 ålayer_regularization_losses
ælayer_metrics
 	variables
Ątrainable_variables
ĸregularization_losses
¤__call__
+Ĩ&call_and_return_all_conditional_losses
'Ĩ"call_and_return_conditional_losses"
_generic_user_object
ķ
įtrace_02Ô
-__inference_activation_14_layer_call_fn_20271ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zįtrace_0

čtrace_02ī
H__inference_activation_14_layer_call_and_return_conditional_losses_20276ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zčtrace_0
0
Ŧ0
­1"
trackable_list_wrapper
0
Ŧ0
­1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
énon_trainable_variables
ęlayers
ëmetrics
 ėlayer_regularization_losses
ílayer_metrics
Ļ	variables
§trainable_variables
¨regularization_losses
Ē__call__
+Ģ&call_and_return_all_conditional_losses
'Ģ"call_and_return_conditional_losses"
_generic_user_object
í
îtrace_02Î
'__inference_dense_7_layer_call_fn_20285ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zîtrace_0

ītrace_02é
B__inference_dense_7_layer_call_and_return_conditional_losses_20295ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zītrace_0
 :@ 2dense_7/kernel
: 2dense_7/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
đnon_trainable_variables
ņlayers
ōmetrics
 ķlayer_regularization_losses
ôlayer_metrics
Ž	variables
¯trainable_variables
°regularization_losses
˛__call__
+ŗ&call_and_return_all_conditional_losses
'ŗ"call_and_return_conditional_losses"
_generic_user_object
ķ
õtrace_02Ô
-__inference_activation_15_layer_call_fn_20300ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zõtrace_0

ötrace_02ī
H__inference_activation_15_layer_call_and_return_conditional_losses_20305ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zötrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
÷non_trainable_variables
ølayers
ųmetrics
 úlayer_regularization_losses
ûlayer_metrics
´	variables
ĩtrainable_variables
ļregularization_losses
¸__call__
+š&call_and_return_all_conditional_losses
'š"call_and_return_conditional_losses"
_generic_user_object
Į
ütrace_0
ũtrace_12
)__inference_dropout_9_layer_call_fn_20310
)__inference_dropout_9_layer_call_fn_20315ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zütrace_0zũtrace_1
ũ
ūtrace_0
˙trace_12Â
D__inference_dropout_9_layer_call_and_return_conditional_losses_20320
D__inference_dropout_9_layer_call_and_return_conditional_losses_20332ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 zūtrace_0z˙trace_1
"
_generic_user_object
0
Á0
Â1"
trackable_list_wrapper
0
Á0
Â1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ģ	variables
ŧtrainable_variables
Ŋregularization_losses
ŋ__call__
+Ā&call_and_return_all_conditional_losses
'Ā"call_and_return_conditional_losses"
_generic_user_object
í
trace_02Î
'__inference_dense_8_layer_call_fn_20341ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 ztrace_0

trace_02é
B__inference_dense_8_layer_call_and_return_conditional_losses_20351ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 ztrace_0
 : 2dense_8/kernel
:2dense_8/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ã	variables
Ätrainable_variables
Åregularization_losses
Į__call__
+Č&call_and_return_all_conditional_losses
'Č"call_and_return_conditional_losses"
_generic_user_object
ķ
trace_02Ô
-__inference_activation_16_layer_call_fn_20356ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 ztrace_0

trace_02ī
H__inference_activation_16_layer_call_and_return_conditional_losses_20361ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 ztrace_0
 "
trackable_list_wrapper
Ö
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_2_layer_call_fn_19202conv2d_4_input"ŋ
ļ˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
ũBú
,__inference_sequential_2_layer_call_fn_19776inputs"ŋ
ļ˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
ũBú
,__inference_sequential_2_layer_call_fn_19809inputs"ŋ
ļ˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
B
,__inference_sequential_2_layer_call_fn_19590conv2d_4_input"ŋ
ļ˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
B
G__inference_sequential_2_layer_call_and_return_conditional_losses_19873inputs"ŋ
ļ˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
B
G__inference_sequential_2_layer_call_and_return_conditional_losses_19972inputs"ŋ
ļ˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 B
G__inference_sequential_2_layer_call_and_return_conditional_losses_19646conv2d_4_input"ŋ
ļ˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 B
G__inference_sequential_2_layer_call_and_return_conditional_losses_19702conv2d_4_input"ŋ
ļ˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ŅBÎ
#__inference_signature_wrapper_19743conv2d_4_input"
˛
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÜBŲ
(__inference_conv2d_4_layer_call_fn_19981inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
÷Bô
C__inference_conv2d_4_layer_call_and_return_conditional_losses_19991inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŪ
-__inference_activation_10_layer_call_fn_19996inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
üBų
H__inference_activation_10_layer_call_and_return_conditional_losses_20001inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
îBë
)__inference_dropout_5_layer_call_fn_20006inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
îBë
)__inference_dropout_5_layer_call_fn_20011inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
B
D__inference_dropout_5_layer_call_and_return_conditional_losses_20016inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
B
D__inference_dropout_5_layer_call_and_return_conditional_losses_20028inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ãBā
/__inference_max_pooling2d_4_layer_call_fn_20033inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
ūBû
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_20038inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÜBŲ
(__inference_conv2d_5_layer_call_fn_20047inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
÷Bô
C__inference_conv2d_5_layer_call_and_return_conditional_losses_20057inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŪ
-__inference_activation_11_layer_call_fn_20062inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
üBų
H__inference_activation_11_layer_call_and_return_conditional_losses_20067inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ãBā
/__inference_max_pooling2d_5_layer_call_fn_20072inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
ūBû
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_20077inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
îBë
)__inference_dropout_6_layer_call_fn_20082inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
îBë
)__inference_dropout_6_layer_call_fn_20087inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
B
D__inference_dropout_6_layer_call_and_return_conditional_losses_20092inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
B
D__inference_dropout_6_layer_call_and_return_conditional_losses_20104inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÜBŲ
(__inference_conv2d_6_layer_call_fn_20113inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
÷Bô
C__inference_conv2d_6_layer_call_and_return_conditional_losses_20123inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŪ
-__inference_activation_12_layer_call_fn_20128inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
üBų
H__inference_activation_12_layer_call_and_return_conditional_losses_20133inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ãBā
/__inference_max_pooling2d_6_layer_call_fn_20138inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
ūBû
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_20143inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
îBë
)__inference_dropout_7_layer_call_fn_20148inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
îBë
)__inference_dropout_7_layer_call_fn_20153inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
B
D__inference_dropout_7_layer_call_and_return_conditional_losses_20158inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
B
D__inference_dropout_7_layer_call_and_return_conditional_losses_20170inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÜBŲ
(__inference_conv2d_7_layer_call_fn_20179inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
÷Bô
C__inference_conv2d_7_layer_call_and_return_conditional_losses_20189inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŪ
-__inference_activation_13_layer_call_fn_20194inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
üBų
H__inference_activation_13_layer_call_and_return_conditional_losses_20199inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ãBā
/__inference_max_pooling2d_7_layer_call_fn_20204inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
ūBû
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_20209inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
îBë
)__inference_dropout_8_layer_call_fn_20214inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
îBë
)__inference_dropout_8_layer_call_fn_20219inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
B
D__inference_dropout_8_layer_call_and_return_conditional_losses_20224inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
B
D__inference_dropout_8_layer_call_and_return_conditional_losses_20236inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŨBÚ
)__inference_flatten_2_layer_call_fn_20241inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
øBõ
D__inference_flatten_2_layer_call_and_return_conditional_losses_20247inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÛBØ
'__inference_dense_6_layer_call_fn_20256inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
öBķ
B__inference_dense_6_layer_call_and_return_conditional_losses_20266inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŪ
-__inference_activation_14_layer_call_fn_20271inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
üBų
H__inference_activation_14_layer_call_and_return_conditional_losses_20276inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÛBØ
'__inference_dense_7_layer_call_fn_20285inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
öBķ
B__inference_dense_7_layer_call_and_return_conditional_losses_20295inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŪ
-__inference_activation_15_layer_call_fn_20300inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
üBų
H__inference_activation_15_layer_call_and_return_conditional_losses_20305inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
îBë
)__inference_dropout_9_layer_call_fn_20310inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
îBë
)__inference_dropout_9_layer_call_fn_20315inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
B
D__inference_dropout_9_layer_call_and_return_conditional_losses_20320inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
B
D__inference_dropout_9_layer_call_and_return_conditional_losses_20332inputs"ŗ
Ē˛Ļ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÛBØ
'__inference_dense_8_layer_call_fn_20341inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
öBķ
B__inference_dense_8_layer_call_and_return_conditional_losses_20351inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŪ
-__inference_activation_16_layer_call_fn_20356inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
üBų
H__inference_activation_16_layer_call_and_return_conditional_losses_20361inputs"ĸ
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsĒ *
 
R
	variables
	keras_api

total

count"
_tf_keras_metric
c
	variables
	keras_api

total

count

_fn_kwargs"
_tf_keras_metric
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.:,@2Adam/conv2d_4/kernel/m
 :@2Adam/conv2d_4/bias/m
.:,@ 2Adam/conv2d_5/kernel/m
 : 2Adam/conv2d_5/bias/m
.:,  2Adam/conv2d_6/kernel/m
 : 2Adam/conv2d_6/bias/m
.:, @2Adam/conv2d_7/kernel/m
 :@2Adam/conv2d_7/bias/m
&:$	ĀT@2Adam/dense_6/kernel/m
:@2Adam/dense_6/bias/m
%:#@ 2Adam/dense_7/kernel/m
: 2Adam/dense_7/bias/m
%:# 2Adam/dense_8/kernel/m
:2Adam/dense_8/bias/m
.:,@2Adam/conv2d_4/kernel/v
 :@2Adam/conv2d_4/bias/v
.:,@ 2Adam/conv2d_5/kernel/v
 : 2Adam/conv2d_5/bias/v
.:,  2Adam/conv2d_6/kernel/v
 : 2Adam/conv2d_6/bias/v
.:, @2Adam/conv2d_7/kernel/v
 :@2Adam/conv2d_7/bias/v
&:$	ĀT@2Adam/dense_6/kernel/v
:@2Adam/dense_6/bias/v
%:#@ 2Adam/dense_7/kernel/v
: 2Adam/dense_7/bias/v
%:# 2Adam/dense_8/kernel/v
:2Adam/dense_8/bias/vŊ
 __inference__wrapped_model_18907()DE`a|}Ŧ­ÁÂAĸ>
7ĸ4
2/
conv2d_4_input˙˙˙˙˙˙˙˙˙āā
Ē "=Ē:
8
activation_16'$
activation_16˙˙˙˙˙˙˙˙˙¸
H__inference_activation_10_layer_call_and_return_conditional_losses_20001l9ĸ6
/ĸ,
*'
inputs˙˙˙˙˙˙˙˙˙ßß@
Ē "/ĸ,
%"
0˙˙˙˙˙˙˙˙˙ßß@
 
-__inference_activation_10_layer_call_fn_19996_9ĸ6
/ĸ,
*'
inputs˙˙˙˙˙˙˙˙˙ßß@
Ē ""˙˙˙˙˙˙˙˙˙ßß@´
H__inference_activation_11_layer_call_and_return_conditional_losses_20067h7ĸ4
-ĸ*
(%
inputs˙˙˙˙˙˙˙˙˙nn 
Ē "-ĸ*
# 
0˙˙˙˙˙˙˙˙˙nn 
 
-__inference_activation_11_layer_call_fn_20062[7ĸ4
-ĸ*
(%
inputs˙˙˙˙˙˙˙˙˙nn 
Ē " ˙˙˙˙˙˙˙˙˙nn ´
H__inference_activation_12_layer_call_and_return_conditional_losses_20133h7ĸ4
-ĸ*
(%
inputs˙˙˙˙˙˙˙˙˙66 
Ē "-ĸ*
# 
0˙˙˙˙˙˙˙˙˙66 
 
-__inference_activation_12_layer_call_fn_20128[7ĸ4
-ĸ*
(%
inputs˙˙˙˙˙˙˙˙˙66 
Ē " ˙˙˙˙˙˙˙˙˙66 ´
H__inference_activation_13_layer_call_and_return_conditional_losses_20199h7ĸ4
-ĸ*
(%
inputs˙˙˙˙˙˙˙˙˙@
Ē "-ĸ*
# 
0˙˙˙˙˙˙˙˙˙@
 
-__inference_activation_13_layer_call_fn_20194[7ĸ4
-ĸ*
(%
inputs˙˙˙˙˙˙˙˙˙@
Ē " ˙˙˙˙˙˙˙˙˙@¤
H__inference_activation_14_layer_call_and_return_conditional_losses_20276X/ĸ,
%ĸ"
 
inputs˙˙˙˙˙˙˙˙˙@
Ē "%ĸ"

0˙˙˙˙˙˙˙˙˙@
 |
-__inference_activation_14_layer_call_fn_20271K/ĸ,
%ĸ"
 
inputs˙˙˙˙˙˙˙˙˙@
Ē "˙˙˙˙˙˙˙˙˙@¤
H__inference_activation_15_layer_call_and_return_conditional_losses_20305X/ĸ,
%ĸ"
 
inputs˙˙˙˙˙˙˙˙˙ 
Ē "%ĸ"

0˙˙˙˙˙˙˙˙˙ 
 |
-__inference_activation_15_layer_call_fn_20300K/ĸ,
%ĸ"
 
inputs˙˙˙˙˙˙˙˙˙ 
Ē "˙˙˙˙˙˙˙˙˙ ¤
H__inference_activation_16_layer_call_and_return_conditional_losses_20361X/ĸ,
%ĸ"
 
inputs˙˙˙˙˙˙˙˙˙
Ē "%ĸ"

0˙˙˙˙˙˙˙˙˙
 |
-__inference_activation_16_layer_call_fn_20356K/ĸ,
%ĸ"
 
inputs˙˙˙˙˙˙˙˙˙
Ē "˙˙˙˙˙˙˙˙˙ˇ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_19991p()9ĸ6
/ĸ,
*'
inputs˙˙˙˙˙˙˙˙˙āā
Ē "/ĸ,
%"
0˙˙˙˙˙˙˙˙˙ßß@
 
(__inference_conv2d_4_layer_call_fn_19981c()9ĸ6
/ĸ,
*'
inputs˙˙˙˙˙˙˙˙˙āā
Ē ""˙˙˙˙˙˙˙˙˙ßß@ŗ
C__inference_conv2d_5_layer_call_and_return_conditional_losses_20057lDE7ĸ4
-ĸ*
(%
inputs˙˙˙˙˙˙˙˙˙oo@
Ē "-ĸ*
# 
0˙˙˙˙˙˙˙˙˙nn 
 
(__inference_conv2d_5_layer_call_fn_20047_DE7ĸ4
-ĸ*
(%
inputs˙˙˙˙˙˙˙˙˙oo@
Ē " ˙˙˙˙˙˙˙˙˙nn ŗ
C__inference_conv2d_6_layer_call_and_return_conditional_losses_20123l`a7ĸ4
-ĸ*
(%
inputs˙˙˙˙˙˙˙˙˙77 
Ē "-ĸ*
# 
0˙˙˙˙˙˙˙˙˙66 
 
(__inference_conv2d_6_layer_call_fn_20113_`a7ĸ4
-ĸ*
(%
inputs˙˙˙˙˙˙˙˙˙77 
Ē " ˙˙˙˙˙˙˙˙˙66 ŗ
C__inference_conv2d_7_layer_call_and_return_conditional_losses_20189l|}7ĸ4
-ĸ*
(%
inputs˙˙˙˙˙˙˙˙˙ 
Ē "-ĸ*
# 
0˙˙˙˙˙˙˙˙˙@
 
(__inference_conv2d_7_layer_call_fn_20179_|}7ĸ4
-ĸ*
(%
inputs˙˙˙˙˙˙˙˙˙ 
Ē " ˙˙˙˙˙˙˙˙˙@Ĩ
B__inference_dense_6_layer_call_and_return_conditional_losses_20266_0ĸ-
&ĸ#
!
inputs˙˙˙˙˙˙˙˙˙ĀT
Ē "%ĸ"

0˙˙˙˙˙˙˙˙˙@
 }
'__inference_dense_6_layer_call_fn_20256R0ĸ-
&ĸ#
!
inputs˙˙˙˙˙˙˙˙˙ĀT
Ē "˙˙˙˙˙˙˙˙˙@¤
B__inference_dense_7_layer_call_and_return_conditional_losses_20295^Ŧ­/ĸ,
%ĸ"
 
inputs˙˙˙˙˙˙˙˙˙@
Ē "%ĸ"

0˙˙˙˙˙˙˙˙˙ 
 |
'__inference_dense_7_layer_call_fn_20285QŦ­/ĸ,
%ĸ"
 
inputs˙˙˙˙˙˙˙˙˙@
Ē "˙˙˙˙˙˙˙˙˙ ¤
B__inference_dense_8_layer_call_and_return_conditional_losses_20351^ÁÂ/ĸ,
%ĸ"
 
inputs˙˙˙˙˙˙˙˙˙ 
Ē "%ĸ"

0˙˙˙˙˙˙˙˙˙
 |
'__inference_dense_8_layer_call_fn_20341QÁÂ/ĸ,
%ĸ"
 
inputs˙˙˙˙˙˙˙˙˙ 
Ē "˙˙˙˙˙˙˙˙˙¸
D__inference_dropout_5_layer_call_and_return_conditional_losses_20016p=ĸ:
3ĸ0
*'
inputs˙˙˙˙˙˙˙˙˙ßß@
p 
Ē "/ĸ,
%"
0˙˙˙˙˙˙˙˙˙ßß@
 ¸
D__inference_dropout_5_layer_call_and_return_conditional_losses_20028p=ĸ:
3ĸ0
*'
inputs˙˙˙˙˙˙˙˙˙ßß@
p
Ē "/ĸ,
%"
0˙˙˙˙˙˙˙˙˙ßß@
 
)__inference_dropout_5_layer_call_fn_20006c=ĸ:
3ĸ0
*'
inputs˙˙˙˙˙˙˙˙˙ßß@
p 
Ē ""˙˙˙˙˙˙˙˙˙ßß@
)__inference_dropout_5_layer_call_fn_20011c=ĸ:
3ĸ0
*'
inputs˙˙˙˙˙˙˙˙˙ßß@
p
Ē ""˙˙˙˙˙˙˙˙˙ßß@´
D__inference_dropout_6_layer_call_and_return_conditional_losses_20092l;ĸ8
1ĸ.
(%
inputs˙˙˙˙˙˙˙˙˙77 
p 
Ē "-ĸ*
# 
0˙˙˙˙˙˙˙˙˙77 
 ´
D__inference_dropout_6_layer_call_and_return_conditional_losses_20104l;ĸ8
1ĸ.
(%
inputs˙˙˙˙˙˙˙˙˙77 
p
Ē "-ĸ*
# 
0˙˙˙˙˙˙˙˙˙77 
 
)__inference_dropout_6_layer_call_fn_20082_;ĸ8
1ĸ.
(%
inputs˙˙˙˙˙˙˙˙˙77 
p 
Ē " ˙˙˙˙˙˙˙˙˙77 
)__inference_dropout_6_layer_call_fn_20087_;ĸ8
1ĸ.
(%
inputs˙˙˙˙˙˙˙˙˙77 
p
Ē " ˙˙˙˙˙˙˙˙˙77 ´
D__inference_dropout_7_layer_call_and_return_conditional_losses_20158l;ĸ8
1ĸ.
(%
inputs˙˙˙˙˙˙˙˙˙ 
p 
Ē "-ĸ*
# 
0˙˙˙˙˙˙˙˙˙ 
 ´
D__inference_dropout_7_layer_call_and_return_conditional_losses_20170l;ĸ8
1ĸ.
(%
inputs˙˙˙˙˙˙˙˙˙ 
p
Ē "-ĸ*
# 
0˙˙˙˙˙˙˙˙˙ 
 
)__inference_dropout_7_layer_call_fn_20148_;ĸ8
1ĸ.
(%
inputs˙˙˙˙˙˙˙˙˙ 
p 
Ē " ˙˙˙˙˙˙˙˙˙ 
)__inference_dropout_7_layer_call_fn_20153_;ĸ8
1ĸ.
(%
inputs˙˙˙˙˙˙˙˙˙ 
p
Ē " ˙˙˙˙˙˙˙˙˙ ´
D__inference_dropout_8_layer_call_and_return_conditional_losses_20224l;ĸ8
1ĸ.
(%
inputs˙˙˙˙˙˙˙˙˙@
p 
Ē "-ĸ*
# 
0˙˙˙˙˙˙˙˙˙@
 ´
D__inference_dropout_8_layer_call_and_return_conditional_losses_20236l;ĸ8
1ĸ.
(%
inputs˙˙˙˙˙˙˙˙˙@
p
Ē "-ĸ*
# 
0˙˙˙˙˙˙˙˙˙@
 
)__inference_dropout_8_layer_call_fn_20214_;ĸ8
1ĸ.
(%
inputs˙˙˙˙˙˙˙˙˙@
p 
Ē " ˙˙˙˙˙˙˙˙˙@
)__inference_dropout_8_layer_call_fn_20219_;ĸ8
1ĸ.
(%
inputs˙˙˙˙˙˙˙˙˙@
p
Ē " ˙˙˙˙˙˙˙˙˙@¤
D__inference_dropout_9_layer_call_and_return_conditional_losses_20320\3ĸ0
)ĸ&
 
inputs˙˙˙˙˙˙˙˙˙ 
p 
Ē "%ĸ"

0˙˙˙˙˙˙˙˙˙ 
 ¤
D__inference_dropout_9_layer_call_and_return_conditional_losses_20332\3ĸ0
)ĸ&
 
inputs˙˙˙˙˙˙˙˙˙ 
p
Ē "%ĸ"

0˙˙˙˙˙˙˙˙˙ 
 |
)__inference_dropout_9_layer_call_fn_20310O3ĸ0
)ĸ&
 
inputs˙˙˙˙˙˙˙˙˙ 
p 
Ē "˙˙˙˙˙˙˙˙˙ |
)__inference_dropout_9_layer_call_fn_20315O3ĸ0
)ĸ&
 
inputs˙˙˙˙˙˙˙˙˙ 
p
Ē "˙˙˙˙˙˙˙˙˙ Š
D__inference_flatten_2_layer_call_and_return_conditional_losses_20247a7ĸ4
-ĸ*
(%
inputs˙˙˙˙˙˙˙˙˙@
Ē "&ĸ#

0˙˙˙˙˙˙˙˙˙ĀT
 
)__inference_flatten_2_layer_call_fn_20241T7ĸ4
-ĸ*
(%
inputs˙˙˙˙˙˙˙˙˙@
Ē "˙˙˙˙˙˙˙˙˙ĀTí
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_20038RĸO
HĸE
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ē "HĸE
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Å
/__inference_max_pooling2d_4_layer_call_fn_20033RĸO
HĸE
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ē ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙í
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_20077RĸO
HĸE
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ē "HĸE
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Å
/__inference_max_pooling2d_5_layer_call_fn_20072RĸO
HĸE
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ē ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙í
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_20143RĸO
HĸE
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ē "HĸE
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Å
/__inference_max_pooling2d_6_layer_call_fn_20138RĸO
HĸE
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ē ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙í
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_20209RĸO
HĸE
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ē "HĸE
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Å
/__inference_max_pooling2d_7_layer_call_fn_20204RĸO
HĸE
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ē ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ô
G__inference_sequential_2_layer_call_and_return_conditional_losses_19646()DE`a|}Ŧ­ÁÂIĸF
?ĸ<
2/
conv2d_4_input˙˙˙˙˙˙˙˙˙āā
p 

 
Ē "%ĸ"

0˙˙˙˙˙˙˙˙˙
 Ô
G__inference_sequential_2_layer_call_and_return_conditional_losses_19702()DE`a|}Ŧ­ÁÂIĸF
?ĸ<
2/
conv2d_4_input˙˙˙˙˙˙˙˙˙āā
p

 
Ē "%ĸ"

0˙˙˙˙˙˙˙˙˙
 Ė
G__inference_sequential_2_layer_call_and_return_conditional_losses_19873()DE`a|}Ŧ­ÁÂAĸ>
7ĸ4
*'
inputs˙˙˙˙˙˙˙˙˙āā
p 

 
Ē "%ĸ"

0˙˙˙˙˙˙˙˙˙
 Ė
G__inference_sequential_2_layer_call_and_return_conditional_losses_19972()DE`a|}Ŧ­ÁÂAĸ>
7ĸ4
*'
inputs˙˙˙˙˙˙˙˙˙āā
p

 
Ē "%ĸ"

0˙˙˙˙˙˙˙˙˙
 Ģ
,__inference_sequential_2_layer_call_fn_19202{()DE`a|}Ŧ­ÁÂIĸF
?ĸ<
2/
conv2d_4_input˙˙˙˙˙˙˙˙˙āā
p 

 
Ē "˙˙˙˙˙˙˙˙˙Ģ
,__inference_sequential_2_layer_call_fn_19590{()DE`a|}Ŧ­ÁÂIĸF
?ĸ<
2/
conv2d_4_input˙˙˙˙˙˙˙˙˙āā
p

 
Ē "˙˙˙˙˙˙˙˙˙Ŗ
,__inference_sequential_2_layer_call_fn_19776s()DE`a|}Ŧ­ÁÂAĸ>
7ĸ4
*'
inputs˙˙˙˙˙˙˙˙˙āā
p 

 
Ē "˙˙˙˙˙˙˙˙˙Ŗ
,__inference_sequential_2_layer_call_fn_19809s()DE`a|}Ŧ­ÁÂAĸ>
7ĸ4
*'
inputs˙˙˙˙˙˙˙˙˙āā
p

 
Ē "˙˙˙˙˙˙˙˙˙Ō
#__inference_signature_wrapper_19743Ē()DE`a|}Ŧ­ÁÂSĸP
ĸ 
IĒF
D
conv2d_4_input2/
conv2d_4_input˙˙˙˙˙˙˙˙˙āā"=Ē:
8
activation_16'$
activation_16˙˙˙˙˙˙˙˙˙