.class public Landroid/support/v7/widget/LinearSnapHelper;
.super Landroid/support/v7/widget/SnapHelper;
.source "LinearSnapHelper.java"


# static fields
.field private static final INVALID_DISTANCE:F = 1.0f


# instance fields
.field private mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private computeDistancePerChild(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)F
    .locals 14

    .prologue
    .line 232
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    const/4 v11, 0x0

    move-object v3, v11

    .line 233
    const/4 v11, 0x0

    move-object v4, v11

    .line 234
    const v11, 0x7fffffff

    move v5, v11

    .line 235
    const/high16 v11, -0x80000000

    move v6, v11

    .line 236
    move-object v11, v1

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v11

    move v7, v11

    .line 237
    move v11, v7

    if-nez v11, :cond_0

    .line 238
    const/high16 v11, 0x3f800000    # 1.0f

    move v0, v11

    .line 267
    :goto_0
    return v0

    .line 241
    :cond_0
    const/4 v11, 0x0

    move v8, v11

    :goto_1
    move v11, v8

    move v12, v7

    if-ge v11, v12, :cond_4

    .line 242
    move-object v11, v1

    move v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v9, v11

    .line 243
    move-object v11, v1

    move-object v12, v9

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move v10, v11

    .line 244
    move v11, v10

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    .line 241
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 247
    :cond_2
    move v11, v10

    move v12, v5

    if-ge v11, v12, :cond_3

    .line 248
    move v11, v10

    move v5, v11

    .line 249
    move-object v11, v9

    move-object v3, v11

    .line 251
    :cond_3
    move v11, v10

    move v12, v6

    if-le v11, v12, :cond_1

    .line 252
    move v11, v10

    move v6, v11

    .line 253
    move-object v11, v9

    move-object v4, v11

    goto :goto_2

    .line 256
    :cond_4
    move-object v11, v3

    if-eqz v11, :cond_5

    move-object v11, v4

    if-nez v11, :cond_6

    .line 257
    :cond_5
    const/high16 v11, 0x3f800000    # 1.0f

    move v0, v11

    goto :goto_0

    .line 259
    :cond_6
    move-object v11, v2

    move-object v12, v3

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    move-object v12, v2

    move-object v13, v4

    .line 260
    invoke-virtual {v12, v13}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v12

    .line 259
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v8, v11

    .line 261
    move-object v11, v2

    move-object v12, v3

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    move-object v12, v2

    move-object v13, v4

    .line 262
    invoke-virtual {v12, v13}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v12

    .line 261
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v9, v11

    .line 263
    move v11, v9

    move v12, v8

    sub-int/2addr v11, v12

    move v10, v11

    .line 264
    move v11, v10

    if-nez v11, :cond_7

    .line 265
    const/high16 v11, 0x3f800000    # 1.0f

    move v0, v11

    goto :goto_0

    .line 267
    :cond_7
    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v10

    int-to-float v12, v12

    mul-float/2addr v11, v12

    move v12, v6

    move v13, v5

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    div-float/2addr v11, v12

    move v0, v11

    goto :goto_0
.end method

.method private distanceToCenter(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I
    .locals 9
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    move-object v7, v3

    move-object v8, v2

    .line 143
    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    move v4, v6

    .line 145
    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 146
    move-object v6, v3

    invoke-virtual {v6}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    move v5, v6

    .line 150
    :goto_0
    move v6, v4

    move v7, v5

    sub-int/2addr v6, v7

    move v0, v6

    return v0

    .line 148
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    move v5, v6

    goto :goto_0
.end method

.method private estimateNextPositionDiffForFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;II)I
    .locals 11

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v8, v0

    move v9, v3

    move v10, v4

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/LinearSnapHelper;->calculateScrollDistance(II)[I

    move-result-object v8

    move-object v5, v8

    .line 167
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroid/support/v7/widget/LinearSnapHelper;->computeDistancePerChild(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)F

    move-result v8

    move v6, v8

    .line 168
    move v8, v6

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    .line 169
    const/4 v8, 0x0

    move v0, v8

    .line 173
    :goto_0
    return v0

    .line 171
    :cond_0
    move-object v8, v5

    const/4 v9, 0x0

    aget v8, v8, v9

    .line 172
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move-object v9, v5

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v8, v9, :cond_1

    move-object v8, v5

    const/4 v9, 0x0

    aget v8, v8, v9

    :goto_1
    move v7, v8

    .line 173
    move v8, v7

    int-to-float v8, v8

    move v9, v6

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    move v0, v8

    goto :goto_0

    .line 172
    :cond_1
    move-object v8, v5

    const/4 v9, 0x1

    aget v8, v8, v9

    goto :goto_1
.end method

.method private findCenterView(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;
    .locals 14
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v11, v1

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v11

    move v3, v11

    .line 189
    move v11, v3

    if-nez v11, :cond_0

    .line 190
    const/4 v11, 0x0

    move-object v0, v11

    .line 214
    :goto_0
    return-object v0

    .line 193
    :cond_0
    const/4 v11, 0x0

    move-object v4, v11

    .line 195
    move-object v11, v1

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 196
    move-object v11, v2

    invoke-virtual {v11}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v11

    move-object v12, v2

    invoke-virtual {v12}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v12

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    move v5, v11

    .line 200
    :goto_1
    const v11, 0x7fffffff

    move v6, v11

    .line 202
    const/4 v11, 0x0

    move v7, v11

    :goto_2
    move v11, v7

    move v12, v3

    if-ge v11, v12, :cond_3

    .line 203
    move-object v11, v1

    move v12, v7

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v8, v11

    .line 204
    move-object v11, v2

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    move-object v12, v2

    move-object v13, v8

    .line 205
    invoke-virtual {v12, v13}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v12

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    move v9, v11

    .line 206
    move v11, v9

    move v12, v5

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    move v10, v11

    .line 209
    move v11, v10

    move v12, v6

    if-ge v11, v12, :cond_1

    .line 210
    move v11, v10

    move v6, v11

    .line 211
    move-object v11, v8

    move-object v4, v11

    .line 202
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 198
    :cond_2
    move-object v11, v2

    invoke-virtual {v11}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v11

    const/4 v12, 0x2

    div-int/lit8 v11, v11, 0x2

    move v5, v11

    goto :goto_1

    .line 214
    :cond_3
    move-object v11, v4

    move-object v0, v11

    goto :goto_0
.end method

.method private getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .locals 4
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/LinearSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/LinearSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 282
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/LinearSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 284
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/LinearSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v0, v2

    return-object v0
.end method

.method private getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .locals 4
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 272
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/LinearSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/LinearSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 273
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/LinearSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 275
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/LinearSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 11
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v3, v4

    .line 46
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    move-object v10, v1

    .line 48
    invoke-direct {v9, v10}, Landroid/support/v7/widget/LinearSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v9

    .line 47
    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/LinearSnapHelper;->distanceToCenter(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I

    move-result v6

    aput v6, v4, v5

    .line 53
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    move-object v10, v1

    .line 55
    invoke-direct {v9, v10}, Landroid/support/v7/widget/LinearSnapHelper;->getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v9

    .line 54
    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/LinearSnapHelper;->distanceToCenter(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I

    move-result v6

    aput v6, v4, v5

    .line 59
    :goto_1
    move-object v4, v3

    move-object v0, v4

    return-object v0

    .line 50
    :cond_0
    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    goto :goto_0

    .line 57
    :cond_1
    move-object v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    goto :goto_1
.end method

.method public findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 6

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/LinearSnapHelper;->getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/LinearSnapHelper;->findCenterView(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .line 137
    :goto_0
    return-object v0

    .line 134
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/LinearSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/LinearSnapHelper;->findCenterView(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 137
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public findTargetSnapPosition(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)I
    .locals 18

    .prologue
    .line 65
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v13, v1

    instance-of v13, v13, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v13, :cond_0

    .line 66
    const/4 v13, -0x1

    move v0, v13

    .line 127
    :goto_0
    return v0

    .line 69
    :cond_0
    move-object v13, v1

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v13

    move v4, v13

    .line 70
    move v13, v4

    if-nez v13, :cond_1

    .line 71
    const/4 v13, -0x1

    move v0, v13

    goto :goto_0

    .line 74
    :cond_1
    move-object v13, v0

    move-object v14, v1

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/LinearSnapHelper;->findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v13

    move-object v5, v13

    .line 75
    move-object v13, v5

    if-nez v13, :cond_2

    .line 76
    const/4 v13, -0x1

    move v0, v13

    goto :goto_0

    .line 79
    :cond_2
    move-object v13, v1

    move-object v14, v5

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v13

    move v6, v13

    .line 80
    move v13, v6

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    .line 81
    const/4 v13, -0x1

    move v0, v13

    goto :goto_0

    .line 84
    :cond_3
    move-object v13, v1

    check-cast v13, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    move-object v7, v13

    .line 89
    move-object v13, v7

    move v14, v4

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v13, v14}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v13

    move-object v8, v13

    .line 90
    move-object v13, v8

    if-nez v13, :cond_4

    .line 92
    const/4 v13, -0x1

    move v0, v13

    goto :goto_0

    .line 96
    :cond_4
    move-object v13, v1

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 97
    move-object v13, v0

    move-object v14, v1

    move-object v15, v0

    move-object/from16 v16, v1

    .line 98
    invoke-direct/range {v15 .. v16}, Landroid/support/v7/widget/LinearSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v15

    move/from16 v16, v2

    const/16 v17, 0x0

    .line 97
    invoke-direct/range {v13 .. v17}, Landroid/support/v7/widget/LinearSnapHelper;->estimateNextPositionDiffForFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;II)I

    move-result v13

    move v10, v13

    .line 99
    move-object v13, v8

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_5

    .line 100
    move v13, v10

    neg-int v13, v13

    move v10, v13

    .line 105
    :cond_5
    :goto_1
    move-object v13, v1

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 106
    move-object v13, v0

    move-object v14, v1

    move-object v15, v0

    move-object/from16 v16, v1

    .line 107
    invoke-direct/range {v15 .. v16}, Landroid/support/v7/widget/LinearSnapHelper;->getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v17, v3

    .line 106
    invoke-direct/range {v13 .. v17}, Landroid/support/v7/widget/LinearSnapHelper;->estimateNextPositionDiffForFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;II)I

    move-result v13

    move v9, v13

    .line 108
    move-object v13, v8

    iget v13, v13, Landroid/graphics/PointF;->y:F

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_6

    .line 109
    move v13, v9

    neg-int v13, v13

    move v9, v13

    .line 115
    :cond_6
    :goto_2
    move-object v13, v1

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v13

    if-eqz v13, :cond_9

    move v13, v9

    :goto_3
    move v11, v13

    .line 116
    move v13, v11

    if-nez v13, :cond_a

    .line 117
    const/4 v13, -0x1

    move v0, v13

    goto/16 :goto_0

    .line 103
    :cond_7
    const/4 v13, 0x0

    move v10, v13

    goto :goto_1

    .line 112
    :cond_8
    const/4 v13, 0x0

    move v9, v13

    goto :goto_2

    .line 115
    :cond_9
    move v13, v10

    goto :goto_3

    .line 120
    :cond_a
    move v13, v6

    move v14, v11

    add-int/2addr v13, v14

    move v12, v13

    .line 121
    move v13, v12

    if-gez v13, :cond_b

    .line 122
    const/4 v13, 0x0

    move v12, v13

    .line 124
    :cond_b
    move v13, v12

    move v14, v4

    if-lt v13, v14, :cond_c

    .line 125
    move v13, v4

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v12, v13

    .line 127
    :cond_c
    move v13, v12

    move v0, v13

    goto/16 :goto_0
.end method
