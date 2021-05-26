.class public Landroid/support/graphics/drawable/VectorDrawableCompat;
.super Landroid/support/graphics/drawable/VectorDrawableCommon;
.source "VectorDrawableCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;,
        Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;,
        Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;,
        Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;,
        Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;,
        Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;,
        Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
    }
.end annotation


# static fields
.field private static final DBG_VECTOR_DRAWABLE:Z = false

.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static final LINECAP_BUTT:I = 0x0

.field private static final LINECAP_ROUND:I = 0x1

.field private static final LINECAP_SQUARE:I = 0x2

.field private static final LINEJOIN_BEVEL:I = 0x2

.field private static final LINEJOIN_MITER:I = 0x0

.field private static final LINEJOIN_ROUND:I = 0x1

.field static final LOGTAG:Ljava/lang/String; = "VectorDrawableCompat"

.field private static final MAX_CACHED_BITMAP_SIZE:I = 0x800

.field private static final SHAPE_CLIP_PATH:Ljava/lang/String; = "clip-path"

.field private static final SHAPE_GROUP:Ljava/lang/String; = "group"

.field private static final SHAPE_PATH:Ljava/lang/String; = "path"

.field private static final SHAPE_VECTOR:Ljava/lang/String; = "vector"


# instance fields
.field private mAllowCaching:Z

.field private mCachedConstantStateDelegate:Landroid/graphics/drawable/Drawable$ConstantState;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mMutated:Z

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpFloats:[F

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;-><init>()V

    .line 101
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mAllowCaching:Z

    .line 107
    move-object v1, v0

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    .line 108
    move-object v1, v0

    new-instance v2, Landroid/graphics/Matrix;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 109
    move-object v1, v0

    new-instance v2, Landroid/graphics/Rect;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    .line 112
    move-object v1, v0

    new-instance v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;-><init>()V

    iput-object v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$1;)V
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;)V
    .locals 8
    .param p1    # Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/graphics/drawable/VectorDrawableCommon;-><init>()V

    .line 101
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mAllowCaching:Z

    .line 107
    move-object v2, v0

    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    .line 108
    move-object v2, v0

    new-instance v3, Landroid/graphics/Matrix;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 109
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    .line 116
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    .line 117
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    move-object v5, v1

    iget-object v5, v5, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    move-object v6, v1

    iget-object v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/graphics/drawable/VectorDrawableCompat;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;Landroid/support/graphics/drawable/VectorDrawableCompat$1;)V
    .locals 5

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;)V

    return-void
.end method

.method static synthetic access$900(IF)I
    .locals 4

    .prologue
    .line 67
    move v0, p0

    move v1, p1

    move v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->applyAlpha(IF)I

    move-result v2

    move v0, v2

    return v0
.end method

.method private static applyAlpha(IF)I
    .locals 6

    .prologue
    .line 446
    move v0, p0

    move v1, p1

    move v3, v0

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    move v2, v3

    .line 447
    move v3, v0

    const v4, 0xffffff

    and-int/2addr v3, v4

    move v0, v3

    .line 448
    move v3, v0

    move v4, v2

    int-to-float v4, v4

    move v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/16 v5, 0x18

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    move v0, v3

    .line 449
    move v3, v0

    move v0, v3

    return v0
.end method

.method public static create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/VectorDrawableCompat;
    .locals 11
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 404
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_0

    .line 405
    new-instance v6, Landroid/support/graphics/drawable/VectorDrawableCompat;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>()V

    move-object v3, v6

    .line 406
    move-object v6, v3

    move-object v7, v0

    move v8, v1

    move-object v9, v2

    invoke-static {v7, v8, v9}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v6, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 407
    move-object v6, v3

    new-instance v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v3

    iget-object v9, v9, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 408
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v7, v6, Landroid/support/graphics/drawable/VectorDrawableCompat;->mCachedConstantStateDelegate:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 409
    move-object v6, v3

    move-object v0, v6

    .line 429
    :goto_0
    return-object v0

    .line 413
    :cond_0
    move-object v6, v0

    move v7, v1

    :try_start_0
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    move-object v3, v6

    .line 414
    move-object v6, v3

    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    move-object v4, v6

    .line 416
    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v10, v6

    move v6, v10

    move v7, v10

    move v5, v7

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    move v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    goto :goto_1

    .line 420
    :cond_1
    move v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 421
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "No start tag found"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 424
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 425
    const-string v6, "VectorDrawableCompat"

    const-string v7, "parser error"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 429
    :goto_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 423
    :cond_2
    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    move-object v9, v2

    :try_start_1
    invoke-static {v6, v7, v8, v9}, Landroid/support/graphics/drawable/VectorDrawableCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/VectorDrawableCompat;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 426
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 427
    const-string v6, "VectorDrawableCompat"

    const-string v7, "parser error"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_2
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/VectorDrawableCompat;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v5, Landroid/support/graphics/drawable/VectorDrawableCompat;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>()V

    move-object v4, v5

    .line 441
    move-object v5, v4

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/graphics/drawable/VectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 442
    move-object v5, v4

    move-object v0, v5

    return-object v0
.end method

.method private inflateInternal(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v13, v0

    iget-object v13, v13, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v5, v13

    .line 575
    move-object v13, v5

    iget-object v13, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    move-object v6, v13

    .line 576
    const/4 v13, 0x1

    move v7, v13

    .line 580
    new-instance v13, Ljava/util/Stack;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Ljava/util/Stack;-><init>()V

    move-object v8, v13

    .line 581
    move-object v13, v8

    move-object v14, v6

    invoke-static {v14}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->access$000(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 583
    move-object v13, v2

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    move v9, v13

    .line 584
    :goto_0
    move v13, v9

    const/4 v14, 0x1

    if-eq v13, v14, :cond_7

    .line 585
    move v13, v9

    const/4 v14, 0x2

    if-ne v13, v14, :cond_6

    .line 586
    move-object v13, v2

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 587
    move-object v13, v8

    invoke-virtual {v13}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    move-object v11, v13

    .line 588
    const-string v13, "path"

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 589
    new-instance v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;-><init>()V

    move-object v12, v13

    .line 590
    move-object v13, v12

    move-object v14, v1

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v2

    invoke-virtual/range {v13 .. v17}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 591
    move-object v13, v11

    iget-object v13, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    move-object v14, v12

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 592
    move-object v13, v12

    invoke-virtual {v13}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->getPathName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 593
    move-object v13, v6

    iget-object v13, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    move-object v14, v12

    invoke-virtual {v14}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->getPathName()Ljava/lang/String;

    move-result-object v14

    move-object v15, v12

    invoke-virtual {v13, v14, v15}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 595
    :cond_0
    const/4 v13, 0x0

    move v7, v13

    .line 596
    move-object v13, v5

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    iget v14, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    move-object v15, v12

    iget v15, v15, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mChangingConfigurations:I

    or-int/2addr v14, v15

    iput v14, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    .line 622
    :cond_1
    :goto_1
    move-object v13, v2

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    move v9, v13

    goto :goto_0

    .line 597
    :cond_2
    const-string v13, "clip-path"

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 598
    new-instance v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;-><init>()V

    move-object v12, v13

    .line 599
    move-object v13, v12

    move-object v14, v1

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v2

    invoke-virtual/range {v13 .. v17}, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 600
    move-object v13, v11

    iget-object v13, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    move-object v14, v12

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 601
    move-object v13, v12

    invoke-virtual {v13}, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->getPathName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 602
    move-object v13, v6

    iget-object v13, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    move-object v14, v12

    invoke-virtual {v14}, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->getPathName()Ljava/lang/String;

    move-result-object v14

    move-object v15, v12

    invoke-virtual {v13, v14, v15}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 604
    :cond_3
    move-object v13, v5

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    iget v14, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    move-object v15, v12

    iget v15, v15, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->mChangingConfigurations:I

    or-int/2addr v14, v15

    iput v14, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    .line 605
    goto :goto_1

    :cond_4
    const-string v13, "group"

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 606
    new-instance v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;-><init>()V

    move-object v12, v13

    .line 607
    move-object v13, v12

    move-object v14, v1

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v2

    invoke-virtual/range {v13 .. v17}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 608
    move-object v13, v11

    iget-object v13, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    move-object v14, v12

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 609
    move-object v13, v8

    move-object v14, v12

    invoke-virtual {v13, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 610
    move-object v13, v12

    invoke-virtual {v13}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 611
    move-object v13, v6

    iget-object v13, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    move-object v14, v12

    invoke-virtual {v14}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v14

    move-object v15, v12

    invoke-virtual {v13, v14, v15}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 614
    :cond_5
    move-object v13, v5

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    iget v14, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    move-object v15, v12

    invoke-static {v15}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->access$100(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)I

    move-result v15

    or-int/2addr v14, v15

    iput v14, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    goto/16 :goto_1

    .line 616
    :cond_6
    move v13, v9

    const/4 v14, 0x3

    if-ne v13, v14, :cond_1

    .line 617
    move-object v13, v2

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 618
    const-string v13, "group"

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 619
    move-object v13, v8

    invoke-virtual {v13}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_1

    .line 630
    :cond_7
    move v13, v7

    if-eqz v13, :cond_9

    .line 631
    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v13

    .line 633
    move-object v13, v10

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-lez v13, :cond_8

    .line 634
    move-object v13, v10

    const-string v14, " or "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 636
    :cond_8
    move-object v13, v10

    const-string v14, "path"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 638
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "no "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " defined"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 640
    :cond_9
    return-void
.end method

.method private needMirroring()Z
    .locals 2

    .prologue
    .line 668
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method private static parseTintModeCompat(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 3

    .prologue
    .line 493
    move v0, p0

    move-object v1, p1

    move v2, v0

    packed-switch v2, :pswitch_data_0

    .line 507
    :pswitch_0
    move-object v2, v1

    move-object v0, v2

    :goto_0
    return-object v0

    .line 495
    :pswitch_1
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 497
    :pswitch_2
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 499
    :pswitch_3
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 501
    :pswitch_4
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 503
    :pswitch_5
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 505
    :pswitch_6
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private printGroupTree(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;I)V
    .locals 11

    .prologue
    .line 643
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const-string v6, ""

    move-object v3, v6

    .line 644
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_0

    .line 645
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 644
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 648
    :cond_0
    const-string v6, "VectorDrawableCompat"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "current group is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " rotation is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    .line 649
    invoke-static {v8}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->access$200(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 648
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 650
    const-string v6, "VectorDrawableCompat"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "matrix is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Matrix;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 652
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move-object v7, v1

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 653
    move-object v6, v1

    iget-object v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 654
    move-object v6, v5

    instance-of v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    if-eqz v6, :cond_1

    .line 655
    move-object v6, v0

    move-object v7, v5

    check-cast v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/support/graphics/drawable/VectorDrawableCompat;->printGroupTree(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;I)V

    .line 652
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 657
    :cond_1
    move-object v6, v5

    check-cast v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->printVPath(I)V

    goto :goto_2

    .line 660
    :cond_2
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 513
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v3, v9

    .line 514
    move-object v9, v3

    iget-object v9, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    move-object v4, v9

    .line 519
    move-object v9, v1

    move-object v10, v2

    const-string v11, "tintMode"

    const/4 v12, 0x6

    const/4 v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v9

    move v5, v9

    .line 521
    move-object v9, v3

    move v10, v5

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v10, v11}, Landroid/support/graphics/drawable/VectorDrawableCompat;->parseTintModeCompat(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v10

    iput-object v10, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 523
    move-object v9, v1

    const/4 v10, 0x1

    .line 524
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    move-object v6, v9

    .line 525
    move-object v9, v6

    if-eqz v9, :cond_0

    .line 526
    move-object v9, v3

    move-object v10, v6

    iput-object v10, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    .line 529
    :cond_0
    move-object v9, v3

    move-object v10, v1

    move-object v11, v2

    const-string v12, "autoMirrored"

    const/4 v13, 0x5

    move-object v14, v3

    iget-boolean v14, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    invoke-static {v10, v11, v12, v13, v14}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v10

    iput-boolean v10, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    .line 532
    move-object v9, v4

    move-object v10, v1

    move-object v11, v2

    const-string v12, "viewportWidth"

    const/4 v13, 0x7

    move-object v14, v4

    iget v14, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    invoke-static {v10, v11, v12, v13, v14}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 536
    move-object v9, v4

    move-object v10, v1

    move-object v11, v2

    const-string v12, "viewportHeight"

    const/16 v13, 0x8

    move-object v14, v4

    iget v14, v14, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    invoke-static {v10, v11, v12, v13, v14}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 540
    move-object v9, v4

    iget v9, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_1

    .line 541
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 543
    :cond_1
    move-object v9, v4

    iget v9, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_2

    .line 544
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 548
    :cond_2
    move-object v9, v4

    move-object v10, v1

    const/4 v11, 0x3

    move-object v12, v4

    iget v12, v12, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 550
    move-object v9, v4

    move-object v10, v1

    const/4 v11, 0x2

    move-object v12, v4

    iget v12, v12, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 552
    move-object v9, v4

    iget v9, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_3

    .line 553
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "<vector> tag requires width > 0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 555
    :cond_3
    move-object v9, v4

    iget v9, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_4

    .line 556
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "<vector> tag requires height > 0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 561
    :cond_4
    move-object v9, v1

    move-object v10, v2

    const-string v11, "alpha"

    const/4 v12, 0x4

    move-object v13, v4

    .line 562
    invoke-virtual {v13}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getAlpha()F

    move-result v13

    .line 561
    invoke-static {v9, v10, v11, v12, v13}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    move v7, v9

    .line 563
    move-object v9, v4

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->setAlpha(F)V

    .line 565
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 566
    move-object v9, v8

    if-eqz v9, :cond_5

    .line 567
    move-object v9, v4

    move-object v10, v8

    iput-object v10, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 568
    move-object v9, v4

    iget-object v9, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    move-object v10, v8

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 570
    :cond_5
    return-void
.end method


# virtual methods
.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCommon;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 2

    .prologue
    .line 363
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 364
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    .line 367
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 15

    .prologue
    .line 150
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_0

    .line 151
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v12, v1

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 218
    :goto_0
    return-void

    .line 156
    :cond_0
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/support/graphics/drawable/VectorDrawableCompat;->copyBounds(Landroid/graphics/Rect;)V

    .line 157
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-lez v11, :cond_1

    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-gtz v11, :cond_2

    .line 159
    :cond_1
    goto :goto_0

    .line 163
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v11, :cond_6

    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_1
    move-object v2, v11

    .line 169
    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v12}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 170
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->getValues([F)V

    .line 171
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move v3, v11

    .line 172
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    const/4 v12, 0x4

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move v4, v11

    .line 174
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move v5, v11

    .line 175
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    const/4 v12, 0x3

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move v6, v11

    .line 178
    move v11, v5

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_3

    move v11, v6

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_4

    .line 179
    :cond_3
    const/high16 v11, 0x3f800000    # 1.0f

    move v3, v11

    .line 180
    const/high16 v11, 0x3f800000    # 1.0f

    move v4, v11

    .line 183
    :cond_4
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    move v12, v3

    mul-float/2addr v11, v12

    float-to-int v11, v11

    move v7, v11

    .line 184
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    move v12, v4

    mul-float/2addr v11, v12

    float-to-int v11, v11

    move v8, v11

    .line 185
    const/16 v11, 0x800

    move v12, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v7, v11

    .line 186
    const/16 v11, 0x800

    move v12, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v8, v11

    .line 188
    move v11, v7

    if-lez v11, :cond_5

    move v11, v8

    if-gtz v11, :cond_7

    .line 189
    :cond_5
    goto/16 :goto_0

    .line 163
    :cond_6
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mColorFilter:Landroid/graphics/ColorFilter;

    goto/16 :goto_1

    .line 192
    :cond_7
    move-object v11, v1

    invoke-virtual {v11}, Landroid/graphics/Canvas;->save()I

    move-result v11

    move v9, v11

    .line 193
    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    move-object v13, v0

    iget-object v13, v13, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 196
    move-object v11, v0

    invoke-direct {v11}, Landroid/support/graphics/drawable/VectorDrawableCompat;->needMirroring()Z

    move-result v11

    move v10, v11

    .line 197
    move v11, v10

    if-eqz v11, :cond_8

    .line 198
    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 199
    move-object v11, v1

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Canvas;->scale(FF)V

    .line 205
    :cond_8
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 207
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move v12, v7

    move v13, v8

    invoke-virtual {v11, v12, v13}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->createCachedBitmapIfNeeded(II)V

    .line 208
    move-object v11, v0

    iget-boolean v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mAllowCaching:Z

    if-nez v11, :cond_a

    .line 209
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move v12, v7

    move v13, v8

    invoke-virtual {v11, v12, v13}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->updateCachedBitmap(II)V

    .line 216
    :cond_9
    :goto_2
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v12, v1

    move-object v13, v2

    move-object v14, v0

    iget-object v14, v14, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v12, v13, v14}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->drawCachedBitmapWithRootAlpha(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    .line 217
    move-object v11, v1

    move v12, v9

    invoke-virtual {v11, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 218
    goto/16 :goto_0

    .line 211
    :cond_a
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {v11}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->canReuseCache()Z

    move-result v11

    if-nez v11, :cond_9

    .line 212
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move v12, v7

    move v13, v8

    invoke-virtual {v11, v12, v13}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->updateCachedBitmap(II)V

    .line 213
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {v11}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->updateCacheStates()V

    goto :goto_2
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 223
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    move v0, v1

    .line 226
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 3

    .prologue
    .line 681
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 682
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    move v0, v1

    .line 684
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getChangingConfigurations()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 5

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 142
    new-instance v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    move-object v0, v1

    .line 145
    :goto_0
    return-object v0

    .line 144
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getChangingConfigurations()I

    move-result v2

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    .line 145
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 353
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 354
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    move v0, v1

    .line 357
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    float-to-int v1, v1

    move v0, v1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 345
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    move v0, v1

    .line 348
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    float-to-int v1, v1

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getLayoutDirection()I
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getLayoutDirection()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getMinimumHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getMinimumWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 335
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 336
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    move v0, v1

    .line 339
    :goto_0
    return v0

    :cond_0
    const/4 v1, -0x3

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public getPixelSize()F
    .locals 9

    .prologue
    .line 377
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    if-nez v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    if-eqz v7, :cond_1

    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    .line 382
    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    move v0, v7

    .line 390
    :goto_0
    return v0

    .line 384
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    move v1, v7

    .line 385
    move-object v7, v0

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    move v2, v7

    .line 386
    move-object v7, v0

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    move v3, v7

    .line 387
    move-object v7, v0

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    move v4, v7

    .line 388
    move v7, v3

    move v8, v1

    div-float/2addr v7, v8

    move v5, v7

    .line 389
    move v7, v4

    move v8, v2

    div-float/2addr v7, v8

    move v6, v7

    .line 390
    move v7, v5

    move v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move v0, v7

    goto :goto_0
.end method

.method public bridge synthetic getState()[I
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getState()[I

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method getTargetByName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 456
    move-object v4, v0

    iget-object v4, v4, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 461
    :goto_0
    return-void

    .line 460
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/graphics/drawable/VectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 461
    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    .line 467
    move-object v8, v0

    iget-object v8, v8, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-static {v8, v9, v10, v11, v12}, Landroid/support/v4/graphics/drawable/DrawableCompat;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 485
    :goto_0
    return-void

    .line 471
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v5, v8

    .line 472
    new-instance v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;-><init>()V

    move-object v6, v8

    .line 473
    move-object v8, v5

    move-object v9, v6

    iput-object v9, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .line 475
    move-object v8, v1

    move-object v9, v4

    move-object v10, v3

    sget-object v11, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawableTypeArray:[I

    invoke-static {v8, v9, v10, v11}, Landroid/support/graphics/drawable/VectorDrawableCompat;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v7, v8

    .line 478
    move-object v8, v0

    move-object v9, v7

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroid/support/graphics/drawable/VectorDrawableCompat;->updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 479
    move-object v8, v7

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 480
    move-object v8, v5

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getChangingConfigurations()I

    move-result v9

    iput v9, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    .line 481
    move-object v8, v5

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCacheDirty:Z

    .line 482
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/support/graphics/drawable/VectorDrawableCompat;->inflateInternal(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 484
    move-object v8, v0

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    move-object v11, v5

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    move-object v12, v5

    iget-object v12, v12, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/graphics/drawable/VectorDrawableCompat;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v9

    iput-object v9, v8, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 485
    goto :goto_0
.end method

.method public invalidateSelf()V
    .locals 2

    .prologue
    .line 689
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 690
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 694
    :goto_0
    return-void

    .line 693
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->invalidateSelf()V

    .line 694
    goto :goto_0
.end method

.method public bridge synthetic isAutoMirrored()Z
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->isAutoMirrored()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    .line 310
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 311
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    move v0, v1

    .line 315
    :goto_0
    return v0

    .line 314
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->isStateful()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    .line 315
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 123
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 124
    move-object v1, v0

    move-object v0, v1

    .line 131
    :goto_0
    return-object v0

    .line 127
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mMutated:Z

    if-nez v1, :cond_1

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v0

    if-ne v1, v2, :cond_1

    .line 128
    move-object v1, v0

    new-instance v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-direct {v3, v4}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;)V

    iput-object v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    .line 129
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->mMutated:Z

    .line 131
    :cond_1
    move-object v1, v0

    move-object v0, v1

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 674
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 675
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 677
    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 8

    .prologue
    .line 320
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 321
    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    move v0, v3

    .line 330
    :goto_0
    return v0

    .line 324
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v2, v3

    .line 325
    move-object v3, v2

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_1

    .line 326
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    move-object v6, v2

    iget-object v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    move-object v7, v2

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/graphics/drawable/VectorDrawableCompat;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    iput-object v4, v3, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 327
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    .line 328
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 330
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 8

    .prologue
    .line 698
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 699
    move-object v4, v0

    iget-object v4, v4, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 703
    :goto_0
    return-void

    .line 702
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-super {v4, v5, v6, v7}, Landroid/support/graphics/drawable/VectorDrawableCommon;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 703
    goto :goto_0
.end method

.method setAllowCaching(Z)V
    .locals 4

    .prologue
    .line 663
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mAllowCaching:Z

    .line 664
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 231
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 232
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 240
    :goto_0
    return-void

    .line 236
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v2

    move v3, v1

    if-eq v2, v3, :cond_1

    .line 237
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->setRootAlpha(I)V

    .line 238
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    .line 240
    :cond_1
    goto :goto_0
.end method

.method public bridge synthetic setAutoMirrored(Z)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setAutoMirrored(Z)V

    return-void
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 6

    .prologue
    .line 66
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 245
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 250
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    .line 251
    goto :goto_0
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 6

    .prologue
    .line 66
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 10

    .prologue
    .line 66
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setState([I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public setTint(I)V
    .locals 4

    .prologue
    .line 270
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 271
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 276
    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 8

    .prologue
    .line 280
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 281
    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 291
    :goto_0
    return-void

    .line 285
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v2, v3

    .line 286
    move-object v3, v2

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    move-object v4, v1

    if-eq v3, v4, :cond_1

    .line 287
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    .line 288
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    move-object v6, v1

    move-object v7, v2

    iget-object v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/graphics/drawable/VectorDrawableCompat;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    iput-object v4, v3, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 289
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    .line 291
    :cond_1
    goto :goto_0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 8

    .prologue
    .line 295
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 296
    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 306
    :goto_0
    return-void

    .line 300
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v2, v3

    .line 301
    move-object v3, v2

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v4, v1

    if-eq v3, v4, :cond_1

    .line 302
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 303
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    move-object v6, v2

    iget-object v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    move-object v7, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/graphics/drawable/VectorDrawableCompat;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    iput-object v4, v3, Landroid/support/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 304
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    .line 306
    :cond_1
    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 6

    .prologue
    .line 707
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 708
    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    move v0, v3

    .line 710
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setVisible(ZZ)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 715
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 716
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 720
    :goto_0
    return-void

    .line 719
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCommon;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 720
    goto :goto_0
.end method

.method updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 10

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v3

    if-nez v5, :cond_1

    .line 260
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    .line 265
    :goto_0
    return-object v0

    .line 264
    :cond_1
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getState()[I

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    move v4, v5

    .line 265
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move v7, v4

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v0, v5

    goto :goto_0
.end method
