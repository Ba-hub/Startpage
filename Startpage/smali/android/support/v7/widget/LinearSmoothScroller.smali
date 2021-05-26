.class public Landroid/support/v7/widget/LinearSmoothScroller;
.super Landroid/support/v7/widget/RecyclerView$SmoothScroller;
.source "LinearSmoothScroller.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MILLISECONDS_PER_INCH:F = 25.0f

.field public static final SNAP_TO_ANY:I = 0x0

.field public static final SNAP_TO_END:I = 0x1

.field public static final SNAP_TO_START:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LinearSmoothScroller"

.field private static final TARGET_SEEK_EXTRA_SCROLL_RATIO:F = 1.2f

.field private static final TARGET_SEEK_SCROLL_DISTANCE_PX:I = 0x2710


# instance fields
.field private final MILLISECONDS_PER_PX:F

.field protected final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mInterimTargetDx:I

.field protected mInterimTargetDy:I

.field protected final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field protected mTargetVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;-><init>()V

    .line 83
    move-object v2, v0

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v3, v2, Landroid/support/v7/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 85
    move-object v2, v0

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v3, v2, Landroid/support/v7/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 93
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 96
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    .line 97
    return-void
.end method

.method private clampApplyScroll(II)I
    .locals 6

    .prologue
    .line 254
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    move v3, v4

    .line 255
    move v4, v1

    move v5, v2

    sub-int/2addr v4, v5

    move v1, v4

    .line 256
    move v4, v3

    move v5, v1

    mul-int/2addr v4, v5

    if-gtz v4, :cond_0

    .line 257
    const/4 v4, 0x0

    move v0, v4

    .line 259
    :goto_0
    return v0

    :cond_0
    move v4, v1

    move v0, v4

    goto :goto_0
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 12

    .prologue
    .line 268
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v8, v5

    packed-switch v8, :pswitch_data_0

    .line 284
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 270
    :pswitch_0
    move v8, v3

    move v9, v1

    sub-int/2addr v8, v9

    move v0, v8

    .line 287
    :goto_0
    return v0

    .line 272
    :pswitch_1
    move v8, v4

    move v9, v2

    sub-int/2addr v8, v9

    move v0, v8

    goto :goto_0

    .line 274
    :pswitch_2
    move v8, v3

    move v9, v1

    sub-int/2addr v8, v9

    move v6, v8

    .line 275
    move v8, v6

    if-lez v8, :cond_0

    .line 276
    move v8, v6

    move v0, v8

    goto :goto_0

    .line 278
    :cond_0
    move v8, v4

    move v9, v2

    sub-int/2addr v8, v9

    move v7, v8

    .line 279
    move v8, v7

    if-gez v8, :cond_1

    .line 280
    move v8, v7

    move v0, v8

    goto :goto_0

    .line 287
    :cond_1
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .locals 15

    .prologue
    .line 327
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/LinearSmoothScroller;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v9

    move-object v3, v9

    .line 328
    move-object v9, v3

    if-eqz v9, :cond_0

    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    if-nez v9, :cond_1

    .line 329
    :cond_0
    const/4 v9, 0x0

    move v0, v9

    .line 337
    :goto_0
    return v0

    .line 331
    :cond_1
    move-object v9, v1

    .line 332
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v4, v9

    .line 333
    move-object v9, v3

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v9, v10

    move v5, v9

    .line 334
    move-object v9, v3

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    move v6, v9

    .line 335
    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v9

    move v7, v9

    .line 336
    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v9

    move-object v10, v3

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    move v8, v9

    .line 337
    move-object v9, v0

    move v10, v5

    move v11, v6

    move v12, v7

    move v13, v8

    move v14, v2

    invoke-virtual/range {v9 .. v14}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v9

    move v0, v9

    goto :goto_0
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 15

    .prologue
    .line 302
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/LinearSmoothScroller;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v9

    move-object v3, v9

    .line 303
    move-object v9, v3

    if-eqz v9, :cond_0

    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v9

    if-nez v9, :cond_1

    .line 304
    :cond_0
    const/4 v9, 0x0

    move v0, v9

    .line 312
    :goto_0
    return v0

    .line 306
    :cond_1
    move-object v9, v1

    .line 307
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v4, v9

    .line 308
    move-object v9, v3

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v9, v10

    move v5, v9

    .line 309
    move-object v9, v3

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    move v6, v9

    .line 310
    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v9

    move v7, v9

    .line 311
    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v9

    move-object v10, v3

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    move v8, v9

    .line 312
    move-object v9, v0

    move v10, v5

    move v11, v6

    move v12, v7

    move v13, v8

    move v14, v2

    invoke-virtual/range {v9 .. v14}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v9

    move v0, v9

    goto :goto_0
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, p1

    const/high16 v2, 0x41c80000    # 25.0f

    move-object v3, v1

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    move v0, v2

    return v0
.end method

.method protected calculateTimeForDeceleration(I)I
    .locals 6

    .prologue
    .line 179
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move v0, v2

    return v0
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 4

    .prologue
    .line 193
    move-object v0, p0

    move v1, p1

    move v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move v0, v2

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearSmoothScroller;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    move-object v2, v3

    .line 353
    move-object v3, v2

    instance-of v3, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v3, :cond_0

    .line 354
    move-object v3, v2

    check-cast v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    move v4, v1

    .line 355
    invoke-interface {v3, v4}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v3

    move-object v0, v3

    .line 359
    :goto_0
    return-object v0

    .line 357
    :cond_0
    const-string v3, "LinearSmoothScroller"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 358
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 357
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 359
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method protected getHorizontalSnapPreference()I
    .locals 3

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    return v0

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getVerticalSnapPreference()I
    .locals 3

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    return v0

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected onSeekTargetStep(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 9

    .prologue
    .line 126
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/LinearSmoothScroller;->getChildCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 127
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/LinearSmoothScroller;->stop()V

    .line 143
    :goto_0
    return-void

    .line 136
    :cond_0
    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    move v8, v1

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 137
    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    move v8, v2

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 139
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    if-nez v5, :cond_1

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    if-nez v5, :cond_1

    .line 140
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/LinearSmoothScroller;->updateActionForInterimTarget(Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V

    .line 143
    :cond_1
    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method protected onStop()V
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    iput v2, v1, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 151
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 152
    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 13

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/LinearSmoothScroller;->getHorizontalSnapPreference()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result v8

    move v4, v8

    .line 113
    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/LinearSmoothScroller;->getVerticalSnapPreference()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result v8

    move v5, v8

    .line 114
    move v8, v4

    move v9, v4

    mul-int/2addr v8, v9

    move v9, v5

    move v10, v5

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    move v6, v8

    .line 115
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v8

    move v7, v8

    .line 116
    move v8, v7

    if-lez v8, :cond_0

    .line 117
    move-object v8, v3

    move v9, v4

    neg-int v9, v9

    move v10, v5

    neg-int v10, v10

    move v11, v7

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 119
    :cond_0
    return-void
.end method

.method protected updateActionForInterimTarget(Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 9

    .prologue
    .line 232
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/LinearSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v4

    move-object v2, v4

    .line 233
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    move-object v4, v2

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 234
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v4

    move v3, v4

    .line 235
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->jumpTo(I)V

    .line 236
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearSmoothScroller;->stop()V

    .line 251
    :goto_0
    return-void

    .line 239
    :cond_1
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/LinearSmoothScroller;->normalize(Landroid/graphics/PointF;)V

    .line 240
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 242
    move-object v4, v0

    const v5, 0x461c4000    # 10000.0f

    move-object v6, v2

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 243
    move-object v4, v0

    const v5, 0x461c4000    # 10000.0f

    move-object v6, v2

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 244
    move-object v4, v0

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v4

    move v3, v4

    .line 248
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    int-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    int-to-float v6, v6

    const v7, 0x3f99999a    # 1.2f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move v7, v3

    int-to-float v7, v7

    const v8, 0x3f99999a    # 1.2f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 251
    goto :goto_0
.end method
