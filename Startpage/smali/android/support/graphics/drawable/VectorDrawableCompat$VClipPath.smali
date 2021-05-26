.class Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;
.super Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VClipPath"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1434
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>()V

    .line 1436
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;)V
    .locals 4

    .prologue
    .line 1439
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;)V

    .line 1440
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 6

    .prologue
    .line 1458
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    const/4 v5, 0x0

    .line 1459
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1460
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 1461
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->mPathName:Ljava/lang/String;

    .line 1464
    :cond_0
    move-object v4, v1

    const/4 v5, 0x1

    .line 1465
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1466
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 1467
    move-object v4, v0

    move-object v5, v3

    invoke-static {v5}, Landroid/support/graphics/drawable/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-result-object v5

    iput-object v5, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 1469
    :cond_1
    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11

    .prologue
    .line 1444
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, v4

    const-string v8, "pathData"

    invoke-static {v7, v8}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    move v5, v7

    .line 1445
    move v7, v5

    if-nez v7, :cond_0

    .line 1452
    :goto_0
    return-void

    .line 1448
    :cond_0
    move-object v7, v1

    move-object v8, v3

    move-object v9, v2

    sget-object v10, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawableClipPath:[I

    invoke-static {v7, v8, v9, v10}, Landroid/support/graphics/drawable/VectorDrawableCommon;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v6, v7

    .line 1450
    move-object v7, v0

    move-object v8, v6

    invoke-direct {v7, v8}, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1451
    move-object v7, v6

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1452
    goto :goto_0
.end method

.method public isClipPath()Z
    .locals 2

    .prologue
    .line 1473
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method
