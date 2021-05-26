.class public abstract Landroid/support/v7/widget/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;,
        Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mRecyclingAction:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 10018
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10004
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 10019
    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    .line 10020
    return-void
.end method

.method static synthetic access$3500(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V
    .locals 6

    .prologue
    .line 10002
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    return-void
.end method

.method private onAnimation(II)V
    .locals 10

    .prologue
    .line 10114
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v5

    .line 10115
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v5, :cond_0

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    move-object v5, v3

    if-nez v5, :cond_1

    .line 10116
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 10118
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10119
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 10121
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v5, v6, :cond_4

    .line 10122
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    move-object v7, v3

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V

    .line 10123
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    move-object v6, v3

    invoke-static {v5, v6}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->access$6100(Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;Landroid/support/v7/widget/RecyclerView;)V

    .line 10124
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 10130
    :cond_2
    :goto_0
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v5, :cond_3

    .line 10131
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onSeekTargetStep(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V

    .line 10132
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result v5

    move v4, v5

    .line 10133
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    move-object v6, v3

    invoke-static {v5, v6}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->access$6100(Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;Landroid/support/v7/widget/RecyclerView;)V

    .line 10134
    move v5, v4

    if-eqz v5, :cond_3

    .line 10136
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v5, :cond_5

    .line 10137
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10138
    move-object v5, v3

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->access$5900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 10144
    :cond_3
    :goto_1
    return-void

    .line 10126
    :cond_4
    const-string v5, "RecyclerView"

    const-string v6, "Passed over target position while smooth scrolling."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 10127
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    goto :goto_0

    .line 10140
    :cond_5
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_1
.end method


# virtual methods
.method public findViewByPosition(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 10164
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getChildCount()I
    .locals 2

    .prologue
    .line 10157
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 10150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 10058
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v0, v1

    return-object v0
.end method

.method public getTargetPosition()I
    .locals 2

    .prologue
    .line 10110
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    move v0, v1

    return v0
.end method

.method public instantScrollToPosition(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10173
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 10174
    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 2

    .prologue
    .line 10092
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    move v0, v1

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 10100
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    move v0, v1

    return v0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .locals 10

    .prologue
    .line 10190
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object v5, v1

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    move-object v5, v1

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object v6, v1

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-wide v2, v4

    .line 10192
    move-object v4, v1

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    move-wide v7, v2

    div-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 10193
    move-object v4, v1

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-double v5, v5

    move-wide v7, v2

    div-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 10194
    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 10177
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 10178
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10183
    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .locals 4

    .prologue
    .line 10049
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 10050
    return-void
.end method

.method start(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 7

    .prologue
    .line 10035
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 10036
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 10037
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 10038
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid target position"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 10040
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView$State;->access$5802(Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v3

    .line 10041
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 10042
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10043
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10044
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onStart()V

    .line 10045
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$5900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 10046
    return-void
.end method

.method protected final stop()V
    .locals 3

    .prologue
    .line 10068
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-nez v1, :cond_0

    .line 10082
    :goto_0
    return-void

    .line 10071
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onStop()V

    .line 10072
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView$State;->access$5802(Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    .line 10073
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10074
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 10075
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10076
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 10078
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->access$6000(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 10080
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 10081
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 10082
    goto :goto_0
.end method
