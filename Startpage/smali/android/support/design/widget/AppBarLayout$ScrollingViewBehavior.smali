.class public Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;
.super Landroid/support/design/widget/HeaderScrollingViewBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1366
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 1369
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/HeaderScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1371
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroid/support/design/R$styleable;->ScrollingViewBehavior_Layout:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 1373
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->ScrollingViewBehavior_Layout_behavior_overlapTop:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->setOverlayTop(I)V

    .line 1375
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1376
    return-void
.end method

.method private static getAppBarLayoutOffset(Landroid/support/design/widget/AppBarLayout;)I
    .locals 3

    .prologue
    .line 1449
    move-object v0, p0

    move-object v2, v0

    .line 1450
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    move-object v1, v2

    .line 1451
    move-object v2, v1

    instance-of v2, v2, Landroid/support/design/widget/AppBarLayout$Behavior;

    if-eqz v2, :cond_0

    .line 1452
    move-object v2, v1

    check-cast v2, Landroid/support/design/widget/AppBarLayout$Behavior;

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v2

    move v0, v2

    .line 1454
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private offsetChildAsNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 10

    .prologue
    .line 1413
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v3

    .line 1414
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v6

    move-object v4, v6

    .line 1415
    move-object v6, v4

    instance-of v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;

    if-eqz v6, :cond_0

    .line 1418
    move-object v6, v4

    check-cast v6, Landroid/support/design/widget/AppBarLayout$Behavior;

    move-object v5, v6

    .line 1419
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v5

    .line 1420
    invoke-static {v8}, Landroid/support/design/widget/AppBarLayout$Behavior;->access$1100(Landroid/support/design/widget/AppBarLayout$Behavior;)I

    move-result v8

    add-int/2addr v7, v8

    move-object v8, v0

    .line 1421
    invoke-virtual {v8}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getVerticalLayoutGap()I

    move-result v8

    add-int/2addr v7, v8

    move-object v8, v0

    move-object v9, v3

    .line 1422
    invoke-virtual {v8, v9}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    .line 1419
    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1424
    :cond_0
    return-void
.end method


# virtual methods
.method findFirstDependency(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/support/design/widget/AppBarLayout;"
        }
    .end annotation

    .prologue
    .line 1459
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move v2, v5

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 1460
    move-object v5, v1

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v4, v5

    .line 1461
    move-object v5, v4

    instance-of v5, v5, Landroid/support/design/widget/AppBarLayout;

    if-eqz v5, :cond_0

    .line 1462
    move-object v5, v4

    check-cast v5, Landroid/support/design/widget/AppBarLayout;

    move-object v0, v5

    .line 1465
    :goto_1
    return-object v0

    .line 1459
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1465
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method bridge synthetic findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .locals 4

    .prologue
    .line 1364
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .locals 2

    .prologue
    .line 1364
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getLeftAndRightOffset()I

    move-result v1

    move v0, v1

    return v0
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 10

    .prologue
    .line 1428
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    instance-of v7, v7, Landroid/support/design/widget/AppBarLayout;

    if-eqz v7, :cond_1

    .line 1429
    move-object v7, v1

    check-cast v7, Landroid/support/design/widget/AppBarLayout;

    move-object v2, v7

    .line 1430
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v7

    move v3, v7

    .line 1431
    move-object v7, v2

    invoke-static {v7}, Landroid/support/design/widget/AppBarLayout;->access$300(Landroid/support/design/widget/AppBarLayout;)I

    move-result v7

    move v4, v7

    .line 1432
    move-object v7, v2

    invoke-static {v7}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getAppBarLayoutOffset(Landroid/support/design/widget/AppBarLayout;)I

    move-result v7

    move v5, v7

    .line 1434
    move v7, v4

    if-eqz v7, :cond_0

    move v7, v3

    move v8, v5

    add-int/2addr v7, v8

    move v8, v4

    if-gt v7, v8, :cond_0

    .line 1436
    const/4 v7, 0x0

    move v0, v7

    .line 1445
    :goto_0
    return v0

    .line 1438
    :cond_0
    move v7, v3

    move v8, v4

    sub-int/2addr v7, v8

    move v6, v7

    .line 1439
    move v7, v6

    if-eqz v7, :cond_1

    .line 1441
    const/high16 v7, 0x3f800000    # 1.0f

    move v8, v5

    int-to-float v8, v8

    move v9, v6

    int-to-float v9, v9

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    move v0, v7

    goto :goto_0

    .line 1445
    :cond_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method getScrollRange(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 1470
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/design/widget/AppBarLayout;

    if-eqz v2, :cond_0

    .line 1471
    move-object v2, v1

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    move v0, v2

    .line 1473
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 2

    .prologue
    .line 1364
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getTopAndBottomOffset()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 1381
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v3

    instance-of v4, v4, Landroid/support/design/widget/AppBarLayout;

    move v0, v4

    return v0
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .prologue
    .line 1387
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->offsetChildAsNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1388
    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 8

    .prologue
    .line 1364
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public bridge synthetic onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 14

    .prologue
    .line 1364
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-super/range {v7 .. v13}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v7

    move v0, v7

    return v0
.end method

.method public onRequestChildRectangleOnScreen(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 12

    .prologue
    .line 1394
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;

    move-result-object v7

    move-object v5, v7

    .line 1395
    move-object v7, v5

    if-eqz v7, :cond_1

    .line 1397
    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 1399
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    move-object v6, v7

    .line 1400
    move-object v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v1

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v10

    move-object v11, v1

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1402
    move-object v7, v6

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1405
    move-object v7, v5

    const/4 v8, 0x0

    move v9, v4

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v7, v8, v9}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 1406
    const/4 v7, 0x1

    move v0, v7

    .line 1409
    :goto_1
    return v0

    .line 1405
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1409
    :cond_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 4

    .prologue
    .line 1364
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->setLeftAndRightOffset(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 4

    .prologue
    .line 1364
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->setTopAndBottomOffset(I)Z

    move-result v2

    move v0, v2

    return v0
.end method
