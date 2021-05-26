.class public Landroid/support/v7/util/SortedList$BatchedCallback;
.super Landroid/support/v7/util/SortedList$Callback;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/SortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/util/SortedList$Callback",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field private final mBatchingListUpdateCallback:Landroid/support/v7/util/BatchingListUpdateCallback;

.field private final mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList$Callback",
            "<TT2;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/util/SortedList$Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/SortedList$Callback",
            "<TT2;>;)V"
        }
    .end annotation

    .prologue
    .line 773
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/util/SortedList$Callback;-><init>()V

    .line 774
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    .line 775
    move-object v2, v0

    new-instance v3, Landroid/support/v7/util/BatchingListUpdateCallback;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-direct {v4, v5}, Landroid/support/v7/util/BatchingListUpdateCallback;-><init>(Landroid/support/v7/util/ListUpdateCallback;)V

    iput-object v3, v2, Landroid/support/v7/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroid/support/v7/util/BatchingListUpdateCallback;

    .line 776
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/util/SortedList$BatchedCallback;)Landroid/support/v7/util/SortedList$Callback;
    .locals 2

    .prologue
    .line 762
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .prologue
    .line 805
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .prologue
    .line 810
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)I"
        }
    .end annotation

    .prologue
    .line 780
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public dispatchLastEvent()V
    .locals 2

    .prologue
    .line 818
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroid/support/v7/util/BatchingListUpdateCallback;

    invoke-virtual {v1}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 819
    return-void
.end method

.method public onChanged(II)V
    .locals 7

    .prologue
    .line 800
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroid/support/v7/util/BatchingListUpdateCallback;

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/util/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 801
    return-void
.end method

.method public onInserted(II)V
    .locals 6

    .prologue
    .line 785
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroid/support/v7/util/BatchingListUpdateCallback;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/util/BatchingListUpdateCallback;->onInserted(II)V

    .line 786
    return-void
.end method

.method public onMoved(II)V
    .locals 6

    .prologue
    .line 795
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroid/support/v7/util/BatchingListUpdateCallback;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/util/BatchingListUpdateCallback;->onInserted(II)V

    .line 796
    return-void
.end method

.method public onRemoved(II)V
    .locals 6

    .prologue
    .line 790
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroid/support/v7/util/BatchingListUpdateCallback;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/util/BatchingListUpdateCallback;->onRemoved(II)V

    .line 791
    return-void
.end method
