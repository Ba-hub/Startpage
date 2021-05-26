.class public abstract Landroid/support/v7/widget/SnapHelper;
.super Landroid/support/v7/widget/RecyclerView$OnFlingListener;
.source "SnapHelper.java"


# static fields
.field private static final MILLISECONDS_PER_INCH:F = 100.0f


# instance fields
.field private mGravityScroller:Landroid/widget/Scroller;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$OnFlingListener;-><init>()V

    .line 43
    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/SnapHelper$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v7/widget/SnapHelper$1;-><init>(Landroid/support/v7/widget/SnapHelper;)V

    iput-object v2, v1, Landroid/support/v7/widget/SnapHelper;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SnapHelper;)V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/SnapHelper;->snapToTargetExistingView()V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SnapHelper;)Landroid/support/v7/widget/RecyclerView;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v0, v1

    return-object v0
.end method

.method private createSnapScroller(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/LinearSmoothScroller;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v2, :cond_0

    .line 201
    const/4 v2, 0x0

    move-object v0, v2

    .line 203
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/support/v7/widget/SnapHelper$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/SnapHelper$2;-><init>(Landroid/support/v7/widget/SnapHelper;Landroid/content/Context;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private destroyCallbacks()V
    .locals 3

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SnapHelper;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 115
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setOnFlingListener(Landroid/support/v7/widget/RecyclerView$OnFlingListener;)V

    .line 116
    return-void
.end method

.method private setupCallbacks()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getOnFlingListener()Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "An instance of OnFlingListener already set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SnapHelper;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 107
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setOnFlingListener(Landroid/support/v7/widget/RecyclerView$OnFlingListener;)V

    .line 108
    return-void
.end method

.method private snapFromFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)Z
    .locals 10
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v1

    instance-of v6, v6, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v6, :cond_0

    .line 149
    const/4 v6, 0x0

    move v0, v6

    .line 164
    :goto_0
    return v0

    .line 152
    :cond_0
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/support/v7/widget/SnapHelper;->createSnapScroller(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/LinearSmoothScroller;

    move-result-object v6

    move-object v4, v6

    .line 153
    move-object v6, v4

    if-nez v6, :cond_1

    .line 154
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 157
    :cond_1
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v7/widget/SnapHelper;->findTargetSnapPosition(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)I

    move-result v6

    move v5, v6

    .line 158
    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 159
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 162
    :cond_2
    move-object v6, v4

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 163
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 164
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0
.end method

.method private snapToTargetExistingView()V
    .locals 8

    .prologue
    .line 173
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v4, :cond_0

    .line 188
    :goto_0
    return-void

    .line 176
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    move-object v1, v4

    .line 177
    move-object v4, v1

    if-nez v4, :cond_1

    .line 178
    goto :goto_0

    .line 180
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/SnapHelper;->findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 181
    move-object v4, v2

    if-nez v4, :cond_2

    .line 182
    goto :goto_0

    .line 184
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/SnapHelper;->calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v4

    move-object v3, v4

    .line 185
    move-object v4, v3

    const/4 v5, 0x0

    aget v4, v4, v5

    if-nez v4, :cond_3

    move-object v4, v3

    const/4 v5, 0x1

    aget v4, v4, v5

    if-eqz v4, :cond_4

    .line 186
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v5, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    .line 188
    :cond_4
    goto :goto_0
.end method


# virtual methods
.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 9
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 97
    :goto_0
    return-void

    .line 87
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_1

    .line 88
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SnapHelper;->destroyCallbacks()V

    .line 90
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 91
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_2

    .line 92
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SnapHelper;->setupCallbacks()V

    .line 93
    move-object v2, v0

    new-instance v3, Landroid/widget/Scroller;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v4, v5, v6}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, v2, Landroid/support/v7/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    .line 95
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SnapHelper;->snapToTargetExistingView()V

    .line 97
    :cond_2
    goto :goto_0
.end method

.method public abstract calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public calculateScrollDistance(II)[I
    .locals 13

    .prologue
    .line 128
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v3, v4

    .line 129
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v1

    move v8, v2

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    const/high16 v11, -0x80000000

    const v12, 0x7fffffff

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 131
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getFinalX()I

    move-result v6

    aput v6, v4, v5

    .line 132
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getFinalY()I

    move-result v6

    aput v6, v4, v5

    .line 133
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public abstract findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract findTargetSnapPosition(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)I
.end method

.method public onFling(II)Z
    .locals 10

    .prologue
    .line 56
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    move-object v3, v6

    .line 57
    move-object v6, v3

    if-nez v6, :cond_0

    .line 58
    const/4 v6, 0x0

    move v0, v6

    .line 66
    :goto_0
    return v0

    .line 60
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v6

    move-object v4, v6

    .line 61
    move-object v6, v4

    if-nez v6, :cond_1

    .line 62
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 64
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v6

    move v5, v6

    .line 65
    move v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move v7, v5

    if-gt v6, v7, :cond_2

    move v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move v7, v5

    if-le v6, v7, :cond_3

    :cond_2
    move-object v6, v0

    move-object v7, v3

    move v8, v1

    move v9, v2

    .line 66
    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/SnapHelper;->snapFromFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method
