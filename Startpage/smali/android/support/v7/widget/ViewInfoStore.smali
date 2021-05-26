.class Landroid/support/v7/widget/ViewInfoStore;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ViewInfoStore$InfoRecord;,
        Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field final mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Landroid/support/v7/widget/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v1, v0

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    .line 51
    move-object v1, v0

    new-instance v2, Landroid/support/v4/util/LongSparseArray;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    .line 294
    return-void
.end method

.method private popFromLayoutStep(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 11

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/support/v4/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v6

    move v3, v6

    .line 106
    move v6, v3

    if-gez v6, :cond_0

    .line 107
    const/4 v6, 0x0

    move-object v0, v6

    .line 127
    :goto_0
    return-object v0

    .line 109
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v4, v6

    .line 110
    move-object v6, v4

    if-eqz v6, :cond_4

    move-object v6, v4

    iget v6, v6, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    move v7, v2

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    .line 111
    move-object v6, v4

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    move v8, v2

    const/4 v9, -0x1

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v7, v8

    iput v7, v6, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 113
    move v6, v2

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 114
    move-object v6, v4

    iget-object v6, v6, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-object v5, v6

    .line 121
    :goto_1
    move-object v6, v4

    iget v6, v6, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v7, 0xc

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_1

    .line 122
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 123
    move-object v6, v4

    invoke-static {v6}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->recycle(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V

    .line 125
    :cond_1
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 115
    :cond_2
    move v6, v2

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    .line 116
    move-object v6, v4

    iget-object v6, v6, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-object v5, v6

    goto :goto_1

    .line 118
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Must provide flag PRE or POST"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 127
    :cond_4
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method addToAppearedInPreLayoutHolders(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 8

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v3, v4

    .line 150
    move-object v4, v3

    if-nez v4, :cond_0

    .line 151
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v4

    move-object v3, v4

    .line 152
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 154
    :cond_0
    move-object v4, v3

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 155
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 156
    return-void
.end method

.method addToDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 7

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v2, v3

    .line 203
    move-object v3, v2

    if-nez v3, :cond_0

    .line 204
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v3

    move-object v2, v3

    .line 205
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 207
    :cond_0
    move-object v3, v2

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 208
    return-void
.end method

.method addToOldChangeHolders(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 8

    .prologue
    .line 136
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    move-wide v5, v1

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 137
    return-void
.end method

.method addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 8

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v3, v4

    .line 187
    move-object v4, v3

    if-nez v4, :cond_0

    .line 188
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v4

    move-object v3, v4

    .line 189
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 191
    :cond_0
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 192
    move-object v4, v3

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v6, 0x8

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 193
    return-void
.end method

.method addToPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 8

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v3, v4

    .line 69
    move-object v4, v3

    if-nez v4, :cond_0

    .line 70
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v4

    move-object v3, v4

    .line 71
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 73
    :cond_0
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 74
    move-object v4, v3

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v6, 0x4

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 75
    return-void
.end method

.method clear()V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 59
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 60
    return-void
.end method

.method getFromOldChangeHolders(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6

    .prologue
    .line 177
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v0, v3

    return-object v0
.end method

.method isDisappearing(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v2, v3

    .line 79
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    iget v3, v3, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isInPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v2, v3

    .line 166
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    iget v3, v3, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method onDetach()V
    .locals 0

    .prologue
    .line 277
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->drainCache()V

    .line 278
    return-void
.end method

.method public onViewDetached(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ViewInfoStore;->removeFromDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 282
    return-void
.end method

.method popFromPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/ViewInfoStore;->popFromLayoutStep(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method popFromPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/ViewInfoStore;->popFromLayoutStep(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method process(Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;)V
    .locals 9

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    :goto_0
    move v5, v2

    if-ltz v5, :cond_8

    .line 224
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v3, v5

    .line 225
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v4, v5

    .line 226
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v6, 0x3

    and-int/lit8 v5, v5, 0x3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 228
    move-object v5, v1

    move-object v6, v3

    invoke-interface {v5, v6}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->unused(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 255
    :cond_0
    :goto_1
    move-object v5, v4

    invoke-static {v5}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->recycle(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V

    .line 223
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 229
    :cond_1
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 231
    move-object v5, v4

    iget-object v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    if-nez v5, :cond_2

    .line 234
    move-object v5, v1

    move-object v6, v3

    invoke-interface {v5, v6}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->unused(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 236
    :cond_2
    move-object v5, v1

    move-object v6, v3

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {v5, v6, v7, v8}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 238
    :cond_3
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v6, 0xe

    and-int/lit8 v5, v5, 0xe

    const/16 v6, 0xe

    if-ne v5, v6, :cond_4

    .line 240
    move-object v5, v1

    move-object v6, v3

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {v5, v6, v7, v8}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processAppeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 241
    :cond_4
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v6, 0xc

    and-int/lit8 v5, v5, 0xc

    const/16 v6, 0xc

    if-ne v5, v6, :cond_5

    .line 243
    move-object v5, v1

    move-object v6, v3

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {v5, v6, v7, v8}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processPersistent(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 244
    :cond_5
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v6, 0x4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_6

    .line 246
    move-object v5, v1

    move-object v6, v3

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 247
    :cond_6
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v6, 0x8

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_7

    .line 249
    move-object v5, v1

    move-object v6, v3

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {v5, v6, v7, v8}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processAppeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 250
    :cond_7
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    goto/16 :goto_1

    .line 257
    :cond_8
    return-void
.end method

.method removeFromDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 7

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v2, v3

    .line 216
    move-object v3, v2

    if-nez v3, :cond_0

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    move-object v3, v2

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v5, -0x2

    and-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 220
    goto :goto_0
.end method

.method removeViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 6

    .prologue
    .line 264
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 265
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 266
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/util/LongSparseArray;->removeAt(I)V

    .line 270
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v2, v3

    .line 271
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 272
    move-object v3, v2

    invoke-static {v3}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->recycle(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V

    .line 274
    :cond_1
    return-void

    .line 264
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method
