.class Landroid/support/design/widget/TabLayout$SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabStrip"
.end annotation


# instance fields
.field private mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private mSelectedPosition:I

.field private mSelectionOffset:F

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 1809
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    .line 1810
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1801
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1804
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1805
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1811
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setWillNotDraw(Z)V

    .line 1812
    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 1813
    return-void
.end method

.method static synthetic access$2500(Landroid/support/design/widget/TabLayout$SlidingTabStrip;II)V
    .locals 6

    .prologue
    .line 1797
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method

.method static synthetic access$2602(Landroid/support/design/widget/TabLayout$SlidingTabStrip;I)I
    .locals 7

    .prologue
    .line 1797
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    move v0, v2

    return v0
.end method

.method static synthetic access$2702(Landroid/support/design/widget/TabLayout$SlidingTabStrip;F)F
    .locals 7

    .prologue
    .line 1797
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    move v0, v2

    return v0
.end method

.method private setIndicatorPosition(II)V
    .locals 5

    .prologue
    .line 1951
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ne v3, v4, :cond_0

    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    if-eq v3, v4, :cond_1

    .line 1953
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1954
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1955
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1957
    :cond_1
    return-void
.end method

.method private updateIndicatorPosition()V
    .locals 9

    .prologue
    .line 1928
    move-object v0, p0

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v1, v5

    .line 1931
    move-object v5, v1

    if-eqz v5, :cond_1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_1

    .line 1932
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    move v2, v5

    .line 1933
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    move v3, v5

    .line 1935
    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    .line 1937
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 1938
    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    move-object v6, v4

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float/2addr v6, v7

    move v7, v2

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    move v2, v5

    .line 1940
    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    move-object v6, v4

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float/2addr v6, v7

    move v7, v3

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    move v3, v5

    .line 1947
    :cond_0
    :goto_0
    move-object v5, v0

    move v6, v2

    move v7, v3

    invoke-direct {v5, v6, v7}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    .line 1948
    return-void

    .line 1944
    :cond_1
    const/4 v5, -0x1

    move v8, v5

    move v5, v8

    move v6, v8

    move v3, v6

    move v2, v5

    goto :goto_0
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .locals 20

    .prologue
    .line 1960
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v10, :cond_0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v10}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1961
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v10}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 1964
    :cond_0
    move-object v10, v0

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    const/4 v10, 0x1

    :goto_0
    move v3, v10

    .line 1967
    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v4, v10

    .line 1968
    move-object v10, v4

    if-nez v10, :cond_2

    .line 1970
    move-object v10, v0

    invoke-direct {v10}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    .line 2026
    :goto_1
    return-void

    .line 1964
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1974
    :cond_2
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    move v5, v10

    .line 1975
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    move v6, v10

    .line 1979
    move v10, v1

    move-object v11, v0

    iget v11, v11, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x1

    if-gt v10, v11, :cond_5

    .line 1981
    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    move v7, v10

    .line 1982
    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    move v8, v10

    .line 2003
    :goto_2
    move v10, v7

    move v11, v5

    if-ne v10, v11, :cond_3

    move v10, v8

    move v11, v6

    if-eq v10, v11, :cond_4

    .line 2004
    :cond_3
    move-object v10, v0

    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v11

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v10, v19

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    iput-object v12, v11, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    move-object v9, v10

    .line 2005
    move-object v10, v9

    sget-object v11, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v11}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2006
    move-object v10, v9

    move v11, v2

    int-to-long v11, v11

    invoke-virtual {v10, v11, v12}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(J)V

    .line 2007
    move-object v10, v9

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11, v12}, Landroid/support/design/widget/ValueAnimatorCompat;->setFloatValues(FF)V

    .line 2008
    move-object v10, v9

    new-instance v11, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v0

    move v14, v7

    move v15, v5

    move/from16 v16, v8

    move/from16 v17, v6

    invoke-direct/range {v12 .. v17}, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;-><init>(Landroid/support/design/widget/TabLayout$SlidingTabStrip;IIII)V

    invoke-virtual {v10, v11}, Landroid/support/design/widget/ValueAnimatorCompat;->addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 2017
    move-object v10, v9

    new-instance v11, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v0

    move v14, v1

    invoke-direct {v12, v13, v14}, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;-><init>(Landroid/support/design/widget/TabLayout$SlidingTabStrip;I)V

    invoke-virtual {v10, v11}, Landroid/support/design/widget/ValueAnimatorCompat;->addListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V

    .line 2024
    move-object v10, v9

    invoke-virtual {v10}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 2026
    :cond_4
    goto :goto_1

    .line 1985
    :cond_5
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v11, 0x18

    invoke-static {v10, v11}, Landroid/support/design/widget/TabLayout;->access$2200(Landroid/support/design/widget/TabLayout;I)I

    move-result v10

    move v9, v10

    .line 1986
    move v10, v1

    move-object v11, v0

    iget v11, v11, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    if-ge v10, v11, :cond_7

    .line 1988
    move v10, v3

    if-eqz v10, :cond_6

    .line 1989
    move v10, v5

    move v11, v9

    sub-int/2addr v10, v11

    move/from16 v18, v10

    move/from16 v10, v18

    move/from16 v11, v18

    move v8, v11

    move v7, v10

    goto :goto_2

    .line 1991
    :cond_6
    move v10, v6

    move v11, v9

    add-int/2addr v10, v11

    move/from16 v18, v10

    move/from16 v10, v18

    move/from16 v11, v18

    move v8, v11

    move v7, v10

    goto/16 :goto_2

    .line 1995
    :cond_7
    move v10, v3

    if-eqz v10, :cond_8

    .line 1996
    move v10, v6

    move v11, v9

    add-int/2addr v10, v11

    move/from16 v18, v10

    move/from16 v10, v18

    move/from16 v11, v18

    move v8, v11

    move v7, v10

    goto/16 :goto_2

    .line 1998
    :cond_8
    move v10, v5

    move v11, v9

    sub-int/2addr v10, v11

    move/from16 v18, v10

    move/from16 v10, v18

    move/from16 v11, v18

    move v8, v11

    move v7, v10

    goto/16 :goto_2
.end method

.method childrenNeedLayout()Z
    .locals 6

    .prologue
    .line 1830
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v4

    move v2, v4

    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 1831
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1832
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-gtz v4, :cond_0

    .line 1833
    const/4 v4, 0x1

    move v0, v4

    .line 1836
    :goto_1
    return v0

    .line 1830
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1836
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 2030
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2033
    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ltz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-le v2, v3, :cond_0

    .line 2034
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    int-to-float v3, v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getHeight()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    int-to-float v5, v5

    move-object v6, v0

    .line 2035
    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 2034
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2037
    :cond_0
    return-void
.end method

.method getIndicatorPosition()F
    .locals 3

    .prologue
    .line 1850
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    int-to-float v1, v1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    add-float/2addr v1, v2

    move v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    .prologue
    .line 1912
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-super/range {v8 .. v13}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1914
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v8}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1917
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v8}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 1918
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v8}, Landroid/support/design/widget/ValueAnimatorCompat;->getDuration()J

    move-result-wide v8

    move-wide v6, v8

    .line 1919
    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 1920
    invoke-virtual {v11}, Landroid/support/design/widget/ValueAnimatorCompat;->getAnimatedFraction()F

    move-result v11

    sub-float/2addr v10, v11

    move-wide v11, v6

    long-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 1919
    invoke-virtual {v8, v9, v10}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    .line 1925
    :goto_0
    return-void

    .line 1923
    :cond_0
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 1855
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-super {v9, v10, v11}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1857
    move v9, v1

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v9, v10, :cond_0

    .line 1908
    :goto_0
    return-void

    .line 1863
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v9}, Landroid/support/design/widget/TabLayout;->access$1900(Landroid/support/design/widget/TabLayout;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v9}, Landroid/support/design/widget/TabLayout;->access$2300(Landroid/support/design/widget/TabLayout;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 1864
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v9

    move v3, v9

    .line 1867
    const/4 v9, 0x0

    move v4, v9

    .line 1868
    const/4 v9, 0x0

    move v5, v9

    move v9, v3

    move v6, v9

    :goto_1
    move v9, v5

    move v10, v6

    if-ge v9, v10, :cond_2

    .line 1869
    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 1870
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1

    .line 1871
    move v9, v4

    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v4, v9

    .line 1868
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1875
    :cond_2
    move v9, v4

    if-gtz v9, :cond_3

    .line 1877
    goto :goto_0

    .line 1880
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v10, 0x10

    invoke-static {v9, v10}, Landroid/support/design/widget/TabLayout;->access$2200(Landroid/support/design/widget/TabLayout;I)I

    move-result v9

    move v5, v9

    .line 1881
    const/4 v9, 0x0

    move v6, v9

    .line 1883
    move v9, v4

    move v10, v3

    mul-int/2addr v9, v10

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getMeasuredWidth()I

    move-result v10

    move v11, v5

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_8

    .line 1886
    const/4 v9, 0x0

    move v7, v9

    :goto_2
    move v9, v7

    move v10, v3

    if-ge v9, v10, :cond_6

    .line 1887
    move-object v9, v0

    move v10, v7

    .line 1888
    invoke-virtual {v9, v10}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object v8, v9

    .line 1889
    move-object v9, v8

    iget v9, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v10, v4

    if-ne v9, v10, :cond_4

    move-object v9, v8

    iget v9, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_5

    .line 1890
    :cond_4
    move-object v9, v8

    move v10, v4

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1891
    move-object v9, v8

    const/4 v10, 0x0

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1892
    const/4 v9, 0x1

    move v6, v9

    .line 1886
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1903
    :cond_6
    :goto_3
    move v9, v6

    if-eqz v9, :cond_7

    .line 1905
    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-super {v9, v10, v11}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1908
    :cond_7
    goto/16 :goto_0

    .line 1898
    :cond_8
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/design/widget/TabLayout;->access$2302(Landroid/support/design/widget/TabLayout;I)I

    move-result v9

    .line 1899
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/design/widget/TabLayout;->access$2400(Landroid/support/design/widget/TabLayout;Z)V

    .line 1900
    const/4 v9, 0x1

    move v6, v9

    goto :goto_3
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 5

    .prologue
    .line 1840
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v3}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1841
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v3}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 1844
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1845
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    .line 1846
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    .line 1847
    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .locals 4

    .prologue
    .line 1816
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 1817
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1818
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1820
    :cond_0
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 4

    .prologue
    .line 1823
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 1824
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    .line 1825
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1827
    :cond_0
    return-void
.end method
