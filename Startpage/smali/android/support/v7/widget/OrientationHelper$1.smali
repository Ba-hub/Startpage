.class final Landroid/support/v7/widget/OrientationHelper$1;
.super Landroid/support/v7/widget/OrientationHelper;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 5

    .prologue
    .line 251
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
    .line 290
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    .line 291
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v2, v3

    .line 292
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 274
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    .line 275
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v2, v3

    .line 276
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

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

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 282
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    .line 283
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v2, v3

    .line 284
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

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

.method public getDecoratedStart(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 297
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    .line 298
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v2, v3

    .line 299
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public getEnd()I
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getEndAfterPadding()I
    .locals 3

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public getEndPadding()I
    .locals 2

    .prologue
    .line 327
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMode()I
    .locals 2

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getModeInOther()I
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 2

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getTotalSpace()I
    .locals 3

    .prologue
    .line 316
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 317
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public getTransformedEndWithDecoration(Landroid/view/View;)I
    .locals 6

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/OrientationHelper$1;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 305
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$1;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move v0, v2

    return v0
.end method

.method public getTransformedStartWithDecoration(Landroid/view/View;)I
    .locals 6

    .prologue
    .line 310
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/OrientationHelper$1;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 311
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$1;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move v0, v2

    return v0
.end method

.method public offsetChild(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 322
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 323
    return-void
.end method

.method public offsetChildren(I)V
    .locals 4

    .prologue
    .line 264
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 265
    return-void
.end method
