.class public abstract Landroid/support/v7/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;
    }
.end annotation


# instance fields
.field private mAutoMeasure:Z

.field mChildHelper:Landroid/support/v7/widget/ChildHelper;

.field private mHeight:I

.field private mHeightMode:I

.field mIsAttachedToWindow:Z

.field private mMeasurementCacheEnabled:Z

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRequestedSimpleAnimations:Z

.field mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mWidth:I

.field private mWidthMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 6327
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6334
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 6336
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 6338
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 6344
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 9041
    return-void
.end method

.method static synthetic access$2000(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Z
    .locals 2

    .prologue
    .line 6327
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$2600(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Z
    .locals 2

    .prologue
    .line 6327
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$2602(Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)Z
    .locals 7

    .prologue
    .line 6327
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$6000(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V
    .locals 4

    .prologue
    .line 6327
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .locals 13

    .prologue
    .line 7074
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v7, v1

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    move-object v4, v7

    .line 7075
    move v7, v3

    if-nez v7, :cond_0

    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 7077
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ViewInfoStore;->addToDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 7086
    :goto_0
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v5, v7

    .line 7087
    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 7088
    :cond_1
    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 7089
    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 7093
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v8, v1

    move v9, v2

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/support/v7/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 7118
    :cond_2
    :goto_2
    move-object v7, v5

    iget-boolean v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    if-eqz v7, :cond_3

    .line 7122
    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 7123
    move-object v7, v5

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 7125
    :cond_3
    return-void

    .line 7084
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ViewInfoStore;->removeFromDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 7091
    :cond_5
    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_1

    .line 7097
    :cond_6
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v7, v8, :cond_a

    .line 7099
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v7

    move v6, v7

    .line 7100
    move v7, v2

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    .line 7101
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v7

    move v2, v7

    .line 7103
    :cond_7
    move v7, v6

    const/4 v8, -0x1

    if-ne v7, v8, :cond_8

    .line 7104
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v11, v1

    .line 7106
    invoke-virtual {v10, v11}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 7108
    :cond_8
    move v7, v6

    move v8, v2

    if-eq v7, v8, :cond_9

    .line 7109
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move v8, v6

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->moveView(II)V

    .line 7111
    :cond_9
    goto :goto_2

    .line 7112
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v8, v1

    move v9, v2

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v7/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    .line 7113
    move-object v7, v5

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 7114
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 7115
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    goto/16 :goto_2
.end method

.method public static chooseSize(III)I
    .locals 8

    .prologue
    .line 6497
    move v0, p0

    move v1, p1

    move v2, p2

    move v5, v0

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    move v3, v5

    .line 6498
    move v5, v0

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    move v4, v5

    .line 6499
    move v5, v3

    sparse-switch v5, :sswitch_data_0

    .line 6506
    move v5, v1

    move v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v5

    :goto_0
    return v0

    .line 6501
    :sswitch_0
    move v5, v4

    move v0, v5

    goto :goto_0

    .line 6503
    :sswitch_1
    move v5, v4

    move v6, v1

    move v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 6499
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .locals 5

    .prologue
    .line 7301
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ChildHelper;->detachViewFromParent(I)V

    .line 7302
    return-void
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .locals 11

    .prologue
    .line 7933
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    const/4 v8, 0x0

    move v9, v0

    move v10, v2

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v5, v8

    .line 7934
    const/4 v8, 0x0

    move v6, v8

    .line 7935
    const/4 v8, 0x0

    move v7, v8

    .line 7936
    move v8, v3

    if-ltz v8, :cond_1

    .line 7937
    move v8, v3

    move v6, v8

    .line 7938
    const/high16 v8, 0x40000000    # 2.0f

    move v7, v8

    .line 7971
    :cond_0
    :goto_0
    move v8, v6

    move v9, v7

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move v0, v8

    return v0

    .line 7939
    :cond_1
    move v8, v4

    if-eqz v8, :cond_3

    .line 7940
    move v8, v3

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 7941
    move v8, v1

    sparse-switch v8, :sswitch_data_0

    .line 7950
    :goto_1
    goto :goto_0

    .line 7944
    :sswitch_0
    move v8, v5

    move v6, v8

    .line 7945
    move v8, v1

    move v7, v8

    .line 7946
    goto :goto_1

    .line 7948
    :sswitch_1
    const/4 v8, 0x0

    move v6, v8

    .line 7949
    const/4 v8, 0x0

    move v7, v8

    goto :goto_1

    .line 7952
    :cond_2
    move v8, v3

    const/4 v9, -0x2

    if-ne v8, v9, :cond_0

    .line 7953
    const/4 v8, 0x0

    move v6, v8

    .line 7954
    const/4 v8, 0x0

    move v7, v8

    goto :goto_0

    .line 7957
    :cond_3
    move v8, v3

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 7958
    move v8, v5

    move v6, v8

    .line 7959
    move v8, v1

    move v7, v8

    goto :goto_0

    .line 7960
    :cond_4
    move v8, v3

    const/4 v9, -0x2

    if-ne v8, v9, :cond_0

    .line 7961
    move v8, v5

    move v6, v8

    .line 7962
    move v8, v1

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_5

    move v8, v1

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v8, v9, :cond_6

    .line 7963
    :cond_5
    const/high16 v8, -0x80000000

    move v7, v8

    goto :goto_0

    .line 7965
    :cond_6
    const/4 v8, 0x0

    move v7, v8

    goto :goto_0

    .line 7941
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getChildMeasureSpec(IIIZ)I
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7890
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    const/4 v7, 0x0

    move v8, v0

    move v9, v1

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v4, v7

    .line 7891
    const/4 v7, 0x0

    move v5, v7

    .line 7892
    const/4 v7, 0x0

    move v6, v7

    .line 7893
    move v7, v3

    if-eqz v7, :cond_2

    .line 7894
    move v7, v2

    if-ltz v7, :cond_1

    .line 7895
    move v7, v2

    move v5, v7

    .line 7896
    const/high16 v7, 0x40000000    # 2.0f

    move v6, v7

    .line 7916
    :cond_0
    :goto_0
    move v7, v5

    move v8, v6

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move v0, v7

    return v0

    .line 7900
    :cond_1
    const/4 v7, 0x0

    move v5, v7

    .line 7901
    const/4 v7, 0x0

    move v6, v7

    goto :goto_0

    .line 7904
    :cond_2
    move v7, v2

    if-ltz v7, :cond_3

    .line 7905
    move v7, v2

    move v5, v7

    .line 7906
    const/high16 v7, 0x40000000    # 2.0f

    move v6, v7

    goto :goto_0

    .line 7907
    :cond_3
    move v7, v2

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 7908
    move v7, v4

    move v5, v7

    .line 7910
    const/high16 v7, 0x40000000    # 2.0f

    move v6, v7

    goto :goto_0

    .line 7911
    :cond_4
    move v7, v2

    const/4 v8, -0x2

    if-ne v7, v8, :cond_0

    .line 7912
    move v7, v4

    move v5, v7

    .line 7913
    const/high16 v7, -0x80000000

    move v6, v7

    goto :goto_0
.end method

.method public static getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;
    .locals 12

    .prologue
    .line 8994
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    new-instance v6, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;-><init>()V

    move-object v4, v6

    .line 8995
    move-object v6, v0

    move-object v7, v1

    sget-object v8, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    move v9, v2

    move v10, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v5, v6

    .line 8997
    move-object v6, v4

    move-object v7, v5

    sget v8, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_android_orientation:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    .line 8998
    move-object v6, v4

    move-object v7, v5

    sget v8, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_spanCount:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    .line 8999
    move-object v6, v4

    move-object v7, v5

    sget v8, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_reverseLayout:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    .line 9000
    move-object v6, v4

    move-object v7, v5

    sget v8, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_stackFromEnd:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    .line 9001
    move-object v6, v5

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 9002
    move-object v6, v4

    move-object v0, v6

    return-object v0
.end method

.method private static isMeasurementUpToDate(III)Z
    .locals 7

    .prologue
    .line 7827
    move v0, p0

    move v1, p1

    move v2, p2

    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    move v3, v5

    .line 7828
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    move v4, v5

    .line 7829
    move v5, v2

    if-lez v5, :cond_0

    move v5, v0

    move v6, v2

    if-eq v5, v6, :cond_0

    .line 7830
    const/4 v5, 0x0

    move v0, v5

    .line 7840
    :goto_0
    return v0

    .line 7832
    :cond_0
    move v5, v3

    sparse-switch v5, :sswitch_data_0

    .line 7840
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 7834
    :sswitch_0
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 7836
    :sswitch_1
    move v5, v4

    move v6, v0

    if-lt v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 7838
    :sswitch_2
    move v5, v4

    move v6, v0

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 7832
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private onSmoothScrollerStopped(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V
    .locals 4

    .prologue
    .line 8672
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 8673
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 8675
    :cond_0
    return-void
.end method

.method private scrapOrRecycleView(Landroid/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V
    .locals 7

    .prologue
    .line 7687
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v3

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    move-object v4, v5

    .line 7688
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7703
    :goto_0
    return-void

    .line 7694
    :cond_0
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 7695
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v5

    if-nez v5, :cond_1

    .line 7696
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 7697
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 7703
    :goto_1
    goto :goto_0

    .line 7699
    :cond_1
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 7700
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 7701
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ViewInfoStore;->onViewDetached(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_1
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 7029
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 7030
    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 7047
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 7048
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 7058
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 7059
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 7070
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 7071
    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 6481
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 6482
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    .line 6484
    :cond_0
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 6518
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 6519
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 6521
    :cond_0
    return-void
.end method

.method public attachView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 7346
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 7347
    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 7335
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 7336
    return-void
.end method

.method public attachView(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 10

    .prologue
    .line 7314
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v1

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    move-object v4, v5

    .line 7315
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7316
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ViewInfoStore;->addToDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 7320
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 7324
    return-void

    .line 7318
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ViewInfoStore;->removeFromDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 9

    .prologue
    .line 8195
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v4, :cond_0

    .line 8196
    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 8201
    :goto_0
    return-void

    .line 8199
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    move-object v3, v4

    .line 8200
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8201
    goto :goto_0
.end method

.method public canScrollHorizontally()Z
    .locals 2

    .prologue
    .line 6930
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .prologue
    .line 6940
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 3

    .prologue
    .line 6845
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    .prologue
    .line 8526
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    .prologue
    .line 8541
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    .prologue
    .line 8556
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    .prologue
    .line 8571
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    .prologue
    .line 8586
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    .prologue
    .line 8601
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 9

    .prologue
    .line 7679
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    move v2, v5

    .line 7680
    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_0
    move v5, v3

    if-ltz v5, :cond_0

    .line 7681
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 7682
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroid/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 7680
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 7684
    :cond_0
    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 8

    .prologue
    .line 7385
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v4

    move v3, v4

    .line 7386
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroid/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 7387
    return-void
.end method

.method public detachAndScrapViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 8

    .prologue
    .line 7399
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 7400
    move-object v4, v0

    move-object v5, v2

    move v6, v1

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroid/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 7401
    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 7272
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v3

    move v2, v3

    .line 7273
    move v3, v2

    if-ltz v3, :cond_0

    .line 7274
    move-object v3, v0

    move v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 7276
    :cond_0
    return-void
.end method

.method public detachViewAt(I)V
    .locals 6

    .prologue
    .line 7294
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 7295
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    .prologue
    .line 6628
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 6629
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 6630
    return-void
.end method

.method dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 6

    .prologue
    .line 6633
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 6634
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 6635
    return-void
.end method

.method public endAnimation(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 7010
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_0

    .line 7011
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 7013
    :cond_0
    return-void
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 7214
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v3, :cond_0

    .line 7215
    const/4 v3, 0x0

    move-object v0, v3

    .line 7224
    :goto_0
    return-object v0

    .line 7217
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 7218
    move-object v3, v2

    if-nez v3, :cond_1

    .line 7219
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 7221
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7222
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 7224
    :cond_2
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 8

    .prologue
    .line 7241
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v6

    move v2, v6

    .line 7242
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_3

    .line 7243
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 7244
    move-object v6, v4

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    move-object v5, v6

    .line 7245
    move-object v6, v5

    if-nez v6, :cond_1

    .line 7242
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7248
    :cond_1
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 7249
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_0

    .line 7250
    :cond_2
    move-object v6, v4

    move-object v0, v6

    .line 7253
    :goto_1
    return-object v0

    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public abstract generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 8

    .prologue
    .line 6886
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 6862
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_0

    .line 6863
    new-instance v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    move-object v0, v2

    .line 6867
    :goto_0
    return-object v0

    .line 6864
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 6865
    new-instance v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    goto :goto_0

    .line 6867
    :cond_1
    new-instance v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 2

    .prologue
    .line 7173
    move-object v0, p0

    const/4 v1, -0x1

    move v0, v1

    return v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 8230
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move v0, v2

    return v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 7442
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 2

    .prologue
    .line 7433
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClipToPadding()Z
    .locals 2

    .prologue
    .line 6745
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$5400(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 8889
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 8890
    :cond_0
    const/4 v3, 0x1

    move v0, v3

    .line 8892
    :goto_0
    return v0

    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 8174
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 11

    .prologue
    .line 8121
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v3, v5

    .line 8122
    move-object v5, v3

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v4, v5

    .line 8123
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    move-object v7, v4

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    move-object v7, v3

    iget v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    move-object v7, v1

    .line 8124
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    move-object v8, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    move-object v8, v3

    iget v8, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v7, v8

    move-object v8, v1

    .line 8125
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    move-object v9, v4

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move-object v9, v3

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    move-object v9, v1

    .line 8126
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    move-object v10, v3

    iget v10, v10, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    .line 8123
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 8127
    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 8138
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 7998
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v2, v3

    .line 7999
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 7984
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v2, v3

    .line 7985
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 8162
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 8150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 4

    .prologue
    .line 7579
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_0

    .line 7580
    const/4 v2, 0x0

    move-object v0, v2

    .line 7586
    :goto_0
    return-object v0

    .line 7582
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 7583
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7584
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 7586
    :cond_2
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 7496
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeight:I

    move v0, v1

    return v0
.end method

.method public getHeightMode()I
    .locals 2

    .prologue
    .line 7478
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeightMode:I

    move v0, v1

    return v0
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    .line 7600
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    :goto_0
    move-object v1, v2

    .line 7601
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    :goto_1
    move v0, v2

    return v0

    .line 7600
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 7601
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getItemViewType(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 7194
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getLayoutDirection()I
    .locals 2

    .prologue
    .line 7000
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 8245
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move v0, v2

    return v0
.end method

.method public getMinimumHeight()I
    .locals 2

    .prologue
    .line 8644
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMinimumWidth()I
    .locals 2

    .prologue
    .line 8637
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getPaddingBottom()I
    .locals 2

    .prologue
    .line 7532
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaddingEnd()I
    .locals 2

    .prologue
    .line 7550
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaddingLeft()I
    .locals 2

    .prologue
    .line 7505
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaddingRight()I
    .locals 2

    .prologue
    .line 7523
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaddingStart()I
    .locals 2

    .prologue
    .line 7541
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaddingTop()I
    .locals 2

    .prologue
    .line 7514
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPosition(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 7184
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 8260
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move v0, v2

    return v0
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 8870
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 8871
    :cond_0
    const/4 v3, 0x1

    move v0, v3

    .line 8873
    :goto_0
    return v0

    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public getSelectionModeForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 8854
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 8215
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move v0, v2

    return v0
.end method

.method public getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 12

    .prologue
    .line 8088
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v6, v2

    if-eqz v6, :cond_1

    .line 8089
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v4, v6

    .line 8090
    move-object v6, v3

    move-object v7, v4

    iget v7, v7, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    move-object v8, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    move-object v9, v1

    .line 8091
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    move-object v11, v4

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    .line 8090
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 8096
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v6, :cond_0

    .line 8097
    move-object v6, v1

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;

    move-result-object v6

    move-object v4, v6

    .line 8098
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_0

    .line 8099
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->access$5500(Landroid/support/v7/widget/RecyclerView;)Landroid/graphics/RectF;

    move-result-object v6

    move-object v5, v6

    .line 8100
    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8101
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v6

    .line 8102
    move-object v6, v3

    move-object v7, v5

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-double v7, v7

    .line 8103
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    move-object v8, v5

    iget v8, v8, Landroid/graphics/RectF;->top:F

    float-to-double v8, v8

    .line 8104
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    move-object v9, v5

    iget v9, v9, Landroid/graphics/RectF;->right:F

    float-to-double v9, v9

    .line 8105
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    move-object v10, v5

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-double v10, v10

    .line 8106
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    .line 8102
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 8110
    :cond_0
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 8111
    return-void

    .line 8093
    :cond_1
    move-object v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 7487
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidth:I

    move v0, v1

    return v0
.end method

.method public getWidthMode()I
    .locals 2

    .prologue
    .line 7460
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidthMode:I

    move v0, v1

    return v0
.end method

.method hasFlexibleChildInBothOrientations()Z
    .locals 7

    .prologue
    .line 9027
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    move v1, v5

    .line 9028
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 9029
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 9030
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v4, v5

    .line 9031
    move-object v5, v4

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v5, :cond_0

    move-object v5, v4

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v5, :cond_0

    .line 9032
    const/4 v5, 0x1

    move v0, v5

    .line 9035
    :goto_1
    return v0

    .line 9028
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9035
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method public hasFocus()Z
    .locals 2

    .prologue
    .line 7570
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ignoreView(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 7645
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 7648
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "View should be fully attached to be ignored"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7650
    :cond_1
    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 7651
    move-object v3, v2

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 7652
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ViewInfoStore;->removeViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 7653
    return-void
.end method

.method public isAttachedToWindow()Z
    .locals 2

    .prologue
    .line 6645
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    move v0, v1

    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 2

    .prologue
    .line 6600
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    move v0, v1

    return v0
.end method

.method public isFocused()Z
    .locals 2

    .prologue
    .line 7560
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLayoutHierarchical(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 4

    .prologue
    .line 8906
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public isMeasurementCacheEnabled()Z
    .locals 2

    .prologue
    .line 7811
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    move v0, v1

    return v0
.end method

.method public isSmoothScrolling()Z
    .locals 2

    .prologue
    .line 6987
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 13

    .prologue
    .line 8033
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v6, v7

    .line 8034
    move-object v7, v1

    move v8, v2

    move-object v9, v6

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    move v9, v3

    move-object v10, v6

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    move v10, v4

    move-object v11, v6

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    move v11, v5

    move-object v12, v6

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 8036
    return-void
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 14

    .prologue
    .line 8069
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v6, v8

    .line 8070
    move-object v8, v6

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v7, v8

    .line 8071
    move-object v8, v1

    move v9, v2

    move-object v10, v7

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    move-object v10, v6

    iget v10, v10, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    move v10, v3

    move-object v11, v7

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    move-object v11, v6

    iget v11, v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    move v11, v4

    move-object v12, v7

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    move-object v12, v6

    iget v12, v12, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr v11, v12

    move v12, v5

    move-object v13, v7

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    move-object v13, v6

    iget v13, v13, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 8074
    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 13

    .prologue
    .line 7757
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v4, v8

    .line 7759
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    move-object v5, v8

    .line 7760
    move v8, v2

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Rect;->left:I

    move-object v10, v5

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v2, v8

    .line 7761
    move v8, v3

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Rect;->top:I

    move-object v10, v5

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v3, v8

    .line 7762
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v9

    move-object v10, v0

    .line 7763
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    move v11, v2

    add-int/2addr v10, v11

    move-object v11, v4

    iget v11, v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    move-object v12, v0

    .line 7764
    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v12

    .line 7762
    invoke-static {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v8

    move v6, v8

    .line 7765
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v9

    move-object v10, v0

    .line 7766
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    move v11, v3

    add-int/2addr v10, v11

    move-object v11, v4

    iget v11, v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    move-object v12, v0

    .line 7767
    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v12

    .line 7765
    invoke-static {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v8

    move v7, v8

    .line 7768
    move-object v8, v0

    move-object v9, v1

    move v10, v6

    move v11, v7

    move-object v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 7769
    move-object v8, v1

    move v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 7771
    :cond_0
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 13

    .prologue
    .line 7856
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v4, v8

    .line 7858
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    move-object v5, v8

    .line 7859
    move v8, v2

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Rect;->left:I

    move-object v10, v5

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v2, v8

    .line 7860
    move v8, v3

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Rect;->top:I

    move-object v10, v5

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v3, v8

    .line 7862
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v9

    move-object v10, v0

    .line 7863
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    move-object v11, v4

    iget v11, v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    move-object v11, v4

    iget v11, v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    move v11, v2

    add-int/2addr v10, v11

    move-object v11, v4

    iget v11, v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    move-object v12, v0

    .line 7865
    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v12

    .line 7862
    invoke-static {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v8

    move v6, v8

    .line 7866
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v9

    move-object v10, v0

    .line 7867
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    move-object v11, v4

    iget v11, v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    move-object v11, v4

    iget v11, v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    move v11, v3

    add-int/2addr v10, v11

    move-object v11, v4

    iget v11, v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    move-object v12, v0

    .line 7869
    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v12

    .line 7866
    invoke-static {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v8

    move v7, v8

    .line 7870
    move-object v8, v0

    move-object v9, v1

    move v10, v6

    move v11, v7

    move-object v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 7871
    move-object v8, v1

    move v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 7873
    :cond_0
    return-void
.end method

.method public moveView(II)V
    .locals 9

    .prologue
    .line 7366
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 7367
    move-object v4, v3

    if-nez v4, :cond_0

    .line 7368
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot move a child from non-existing index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7371
    :cond_0
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 7372
    move-object v4, v0

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 7373
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 4

    .prologue
    .line 7611
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 7612
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    .line 7614
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 4

    .prologue
    .line 7623
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 7624
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->offsetChildrenVertical(I)V

    .line 7626
    :cond_0
    return-void
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    .prologue
    .line 8409
    return-void
.end method

.method public onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 8437
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    const/4 v5, 0x0

    move v0, v5

    return v0
.end method

.method public onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 6700
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6709
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 6736
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 6737
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 8283
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    const/4 v5, 0x0

    move-object v0, v5

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 8

    .prologue
    .line 8775
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v3

    .line 8776
    invoke-static {v5}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v5

    move-object v4, v5

    .line 8777
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v5, :cond_0

    move-object v5, v4

    if-nez v5, :cond_1

    .line 8788
    :cond_0
    :goto_0
    return-void

    .line 8780
    :cond_1
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v7, -0x1

    .line 8781
    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v7, -0x1

    .line 8782
    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v7, 0x1

    .line 8783
    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    const/4 v6, 0x1

    .line 8780
    :goto_1
    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 8785
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 8786
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    .line 8788
    :cond_3
    goto :goto_0

    .line 8783
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    .prologue
    .line 8759
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 8760
    return-void
.end method

.method onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    .line 8708
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 8709
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 11

    .prologue
    .line 8738
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, -0x1

    .line 8739
    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8740
    :cond_0
    move-object v5, v3

    const/16 v6, 0x2000

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 8741
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 8743
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x1

    .line 8744
    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8745
    :cond_2
    move-object v5, v3

    const/16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 8746
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 8748
    :cond_3
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    .line 8750
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    .line 8751
    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    .line 8752
    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isLayoutHierarchical(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v7

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    .line 8753
    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getSelectionModeForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v8

    .line 8750
    invoke-static {v5, v6, v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v5

    move-object v4, v5

    .line 8754
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 8755
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 14

    .prologue
    .line 8816
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    :goto_0
    move v5, v8

    .line 8817
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    :goto_1
    move v6, v8

    .line 8818
    move v8, v5

    const/4 v9, 0x1

    move v10, v6

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 8819
    invoke-static/range {v8 .. v13}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v8

    move-object v7, v8

    .line 8821
    move-object v8, v4

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 8822
    return-void

    .line 8816
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 8817
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 9

    .prologue
    .line 8792
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 8794
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v5, v3

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8795
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 8798
    :cond_0
    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 4

    .prologue
    .line 8303
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 8459
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 8447
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0

    .prologue
    .line 8511
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 8469
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 8481
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 9

    .prologue
    .line 8494
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V

    .line 8495
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    .prologue
    .line 6800
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v3, "RecyclerView"

    const-string v4, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 6801
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .prologue
    .line 6815
    return-void
.end method

.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 8

    .prologue
    .line 8619
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move v6, v3

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 8620
    return-void
.end method

.method public onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .locals 9

    .prologue
    .line 8393
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method public onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8371
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 8663
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 8657
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 8683
    return-void
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 8911
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move v6, v1

    move-object v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->performAccessibilityAction(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;ILandroid/os/Bundle;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public performAccessibilityAction(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 10

    .prologue
    .line 8927
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v7, :cond_0

    .line 8928
    const/4 v7, 0x0

    move v0, v7

    .line 8953
    :goto_0
    return v0

    .line 8930
    :cond_0
    const/4 v7, 0x0

    move v5, v7

    const/4 v7, 0x0

    move v6, v7

    .line 8931
    move v7, v3

    sparse-switch v7, :sswitch_data_0

    .line 8949
    :cond_1
    :goto_1
    move v7, v5

    if-nez v7, :cond_4

    move v7, v6

    if-nez v7, :cond_4

    .line 8950
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 8933
    :sswitch_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v8, -0x1

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 8934
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    neg-int v7, v7

    move v5, v7

    .line 8936
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v8, -0x1

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 8937
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    neg-int v7, v7

    move v6, v7

    goto :goto_1

    .line 8941
    :sswitch_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 8942
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 8944
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 8945
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    goto :goto_1

    .line 8952
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move v8, v6

    move v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 8953
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 8931
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public performAccessibilityActionForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    .prologue
    .line 8979
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    const/4 v6, 0x0

    move v0, v6

    return v0
.end method

.method performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 10

    .prologue
    .line 8958
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 6659
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 6660
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 6662
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 5

    .prologue
    .line 7160
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    move v1, v3

    .line 7161
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 7162
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ChildHelper;->removeViewAt(I)V

    .line 7161
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7164
    :cond_0
    return-void
.end method

.method public removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 7

    .prologue
    .line 8698
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 8699
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 8700
    move-object v4, v3

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 8701
    move-object v4, v0

    move v5, v2

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 8698
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 8704
    :cond_1
    return-void
.end method

.method removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 9

    .prologue
    .line 7715
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapCount()I

    move-result v6

    move v2, v6

    .line 7717
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    :goto_0
    move v6, v3

    if-ltz v6, :cond_3

    .line 7718
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 7719
    move-object v6, v4

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    move-object v5, v6

    .line 7720
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7717
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 7728
    :cond_0
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 7729
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7730
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 7732
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v6, :cond_2

    .line 7733
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 7735
    :cond_2
    move-object v6, v5

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 7736
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    goto :goto_1

    .line 7738
    :cond_3
    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Recycler;->clearScrap()V

    .line 7739
    move v6, v2

    if-lez v6, :cond_4

    .line 7740
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 7742
    :cond_4
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 5

    .prologue
    .line 7410
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 7411
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 7412
    return-void
.end method

.method public removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 6

    .prologue
    .line 7421
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 7422
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 7423
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 7424
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 4

    .prologue
    .line 6679
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 6680
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    move v0, v2

    .line 6682
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public removeDetachedView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 7356
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 7357
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 7136
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ChildHelper;->removeView(Landroid/view/View;)V

    .line 7137
    return-void
.end method

.method public removeViewAt(I)V
    .locals 5

    .prologue
    .line 7148
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 7149
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 7150
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ChildHelper;->removeViewAt(I)V

    .line 7152
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 24

    .prologue
    .line 8323
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v21

    move/from16 v7, v21

    .line 8324
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v21

    move/from16 v8, v21

    .line 8325
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v21

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v9, v21

    .line 8326
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v21

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v10, v21

    .line 8327
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v21

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getScrollX()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v11, v21

    .line 8328
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v21

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getScrollY()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v12, v21

    .line 8329
    move/from16 v21, v11

    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v13, v21

    .line 8330
    move/from16 v21, v12

    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v14, v21

    .line 8332
    const/16 v21, 0x0

    move/from16 v22, v11

    move/from16 v23, v7

    sub-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v15, v21

    .line 8333
    const/16 v21, 0x0

    move/from16 v22, v12

    move/from16 v23, v8

    sub-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v16, v21

    .line 8334
    const/16 v21, 0x0

    move/from16 v22, v13

    move/from16 v23, v9

    sub-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v17, v21

    .line 8335
    const/16 v21, 0x0

    move/from16 v22, v14

    move/from16 v23, v10

    sub-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v18, v21

    .line 8341
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 8342
    move/from16 v21, v17

    if-eqz v21, :cond_1

    move/from16 v21, v17

    .line 8343
    :goto_0
    move/from16 v19, v21

    .line 8351
    :goto_1
    move/from16 v21, v16

    if-eqz v21, :cond_4

    move/from16 v21, v16

    .line 8352
    :goto_2
    move/from16 v20, v21

    .line 8354
    move/from16 v21, v19

    if-nez v21, :cond_0

    move/from16 v21, v20

    if-eqz v21, :cond_6

    .line 8355
    :cond_0
    move/from16 v21, v6

    if-eqz v21, :cond_5

    .line 8356
    move-object/from16 v21, v3

    move/from16 v22, v19

    move/from16 v23, v20

    invoke-virtual/range {v21 .. v23}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 8360
    :goto_3
    const/16 v21, 0x1

    move/from16 v2, v21

    .line 8362
    :goto_4
    return v2

    .line 8342
    :cond_1
    move/from16 v21, v15

    move/from16 v22, v13

    move/from16 v23, v9

    sub-int v22, v22, v23

    .line 8343
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    goto :goto_0

    .line 8345
    :cond_2
    move/from16 v21, v15

    if-eqz v21, :cond_3

    move/from16 v21, v15

    .line 8346
    :goto_5
    move/from16 v19, v21

    goto :goto_1

    .line 8345
    :cond_3
    move/from16 v21, v11

    move/from16 v22, v7

    sub-int v21, v21, v22

    move/from16 v22, v17

    .line 8346
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    goto :goto_5

    .line 8351
    :cond_4
    move/from16 v21, v12

    move/from16 v22, v8

    sub-int v21, v21, v22

    move/from16 v22, v18

    .line 8352
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    goto :goto_2

    .line 8358
    :cond_5
    move-object/from16 v21, v3

    move/from16 v22, v19

    move/from16 v23, v20

    invoke-virtual/range {v21 .. v23}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_3

    .line 8362
    :cond_6
    const/16 v21, 0x0

    move/from16 v2, v21

    goto :goto_4
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 6468
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 6469
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 6471
    :cond_0
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .locals 3

    .prologue
    .line 8835
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 8836
    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 5

    .prologue
    .line 6903
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 0

    .prologue
    .line 6953
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 5

    .prologue
    .line 6920
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public setAutoMeasureEnabled(Z)V
    .locals 4

    .prologue
    .line 6588
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 6589
    return-void
.end method

.method setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    .prologue
    .line 9006
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    .line 9007
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v4, v1

    .line 9008
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 9006
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 9010
    return-void
.end method

.method setMeasureSpecs(II)V
    .locals 5

    .prologue
    .line 6378
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 6379
    move-object v3, v0

    move v4, v1

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 6380
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidthMode:I

    if-nez v3, :cond_0

    sget-boolean v3, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v3, :cond_0

    .line 6381
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 6384
    :cond_0
    move-object v3, v0

    move v4, v2

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 6385
    move-object v3, v0

    move v4, v2

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 6386
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeightMode:I

    if-nez v3, :cond_1

    sget-boolean v3, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v3, :cond_1

    .line 6387
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 6389
    :cond_1
    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 6

    .prologue
    .line 8630
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->access$5600(Landroid/support/v7/widget/RecyclerView;II)V

    .line 8631
    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 11

    .prologue
    .line 6457
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    move v4, v8

    .line 6458
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    move v5, v8

    .line 6459
    move v8, v2

    move v9, v4

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v8

    move v6, v8

    .line 6460
    move v8, v3

    move v9, v5

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v8

    move v7, v8

    .line 6461
    move-object v8, v0

    move v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    .line 6462
    return-void
.end method

.method setMeasuredDimensionFromChildren(II)V
    .locals 17

    .prologue
    .line 6405
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v12

    move v3, v12

    .line 6406
    move v12, v3

    if-nez v12, :cond_0

    .line 6407
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move v13, v1

    move v14, v2

    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 6435
    :goto_0
    return-void

    .line 6410
    :cond_0
    const v12, 0x7fffffff

    move v4, v12

    .line 6411
    const v12, 0x7fffffff

    move v5, v12

    .line 6412
    const/high16 v12, -0x80000000

    move v6, v12

    .line 6413
    const/high16 v12, -0x80000000

    move v7, v12

    .line 6415
    const/4 v12, 0x0

    move v8, v12

    :goto_1
    move v12, v8

    move v13, v3

    if-ge v12, v13, :cond_5

    .line 6416
    move-object v12, v0

    move v13, v8

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v9, v12

    .line 6417
    move-object v12, v9

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v10, v12

    .line 6418
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v12}, Landroid/support/v7/widget/RecyclerView;->access$5300(Landroid/support/v7/widget/RecyclerView;)Landroid/graphics/Rect;

    move-result-object v12

    move-object v11, v12

    .line 6419
    move-object v12, v0

    move-object v13, v9

    move-object v14, v11

    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6420
    move-object v12, v11

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move v13, v4

    if-ge v12, v13, :cond_1

    .line 6421
    move-object v12, v11

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move v4, v12

    .line 6423
    :cond_1
    move-object v12, v11

    iget v12, v12, Landroid/graphics/Rect;->right:I

    move v13, v6

    if-le v12, v13, :cond_2

    .line 6424
    move-object v12, v11

    iget v12, v12, Landroid/graphics/Rect;->right:I

    move v6, v12

    .line 6426
    :cond_2
    move-object v12, v11

    iget v12, v12, Landroid/graphics/Rect;->top:I

    move v13, v5

    if-ge v12, v13, :cond_3

    .line 6427
    move-object v12, v11

    iget v12, v12, Landroid/graphics/Rect;->top:I

    move v5, v12

    .line 6429
    :cond_3
    move-object v12, v11

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    move v13, v7

    if-le v12, v13, :cond_4

    .line 6430
    move-object v12, v11

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    move v7, v12

    .line 6415
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 6433
    :cond_5
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v12}, Landroid/support/v7/widget/RecyclerView;->access$5300(Landroid/support/v7/widget/RecyclerView;)Landroid/graphics/Rect;

    move-result-object v12

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    .line 6434
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v13}, Landroid/support/v7/widget/RecyclerView;->access$5300(Landroid/support/v7/widget/RecyclerView;)Landroid/graphics/Rect;

    move-result-object v13

    move v14, v1

    move v15, v2

    invoke-virtual {v12, v13, v14, v15}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 6435
    goto :goto_0
.end method

.method public setMeasurementCacheEnabled(Z)V
    .locals 4

    .prologue
    .line 7823
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 7824
    return-void
.end method

.method setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    .prologue
    .line 6362
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 6363
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 6364
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    .line 6365
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 6366
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 6373
    :goto_0
    move-object v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 6374
    move-object v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 6375
    return-void

    .line 6368
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 6369
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    .line 6370
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 6371
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeight:I

    goto :goto_0
.end method

.method shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 8

    .prologue
    .line 7794
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v5, :cond_0

    move-object v5, v1

    .line 7796
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    move v6, v2

    move-object v7, v4

    iget v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    .line 7797
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    move v6, v3

    move-object v7, v4

    iget v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_0
    move v0, v5

    return v0

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method shouldMeasureTwice()Z
    .locals 2

    .prologue
    .line 9023
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method shouldReMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 8

    .prologue
    .line 7780
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v5, :cond_0

    move-object v5, v1

    .line 7781
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    move v6, v2

    move-object v7, v4

    iget v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    .line 7782
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move v6, v3

    move-object v7, v4

    iget v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_0
    move v0, v5

    return v0

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 6

    .prologue
    .line 6966
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    const-string v4, "RecyclerView"

    const-string v5, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 6967
    return-void
.end method

.method public startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V
    .locals 5

    .prologue
    .line 6975
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 6976
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6977
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 6979
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 6980
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->start(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 6981
    return-void
.end method

.method public stopIgnoringView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 7665
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 7666
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->stopIgnoring()V

    .line 7667
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 7668
    move-object v3, v2

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 7669
    return-void
.end method

.method stopSmoothScroller()V
    .locals 2

    .prologue
    .line 8666
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v1, :cond_0

    .line 8667
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 8669
    :cond_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .prologue
    .line 6624
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method
