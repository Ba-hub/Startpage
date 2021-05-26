.class Landroid/support/design/widget/ViewOffsetHelper;
.super Ljava/lang/Object;
.source "ViewOffsetHelper.java"


# instance fields
.field private mLayoutLeft:I

.field private mLayoutTop:I

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    .line 41
    return-void
.end method

.method private updateOffsets()V
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetTop:I

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/ViewOffsetHelper;->mLayoutTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 54
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/ViewOffsetHelper;->mLayoutLeft:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 55
    return-void
.end method


# virtual methods
.method public getLayoutLeft()I
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/ViewOffsetHelper;->mLayoutLeft:I

    move v0, v1

    return v0
.end method

.method public getLayoutTop()I
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/ViewOffsetHelper;->mLayoutTop:I

    move v0, v1

    return v0
.end method

.method public getLeftAndRightOffset()I
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    move v0, v1

    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetTop:I

    move v0, v1

    return v0
.end method

.method public onViewLayout()V
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, v1, Landroid/support/design/widget/ViewOffsetHelper;->mLayoutTop:I

    .line 46
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, v1, Landroid/support/design/widget/ViewOffsetHelper;->mLayoutLeft:I

    .line 49
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/ViewOffsetHelper;->updateOffsets()V

    .line 50
    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 80
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    .line 81
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/ViewOffsetHelper;->updateOffsets()V

    .line 82
    const/4 v2, 0x1

    move v0, v2

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetTop:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 65
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetTop:I

    .line 66
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/ViewOffsetHelper;->updateOffsets()V

    .line 67
    const/4 v2, 0x1

    move v0, v2

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
