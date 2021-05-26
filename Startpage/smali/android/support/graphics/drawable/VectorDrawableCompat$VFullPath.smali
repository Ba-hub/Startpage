.class Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;
.super Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VFullPath"
.end annotation


# instance fields
.field mFillAlpha:F

.field mFillColor:I

.field mFillRule:I

.field mStrokeAlpha:F

.field mStrokeColor:I

.field mStrokeLineCap:Landroid/graphics/Paint$Cap;

.field mStrokeLineJoin:Landroid/graphics/Paint$Join;

.field mStrokeMiterlimit:F

.field mStrokeWidth:F

.field private mThemeAttrs:[I

.field mTrimPathEnd:F

.field mTrimPathOffset:F

.field mTrimPathStart:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 1500
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>()V

    .line 1485
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    .line 1486
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1488
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    .line 1489
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1491
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1492
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1493
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1494
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1496
    move-object v1, v0

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1497
    move-object v1, v0

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1498
    move-object v1, v0

    const/high16 v2, 0x40800000    # 4.0f

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1502
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;)V
    .locals 4

    .prologue
    .line 1505
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;)V

    .line 1485
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    .line 1486
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1488
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    .line 1489
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1491
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1492
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1493
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1494
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1496
    move-object v2, v0

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1497
    move-object v2, v0

    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1498
    move-object v2, v0

    const/high16 v3, 0x40800000    # 4.0f

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1506
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    .line 1508
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    .line 1509
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1510
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1511
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    .line 1512
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    .line 1513
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1514
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1515
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1516
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1518
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1519
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1520
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1521
    return-void
.end method

.method private getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 4

    .prologue
    .line 1524
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 1532
    move-object v3, v2

    move-object v0, v3

    :goto_0
    return-object v0

    .line 1526
    :pswitch_0
    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    move-object v0, v3

    goto :goto_0

    .line 1528
    :pswitch_1
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    move-object v0, v3

    goto :goto_0

    .line 1530
    :pswitch_2
    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    move-object v0, v3

    goto :goto_0

    .line 1524
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 4

    .prologue
    .line 1537
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 1545
    move-object v3, v2

    move-object v0, v3

    :goto_0
    return-object v0

    .line 1539
    :pswitch_0
    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    move-object v0, v3

    goto :goto_0

    .line 1541
    :pswitch_1
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    move-object v0, v3

    goto :goto_0

    .line 1543
    :pswitch_2
    sget-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    move-object v0, v3

    goto :goto_0

    .line 1537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 14

    .prologue
    .line 1566
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    .line 1573
    move-object v8, v2

    const-string v9, "pathData"

    invoke-static {v8, v9}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    move v3, v8

    .line 1574
    move v8, v3

    if-nez v8, :cond_0

    .line 1615
    :goto_0
    return-void

    .line 1580
    :cond_0
    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 1581
    move-object v8, v4

    if-eqz v8, :cond_1

    .line 1582
    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mPathName:Ljava/lang/String;

    .line 1584
    :cond_1
    move-object v8, v1

    const/4 v9, 0x2

    .line 1585
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 1586
    move-object v8, v5

    if-eqz v8, :cond_2

    .line 1587
    move-object v8, v0

    move-object v9, v5

    invoke-static {v9}, Landroid/support/graphics/drawable/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-result-object v9

    iput-object v9, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 1590
    :cond_2
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const-string v11, "fillColor"

    const/4 v12, 0x1

    move-object v13, v0

    iget v13, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    invoke-static {v9, v10, v11, v12, v13}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v9

    iput v9, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    .line 1592
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const-string v11, "fillAlpha"

    const/16 v12, 0xc

    move-object v13, v0

    iget v13, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    invoke-static {v9, v10, v11, v12, v13}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1594
    move-object v8, v1

    move-object v9, v2

    const-string v10, "strokeLineCap"

    const/16 v11, 0x8

    const/4 v12, -0x1

    invoke-static {v8, v9, v10, v11, v12}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v8

    move v6, v8

    .line 1596
    move-object v8, v0

    move-object v9, v0

    move v10, v6

    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    invoke-direct {v9, v10, v11}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v9

    iput-object v9, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1597
    move-object v8, v1

    move-object v9, v2

    const-string v10, "strokeLineJoin"

    const/16 v11, 0x9

    const/4 v12, -0x1

    invoke-static {v8, v9, v10, v11, v12}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v8

    move v7, v8

    .line 1599
    move-object v8, v0

    move-object v9, v0

    move v10, v7

    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    invoke-direct {v9, v10, v11}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v9

    iput-object v9, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1600
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const-string v11, "strokeMiterLimit"

    const/16 v12, 0xa

    move-object v13, v0

    iget v13, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    invoke-static {v9, v10, v11, v12, v13}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1603
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const-string v11, "strokeColor"

    const/4 v12, 0x3

    move-object v13, v0

    iget v13, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    invoke-static {v9, v10, v11, v12, v13}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v9

    iput v9, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    .line 1605
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const-string v11, "strokeAlpha"

    const/16 v12, 0xb

    move-object v13, v0

    iget v13, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    invoke-static {v9, v10, v11, v12, v13}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1607
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const-string v11, "strokeWidth"

    const/4 v12, 0x4

    move-object v13, v0

    iget v13, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    invoke-static {v9, v10, v11, v12, v13}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1609
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const-string v11, "trimPathEnd"

    const/4 v12, 0x6

    move-object v13, v0

    iget v13, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    invoke-static {v9, v10, v11, v12, v13}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1611
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const-string v11, "trimPathOffset"

    const/4 v12, 0x7

    move-object v13, v0

    iget v13, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    invoke-static {v9, v10, v11, v12, v13}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1613
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const-string v11, "trimPathStart"

    const/4 v12, 0x5

    move-object v13, v0

    iget v13, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    invoke-static {v9, v10, v11, v12, v13}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v8, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1615
    goto/16 :goto_0
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3

    .prologue
    .line 1619
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    if-nez v2, :cond_0

    .line 1628
    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public canApplyTheme()Z
    .locals 2

    .prologue
    .line 1551
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getFillAlpha()F
    .locals 2

    .prologue
    .line 1673
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    move v0, v1

    return v0
.end method

.method getFillColor()I
    .locals 2

    .prologue
    .line 1663
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    move v0, v1

    return v0
.end method

.method getStrokeAlpha()F
    .locals 2

    .prologue
    .line 1653
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    move v0, v1

    return v0
.end method

.method getStrokeColor()I
    .locals 2

    .prologue
    .line 1633
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    move v0, v1

    return v0
.end method

.method getStrokeWidth()F
    .locals 2

    .prologue
    .line 1643
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    move v0, v1

    return v0
.end method

.method getTrimPathEnd()F
    .locals 2

    .prologue
    .line 1693
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    move v0, v1

    return v0
.end method

.method getTrimPathOffset()F
    .locals 2

    .prologue
    .line 1703
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    move v0, v1

    return v0
.end method

.method getTrimPathStart()F
    .locals 2

    .prologue
    .line 1683
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    move v0, v1

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10

    .prologue
    .line 1555
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v1

    move-object v7, v3

    move-object v8, v2

    sget-object v9, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawablePath:[I

    invoke-static {v6, v7, v8, v9}, Landroid/support/graphics/drawable/VectorDrawableCommon;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v5, v6

    .line 1557
    move-object v6, v0

    move-object v7, v5

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1558
    move-object v6, v5

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1559
    return-void
.end method

.method setFillAlpha(F)V
    .locals 4

    .prologue
    .line 1678
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1679
    return-void
.end method

.method setFillColor(I)V
    .locals 4

    .prologue
    .line 1668
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    .line 1669
    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 4

    .prologue
    .line 1658
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1659
    return-void
.end method

.method setStrokeColor(I)V
    .locals 4

    .prologue
    .line 1638
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    .line 1639
    return-void
.end method

.method setStrokeWidth(F)V
    .locals 4

    .prologue
    .line 1648
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1649
    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 4

    .prologue
    .line 1698
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1699
    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 4

    .prologue
    .line 1708
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1709
    return-void
.end method

.method setTrimPathStart(F)V
    .locals 4

    .prologue
    .line 1688
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1689
    return-void
.end method
