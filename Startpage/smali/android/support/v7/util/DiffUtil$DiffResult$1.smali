.class Landroid/support/v7/util/DiffUtil$DiffResult$1;
.super Ljava/lang/Object;
.source "DiffUtil.java"

# interfaces
.implements Landroid/support/v7/util/ListUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/util/DiffUtil$DiffResult;

.field final synthetic val$adapter:Landroid/support/v7/widget/RecyclerView$Adapter;


# direct methods
.method constructor <init>(Landroid/support/v7/util/DiffUtil$DiffResult;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 5

    .prologue
    .line 659
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/util/DiffUtil$DiffResult$1;->this$0:Landroid/support/v7/util/DiffUtil$DiffResult;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/util/DiffUtil$DiffResult$1;->val$adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 8

    .prologue
    .line 677
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/DiffUtil$DiffResult$1;->val$adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 678
    return-void
.end method

.method public onInserted(II)V
    .locals 6

    .prologue
    .line 662
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/DiffUtil$DiffResult$1;->val$adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 663
    return-void
.end method

.method public onMoved(II)V
    .locals 6

    .prologue
    .line 672
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/DiffUtil$DiffResult$1;->val$adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 673
    return-void
.end method

.method public onRemoved(II)V
    .locals 6

    .prologue
    .line 667
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/DiffUtil$DiffResult$1;->val$adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 668
    return-void
.end method
