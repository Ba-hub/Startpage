.class Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;
.super Landroid/database/Observable;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdapterDataObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 10434
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public hasObservers()Z
    .locals 2

    .prologue
    .line 10436
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyChanged()V
    .locals 4

    .prologue
    .line 10444
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    :goto_0
    move v2, v1

    if-ltz v2, :cond_0

    .line 10445
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 10444
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 10447
    :cond_0
    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 8

    .prologue
    .line 10484
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    :goto_0
    move v4, v3

    if-ltz v4, :cond_0

    .line 10485
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    move v5, v1

    move v6, v2

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 10484
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 10487
    :cond_0
    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 7

    .prologue
    .line 10450
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 10451
    return-void
.end method

.method public notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 9

    .prologue
    .line 10458
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_0
    move v5, v4

    if-ltz v5, :cond_0

    .line 10459
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 10458
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 10461
    :cond_0
    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 7

    .prologue
    .line 10468
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    :goto_0
    move v4, v3

    if-ltz v4, :cond_0

    .line 10469
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 10468
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 10471
    :cond_0
    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 7

    .prologue
    .line 10478
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    :goto_0
    move v4, v3

    if-ltz v4, :cond_0

    .line 10479
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 10478
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 10481
    :cond_0
    return-void
.end method
