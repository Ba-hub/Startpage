.class Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewCompat$ViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewCompatImpl"
.end annotation


# static fields
.field private static sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private mTempDetachBound:Z

.field mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 489
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 493
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private bindTempDetach()V
    .locals 6

    .prologue
    .line 703
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    const-class v3, Landroid/view/View;

    const-string v4, "dispatchStartTemporaryDetach"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    .line 705
    move-object v2, v0

    const-class v3, Landroid/view/View;

    const-string v4, "dispatchFinishTemporaryDetach"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :goto_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    .line 711
    return-void

    .line 707
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 708
    const-string v2, "ViewCompat"

    const-string v3, "Couldn\'t find method"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_0
.end method

.method private canScrollingViewScrollHorizontally(Landroid/support/v4/view/ScrollingView;I)Z
    .locals 8

    .prologue
    .line 997
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    invoke-interface {v5}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollOffset()I

    move-result v5

    move v3, v5

    .line 998
    move-object v5, v1

    invoke-interface {v5}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollRange()I

    move-result v5

    move-object v6, v1

    .line 999
    invoke-interface {v6}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollExtent()I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    .line 1000
    move v5, v4

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 1004
    :goto_0
    return v0

    .line 1001
    :cond_0
    move v5, v2

    if-gez v5, :cond_2

    .line 1002
    move v5, v3

    if-lez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1004
    :cond_2
    move v5, v3

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_3

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private canScrollingViewScrollVertically(Landroid/support/v4/view/ScrollingView;I)Z
    .locals 8

    .prologue
    .line 1009
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    invoke-interface {v5}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollOffset()I

    move-result v5

    move v3, v5

    .line 1010
    move-object v5, v1

    invoke-interface {v5}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollRange()I

    move-result v5

    move-object v6, v1

    .line 1011
    invoke-interface {v6}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollExtent()I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    .line 1012
    move v5, v4

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 1016
    :goto_0
    return v0

    .line 1013
    :cond_0
    move v5, v2

    if-gez v5, :cond_2

    .line 1014
    move v5, v3

    if-lez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1016
    :cond_2
    move v5, v3

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_3

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method


# virtual methods
.method public animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 775
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    move-object v0, v2

    return-object v0
.end method

.method public canScrollHorizontally(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 498
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    instance-of v3, v3, Landroid/support/v4/view/ScrollingView;

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/support/v4/view/ScrollingView;

    move v5, v2

    .line 499
    invoke-direct {v3, v4, v5}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->canScrollingViewScrollHorizontally(Landroid/support/v4/view/ScrollingView;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 503
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    instance-of v3, v3, Landroid/support/v4/view/ScrollingView;

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/support/v4/view/ScrollingView;

    move v5, v2

    .line 504
    invoke-direct {v3, v4, v5}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->canScrollingViewScrollVertically(Landroid/support/v4/view/ScrollingView;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public combineMeasuredStates(II)I
    .locals 5

    .prologue
    .line 1098
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move v4, v2

    or-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 4

    .prologue
    .line 943
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 681
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    if-nez v3, :cond_0

    .line 682
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    .line 684
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 686
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 694
    :goto_0
    return-void

    .line 687
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 688
    const-string v3, "ViewCompat"

    const-string v4, "Error calling dispatchFinishTemporaryDetach"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 689
    goto :goto_0

    .line 692
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->onFinishTemporaryDetach()V

    goto :goto_0
.end method

.method public dispatchNestedFling(Landroid/view/View;FFZ)Z
    .locals 9

    .prologue
    .line 1066
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v1

    instance-of v5, v5, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v5, :cond_0

    .line 1067
    move-object v5, v1

    check-cast v5, Landroid/support/v4/view/NestedScrollingChild;

    move v6, v2

    move v7, v3

    move v8, v4

    invoke-interface {v5, v6, v7, v8}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedFling(FFZ)Z

    move-result v5

    move v0, v5

    .line 1070
    :goto_0
    return v0

    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public dispatchNestedPreFling(Landroid/view/View;FF)Z
    .locals 7

    .prologue
    .line 1075
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    instance-of v4, v4, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v4, :cond_0

    .line 1076
    move-object v4, v1

    check-cast v4, Landroid/support/v4/view/NestedScrollingChild;

    move v5, v2

    move v6, v3

    invoke-interface {v4, v5, v6}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreFling(FF)Z

    move-result v4

    move v0, v4

    .line 1078
    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .locals 11

    .prologue
    .line 1056
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object v6, v1

    instance-of v6, v6, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v6, :cond_0

    .line 1057
    move-object v6, v1

    check-cast v6, Landroid/support/v4/view/NestedScrollingChild;

    move v7, v2

    move v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreScroll(II[I[I)Z

    move-result v6

    move v0, v6

    .line 1060
    :goto_0
    return v0

    :cond_0
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method public dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .locals 13

    .prologue
    .line 1046
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v1

    instance-of v7, v7, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v7, :cond_0

    .line 1047
    move-object v7, v1

    check-cast v7, Landroid/support/v4/view/NestedScrollingChild;

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move-object v12, v6

    invoke-interface/range {v7 .. v12}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedScroll(IIII[I)Z

    move-result v7

    move v0, v7

    .line 1050
    :goto_0
    return v0

    :cond_0
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method public dispatchStartTemporaryDetach(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 664
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    if-nez v3, :cond_0

    .line 665
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    .line 667
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 669
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 677
    :goto_0
    return-void

    .line 670
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 671
    const-string v3, "ViewCompat"

    const-string v4, "Error calling dispatchStartTemporaryDetach"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 672
    goto :goto_0

    .line 675
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->onStartTemporaryDetach()V

    goto :goto_0
.end method

.method public getAccessibilityLiveRegion(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 639
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 3

    .prologue
    .line 575
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getAlpha(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 579
    move-object v0, p0

    move-object v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    move v0, v2

    return v0
.end method

.method public getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 3

    .prologue
    .line 978
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatBase;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 3

    .prologue
    .line 993
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatBase;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 890
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getElevation(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 872
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getFitsSystemWindows(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 917
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method getFrameTime()J
    .locals 3

    .prologue
    .line 555
    move-object v0, p0

    const-wide/16 v1, 0xa

    move-wide v0, v1

    return-wide v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 559
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getLabelFor(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 591
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getLayerType(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 587
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getLayoutDirection(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 604
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 760
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getMeasuredHeightAndState(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 629
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getMeasuredState(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 634
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getMeasuredWidthAndState(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 624
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 770
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatBase;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 765
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatBase;->getMinimumWidth(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getPaddingEnd(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 654
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getPaddingStart(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 649
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 3

    .prologue
    .line 614
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getPivotX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 840
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getPivotY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 845
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getRotation(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 735
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getRotationX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 740
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getRotationY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 745
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getScaleX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 750
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getScaleY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getScrollIndicators(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1123
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 854
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getTranslationX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 715
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getTranslationY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 720
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 881
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getWindowSystemUiVisibility(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 859
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 725
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    move v0, v2

    return v0
.end method

.method public getY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 730
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    move v0, v2

    return v0
.end method

.method public getZ(Landroid/view/View;)F
    .locals 5

    .prologue
    .line 1103
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getTranslationZ(Landroid/view/View;)F

    move-result v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getElevation(Landroid/view/View;)F

    move-result v3

    add-float/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public hasAccessibilityDelegate(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 514
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public hasNestedScrollingParent(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1037
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v2, :cond_0

    .line 1038
    move-object v2, v1

    check-cast v2, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {v2}, Landroid/support/v4/view/NestedScrollingChild;->hasNestedScrollingParent()Z

    move-result v2

    move v0, v2

    .line 1040
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public hasOnClickListeners(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1118
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 698
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 532
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1113
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatBase;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 567
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public isInLayout(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1083
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isLaidOut(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1088
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatBase;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isLayoutDirectionResolved(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1093
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isNestedScrollingEnabled(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 970
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v2, :cond_0

    .line 971
    move-object v2, v1

    check-cast v2, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {v2}, Landroid/support/v4/view/NestedScrollingChild;->isNestedScrollingEnabled()Z

    move-result v2

    move v0, v2

    .line 973
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public isPaddingRelative(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 958
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public jumpDrawablesToCurrentState(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 928
    return-void
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 1138
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatBase;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1139
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 1143
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatBase;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1144
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 4

    .prologue
    .line 938
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 524
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 520
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 5

    .prologue
    .line 571
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 540
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 541
    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .locals 11

    .prologue
    .line 544
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->invalidate(IIII)V

    .line 545
    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    .line 548
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v3

    .line 549
    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 11

    .prologue
    .line 552
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v7

    move-wide v9, v3

    add-long/2addr v7, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v5

    .line 553
    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 864
    return-void
.end method

.method public resolveSizeAndState(III)I
    .locals 6

    .prologue
    .line 619
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v1

    move v5, v2

    invoke-static {v4, v5}, Landroid/view/View;->resolveSize(II)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 645
    return-void
.end method

.method public setActivated(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 954
    return-void
.end method

.method public setAlpha(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 796
    return-void
.end method

.method public setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 5

    .prologue
    .line 983
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatBase;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 984
    return-void
.end method

.method public setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 5

    .prologue
    .line 988
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatBase;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 989
    return-void
.end method

.method public setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .locals 11

    .prologue
    .line 895
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v4, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 897
    :try_start_0
    const-class v4, Landroid/view/ViewGroup;

    const-string v5, "setChildrenDrawingOrderEnabled"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    .line 898
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    :goto_0
    sget-object v4, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 905
    :cond_0
    :try_start_1
    sget-object v4, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    move-object v5, v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    .line 913
    :goto_1
    return-void

    .line 899
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 900
    const-string v4, "ViewCompat"

    const-string v5, "Unable to find childrenDrawingOrderEnabled"

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_0

    .line 906
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 907
    const-string v4, "ViewCompat"

    const-string v5, "Unable to invoke childrenDrawingOrderEnabled"

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 912
    goto :goto_1

    .line 908
    :catch_2
    move-exception v4

    move-object v3, v4

    .line 909
    const-string v4, "ViewCompat"

    const-string v5, "Unable to invoke childrenDrawingOrderEnabled"

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 912
    goto :goto_1

    .line 910
    :catch_3
    move-exception v4

    move-object v3, v4

    .line 911
    const-string v4, "ViewCompat"

    const-string v5, "Unable to invoke childrenDrawingOrderEnabled"

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_1
.end method

.method public setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 886
    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 868
    return-void
.end method

.method public setFitsSystemWindows(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 923
    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 537
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 564
    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 596
    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 600
    return-void
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 584
    return-void
.end method

.method public setLayoutDirection(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 610
    return-void
.end method

.method public setNestedScrollingEnabled(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 963
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    instance-of v3, v3, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v3, :cond_0

    .line 964
    move-object v3, v1

    check-cast v3, Landroid/support/v4/view/NestedScrollingChild;

    move v4, v2

    invoke-interface {v3, v4}, Landroid/support/v4/view/NestedScrollingChild;->setNestedScrollingEnabled(Z)V

    .line 966
    :cond_0
    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 0

    .prologue
    .line 934
    return-void
.end method

.method public setPaddingRelative(Landroid/view/View;IIII)V
    .locals 11

    .prologue
    .line 659
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 660
    return-void
.end method

.method public setPivotX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 831
    return-void
.end method

.method public setPivotY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 836
    return-void
.end method

.method public setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V
    .locals 0

    .prologue
    .line 1149
    return-void
.end method

.method public setRotation(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 781
    return-void
.end method

.method public setRotationX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 801
    return-void
.end method

.method public setRotationY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 806
    return-void
.end method

.method public setSaveFromParentEnabled(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 949
    return-void
.end method

.method public setScaleX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 811
    return-void
.end method

.method public setScaleY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 816
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1129
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 1134
    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 850
    return-void
.end method

.method public setTranslationX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 786
    return-void
.end method

.method public setTranslationY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 791
    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 877
    return-void
.end method

.method public setX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 821
    return-void
.end method

.method public setY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 826
    return-void
.end method

.method public setZ(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1109
    return-void
.end method

.method public startNestedScroll(Landroid/view/View;I)Z
    .locals 5

    .prologue
    .line 1022
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    instance-of v3, v3, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v3, :cond_0

    .line 1023
    move-object v3, v1

    check-cast v3, Landroid/support/v4/view/NestedScrollingChild;

    move v4, v2

    invoke-interface {v3, v4}, Landroid/support/v4/view/NestedScrollingChild;->startNestedScroll(I)Z

    move-result v3

    move v0, v3

    .line 1025
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1030
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v2, :cond_0

    .line 1031
    move-object v2, v1

    check-cast v2, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {v2}, Landroid/support/v4/view/NestedScrollingChild;->stopNestedScroll()V

    .line 1033
    :cond_0
    return-void
.end method
