.class Landroid/support/v7/widget/RecyclerView$6;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/AdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/RecyclerView;->initAdapterManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    .prologue
    .line 741
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 7

    .prologue
    .line 784
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v2, :pswitch_data_0

    .line 799
    :goto_0
    :pswitch_0
    return-void

    .line 786
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v5, v1

    iget v5, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V

    .line 787
    goto :goto_0

    .line 789
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v5, v1

    iget v5, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V

    .line 790
    goto :goto_0

    .line 792
    :pswitch_3
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v5, v1

    iget v5, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V

    .line 794
    goto :goto_0

    .line 796
    :pswitch_4
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v5, v1

    iget v5, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V

    goto :goto_0

    .line 784
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public findViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6

    .prologue
    .line 744
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 745
    move-object v3, v2

    if-nez v3, :cond_0

    .line 746
    const/4 v3, 0x0

    move-object v0, v3

    .line 756
    :goto_0
    return-object v0

    .line 750
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 754
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 756
    :cond_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public markViewHoldersUpdated(IILjava/lang/Object;)V
    .locals 8

    .prologue
    .line 774
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 775
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    .line 776
    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .locals 6

    .prologue
    .line 808
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 809
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 810
    return-void
.end method

.method public offsetPositionsForMove(II)V
    .locals 6

    .prologue
    .line 814
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 816
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 817
    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .locals 8

    .prologue
    .line 761
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    move v5, v1

    move v6, v2

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 762
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 763
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v3

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView$State;->access$1700(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v5

    move v6, v2

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Landroid/support/v7/widget/RecyclerView$State;->access$1702(Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v4

    .line 764
    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .locals 7

    .prologue
    .line 768
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 769
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 770
    return-void
.end method

.method public onDispatchFirstPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 4

    .prologue
    .line 780
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$6;->dispatchUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 781
    return-void
.end method

.method public onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 4

    .prologue
    .line 803
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$6;->dispatchUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 804
    return-void
.end method
