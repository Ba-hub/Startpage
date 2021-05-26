.class Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    .prologue
    .line 4602
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$1;)V
    .locals 5

    .prologue
    .line 4602
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 4605
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4606
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4610
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView$State;->access$1802(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v1

    .line 4611
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$4000(Landroid/support/v7/widget/RecyclerView;)V

    .line 4616
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4617
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4619
    :cond_0
    return-void

    .line 4613
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView$State;->access$1802(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v1

    .line 4614
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$4000(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 8

    .prologue
    .line 4623
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4624
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/AdapterHelper;->onItemRangeChanged(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4625
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4627
    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 6

    .prologue
    .line 4631
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4632
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/AdapterHelper;->onItemRangeInserted(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4633
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4635
    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 8

    .prologue
    .line 4647
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4648
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/AdapterHelper;->onItemRangeMoved(III)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4649
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4651
    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 6

    .prologue
    .line 4639
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4640
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/AdapterHelper;->onItemRangeRemoved(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4641
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4643
    :cond_0
    return-void
.end method

.method triggerUpdateProcessor()V
    .locals 3

    .prologue
    .line 4654
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$4100(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$4200(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$100(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4655
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$4300(Landroid/support/v7/widget/RecyclerView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4660
    :goto_0
    return-void

    .line 4657
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView;->access$4402(Landroid/support/v7/widget/RecyclerView;Z)Z

    move-result v1

    .line 4658
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method
