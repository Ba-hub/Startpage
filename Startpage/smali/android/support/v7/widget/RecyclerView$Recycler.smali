.class public final Landroid/support/v7/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0x2


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;

.field private mViewCacheMax:I

.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    .prologue
    .line 4788
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 4789
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 4790
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 4792
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 4794
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 4795
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    .line 4797
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    return-void
.end method

.method static synthetic access$2900(Landroid/support/v7/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 4788
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method private attachAccessibilityDelegate(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 5116
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5117
    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_0

    .line 5119
    move-object v2, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 5122
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5123
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 5124
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$4700(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroid/support/v4/view/AccessibilityDelegateCompat;

    move-result-object v3

    .line 5123
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 5127
    :cond_1
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .prologue
    .line 5130
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 5131
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 5133
    :cond_0
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .locals 8

    .prologue
    .line 5136
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_0
    move v5, v3

    if-ltz v5, :cond_1

    .line 5137
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 5138
    move-object v5, v4

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 5139
    move-object v5, v0

    move-object v6, v4

    check-cast v6, Landroid/view/ViewGroup;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 5136
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 5142
    :cond_1
    move v5, v2

    if-nez v5, :cond_2

    .line 5154
    :goto_1
    return-void

    .line 5146
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 5147
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5148
    move-object v5, v1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5154
    :goto_2
    goto :goto_1

    .line 5150
    :cond_3
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    move v3, v5

    .line 5151
    move-object v5, v1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5152
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 5286
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 5287
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->dispatchViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5288
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 5289
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->putRecycledView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5290
    return-void
.end method

.method public bindViewToPosition(Landroid/view/View;I)V
    .locals 12

    .prologue
    .line 4887
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v1

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    move-object v3, v7

    .line 4888
    move-object v7, v3

    if-nez v7, :cond_0

    .line 4889
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4893
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v7

    move v4, v7

    .line 4894
    move v7, v4

    if-ltz v7, :cond_1

    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v8

    if-lt v7, v8, :cond_2

    .line 4895
    :cond_1
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inconsistency detected. Invalid item position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "(offset:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 4897
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4899
    :cond_2
    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iput-object v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 4900
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    move-object v8, v3

    move v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/RecyclerView$Adapter;->bindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 4901
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Landroid/support/v7/widget/RecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 4902
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4903
    move-object v7, v3

    move v8, v2

    iput v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 4906
    :cond_3
    move-object v7, v3

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v5, v7

    .line 4908
    move-object v7, v5

    if-nez v7, :cond_4

    .line 4909
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v6, v7

    .line 4910
    move-object v7, v3

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4918
    :goto_0
    move-object v7, v6

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4919
    move-object v7, v6

    move-object v8, v3

    iput-object v8, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 4920
    move-object v7, v6

    move-object v8, v3

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-nez v8, :cond_6

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 4921
    return-void

    .line 4911
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 4912
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v6, v7

    .line 4913
    move-object v7, v3

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 4915
    :cond_5
    move-object v7, v5

    check-cast v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v6, v7

    goto :goto_0

    .line 4920
    :cond_6
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 4810
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4811
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 4812
    return-void
.end method

.method clearOldPositions()V
    .locals 7

    .prologue
    .line 5674
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v5

    .line 5675
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 5676
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v3, v5

    .line 5677
    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 5675
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5679
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 5680
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 5681
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 5680
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5683
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 5684
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 5685
    const/4 v5, 0x0

    move v4, v5

    :goto_2
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_2

    .line 5686
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 5685
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 5689
    :cond_2
    return-void
.end method

.method clearScrap()V
    .locals 2

    .prologue
    .line 5360
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5361
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 5362
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5364
    :cond_0
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .locals 7

    .prologue
    .line 4942
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 4943
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". State "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item count is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 4944
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4946
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4947
    move v2, v1

    move v0, v2

    .line 4949
    :goto_0
    return v0

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method dispatchViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 5518
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$5200(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5519
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$5200(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/RecyclerView$RecyclerListener;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5521
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5522
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5524
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    if-eqz v2, :cond_2

    .line 5525
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ViewInfoStore;->removeViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5528
    :cond_2
    return-void
.end method

.method getChangedScrapViewForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 13

    .prologue
    .line 5369
    move-object v0, p0

    move v1, p1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v12, v8

    move v8, v12

    move v9, v12

    move v2, v9

    if-nez v8, :cond_1

    .line 5370
    :cond_0
    const/4 v8, 0x0

    move-object v0, v8

    .line 5394
    :goto_0
    return-object v0

    .line 5373
    :cond_1
    const/4 v8, 0x0

    move v3, v8

    :goto_1
    move v8, v3

    move v9, v2

    if-ge v8, v9, :cond_3

    .line 5374
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v4, v8

    .line 5375
    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v8

    if-nez v8, :cond_2

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v8

    move v9, v1

    if-ne v8, v9, :cond_2

    .line 5376
    move-object v8, v4

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5377
    move-object v8, v4

    move-object v0, v8

    goto :goto_0

    .line 5373
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5381
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 5382
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    move v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v8

    move v3, v8

    .line 5383
    move v8, v3

    if-lez v8, :cond_5

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 5384
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v8

    move-wide v4, v8

    .line 5385
    const/4 v8, 0x0

    move v6, v8

    :goto_2
    move v8, v6

    move v9, v2

    if-ge v8, v9, :cond_5

    .line 5386
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v7, v8

    .line 5387
    move-object v8, v7

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v8

    if-nez v8, :cond_4

    move-object v8, v7

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v8

    move-wide v10, v4

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    .line 5388
    move-object v8, v7

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5389
    move-object v8, v7

    move-object v0, v8

    goto/16 :goto_0

    .line 5385
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 5394
    :cond_5
    const/4 v8, 0x0

    move-object v0, v8

    goto/16 :goto_0
.end method

.method getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    .locals 5

    .prologue
    .line 5622
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    if-nez v1, :cond_0

    .line 5623
    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    .line 5625
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-object v0, v1

    return-object v0
.end method

.method getScrapCount()I
    .locals 2

    .prologue
    .line 5352
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getScrapList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4833
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 5356
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, v2

    return-object v0
.end method

.method getScrapViewForId(JIZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 13

    .prologue
    .line 5467
    move-object v0, p0

    move-wide v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v5, v9

    .line 5468
    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v6, v9

    :goto_0
    move v9, v6

    if-ltz v9, :cond_3

    .line 5469
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v7, v9

    .line 5470
    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v9

    move-wide v11, v1

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v9

    if-nez v9, :cond_2

    .line 5471
    move v9, v3

    move-object v10, v7

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 5472
    move-object v9, v7

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5473
    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 5482
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v9

    if-nez v9, :cond_0

    .line 5483
    move-object v9, v7

    const/4 v10, 0x2

    const/16 v11, 0xe

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5487
    :cond_0
    move-object v9, v7

    move-object v0, v9

    .line 5514
    :goto_1
    return-object v0

    .line 5488
    :cond_1
    move v9, v4

    if-nez v9, :cond_2

    .line 5492
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 5493
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v10, v7

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5494
    move-object v9, v0

    move-object v10, v7

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 5468
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 5500
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v9

    .line 5501
    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v7, v9

    :goto_2
    move v9, v7

    if-ltz v9, :cond_7

    .line 5502
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v8, v9

    .line 5503
    move-object v9, v8

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v9

    move-wide v11, v1

    cmp-long v9, v9, v11

    if-nez v9, :cond_6

    .line 5504
    move v9, v3

    move-object v10, v8

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v10

    if-ne v9, v10, :cond_5

    .line 5505
    move v9, v4

    if-nez v9, :cond_4

    .line 5506
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 5508
    :cond_4
    move-object v9, v8

    move-object v0, v9

    goto :goto_1

    .line 5509
    :cond_5
    move v9, v4

    if-nez v9, :cond_6

    .line 5510
    move-object v9, v0

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5501
    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 5514
    :cond_7
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_1
.end method

.method getScrapViewForPosition(IIZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 13

    .prologue
    .line 5407
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v8

    .line 5410
    const/4 v8, 0x0

    move v5, v8

    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_1

    .line 5411
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v6, v8

    .line 5412
    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v8

    if-nez v8, :cond_3

    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v8

    move v9, v1

    if-ne v8, v9, :cond_3

    move-object v8, v6

    .line 5413
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v8

    if-nez v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView$State;->access$2400(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v8

    if-nez v8, :cond_3

    .line 5414
    :cond_0
    move v8, v2

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v8

    move v9, v2

    if-eq v8, v9, :cond_2

    .line 5415
    const-string v8, "RecyclerView"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scrap view for position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isn\'t dirty but has"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " wrong view type! (found "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    .line 5416
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but expected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 5415
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 5425
    :cond_1
    move v8, v3

    if-nez v8, :cond_5

    .line 5426
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/ChildHelper;->findHiddenNonRemovedView(II)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 5427
    move-object v8, v5

    if-eqz v8, :cond_5

    .line 5430
    move-object v8, v5

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v6, v8

    .line 5431
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ChildHelper;->unhide(Landroid/view/View;)V

    .line 5432
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v8

    move v7, v8

    .line 5433
    move v8, v7

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 5434
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5420
    :cond_2
    move-object v8, v6

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5421
    move-object v8, v6

    move-object v0, v8

    .line 5462
    :goto_1
    return-object v0

    .line 5410
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 5437
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v9, v7

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ChildHelper;->detachViewFromParent(I)V

    .line 5438
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 5439
    move-object v8, v6

    const/16 v9, 0x2020

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5441
    move-object v8, v6

    move-object v0, v8

    goto :goto_1

    .line 5446
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v5, v8

    .line 5447
    const/4 v8, 0x0

    move v6, v8

    :goto_2
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_8

    .line 5448
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v7, v8

    .line 5451
    move-object v8, v7

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v8

    if-nez v8, :cond_7

    move-object v8, v7

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v8

    move v9, v1

    if-ne v8, v9, :cond_7

    .line 5452
    move v8, v3

    if-nez v8, :cond_6

    .line 5453
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    .line 5459
    :cond_6
    move-object v8, v7

    move-object v0, v8

    goto :goto_1

    .line 5447
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 5462
    :cond_8
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_1
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 5

    .prologue
    .line 4967
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .locals 14

    .prologue
    .line 4971
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move v8, v1

    if-ltz v8, :cond_0

    move v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    if-lt v8, v9, :cond_1

    .line 4972
    :cond_0
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid item position "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "). Item count:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 4973
    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4975
    :cond_1
    const/4 v8, 0x0

    move v3, v8

    .line 4976
    const/4 v8, 0x0

    move-object v4, v8

    .line 4978
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4979
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->getChangedScrapViewForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v4, v8

    .line 4980
    move-object v8, v4

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    :goto_0
    move v3, v8

    .line 4983
    :cond_2
    move-object v8, v4

    if-nez v8, :cond_5

    .line 4984
    move-object v8, v0

    move v9, v1

    const/4 v10, -0x1

    move v11, v2

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapViewForPosition(IIZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v4, v8

    .line 4985
    move-object v8, v4

    if-eqz v8, :cond_5

    .line 4986
    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->validateViewHolderForOffsetPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 4988
    move v8, v2

    if-nez v8, :cond_4

    .line 4991
    move-object v8, v4

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4992
    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 4993
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v9, v4

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4994
    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 4998
    :cond_3
    :goto_1
    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5000
    :cond_4
    const/4 v8, 0x0

    move-object v4, v8

    .line 5006
    :cond_5
    :goto_2
    move-object v8, v4

    if-nez v8, :cond_f

    .line 5007
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    move v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v8

    move v5, v8

    .line 5008
    move v8, v5

    if-ltz v8, :cond_6

    move v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    if-lt v8, v9, :cond_a

    .line 5009
    :cond_6
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Inconsistency detected. Invalid item position "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(offset:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "state:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 5011
    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4980
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 4995
    :cond_8
    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4996
    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_1

    .line 5002
    :cond_9
    const/4 v8, 0x1

    move v3, v8

    goto :goto_2

    .line 5014
    :cond_a
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v8

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v8

    move v6, v8

    .line 5016
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 5017
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v9

    move v10, v5

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v9

    move v11, v6

    move v12, v2

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapViewForId(JIZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v4, v8

    .line 5018
    move-object v8, v4

    if-eqz v8, :cond_b

    .line 5020
    move-object v8, v4

    move v9, v5

    iput v9, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5021
    const/4 v8, 0x1

    move v3, v8

    .line 5024
    :cond_b
    move-object v8, v4

    if-nez v8, :cond_d

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheExtension:Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;

    if-eqz v8, :cond_d

    .line 5027
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheExtension:Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;

    move-object v9, v0

    move v10, v1

    move v11, v6

    .line 5028
    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;->getViewForPositionAndType(Landroid/support/v7/widget/RecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v8

    move-object v7, v8

    .line 5029
    move-object v8, v7

    if-eqz v8, :cond_d

    .line 5030
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v4, v8

    .line 5031
    move-object v8, v4

    if-nez v8, :cond_c

    .line 5032
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5034
    :cond_c
    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 5035
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5041
    :cond_d
    move-object v8, v4

    if-nez v8, :cond_e

    .line 5048
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v8

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v4, v8

    .line 5049
    move-object v8, v4

    if-eqz v8, :cond_e

    .line 5050
    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 5051
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$4500()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 5052
    move-object v8, v0

    move-object v9, v4

    invoke-direct {v8, v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5056
    :cond_e
    move-object v8, v4

    if-nez v8, :cond_f

    .line 5057
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v4, v8

    .line 5067
    :cond_f
    move v8, v3

    if-eqz v8, :cond_10

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-nez v8, :cond_10

    move-object v8, v4

    const/16 v9, 0x2000

    .line 5068
    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 5069
    move-object v8, v4

    const/4 v9, 0x0

    const/16 v10, 0x2000

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5070
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView$State;->access$2500(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 5071
    move-object v8, v4

    .line 5072
    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v8

    move v5, v8

    .line 5073
    move v8, v5

    const/16 v9, 0x1000

    or-int/lit16 v8, v8, 0x1000

    move v5, v8

    .line 5074
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v10, v4

    move v11, v5

    move-object v12, v4

    .line 5075
    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v12

    .line 5074
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v8

    move-object v6, v8

    .line 5076
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v9, v4

    move-object v10, v6

    invoke-static {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView;->access$4600(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 5080
    :cond_10
    const/4 v8, 0x0

    move v5, v8

    .line 5081
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-eqz v8, :cond_12

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 5083
    move-object v8, v4

    move v9, v1

    iput v9, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 5099
    :cond_11
    :goto_3
    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    move-object v6, v8

    .line 5101
    move-object v8, v6

    if-nez v8, :cond_14

    .line 5102
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v7, v8

    .line 5103
    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5110
    :goto_4
    move-object v8, v7

    move-object v9, v4

    iput-object v9, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5111
    move-object v8, v7

    move v9, v3

    if-eqz v9, :cond_16

    move v9, v5

    if-eqz v9, :cond_16

    const/4 v9, 0x1

    :goto_5
    iput-boolean v9, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 5112
    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, v8

    return-object v0

    .line 5084
    :cond_12
    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v8

    if-eqz v8, :cond_13

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v8

    if-nez v8, :cond_13

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 5089
    :cond_13
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    move v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v8

    move v6, v8

    .line 5090
    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iput-object v9, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 5091
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v8

    move-object v9, v4

    move v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$Adapter;->bindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 5092
    move-object v8, v0

    move-object v9, v4

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v8, v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 5093
    const/4 v8, 0x1

    move v5, v8

    .line 5094
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 5095
    move-object v8, v4

    move v9, v1

    iput v9, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_3

    .line 5104
    :cond_14
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v8

    if-nez v8, :cond_15

    .line 5105
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v7, v8

    .line 5106
    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 5108
    :cond_15
    move-object v8, v6

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v7, v8

    goto :goto_4

    .line 5111
    :cond_16
    const/4 v9, 0x0

    goto :goto_5
.end method

.method markItemDecorInsetsDirty()V
    .locals 7

    .prologue
    .line 5692
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v5

    .line 5693
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 5694
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v3, v5

    .line 5695
    move-object v5, v3

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v4, v5

    .line 5696
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 5697
    move-object v5, v4

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 5693
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5700
    :cond_1
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 6

    .prologue
    .line 5658
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5659
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 5660
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 5661
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v3, v4

    .line 5662
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 5663
    move-object v4, v3

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5664
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 5660
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5671
    :cond_1
    :goto_1
    return-void

    .line 5669
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    goto :goto_1
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 9

    .prologue
    .line 5566
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 5567
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 5568
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v5, v6

    .line 5569
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v5

    iget v6, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v7, v1

    if-lt v6, v7, :cond_0

    .line 5574
    move-object v6, v5

    move v7, v2

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 5567
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5577
    :cond_1
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 12

    .prologue
    .line 5538
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v9, v1

    move v10, v2

    if-ge v9, v10, :cond_1

    .line 5539
    move v9, v1

    move v3, v9

    .line 5540
    move v9, v2

    move v4, v9

    .line 5541
    const/4 v9, -0x1

    move v5, v9

    .line 5547
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v9

    .line 5548
    const/4 v9, 0x0

    move v7, v9

    :goto_1
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_4

    .line 5549
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v8, v9

    .line 5550
    move-object v9, v8

    if-eqz v9, :cond_0

    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v3

    if-lt v9, v10, :cond_0

    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v4

    if-le v9, v10, :cond_2

    .line 5548
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 5543
    :cond_1
    move v9, v2

    move v3, v9

    .line 5544
    move v9, v1

    move v4, v9

    .line 5545
    const/4 v9, 0x1

    move v5, v9

    goto :goto_0

    .line 5553
    :cond_2
    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v1

    if-ne v9, v10, :cond_3

    .line 5554
    move-object v9, v8

    move v10, v2

    move v11, v1

    sub-int/2addr v10, v11

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 5556
    :cond_3
    move-object v9, v8

    move v10, v5

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 5563
    :cond_4
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 11

    .prologue
    .line 5586
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v8, v1

    move v9, v2

    add-int/2addr v8, v9

    move v4, v8

    .line 5587
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v5, v8

    .line 5588
    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v6, v8

    :goto_0
    move v8, v6

    if-ltz v8, :cond_2

    .line 5589
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v7, v8

    .line 5590
    move-object v8, v7

    if-eqz v8, :cond_0

    .line 5591
    move-object v8, v7

    iget v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v9, v4

    if-lt v8, v9, :cond_1

    .line 5597
    move-object v8, v7

    move v9, v2

    neg-int v9, v9

    move v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 5588
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 5598
    :cond_1
    move-object v8, v7

    iget v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v9, v1

    if-lt v8, v9, :cond_0

    .line 5600
    move-object v8, v7

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5601
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_1

    .line 5605
    :cond_2
    return-void
.end method

.method onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V
    .locals 8

    .prologue
    .line 5532
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 5533
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 5534
    return-void
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 5298
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 5299
    move-object v3, v2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$4902(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/support/v7/widget/RecyclerView$Recycler;

    move-result-object v3

    .line 5300
    move-object v3, v2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$5002(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)Z

    move-result v3

    .line 5301
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5302
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5303
    return-void
.end method

.method recycleAndClearCachedViews()V
    .locals 5

    .prologue
    .line 5191
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 5192
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 5193
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5192
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5195
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 5196
    return-void
.end method

.method recycleCachedViewAt(I)V
    .locals 5

    .prologue
    .line 5213
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v2, v3

    .line 5217
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5218
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .line 5219
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 5169
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 5170
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5171
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5173
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5174
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 5178
    :cond_1
    :goto_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5179
    return-void

    .line 5175
    :cond_2
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5176
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_0
.end method

.method recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 12

    .prologue
    .line 5227
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v1

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 5228
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    .line 5230
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isAttached:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5231
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 5234
    :cond_2
    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5235
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 5239
    :cond_3
    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5240
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 5244
    :cond_4
    move-object v7, v1

    .line 5245
    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$4800(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v7

    move v2, v7

    .line 5246
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    if-eqz v7, :cond_a

    move v7, v2

    if-eqz v7, :cond_a

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 5248
    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    :goto_1
    move v3, v7

    .line 5249
    const/4 v7, 0x0

    move v4, v7

    .line 5250
    const/4 v7, 0x0

    move v5, v7

    .line 5255
    move v7, v3

    if-nez v7, :cond_5

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 5256
    :cond_5
    move-object v7, v1

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v7

    if-nez v7, :cond_7

    .line 5259
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v7

    .line 5260
    move v7, v6

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lt v7, v8, :cond_6

    move v7, v6

    if-lez v7, :cond_6

    .line 5261
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5262
    add-int/lit8 v6, v6, -0x1

    .line 5264
    :cond_6
    move v7, v6

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-ge v7, v8, :cond_7

    .line 5265
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 5266
    const/4 v7, 0x1

    move v4, v7

    .line 5269
    :cond_7
    move v7, v4

    if-nez v7, :cond_8

    .line 5270
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5271
    const/4 v7, 0x1

    move v5, v7

    .line 5279
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ViewInfoStore;->removeViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5280
    move v7, v4

    if-nez v7, :cond_9

    move v7, v5

    if-nez v7, :cond_9

    move v7, v2

    if-eqz v7, :cond_9

    .line 5281
    move-object v7, v1

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 5283
    :cond_9
    return-void

    .line 5248
    :cond_a
    const/4 v7, 0x0

    goto :goto_1
.end method

.method recycleViewInternal(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 5187
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5188
    return-void
.end method

.method scrapView(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 5315
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 5316
    move-object v3, v2

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    .line 5317
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView;->access$5100(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5318
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5319
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5323
    :cond_1
    move-object v3, v2

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setScrapContainer(Landroid/support/v7/widget/RecyclerView$Recycler;Z)V

    .line 5324
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 5332
    :goto_0
    return-void

    .line 5326
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 5327
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 5329
    :cond_3
    move-object v3, v2

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setScrapContainer(Landroid/support/v7/widget/RecyclerView$Recycler;Z)V

    .line 5330
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method setAdapterPositionsAsUnknown()V
    .locals 6

    .prologue
    .line 5648
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 5649
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 5650
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v3, v4

    .line 5651
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 5652
    move-object v4, v3

    const/16 v5, 0x200

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5649
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5655
    :cond_1
    return-void
.end method

.method setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V
    .locals 4

    .prologue
    .line 5612
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    if-eqz v2, :cond_0

    .line 5613
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 5615
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    .line 5616
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 5617
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->attach(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 5619
    :cond_1
    return-void
.end method

.method setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;)V
    .locals 4

    .prologue
    .line 5608
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheExtension:Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;

    .line 5609
    return-void
.end method

.method public setViewCacheSize(I)V
    .locals 5

    .prologue
    .line 4820
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 4822
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    if-le v3, v4, :cond_0

    .line 4823
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 4822
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4825
    :cond_0
    return-void
.end method

.method unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 5341
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$5000(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5342
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 5346
    :goto_0
    move-object v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$4902(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/support/v7/widget/RecyclerView$Recycler;

    move-result-object v2

    .line 5347
    move-object v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$5002(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)Z

    move-result v2

    .line 5348
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5349
    return-void

    .line 5344
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method validateViewHolderForOffsetPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 8

    .prologue
    .line 4847
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4852
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    move v0, v3

    .line 4868
    :goto_0
    return v0

    .line 4854
    :cond_0
    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ltz v3, :cond_1

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 4855
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4858
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4860
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    move v2, v3

    .line 4861
    move v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 4862
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 4865
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4866
    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v5

    move-object v6, v1

    iget v6, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 4868
    :cond_5
    const/4 v3, 0x1

    move v0, v3

    goto/16 :goto_0
.end method

.method viewRangeUpdate(II)V
    .locals 10

    .prologue
    .line 5629
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v8, v1

    move v9, v2

    add-int/2addr v8, v9

    move v3, v8

    .line 5630
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v8

    .line 5631
    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v5, v8

    :goto_0
    move v8, v5

    if-ltz v8, :cond_2

    .line 5632
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v6, v8

    .line 5633
    move-object v8, v6

    if-nez v8, :cond_1

    .line 5631
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 5637
    :cond_1
    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v8

    move v7, v8

    .line 5638
    move v8, v7

    move v9, v1

    if-lt v8, v9, :cond_0

    move v8, v7

    move v9, v3

    if-ge v8, v9, :cond_0

    .line 5639
    move-object v8, v6

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5640
    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_1

    .line 5645
    :cond_2
    return-void
.end method
