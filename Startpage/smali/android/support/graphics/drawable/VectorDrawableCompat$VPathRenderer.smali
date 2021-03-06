.class Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VPathRenderer"
.end annotation


# static fields
.field private static final IDENTITY_MATRIX:Landroid/graphics/Matrix;


# instance fields
.field mBaseHeight:F

.field mBaseWidth:F

.field private mChangingConfigurations:I

.field private mFillPaint:Landroid/graphics/Paint;

.field private final mFinalPathMatrix:Landroid/graphics/Matrix;

.field private final mPath:Landroid/graphics/Path;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field private final mRenderPath:Landroid/graphics/Path;

.field mRootAlpha:I

.field private final mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

.field mRootName:Ljava/lang/String;

.field private mStrokePaint:Landroid/graphics/Paint;

.field final mVGTargetsMap:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mViewportHeight:F

.field mViewportWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 913
    new-instance v0, Landroid/graphics/Matrix;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 933
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 914
    move-object v1, v0

    new-instance v2, Landroid/graphics/Matrix;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    .line 924
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 925
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 926
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 927
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 928
    move-object v1, v0

    const/16 v2, 0xff

    iput v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 929
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 931
    move-object v1, v0

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    .line 934
    move-object v1, v0

    new-instance v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;-><init>()V

    iput-object v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 935
    move-object v1, v0

    new-instance v2, Landroid/graphics/Path;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 936
    move-object v1, v0

    new-instance v2, Landroid/graphics/Path;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    .line 937
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)V
    .locals 8

    .prologue
    .line 958
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 914
    move-object v2, v0

    new-instance v3, Landroid/graphics/Matrix;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    .line 924
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 925
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 926
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 927
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 928
    move-object v2, v0

    const/16 v3, 0xff

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 929
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 931
    move-object v2, v0

    new-instance v3, Landroid/support/v4/util/ArrayMap;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    .line 959
    move-object v2, v0

    new-instance v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    iget-object v5, v5, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v4, v5, v6}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/v4/util/ArrayMap;)V

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 960
    move-object v2, v0

    new-instance v3, Landroid/graphics/Path;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    iget-object v5, v5, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    invoke-direct {v4, v5}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 961
    move-object v2, v0

    new-instance v3, Landroid/graphics/Path;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    iget-object v5, v5, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-direct {v4, v5}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    .line 962
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 963
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 964
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 965
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 966
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mChangingConfigurations:I

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mChangingConfigurations:I

    .line 967
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 968
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 969
    move-object v2, v1

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 970
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    move-object v3, v1

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 972
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    .locals 2

    .prologue
    .line 896
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 896
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$402(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 7

    .prologue
    .line 896
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 896
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$502(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 7

    .prologue
    .line 896
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    move-object v0, v2

    return-object v0
.end method

.method private static cross(FFFF)F
    .locals 7

    .prologue
    .line 1097
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v0

    move v5, v3

    mul-float/2addr v4, v5

    move v5, v1

    move v6, v2

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move v0, v4

    return v0
.end method

.method private drawGroupTree(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 17

    .prologue
    .line 980
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v10, v1

    invoke-static {v10}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->access$700(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 982
    move-object v10, v1

    invoke-static {v10}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->access$700(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v10

    move-object v11, v1

    invoke-static {v11}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->access$800(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v10

    .line 985
    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 988
    const/4 v10, 0x0

    move v7, v10

    :goto_0
    move v10, v7

    move-object v11, v1

    iget-object v11, v11, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 989
    move-object v10, v1

    iget-object v10, v10, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v8, v10

    .line 990
    move-object v10, v8

    instance-of v10, v10, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    if-eqz v10, :cond_1

    .line 991
    move-object v10, v8

    check-cast v10, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    move-object v9, v10

    .line 992
    move-object v10, v0

    move-object v11, v9

    move-object v12, v1

    invoke-static {v12}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->access$700(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v12

    move-object v13, v3

    move v14, v4

    move v15, v5

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v16}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawGroupTree(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 988
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 994
    :cond_1
    move-object v10, v8

    instance-of v10, v10, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;

    if-eqz v10, :cond_0

    .line 995
    move-object v10, v8

    check-cast v10, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;

    move-object v9, v10

    .line 996
    move-object v10, v0

    move-object v11, v1

    move-object v12, v9

    move-object v13, v3

    move v14, v4

    move v15, v5

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v16}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawPath(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 1000
    :cond_2
    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    .line 1001
    return-void
.end method

.method private drawPath(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 25

    .prologue
    .line 1010
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v19, v6

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v9, v19

    .line 1011
    move/from16 v19, v7

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v10, v19

    .line 1012
    move/from16 v19, v9

    move/from16 v20, v10

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    move/from16 v11, v19

    .line 1013
    move-object/from16 v19, v3

    invoke-static/range {v19 .. v19}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->access$700(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v19

    move-object/from16 v12, v19

    .line 1015
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move-object/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1016
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-result v19

    .line 1019
    move-object/from16 v19, v2

    move-object/from16 v20, v12

    invoke-direct/range {v19 .. v20}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getMatrixScale(Landroid/graphics/Matrix;)F

    move-result v19

    move/from16 v13, v19

    .line 1020
    move/from16 v19, v13

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-nez v19, :cond_0

    .line 1094
    :goto_0
    return-void

    .line 1024
    :cond_0
    move-object/from16 v19, v4

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->toPath(Landroid/graphics/Path;)V

    .line 1025
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v14, v19

    .line 1027
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->reset()V

    .line 1029
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->isClipPath()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1030
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v20, v14

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1031
    move-object/from16 v19, v5

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move-result v19

    .line 1094
    :cond_1
    :goto_1
    goto :goto_0

    .line 1033
    :cond_2
    move-object/from16 v19, v4

    check-cast v19, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    move-object/from16 v15, v19

    .line 1034
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-nez v19, :cond_3

    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_5

    .line 1035
    :cond_3
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    move/from16 v19, v0

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    move/from16 v20, v0

    add-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    rem-float v19, v19, v20

    move/from16 v16, v19

    .line 1036
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    move/from16 v19, v0

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    move/from16 v20, v0

    add-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    rem-float v19, v19, v20

    move/from16 v17, v19

    .line 1038
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 1039
    move-object/from16 v19, v2

    new-instance v20, Landroid/graphics/PathMeasure;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Landroid/graphics/PathMeasure;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 1041
    :cond_4
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 1043
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v19

    move/from16 v18, v19

    .line 1044
    move/from16 v19, v16

    move/from16 v20, v18

    mul-float v19, v19, v20

    move/from16 v16, v19

    .line 1045
    move/from16 v19, v17

    move/from16 v20, v18

    mul-float v19, v19, v20

    move/from16 v17, v19

    .line 1046
    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->reset()V

    .line 1047
    move/from16 v19, v16

    move/from16 v20, v17

    cmpl-float v19, v19, v20

    if-lez v19, :cond_b

    .line 1048
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    move-object/from16 v19, v0

    move/from16 v20, v16

    move/from16 v21, v18

    move-object/from16 v22, v14

    const/16 v23, 0x1

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    move-result v19

    .line 1049
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v21, v17

    move-object/from16 v22, v14

    const/16 v23, 0x1

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    move-result v19

    .line 1053
    :goto_2
    move-object/from16 v19, v14

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1055
    :cond_5
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v20, v14

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1057
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 1058
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    .line 1059
    move-object/from16 v19, v2

    new-instance v20, Landroid/graphics/Paint;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    .line 1060
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1061
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1064
    :cond_6
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v16, v19

    .line 1065
    move-object/from16 v19, v16

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    move/from16 v20, v0

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Landroid/support/graphics/drawable/VectorDrawableCompat;->access$900(IF)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 1066
    move-object/from16 v19, v16

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v19

    .line 1067
    move-object/from16 v19, v5

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    move-object/from16 v21, v16

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1070
    :cond_7
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1071
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    if-nez v19, :cond_8

    .line 1072
    move-object/from16 v19, v2

    new-instance v20, Landroid/graphics/Paint;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    .line 1073
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1074
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1077
    :cond_8
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v16, v19

    .line 1078
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 1079
    move-object/from16 v19, v16

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1082
    :cond_9
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 1083
    move-object/from16 v19, v16

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1086
    :cond_a
    move-object/from16 v19, v16

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 1087
    move-object/from16 v19, v16

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    move/from16 v20, v0

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Landroid/support/graphics/drawable/VectorDrawableCompat;->access$900(IF)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 1088
    move-object/from16 v19, v16

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v19

    .line 1089
    move/from16 v19, v11

    move/from16 v20, v13

    mul-float v19, v19, v20

    move/from16 v17, v19

    .line 1090
    move-object/from16 v19, v16

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    move/from16 v20, v0

    move/from16 v21, v17

    mul-float v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1091
    move-object/from16 v19, v5

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    move-object/from16 v21, v16

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 1051
    :cond_b
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    move-object/from16 v19, v0

    move/from16 v20, v16

    move/from16 v21, v17

    move-object/from16 v22, v14

    const/16 v23, 0x1

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    move-result v19

    goto/16 :goto_2
.end method

.method private getMatrixScale(Landroid/graphics/Matrix;)F
    .locals 13

    .prologue
    .line 1111
    move-object v0, p0

    move-object v1, p1

    const/4 v8, 0x4

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    move-object v2, v8

    .line 1112
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 1113
    move-object v8, v2

    const/4 v9, 0x0

    aget v8, v8, v9

    float-to-double v8, v8

    move-object v10, v2

    const/4 v11, 0x1

    aget v10, v10, v11

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    move v3, v8

    .line 1114
    move-object v8, v2

    const/4 v9, 0x2

    aget v8, v8, v9

    float-to-double v8, v8

    move-object v10, v2

    const/4 v11, 0x3

    aget v10, v10, v11

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    move v4, v8

    .line 1115
    move-object v8, v2

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object v9, v2

    const/4 v10, 0x1

    aget v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x2

    aget v10, v10, v11

    move-object v11, v2

    const/4 v12, 0x3

    aget v11, v11, v12

    invoke-static {v8, v9, v10, v11}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->cross(FFFF)F

    move-result v8

    move v5, v8

    .line 1117
    move v8, v3

    move v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    move v6, v8

    .line 1119
    const/4 v8, 0x0

    move v7, v8

    .line 1120
    move v8, v6

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 1121
    move v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move v9, v6

    div-float/2addr v8, v9

    move v7, v8

    .line 1126
    :cond_0
    move v8, v7

    move v0, v8

    return v0

    .line 1111
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 12

    .prologue
    .line 1005
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    sget-object v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawGroupTree(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 1006
    return-void
.end method

.method public getAlpha()F
    .locals 3

    .prologue
    .line 955
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .locals 2

    .prologue
    .line 944
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    move v0, v1

    return v0
.end method

.method public setAlpha(F)V
    .locals 5

    .prologue
    .line 950
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->setRootAlpha(I)V

    .line 951
    return-void
.end method

.method public setRootAlpha(I)V
    .locals 4

    .prologue
    .line 940
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 941
    return-void
.end method
