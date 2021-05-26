.class abstract Landroid/support/design/widget/HeaderScrollingViewBehavior;
.super Landroid/support/design/widget/ViewOffsetBehavior;
.source "HeaderScrollingViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/ViewOffsetBehavior",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mOverlayTop:I

.field final mTempRect1:Landroid/graphics/Rect;

.field final mTempRect2:Landroid/graphics/Rect;

.field private mVerticalLayoutGap:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>()V

    .line 38
    move-object v1, v0

    new-instance v2, Landroid/graphics/Rect;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 39
    move-object v1, v0

    new-instance v2, Landroid/graphics/Rect;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    .line 41
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 39
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    .line 41
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 48
    return-void
.end method

.method private static resolveGravity(I)I
    .locals 2

    .prologue
    .line 150
    move v0, p0

    move v1, v0

    if-nez v1, :cond_0

    const v1, 0x800033

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method abstract findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method final getOverlapPixelsForOffset(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mOverlayTop:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    .line 146
    invoke-virtual {v2, v3}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getOverlapRatioForOffset(Landroid/view/View;)F

    move-result v2

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mOverlayTop:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mOverlayTop:I

    .line 145
    invoke-static {v2, v3, v4}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v2

    goto :goto_0
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    move v0, v2

    return v0
.end method

.method public final getOverlayTop()I
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mOverlayTop:I

    move v0, v1

    return v0
.end method

.method getScrollRange(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v0, v2

    return v0
.end method

.method final getVerticalLayoutGap()I
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    move v0, v1

    return v0
.end method

.method protected layoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 19

    .prologue
    .line 102
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object v12, v2

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v12

    move-object v5, v12

    .line 103
    move-object v12, v1

    move-object v13, v5

    invoke-virtual {v12, v13}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v12

    move-object v6, v12

    .line 105
    move-object v12, v6

    if-eqz v12, :cond_1

    .line 106
    move-object v12, v3

    .line 107
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v7, v12

    .line 108
    move-object v12, v1

    iget-object v12, v12, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    move-object v8, v12

    .line 109
    move-object v12, v8

    move-object v13, v2

    invoke-virtual {v13}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v13

    move-object v14, v7

    iget v14, v14, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    move-object v14, v6

    .line 110
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    move-object v15, v7

    iget v15, v15, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v15

    move-object v15, v2

    .line 111
    invoke-virtual {v15}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v15

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v16, v2

    .line 112
    invoke-virtual/range {v16 .. v16}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v16

    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v17

    add-int v16, v16, v17

    move-object/from16 v17, v2

    .line 113
    invoke-virtual/range {v17 .. v17}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    .line 109
    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    .line 115
    move-object v12, v2

    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout;->getLastWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v12

    move-object v9, v12

    .line 116
    move-object v12, v9

    if-eqz v12, :cond_0

    move-object v12, v2

    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v12, v3

    .line 117
    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 121
    move-object v12, v8

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object v14, v9

    invoke-virtual {v14}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->left:I

    .line 122
    move-object v12, v8

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move-object v14, v9

    invoke-virtual {v14}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v14

    sub-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->right:I

    .line 125
    :cond_0
    move-object v12, v1

    iget-object v12, v12, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    move-object v10, v12

    .line 126
    move-object v12, v7

    iget v12, v12, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v12}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->resolveGravity(I)I

    move-result v12

    move-object v13, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    move-object v14, v3

    .line 127
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    move-object v15, v8

    move-object/from16 v16, v10

    move/from16 v17, v4

    .line 126
    invoke-static/range {v12 .. v17}, Landroid/support/v4/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 129
    move-object v12, v1

    move-object v13, v6

    invoke-virtual {v12, v13}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result v12

    move v11, v12

    .line 131
    move-object v12, v3

    move-object v13, v10

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object v14, v10

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move v15, v11

    sub-int/2addr v14, v15

    move-object v15, v10

    iget v15, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v17, v11

    sub-int v16, v16, v17

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    .line 132
    move-object v12, v1

    move-object v13, v10

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object v14, v6

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    sub-int/2addr v13, v14

    iput v13, v12, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_1
    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move v15, v4

    invoke-super {v12, v13, v14, v15}, Landroid/support/design/widget/ViewOffsetBehavior;->layoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 136
    move-object v12, v1

    const/4 v13, 0x0

    iput v13, v12, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    goto :goto_0
.end method

.method public onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 19

    .prologue
    .line 54
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v13, v2

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v7, v13

    .line 55
    move v13, v7

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    move v13, v7

    const/4 v14, -0x2

    if-ne v13, v14, :cond_4

    .line 60
    :cond_0
    move-object v13, v1

    move-object v14, v2

    invoke-virtual {v13, v14}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v13

    move-object v8, v13

    .line 61
    move-object v13, v0

    move-object v14, v8

    invoke-virtual {v13, v14}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v13

    move-object v9, v13

    .line 62
    move-object v13, v9

    if-eqz v13, :cond_4

    .line 63
    move-object v13, v9

    invoke-static {v13}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object v13, v2

    .line 64
    invoke-static {v13}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 67
    move-object v13, v2

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 69
    move-object v13, v2

    invoke-static {v13}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 71
    move-object v13, v2

    invoke-virtual {v13}, Landroid/view/View;->requestLayout()V

    .line 72
    const/4 v13, 0x1

    move v0, v13

    .line 96
    :goto_0
    return v0

    .line 76
    :cond_1
    move v13, v5

    invoke-static {v13}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    move v10, v13

    .line 77
    move v13, v10

    if-nez v13, :cond_2

    .line 79
    move-object v13, v1

    invoke-virtual {v13}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v13

    move v10, v13

    .line 82
    :cond_2
    move v13, v10

    move-object v14, v9

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v13, v14

    move-object v14, v0

    move-object v15, v9

    .line 83
    invoke-virtual {v14, v15}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v14

    add-int/2addr v13, v14

    move v11, v13

    .line 84
    move v13, v11

    move v14, v7

    const/4 v15, -0x1

    if-ne v14, v15, :cond_3

    const/high16 v14, 0x40000000    # 2.0f

    :goto_1
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move v12, v13

    .line 90
    move-object v13, v1

    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v12

    move/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 93
    const/4 v13, 0x1

    move v0, v13

    goto :goto_0

    .line 84
    :cond_3
    const/high16 v14, -0x80000000

    goto :goto_1

    .line 96
    :cond_4
    const/4 v13, 0x0

    move v0, v13

    goto :goto_0
.end method

.method public final setOverlayTop(I)V
    .locals 4

    .prologue
    .line 172
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/HeaderScrollingViewBehavior;->mOverlayTop:I

    .line 173
    return-void
.end method
