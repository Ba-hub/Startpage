.class Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VGroup"
.end annotation


# instance fields
.field private mChangingConfigurations:I

.field final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupName:Ljava/lang/String;

.field private final mLocalMatrix:Landroid/graphics/Matrix;

.field private mPivotX:F

.field private mPivotY:F

.field private mRotate:F

.field private mScaleX:F

.field private mScaleY:F

.field private final mStackedMatrix:Landroid/graphics/Matrix;

.field private mThemeAttrs:[I

.field private mTranslateX:F

.field private mTranslateY:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 1194
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1133
    move-object v1, v0

    new-instance v2, Landroid/graphics/Matrix;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    .line 1137
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1139
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1140
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1141
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1142
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1143
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1144
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1145
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1149
    move-object v1, v0

    new-instance v2, Landroid/graphics/Matrix;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 1152
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    .line 1195
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/v4/util/ArrayMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1154
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 1133
    move-object v7, v0

    new-instance v8, Landroid/graphics/Matrix;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    .line 1137
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1139
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1140
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1141
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1142
    move-object v7, v0

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1143
    move-object v7, v0

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1144
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1145
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1149
    move-object v7, v0

    new-instance v8, Landroid/graphics/Matrix;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 1152
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    .line 1155
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    iput v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1156
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    iput v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1157
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    iput v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1158
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    iput v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1159
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    iput v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1160
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    iput v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1161
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    iput v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1162
    move-object v7, v0

    move-object v8, v1

    iget-object v8, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mThemeAttrs:[I

    iput-object v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mThemeAttrs:[I

    .line 1163
    move-object v7, v0

    move-object v8, v1

    iget-object v8, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    iput-object v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    .line 1164
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChangingConfigurations:I

    iput v8, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChangingConfigurations:I

    .line 1165
    move-object v7, v0

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1166
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1169
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    move-object v8, v1

    iget-object v8, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1171
    move-object v7, v1

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    move-object v3, v7

    .line 1172
    const/4 v7, 0x0

    move v4, v7

    :goto_0
    move v7, v4

    move-object v8, v3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1173
    move-object v7, v3

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 1174
    move-object v7, v5

    instance-of v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    if-eqz v7, :cond_2

    .line 1175
    move-object v7, v5

    check-cast v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    move-object v6, v7

    .line 1176
    move-object v7, v0

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    new-instance v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v6

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1172
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1178
    :cond_2
    const/4 v7, 0x0

    move-object v6, v7

    .line 1179
    move-object v7, v5

    instance-of v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    if-eqz v7, :cond_3

    .line 1180
    new-instance v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v5

    check-cast v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    invoke-direct {v8, v9}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;)V

    move-object v6, v7

    .line 1186
    :goto_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1187
    move-object v7, v6

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 1188
    move-object v7, v2

    move-object v8, v6

    iget-object v8, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 1181
    :cond_3
    move-object v7, v5

    instance-of v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    if-eqz v7, :cond_4

    .line 1182
    new-instance v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v5

    check-cast v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    invoke-direct {v8, v9}, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;)V

    move-object v6, v7

    goto :goto_2

    .line 1184
    :cond_4
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "Unknown object in the tree!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1192
    :cond_5
    return-void
.end method

.method static synthetic access$100(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)I
    .locals 2

    .prologue
    .line 1130
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChangingConfigurations:I

    move v0, v1

    return v0
.end method

.method static synthetic access$200(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)F
    .locals 2

    .prologue
    .line 1130
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    move v0, v1

    return v0
.end method

.method static synthetic access$700(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 1130
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 1130
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    move-object v0, v1

    return-object v0
.end method

.method private updateLocalMatrix()V
    .locals 5

    .prologue
    .line 1251
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1252
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    move-object v2, v0

    iget v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    neg-float v2, v2

    move-object v3, v0

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v1

    .line 1253
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    move-object v2, v0

    iget v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    move-object v3, v0

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-result v1

    .line 1254
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    move-object v2, v0

    iget v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    move-result v1

    .line 1255
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    move-object v2, v0

    iget v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    move-object v3, v0

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    add-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    move-object v4, v0

    iget v4, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v1

    .line 1256
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10

    .prologue
    .line 1217
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mThemeAttrs:[I

    .line 1220
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const-string v7, "rotation"

    const/4 v8, 0x5

    move-object v9, v0

    iget v9, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1223
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x1

    move-object v7, v0

    iget v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1224
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x2

    move-object v7, v0

    iget v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1227
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const-string v7, "scaleX"

    const/4 v8, 0x3

    move-object v9, v0

    iget v9, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1231
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const-string v7, "scaleY"

    const/4 v8, 0x4

    move-object v9, v0

    iget v9, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1234
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const-string v7, "translateX"

    const/4 v8, 0x6

    move-object v9, v0

    iget v9, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1236
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const-string v7, "translateY"

    const/4 v8, 0x7

    move-object v9, v0

    iget v9, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1239
    move-object v4, v1

    const/4 v5, 0x0

    .line 1240
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1241
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1242
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    .line 1245
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1246
    return-void
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1198
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 1202
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    move-object v0, v1

    return-object v0
.end method

.method public getPivotX()F
    .locals 2

    .prologue
    .line 1274
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    move v0, v1

    return v0
.end method

.method public getPivotY()F
    .locals 2

    .prologue
    .line 1287
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    move v0, v1

    return v0
.end method

.method public getRotation()F
    .locals 2

    .prologue
    .line 1261
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    move v0, v1

    return v0
.end method

.method public getScaleX()F
    .locals 2

    .prologue
    .line 1300
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    move v0, v1

    return v0
.end method

.method public getScaleY()F
    .locals 2

    .prologue
    .line 1313
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    move v0, v1

    return v0
.end method

.method public getTranslateX()F
    .locals 2

    .prologue
    .line 1326
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    move v0, v1

    return v0
.end method

.method public getTranslateY()F
    .locals 2

    .prologue
    .line 1339
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    move v0, v1

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10

    .prologue
    .line 1206
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v1

    move-object v7, v3

    move-object v8, v2

    sget-object v9, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawableGroup:[I

    invoke-static {v6, v7, v8, v9}, Landroid/support/graphics/drawable/VectorDrawableCommon;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v5, v6

    .line 1208
    move-object v6, v0

    move-object v7, v5

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1209
    move-object v6, v5

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1210
    return-void
.end method

.method public setPivotX(F)V
    .locals 4

    .prologue
    .line 1279
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1280
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1281
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1283
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 4

    .prologue
    .line 1292
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1293
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1294
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1296
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 4

    .prologue
    .line 1266
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1267
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1268
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1270
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 4

    .prologue
    .line 1305
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1306
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1307
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1309
    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 4

    .prologue
    .line 1318
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1319
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1320
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1322
    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 4

    .prologue
    .line 1331
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1332
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1333
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1335
    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 4

    .prologue
    .line 1344
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1345
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1346
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1348
    :cond_0
    return-void
.end method
