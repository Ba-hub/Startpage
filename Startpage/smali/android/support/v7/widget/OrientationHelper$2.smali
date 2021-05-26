.class final Landroid/support/v7/widget/OrientationHelper$2;
.super Landroid/support/v7/widget/OrientationHelper;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 5

    .prologue
    .line 349
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/OrientationHelper;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 388
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    .line 389
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v2, v3

    .line 390
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/OrientationHelper$2;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 372
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    .line 373
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v2, v3

    .line 374
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/OrientationHelper$2;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 380
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    .line 381
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v2, v3

    .line 382
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/OrientationHelper$2;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 395
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    .line 396
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v2, v3

    .line 397
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/OrientationHelper$2;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public getEnd()I
    .locals 2

    .prologue
    .line 357
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/OrientationHelper$2;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getEndAfterPadding()I
    .locals 3

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/OrientationHelper$2;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$2;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public getEndPadding()I
    .locals 2

    .prologue
    .line 425
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/OrientationHelper$2;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMode()I
    .locals 2

    .prologue
    .line 430
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/OrientationHelper$2;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getModeInOther()I
    .locals 2

    .prologue
    .line 435
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/OrientationHelper$2;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 2

    .prologue
    .line 367
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/OrientationHelper$2;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getTotalSpace()I
    .locals 3

    .prologue
    .line 414
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/OrientationHelper$2;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$2;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$2;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 415
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public getTransformedEndWithDecoration(Landroid/view/View;)I
    .locals 6

    .prologue
    .line 402
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$2;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 403
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move v0, v2

    return v0
.end method

.method public getTransformedStartWithDecoration(Landroid/view/View;)I
    .locals 6

    .prologue
    .line 408
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$2;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 409
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move v0, v2

    return v0
.end method

.method public offsetChild(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 420
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 421
    return-void
.end method

.method public offsetChildren(I)V
    .locals 4

    .prologue
    .line 362
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$2;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 363
    return-void
.end method
