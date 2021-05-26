.class Landroid/support/v4/widget/ListViewCompatGingerbread;
.super Ljava/lang/Object;
.source "ListViewCompatGingerbread.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static scrollListBy(Landroid/widget/ListView;I)V
    .locals 8

    .prologue
    .line 25
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    move v2, v5

    .line 26
    move v5, v2

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 37
    :goto_0
    return-void

    .line 30
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 31
    move-object v5, v3

    if-nez v5, :cond_1

    .line 32
    goto :goto_0

    .line 35
    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    move v6, v1

    sub-int/2addr v5, v6

    move v4, v5

    .line 36
    move-object v5, v0

    move v6, v2

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 37
    goto :goto_0
.end method
