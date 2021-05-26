.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;
.implements Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;,
        Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;,
        Landroid/support/v7/widget/LinearLayoutManager$SavedState;,
        Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field final mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

.field private mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

.field mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 9

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 95
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 102
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 109
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 115
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 121
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 127
    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 131
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 137
    move-object v4, v0

    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .line 142
    move-object v4, v0

    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutChunkResult:Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    .line 160
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 161
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 162
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 95
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 102
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 109
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 115
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 121
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 127
    move-object v6, v0

    const/high16 v7, -0x80000000

    iput v7, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 131
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 137
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v7, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .line 142
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v7, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutChunkResult:Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    .line 175
    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v6

    move-object v5, v6

    .line 176
    move-object v6, v0

    move-object v7, v5

    iget v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 177
    move-object v6, v0

    move-object v7, v5

    iget-boolean v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 178
    move-object v6, v0

    move-object v7, v5

    iget-boolean v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 179
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 180
    return-void
.end method

.method private computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1088
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1089
    const/4 v2, 0x0

    move v0, v2

    .line 1092
    :goto_0
    return v0

    .line 1091
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1092
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x1

    .line 1093
    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x1

    .line 1094
    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1092
    invoke-static/range {v2 .. v7}, Landroid/support/v7/widget/ScrollbarHelper;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1093
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 9

    .prologue
    .line 1077
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1078
    const/4 v2, 0x0

    move v0, v2

    .line 1081
    :goto_0
    return v0

    .line 1080
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1081
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x1

    .line 1082
    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x1

    .line 1083
    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1081
    invoke-static/range {v2 .. v8}, Landroid/support/v7/widget/ScrollbarHelper;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;ZZ)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1082
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1099
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1100
    const/4 v2, 0x0

    move v0, v2

    .line 1103
    :goto_0
    return v0

    .line 1102
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1103
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x1

    .line 1104
    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x1

    .line 1105
    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1103
    invoke-static/range {v2 .. v7}, Landroid/support/v7/widget/ScrollbarHelper;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1104
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private findFirstReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 9

    .prologue
    .line 1632
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 8

    .prologue
    .line 1588
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    .line 1589
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .line 1592
    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, -0x1

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 8

    .prologue
    .line 1570
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    .line 1571
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, -0x1

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .line 1574
    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private findLastReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 9

    .prologue
    .line 1636
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    const/4 v7, -0x1

    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private findReferenceChildClosestToEnd(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1610
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    .line 1611
    :goto_0
    move-object v0, v3

    return-object v0

    .line 1610
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    .line 1611
    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->findLastReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method private findReferenceChildClosestToStart(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1627
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->findLastReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    .line 1628
    :goto_0
    move-object v0, v3

    return-object v0

    .line 1627
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    .line 1628
    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method private fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 11

    .prologue
    .line 873
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move v8, v1

    sub-int/2addr v7, v8

    move v5, v7

    .line 874
    const/4 v7, 0x0

    move v6, v7

    .line 875
    move v7, v5

    if-lez v7, :cond_0

    .line 876
    move-object v7, v0

    move v8, v5

    neg-int v8, v8

    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v7

    neg-int v7, v7

    move v6, v7

    .line 881
    move v7, v1

    move v8, v6

    add-int/2addr v7, v8

    move v1, v7

    .line 882
    move v7, v4

    if-eqz v7, :cond_1

    .line 884
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move v8, v1

    sub-int/2addr v7, v8

    move v5, v7

    .line 885
    move v7, v5

    if-lez v7, :cond_1

    .line 886
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 887
    move v7, v5

    move v8, v6

    add-int/2addr v7, v8

    move v0, v7

    .line 890
    :goto_0
    return v0

    .line 878
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 890
    :cond_1
    move v7, v6

    move v0, v7

    goto :goto_0
.end method

.method private fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 11

    .prologue
    .line 898
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 899
    const/4 v7, 0x0

    move v6, v7

    .line 900
    move v7, v5

    if-lez v7, :cond_0

    .line 902
    move-object v7, v0

    move v8, v5

    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v7

    neg-int v7, v7

    move v6, v7

    .line 906
    move v7, v1

    move v8, v6

    add-int/2addr v7, v8

    move v1, v7

    .line 907
    move v7, v4

    if-eqz v7, :cond_1

    .line 909
    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 910
    move v7, v5

    if-lez v7, :cond_1

    .line 911
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move v8, v5

    neg-int v8, v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 912
    move v7, v6

    move v8, v5

    sub-int/2addr v7, v8

    move v0, v7

    .line 915
    :goto_0
    return v0

    .line 904
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 915
    :cond_1
    move v7, v6

    move v0, v7

    goto :goto_0
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 4

    .prologue
    .line 1558
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    return-object v0

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 4

    .prologue
    .line 1548
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private layoutForPredictiveAnimations(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 20

    .prologue
    .line 667
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v15, v3

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v15

    if-eqz v15, :cond_0

    move-object v15, v3

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v15

    if-nez v15, :cond_0

    move-object v15, v1

    .line 668
    invoke-virtual {v15}, Landroid/support/v7/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v15

    if-nez v15, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    const/4 v15, 0x0

    move v6, v15

    const/4 v15, 0x0

    move v7, v15

    .line 673
    move-object v15, v2

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v15

    move-object v8, v15

    .line 674
    move-object v15, v8

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    move v9, v15

    .line 675
    move-object v15, v1

    move-object/from16 v16, v1

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v15

    move v10, v15

    .line 676
    const/4 v15, 0x0

    move v11, v15

    :goto_1
    move v15, v11

    move/from16 v16, v9

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 677
    move-object v15, v8

    move/from16 v16, v11

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v12, v15

    .line 678
    move-object v15, v12

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 676
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 681
    :cond_2
    move-object v15, v12

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v15

    move v13, v15

    .line 682
    move v15, v13

    move/from16 v16, v10

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    const/4 v15, -0x1

    :goto_4
    move v14, v15

    .line 684
    move v15, v14

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 685
    move v15, v6

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v16

    add-int v15, v15, v16

    move v6, v15

    goto :goto_2

    .line 682
    :cond_3
    const/4 v15, 0x0

    goto :goto_3

    :cond_4
    const/4 v15, 0x1

    goto :goto_4

    .line 687
    :cond_5
    move v15, v7

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v16

    add-int v15, v15, v16

    move v7, v15

    goto :goto_2

    .line 695
    :cond_6
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 696
    move v15, v6

    if-lez v15, :cond_7

    .line 697
    move-object v15, v1

    invoke-direct {v15}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v15

    move-object v11, v15

    .line 698
    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v16

    move/from16 v17, v4

    invoke-direct/range {v15 .. v17}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 699
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move/from16 v16, v6

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 700
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 701
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v15}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 702
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v15

    .line 705
    :cond_7
    move v15, v7

    if-lez v15, :cond_8

    .line 706
    move-object v15, v1

    invoke-direct {v15}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v15

    move-object v11, v15

    .line 707
    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v16

    move/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 708
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move/from16 v16, v7

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 709
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 710
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v15}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 711
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v15

    .line 713
    :cond_8
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 714
    goto/16 :goto_0
.end method

.method private logChildren()V
    .locals 8

    .prologue
    .line 1824
    move-object v0, p0

    const-string v3, "LinearLayoutManager"

    const-string v4, "internal representation of views on the screen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1825
    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1826
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1827
    const-string v3, "LinearLayoutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", coord:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v6, v2

    .line 1828
    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1827
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1825
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1830
    :cond_0
    const-string v3, "LinearLayoutManager"

    const-string v4, "=============="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1831
    return-void
.end method

.method private recycleByLayoutState(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;)V
    .locals 6

    .prologue
    .line 1341
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    if-eqz v3, :cond_0

    move-object v3, v2

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v3, :cond_1

    .line 1349
    :cond_0
    :goto_0
    return-void

    .line 1344
    :cond_1
    move-object v3, v2

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1345
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->recycleViewsFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    .line 1349
    :goto_1
    goto :goto_0

    .line 1347
    :cond_2
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->recycleViewsFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_1
.end method

.method private recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V
    .locals 8

    .prologue
    .line 1223
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v2

    move v6, v3

    if-ne v5, v6, :cond_0

    .line 1238
    :goto_0
    return-void

    .line 1229
    :cond_0
    move v5, v3

    move v6, v2

    if-le v5, v6, :cond_2

    .line 1230
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_1
    move v5, v4

    move v6, v2

    if-lt v5, v6, :cond_1

    .line 1231
    move-object v5, v0

    move v6, v4

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1230
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1238
    :cond_1
    goto :goto_0

    .line 1234
    :cond_2
    move v5, v2

    move v4, v5

    :goto_2
    move v5, v4

    move v6, v3

    if-le v5, v6, :cond_1

    .line 1235
    move-object v5, v0

    move v6, v4

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1234
    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method private recycleViewsFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 11

    .prologue
    .line 1296
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    move v3, v7

    .line 1297
    move v7, v2

    if-gez v7, :cond_0

    .line 1327
    :goto_0
    return-void

    .line 1304
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v7

    move v8, v2

    sub-int/2addr v7, v8

    move v4, v7

    .line 1305
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_4

    .line 1306
    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_3

    .line 1307
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1308
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move v8, v4

    if-lt v7, v8, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v6

    .line 1309
    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v7

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 1311
    :cond_1
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    move v10, v5

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    .line 1312
    goto :goto_0

    .line 1306
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1327
    :cond_3
    goto :goto_0

    .line 1316
    :cond_4
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    :goto_2
    move v7, v5

    if-ltz v7, :cond_3

    .line 1317
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1318
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move v8, v4

    if-lt v7, v8, :cond_5

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v6

    .line 1319
    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v7

    move v8, v4

    if-ge v7, v8, :cond_6

    .line 1321
    :cond_5
    move-object v7, v0

    move-object v8, v1

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v10, v5

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    .line 1322
    goto :goto_0

    .line 1316
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_2
.end method

.method private recycleViewsFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 11

    .prologue
    .line 1251
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v7, v2

    if-gez v7, :cond_0

    .line 1282
    :goto_0
    return-void

    .line 1259
    :cond_0
    move v7, v2

    move v3, v7

    .line 1260
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    move v4, v7

    .line 1261
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_4

    .line 1262
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    :goto_1
    move v7, v5

    if-ltz v7, :cond_3

    .line 1263
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1264
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    move v8, v3

    if-gt v7, v8, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v6

    .line 1265
    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v7

    move v8, v3

    if-le v7, v8, :cond_2

    .line 1267
    :cond_1
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v10, v5

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    .line 1268
    goto :goto_0

    .line 1262
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1282
    :cond_3
    goto :goto_0

    .line 1272
    :cond_4
    const/4 v7, 0x0

    move v5, v7

    :goto_2
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_3

    .line 1273
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1274
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    move v8, v3

    if-gt v7, v8, :cond_5

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v6

    .line 1275
    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v7

    move v8, v3

    if-le v7, v8, :cond_6

    .line 1277
    :cond_5
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    move v10, v5

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    .line 1278
    goto :goto_0

    .line 1272
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private resolveShouldLayoutReverse()V
    .locals 3

    .prologue
    .line 347
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 348
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v2, v1, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateAnchorFromChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 10

    .prologue
    .line 746
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    .line 747
    const/4 v7, 0x0

    move v0, v7

    .line 779
    :goto_0
    return v0

    .line 749
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 750
    move-object v7, v4

    if-eqz v7, :cond_1

    move-object v7, v3

    move-object v8, v4

    move-object v9, v2

    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->access$000(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 751
    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;)V

    .line 752
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 754
    :cond_1
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eq v7, v8, :cond_2

    .line 755
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 757
    :cond_2
    move-object v7, v3

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_5

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    .line 758
    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v7

    .line 759
    :goto_1
    move-object v5, v7

    .line 760
    move-object v7, v5

    if-eqz v7, :cond_8

    .line 761
    move-object v7, v3

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 764
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v7

    if-nez v7, :cond_4

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 766
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v5

    .line 767
    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 768
    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    if-ge v7, v8, :cond_3

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v5

    .line 769
    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 770
    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    if-ge v7, v8, :cond_6

    :cond_3
    const/4 v7, 0x1

    :goto_2
    move v6, v7

    .line 771
    move v7, v6

    if-eqz v7, :cond_4

    .line 772
    move-object v7, v3

    move-object v8, v3

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v8, :cond_7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 773
    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    .line 774
    :goto_3
    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 777
    :cond_4
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 758
    :cond_5
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    .line 759
    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v7

    goto :goto_1

    .line 770
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 773
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 774
    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    goto :goto_3

    .line 779
    :cond_8
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0
.end method

.method private updateAnchorFromPendingData(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 10

    .prologue
    .line 787
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 788
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 865
    :goto_0
    return v0

    .line 791
    :cond_1
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ltz v7, :cond_2

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 792
    :cond_2
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 793
    move-object v7, v0

    const/high16 v8, -0x80000000

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 797
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 802
    :cond_3
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 803
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 806
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 807
    move-object v7, v2

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_4

    .line 808
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 814
    :goto_1
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 811
    :cond_4
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_1

    .line 817
    :cond_5
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_e

    .line 818
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 819
    move-object v7, v3

    if-eqz v7, :cond_a

    .line 820
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v7

    move v4, v7

    .line 821
    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v8

    if-le v7, v8, :cond_6

    .line 823
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 824
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 826
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 827
    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 828
    move v7, v5

    if-gez v7, :cond_7

    .line 829
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 830
    move-object v7, v2

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 831
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 833
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v9, v3

    .line 834
    invoke-virtual {v8, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    .line 835
    move v7, v6

    if-gez v7, :cond_8

    .line 836
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 837
    move-object v7, v2

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 838
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 840
    :cond_8
    move-object v7, v2

    move-object v8, v2

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v8, :cond_9

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v9, v3

    .line 841
    invoke-virtual {v8, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 842
    invoke-virtual {v9}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v9

    add-int/2addr v8, v9

    .line 843
    :goto_2
    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 853
    :goto_3
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 842
    :cond_9
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v9, v3

    .line 843
    invoke-virtual {v8, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    goto :goto_2

    .line 845
    :cond_a
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_b

    .line 847
    move-object v7, v0

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v4, v7

    .line 848
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move v9, v4

    if-ge v8, v9, :cond_c

    const/4 v8, 0x1

    :goto_4
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne v8, v9, :cond_d

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 851
    :cond_b
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto :goto_3

    .line 848
    :cond_c
    const/4 v8, 0x0

    goto :goto_4

    :cond_d
    const/4 v8, 0x0

    goto :goto_5

    .line 856
    :cond_e
    move-object v7, v2

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 858
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_f

    .line 859
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 865
    :goto_6
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 862
    :cond_f
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_6
.end method

.method private updateAnchorInfoForLayout(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 8

    .prologue
    .line 718
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->updateAnchorFromPendingData(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 736
    :goto_0
    return-void

    .line 725
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->updateAnchorFromChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 729
    goto :goto_0

    .line 734
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 735
    move-object v4, v3

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_1
    iput v5, v4, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 736
    goto :goto_0

    .line 735
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private updateLayoutState(IIZLandroid/support/v7/widget/RecyclerView$State;)V
    .locals 11

    .prologue
    .line 1144
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v8

    iput-boolean v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 1145
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1146
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v8, v1

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 1148
    move v7, v1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 1149
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1151
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1153
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_1

    const/4 v8, -0x1

    :goto_0
    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1155
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1156
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1158
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1159
    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 1171
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v8, v2

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1172
    move v7, v3

    if-eqz v7, :cond_0

    .line 1173
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move v9, v5

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1175
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v8, v5

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1176
    return-void

    .line 1153
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 1162
    :cond_2
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1163
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1164
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1166
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1167
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1168
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    neg-int v7, v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1169
    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    add-int/2addr v7, v8

    move v5, v7

    goto :goto_1

    .line 1164
    :cond_3
    const/4 v8, -0x1

    goto :goto_2
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 6

    .prologue
    .line 923
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    move v5, v2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 924
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    :goto_0
    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 926
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v4, v1

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 927
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v4, 0x1

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 928
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 929
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 930
    return-void

    .line 924
    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private updateLayoutStateToFillEnd(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 5

    .prologue
    .line 919
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 920
    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 6

    .prologue
    .line 937
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 938
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v4, v1

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 939
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 941
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 942
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 943
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 945
    return-void

    .line 939
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private updateLayoutStateToFillStart(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 5

    .prologue
    .line 933
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 934
    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1211
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v2, :cond_0

    .line 1212
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1214
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 2

    .prologue
    .line 284
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 3

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1058
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1048
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1068
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 9

    .prologue
    .line 439
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 440
    const/4 v4, 0x0

    move-object v0, v4

    .line 447
    :goto_0
    return-object v0

    .line 442
    :cond_0
    move-object v4, v0

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    move v2, v4

    .line 443
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v4, v5, :cond_2

    const/4 v4, -0x1

    :goto_2
    move v3, v4

    .line 444
    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v4, :cond_3

    .line 445
    new-instance v4, Landroid/graphics/PointF;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v3

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v4

    goto :goto_0

    .line 443
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 447
    :cond_3
    new-instance v4, Landroid/graphics/PointF;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v3

    int-to-float v7, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v4

    goto :goto_0
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1063
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1053
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1073
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    .prologue
    .line 1503
    move-object v0, p0

    move v1, p1

    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 1536
    const/high16 v2, -0x80000000

    move v0, v2

    :goto_0
    return v0

    .line 1505
    :sswitch_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1506
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 1507
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1508
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 1510
    :cond_1
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 1513
    :sswitch_1
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1514
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 1515
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1516
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 1518
    :cond_3
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 1521
    :sswitch_2
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, -0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_4
    const/high16 v2, -0x80000000

    goto :goto_1

    .line 1524
    :sswitch_3
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_0

    :cond_5
    const/high16 v2, -0x80000000

    goto :goto_2

    .line 1527
    :sswitch_4
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_6

    const/4 v2, -0x1

    :goto_3
    move v0, v2

    goto :goto_0

    :cond_6
    const/high16 v2, -0x80000000

    goto :goto_3

    .line 1530
    :sswitch_5
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_7

    const/4 v2, 0x1

    :goto_4
    move v0, v2

    goto :goto_0

    :cond_7
    const/high16 v2, -0x80000000

    goto :goto_4

    .line 1503
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method createLayoutState()Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
    .locals 4

    .prologue
    .line 966
    move-object v0, p0

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method ensureLayoutState()V
    .locals 4

    .prologue
    .line 952
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    if-nez v1, :cond_0

    .line 953
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->createLayoutState()Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    .line 955
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    if-nez v1, :cond_1

    .line 956
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    invoke-static {v2, v3}, Landroid/support/v7/widget/OrientationHelper;->createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 958
    :cond_1
    return-void
.end method

.method fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 14

    .prologue
    .line 1365
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v8, v2

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move v5, v8

    .line 1366
    move-object v8, v2

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_1

    .line 1368
    move-object v8, v2

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v8, :cond_0

    .line 1369
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    move-object v10, v2

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1371
    :cond_0
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->recycleByLayoutState(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;)V

    .line 1373
    :cond_1
    move-object v8, v2

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move-object v9, v2

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    add-int/2addr v8, v9

    move v6, v8

    .line 1374
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutChunkResult:Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    move-object v7, v8

    .line 1375
    :cond_2
    move-object v8, v2

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-nez v8, :cond_3

    move v8, v6

    if-lez v8, :cond_4

    :cond_3
    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1376
    move-object v8, v7

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1377
    move-object v8, v0

    move-object v9, v1

    move-object v10, v3

    move-object v11, v2

    move-object v12, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/LinearLayoutManager;->layoutChunk(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V

    .line 1378
    move-object v8, v7

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v8, :cond_5

    .line 1409
    :cond_4
    :goto_0
    move v8, v5

    move-object v9, v2

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v8, v9

    move v0, v8

    return v0

    .line 1381
    :cond_5
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v10, v7

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    move-object v11, v2

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iput v9, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1388
    move-object v8, v7

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v8, :cond_6

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v8, :cond_6

    move-object v8, v3

    .line 1389
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1390
    :cond_6
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move-object v10, v7

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1392
    move v8, v6

    move-object v9, v7

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v8, v9

    move v6, v8

    .line 1395
    :cond_7
    move-object v8, v2

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_9

    .line 1396
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    move-object v10, v7

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1397
    move-object v8, v2

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v8, :cond_8

    .line 1398
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    move-object v10, v2

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1400
    :cond_8
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->recycleByLayoutState(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;)V

    .line 1402
    :cond_9
    move v8, v4

    if-eqz v8, :cond_2

    move-object v8, v7

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v8, :cond_2

    .line 1403
    goto :goto_0
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 7

    .prologue
    .line 1705
    move-object v0, p0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1706
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 7

    .prologue
    .line 1688
    move-object v0, p0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1689
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 7

    .prologue
    .line 1745
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1746
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method public findLastVisibleItemPosition()I
    .locals 7

    .prologue
    .line 1728
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1729
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 15

    .prologue
    .line 1751
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1752
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v13}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v13

    move v5, v13

    .line 1753
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v13}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v13

    move v6, v13

    .line 1754
    move v13, v2

    move v14, v1

    if-le v13, v14, :cond_0

    const/4 v13, 0x1

    :goto_0
    move v7, v13

    .line 1755
    const/4 v13, 0x0

    move-object v8, v13

    .line 1756
    move v13, v1

    move v9, v13

    :goto_1
    move v13, v9

    move v14, v2

    if-eq v13, v14, :cond_4

    .line 1757
    move-object v13, v0

    move v14, v9

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    move-object v10, v13

    .line 1758
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v14, v10

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v13

    move v11, v13

    .line 1759
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v14, v10

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v13

    move v12, v13

    .line 1760
    move v13, v11

    move v14, v6

    if-ge v13, v14, :cond_2

    move v13, v12

    move v14, v5

    if-le v13, v14, :cond_2

    .line 1761
    move v13, v3

    if-eqz v13, :cond_3

    .line 1762
    move v13, v11

    move v14, v5

    if-lt v13, v14, :cond_1

    move v13, v12

    move v14, v6

    if-gt v13, v14, :cond_1

    .line 1763
    move-object v13, v10

    move-object v0, v13

    .line 1772
    :goto_2
    return-object v0

    .line 1754
    :cond_0
    const/4 v13, -0x1

    goto :goto_0

    .line 1764
    :cond_1
    move v13, v4

    if-eqz v13, :cond_2

    move-object v13, v8

    if-nez v13, :cond_2

    .line 1765
    move-object v13, v10

    move-object v8, v13

    .line 1756
    :cond_2
    move v13, v9

    move v14, v7

    add-int/2addr v13, v14

    move v9, v13

    goto :goto_1

    .line 1768
    :cond_3
    move-object v13, v10

    move-object v0, v13

    goto :goto_2

    .line 1772
    :cond_4
    move-object v13, v8

    move-object v0, v13

    goto :goto_2
.end method

.method findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 16

    .prologue
    .line 1642
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1643
    const/4 v14, 0x0

    move-object v6, v14

    .line 1644
    const/4 v14, 0x0

    move-object v7, v14

    .line 1645
    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v14}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v14

    move v8, v14

    .line 1646
    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v14}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v14

    move v9, v14

    .line 1647
    move v14, v4

    move v15, v3

    if-le v14, v15, :cond_1

    const/4 v14, 0x1

    :goto_0
    move v10, v14

    .line 1648
    move v14, v3

    move v11, v14

    :goto_1
    move v14, v11

    move v15, v4

    if-eq v14, v15, :cond_5

    .line 1649
    move-object v14, v0

    move v15, v11

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move-object v12, v14

    .line 1650
    move-object v14, v0

    move-object v15, v12

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v14

    move v13, v14

    .line 1651
    move v14, v13

    if-ltz v14, :cond_0

    move v14, v13

    move v15, v5

    if-ge v14, v15, :cond_0

    .line 1652
    move-object v14, v12

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v14}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1653
    move-object v14, v6

    if-nez v14, :cond_0

    .line 1654
    move-object v14, v12

    move-object v6, v14

    .line 1648
    :cond_0
    :goto_2
    move v14, v11

    move v15, v10

    add-int/2addr v14, v15

    move v11, v14

    goto :goto_1

    .line 1647
    :cond_1
    const/4 v14, -0x1

    goto :goto_0

    .line 1656
    :cond_2
    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v15, v12

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v14

    move v15, v9

    if-ge v14, v15, :cond_3

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v15, v12

    .line 1657
    invoke-virtual {v14, v15}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v14

    move v15, v8

    if-ge v14, v15, :cond_4

    .line 1658
    :cond_3
    move-object v14, v7

    if-nez v14, :cond_0

    .line 1659
    move-object v14, v12

    move-object v7, v14

    goto :goto_2

    .line 1662
    :cond_4
    move-object v14, v12

    move-object v0, v14

    .line 1666
    :goto_3
    return-object v0

    :cond_5
    move-object v14, v7

    if-eqz v14, :cond_6

    move-object v14, v7

    :goto_4
    move-object v0, v14

    goto :goto_3

    :cond_6
    move-object v14, v6

    goto :goto_4
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 9

    .prologue
    .line 392
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v6

    move v2, v6

    .line 393
    move v6, v2

    if-nez v6, :cond_0

    .line 394
    const/4 v6, 0x0

    move-object v0, v6

    .line 405
    :goto_0
    return-object v0

    .line 396
    :cond_0
    move-object v6, v0

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    move v3, v6

    .line 397
    move v6, v1

    move v7, v3

    sub-int/2addr v6, v7

    move v4, v6

    .line 398
    move v6, v4

    if-ltz v6, :cond_1

    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 399
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 400
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_1

    .line 401
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 405
    :cond_1
    move-object v6, v0

    move v7, v1

    invoke-super {v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 187
    move-object v0, p0

    new-instance v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method protected getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    .prologue
    .line 421
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    move v0, v2

    .line 424
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 318
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    move v0, v1

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    move v0, v1

    return v0
.end method

.method public getReverseLayout()Z
    .locals 2

    .prologue
    .line 361
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    move v0, v1

    return v0
.end method

.method public getStackFromEnd()Z
    .locals 2

    .prologue
    .line 308
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    move v0, v1

    return v0
.end method

.method protected isLayoutRTL()Z
    .locals 3

    .prologue
    .line 948
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 2

    .prologue
    .line 1138
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move v0, v1

    return v0
.end method

.method layoutChunk(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 17

    .prologue
    .line 1414
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v11

    move-object v5, v11

    .line 1415
    move-object v11, v5

    if-nez v11, :cond_0

    .line 1421
    move-object v11, v4

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 1483
    :goto_0
    return-void

    .line 1424
    :cond_0
    move-object v11, v5

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v6, v11

    .line 1425
    move-object v11, v3

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v11, :cond_5

    .line 1426
    move-object v11, v0

    iget-boolean v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v12, v3

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    const/4 v12, 0x1

    :goto_1
    if-ne v11, v12, :cond_4

    .line 1428
    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/LinearLayoutManager;->addView(Landroid/view/View;)V

    .line 1440
    :goto_2
    move-object v11, v0

    move-object v12, v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1441
    move-object v11, v4

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v13, v5

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v12

    iput v12, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1443
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    .line 1444
    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1445
    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/LinearLayoutManager;->getWidth()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    move v9, v11

    .line 1446
    move v11, v9

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v13, v5

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v12

    sub-int/2addr v11, v12

    move v7, v11

    .line 1451
    :goto_3
    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_9

    .line 1452
    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v10, v11

    .line 1453
    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v12, v4

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v11, v12

    move v8, v11

    .line 1472
    :goto_4
    move-object v11, v0

    move-object v12, v5

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Landroid/support/v7/widget/LinearLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1479
    move-object v11, v6

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v11

    if-nez v11, :cond_1

    move-object v11, v6

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1480
    :cond_1
    move-object v11, v4

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1482
    :cond_2
    move-object v11, v4

    move-object v12, v5

    invoke-virtual {v12}, Landroid/view/View;->isFocusable()Z

    move-result v12

    iput-boolean v12, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 1483
    goto/16 :goto_0

    .line 1426
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 1430
    :cond_4
    move-object v11, v0

    move-object v12, v5

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1433
    :cond_5
    move-object v11, v0

    iget-boolean v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v12, v3

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_6

    const/4 v12, 0x1

    :goto_5
    if-ne v11, v12, :cond_7

    .line 1435
    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1433
    :cond_6
    const/4 v12, 0x0

    goto :goto_5

    .line 1437
    :cond_7
    move-object v11, v0

    move-object v12, v5

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 1448
    :cond_8
    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingLeft()I

    move-result v11

    move v7, v11

    .line 1449
    move v11, v7

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v13, v5

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    move v9, v11

    goto :goto_3

    .line 1455
    :cond_9
    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v8, v11

    .line 1456
    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v12, v4

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v11, v12

    move v10, v11

    goto :goto_4

    .line 1459
    :cond_a
    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingTop()I

    move-result v11

    move v8, v11

    .line 1460
    move v11, v8

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v13, v5

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    move v10, v11

    .line 1462
    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_b

    .line 1463
    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v9, v11

    .line 1464
    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v12, v4

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v11, v12

    move v7, v11

    goto/16 :goto_4

    .line 1466
    :cond_b
    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v7, v11

    .line 1467
    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v12, v4

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v11, v12

    move v9, v11

    goto/16 :goto_4
.end method

.method onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 0

    .prologue
    .line 656
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 6

    .prologue
    .line 221
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 222
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz v3, :cond_0

    .line 223
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 224
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 226
    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 14

    .prologue
    .line 1778
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1779
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v9

    if-nez v9, :cond_0

    .line 1780
    const/4 v9, 0x0

    move-object v0, v9

    .line 1816
    :goto_0
    return-object v0

    .line 1783
    :cond_0
    move-object v9, v0

    move v10, v2

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v9

    move v5, v9

    .line 1784
    move v9, v5

    const/high16 v10, -0x80000000

    if-ne v9, v10, :cond_1

    .line 1785
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 1787
    :cond_1
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1789
    move v9, v5

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 1790
    move-object v9, v0

    move-object v10, v3

    move-object v11, v4

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v9

    move-object v6, v9

    .line 1794
    :goto_1
    move-object v9, v6

    if-nez v9, :cond_3

    .line 1799
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 1792
    :cond_2
    move-object v9, v0

    move-object v10, v3

    move-object v11, v4

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v9

    move-object v6, v9

    goto :goto_1

    .line 1801
    :cond_3
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1802
    const v9, 0x3eaaaaab

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v10}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move v7, v9

    .line 1803
    move-object v9, v0

    move v10, v5

    move v11, v7

    const/4 v12, 0x0

    move-object v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLandroid/support/v7/widget/RecyclerView$State;)V

    .line 1804
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/high16 v10, -0x80000000

    iput v10, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1805
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1806
    move-object v9, v0

    move-object v10, v3

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v12, v4

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v9

    .line 1808
    move v9, v5

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    .line 1809
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v9

    move-object v8, v9

    .line 1813
    :goto_2
    move-object v9, v8

    move-object v10, v6

    if-eq v9, v10, :cond_4

    move-object v9, v8

    invoke-virtual {v9}, Landroid/view/View;->isFocusable()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1814
    :cond_4
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 1811
    :cond_5
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v9

    move-object v8, v9

    goto :goto_2

    .line 1816
    :cond_6
    move-object v9, v8

    move-object v0, v9

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 231
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 232
    move-object v3, v1

    .line 233
    invoke-static {v3}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v3

    move-object v2, v3

    .line 234
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 235
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    .line 237
    :cond_0
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 16

    .prologue
    .line 466
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v10, :cond_0

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 467
    :cond_0
    move-object v10, v2

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v10

    if-nez v10, :cond_1

    .line 468
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 634
    :goto_0
    return-void

    .line 472
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v10}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 473
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v11, v10, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 476
    :cond_2
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 477
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 479
    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 481
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v10, v10, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    if-eqz v10, :cond_3

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v10, :cond_4

    .line 483
    :cond_3
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v10}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 484
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    move-object v11, v0

    iget-boolean v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v11, v12

    iput-boolean v11, v10, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 486
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v10, v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->updateAnchorInfoForLayout(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 487
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 497
    :cond_4
    move-object v10, v0

    move-object v11, v2

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v10

    move v5, v10

    .line 500
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v10, :cond_9

    .line 501
    move v10, v5

    move v4, v10

    .line 502
    const/4 v10, 0x0

    move v3, v10

    .line 507
    :goto_1
    move v10, v3

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v11}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v11

    add-int/2addr v10, v11

    move v3, v10

    .line 508
    move v10, v4

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v11}, Landroid/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result v11

    add-int/2addr v10, v11

    move v4, v10

    .line 509
    move-object v10, v2

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v11, -0x80000000

    if-eq v10, v11, :cond_5

    .line 514
    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    move-object v6, v10

    .line 515
    move-object v10, v6

    if-eqz v10, :cond_5

    .line 518
    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v10, :cond_a

    .line 519
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v10}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v12, v6

    .line 520
    invoke-virtual {v11, v12}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v10, v11

    move v7, v10

    .line 521
    move v10, v7

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v10, v11

    move v8, v10

    .line 527
    :goto_2
    move v10, v8

    if-lez v10, :cond_b

    .line 528
    move v10, v3

    move v11, v8

    add-int/2addr v10, v11

    move v3, v10

    .line 537
    :cond_5
    :goto_3
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v10, v10, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v10, :cond_d

    .line 538
    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    :goto_4
    move v8, v10

    .line 545
    :goto_5
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    move v14, v8

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;->onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 546
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/LinearLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 547
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v11

    iput-boolean v11, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 548
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v11, v2

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v11

    iput-boolean v11, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 549
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v10, v10, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v10, :cond_f

    .line 551
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v10, v11}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 552
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v11, v3

    iput v11, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 553
    move-object v10, v0

    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v13, v2

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v10

    .line 554
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v6, v10

    .line 555
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move v9, v10

    .line 556
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v10, :cond_6

    .line 557
    move v10, v4

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v10, v11

    move v4, v10

    .line 560
    :cond_6
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v10, v11}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 561
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v11, v4

    iput v11, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 562
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 563
    move-object v10, v0

    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v13, v2

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v10

    .line 564
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v7, v10

    .line 566
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v10, :cond_7

    .line 568
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move v3, v10

    .line 569
    move-object v10, v0

    move v11, v9

    move v12, v6

    invoke-direct {v10, v11, v12}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 570
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v11, v3

    iput v11, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 571
    move-object v10, v0

    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v13, v2

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v10

    .line 572
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v6, v10

    .line 604
    :cond_7
    :goto_6
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v10

    if-lez v10, :cond_8

    .line 608
    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v11, v0

    iget-boolean v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v10, v11

    if-eqz v10, :cond_11

    .line 609
    move-object v10, v0

    move v11, v7

    move-object v12, v1

    move-object v13, v2

    const/4 v14, 0x1

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v10

    move v9, v10

    .line 610
    move v10, v6

    move v11, v9

    add-int/2addr v10, v11

    move v6, v10

    .line 611
    move v10, v7

    move v11, v9

    add-int/2addr v10, v11

    move v7, v10

    .line 612
    move-object v10, v0

    move v11, v6

    move-object v12, v1

    move-object v13, v2

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v10

    move v9, v10

    .line 613
    move v10, v6

    move v11, v9

    add-int/2addr v10, v11

    move v6, v10

    .line 614
    move v10, v7

    move v11, v9

    add-int/2addr v10, v11

    move v7, v10

    .line 624
    :cond_8
    :goto_7
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v6

    move v14, v7

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;->layoutForPredictiveAnimations(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 625
    move-object v10, v2

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v10

    if-nez v10, :cond_12

    .line 626
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v10}, Landroid/support/v7/widget/OrientationHelper;->onLayoutComplete()V

    .line 630
    :goto_8
    move-object v10, v0

    move-object v11, v0

    iget-boolean v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean v11, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 634
    goto/16 :goto_0

    .line 504
    :cond_9
    move v10, v5

    move v3, v10

    .line 505
    const/4 v10, 0x0

    move v4, v10

    goto/16 :goto_1

    .line 523
    :cond_a
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v11, v6

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 524
    invoke-virtual {v11}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v11

    sub-int/2addr v10, v11

    move v7, v10

    .line 525
    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move v11, v7

    sub-int/2addr v10, v11

    move v8, v10

    goto/16 :goto_2

    .line 530
    :cond_b
    move v10, v4

    move v11, v8

    sub-int/2addr v10, v11

    move v4, v10

    goto/16 :goto_3

    .line 538
    :cond_c
    const/4 v10, -0x1

    goto/16 :goto_4

    .line 541
    :cond_d
    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v10, :cond_e

    const/4 v10, -0x1

    :goto_9
    move v8, v10

    goto/16 :goto_5

    :cond_e
    const/4 v10, 0x1

    goto :goto_9

    .line 576
    :cond_f
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v10, v11}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 577
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v11, v4

    iput v11, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 578
    move-object v10, v0

    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v13, v2

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v10

    .line 579
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v7, v10

    .line 580
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move v9, v10

    .line 581
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v10, :cond_10

    .line 582
    move v10, v3

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v10, v11

    move v3, v10

    .line 585
    :cond_10
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v10, v11}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 586
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v11, v3

    iput v11, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 587
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 588
    move-object v10, v0

    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v13, v2

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v10

    .line 589
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v6, v10

    .line 591
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v10, :cond_7

    .line 592
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move v4, v10

    .line 594
    move-object v10, v0

    move v11, v9

    move v12, v7

    invoke-direct {v10, v11, v12}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 595
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v11, v4

    iput v11, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 596
    move-object v10, v0

    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v13, v2

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v10

    .line 597
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v7, v10

    goto/16 :goto_6

    .line 616
    :cond_11
    move-object v10, v0

    move v11, v6

    move-object v12, v1

    move-object v13, v2

    const/4 v14, 0x1

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v10

    move v9, v10

    .line 617
    move v10, v6

    move v11, v9

    add-int/2addr v10, v11

    move v6, v10

    .line 618
    move v10, v7

    move v11, v9

    add-int/2addr v10, v11

    move v7, v10

    .line 619
    move-object v10, v0

    move v11, v7

    move-object v12, v1

    move-object v13, v2

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v10

    move v9, v10

    .line 620
    move v10, v6

    move v11, v9

    add-int/2addr v10, v11

    move v6, v10

    .line 621
    move v10, v7

    move v11, v9

    add-int/2addr v10, v11

    move v7, v10

    goto/16 :goto_7

    .line 628
    :cond_12
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v10}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->reset()V

    goto/16 :goto_8
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    .line 638
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 639
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 640
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 641
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 642
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 643
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v2, :cond_0

    .line 269
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 270
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 277
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .prologue
    .line 241
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v4, :cond_0

    .line 242
    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v5, v6}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    move-object v0, v4

    .line 263
    :goto_0
    return-object v0

    .line 244
    :cond_0
    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    move-object v1, v4

    .line 245
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 246
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 247
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v4, v5

    move v2, v4

    .line 248
    move-object v4, v1

    move v5, v2

    iput-boolean v5, v4, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 249
    move v4, v2

    if-eqz v4, :cond_1

    .line 250
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 251
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v7, v3

    .line 252
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 253
    move-object v4, v1

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 263
    :goto_1
    move-object v4, v1

    move-object v0, v4

    goto :goto_0

    .line 255
    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 256
    move-object v4, v1

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 257
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 258
    invoke-virtual {v6}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_1

    .line 261
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    goto :goto_1
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 14

    .prologue
    .line 1893
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v8, v0

    const-string v9, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1894
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1895
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1896
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    move v5, v8

    .line 1897
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    move v6, v8

    .line 1898
    move v8, v5

    move v9, v6

    if-ge v8, v9, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v7, v8

    .line 1900
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_2

    .line 1901
    move v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 1902
    move-object v8, v0

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1903
    invoke-virtual {v10}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v12, v2

    .line 1904
    invoke-virtual {v11, v12}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v13, v1

    .line 1905
    invoke-virtual {v12, v13}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 1902
    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1920
    :goto_1
    return-void

    .line 1898
    :cond_0
    const/4 v8, -0x1

    goto :goto_0

    .line 1907
    :cond_1
    move-object v8, v0

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1908
    invoke-virtual {v10}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v12, v2

    .line 1909
    invoke-virtual {v11, v12}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v10, v11

    .line 1907
    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 1912
    :cond_2
    move v8, v7

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 1913
    move-object v8, v0

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v11, v2

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 1915
    :cond_3
    move-object v8, v0

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v11, v2

    .line 1916
    invoke-virtual {v10, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v12, v1

    .line 1917
    invoke-virtual {v11, v12}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v10, v11

    .line 1915
    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1
.end method

.method resolveIsInfinite()Z
    .locals 2

    .prologue
    .line 1179
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getMode()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1180
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

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

.method scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 14

    .prologue
    .line 1184
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_0

    move v8, v1

    if-nez v8, :cond_1

    .line 1185
    :cond_0
    const/4 v8, 0x0

    move v0, v8

    .line 1206
    :goto_0
    return v0

    .line 1187
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1188
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1189
    move v8, v1

    if-lez v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    move v4, v8

    .line 1190
    move v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move v5, v8

    .line 1191
    move-object v8, v0

    move v9, v4

    move v10, v5

    const/4 v11, 0x1

    move-object v12, v3

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLandroid/support/v7/widget/RecyclerView$State;)V

    .line 1192
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    move-object v9, v0

    move-object v10, v2

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v12, v3

    const/4 v13, 0x0

    .line 1193
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v9

    add-int/2addr v8, v9

    move v6, v8

    .line 1194
    move v8, v6

    if-gez v8, :cond_3

    .line 1198
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 1189
    :cond_2
    const/4 v8, -0x1

    goto :goto_1

    .line 1200
    :cond_3
    move v8, v5

    move v9, v6

    if-le v8, v9, :cond_4

    move v8, v4

    move v9, v6

    mul-int/2addr v8, v9

    :goto_2
    move v7, v8

    .line 1201
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move v9, v7

    neg-int v9, v9

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 1205
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v9, v7

    iput v9, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    .line 1206
    move v8, v7

    move v0, v8

    goto :goto_0

    .line 1200
    :cond_4
    move v8, v1

    goto :goto_2
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1028
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1029
    const/4 v4, 0x0

    move v0, v4

    .line 1031
    :goto_0
    return v0

    :cond_0
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public scrollToPosition(I)V
    .locals 4

    .prologue
    .line 985
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 986
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 987
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v2, :cond_0

    .line 988
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 990
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 991
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 5

    .prologue
    .line 1013
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1014
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1015
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v3, :cond_0

    .line 1016
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 1018
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 1019
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1040
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v4, :cond_0

    .line 1041
    const/4 v4, 0x0

    move v0, v4

    .line 1043
    :goto_0
    return v0

    :cond_0
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 7

    .prologue
    .line 328
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    move v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 329
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid orientation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 332
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne v2, v3, :cond_1

    .line 338
    :goto_0
    return-void

    .line 335
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    .line 336
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 337
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 338
    goto :goto_0
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 4

    .prologue
    .line 216
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 217
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 4

    .prologue
    .line 379
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 380
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    if-ne v2, v3, :cond_0

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 384
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 385
    goto :goto_0
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 4

    .prologue
    .line 1127
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1128
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 4

    .prologue
    .line 299
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 300
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 304
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 305
    goto :goto_0
.end method

.method shouldMeasureTwice()Z
    .locals 3

    .prologue
    .line 1487
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getHeightMode()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_0

    move-object v1, v0

    .line 1488
    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getWidthMode()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_0

    move-object v1, v0

    .line 1489
    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->hasFlexibleChildInBothOrientations()Z

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

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 9

    .prologue
    .line 431
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    new-instance v5, Landroid/support/v7/widget/LinearSmoothScroller;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    .line 432
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    move-object v4, v5

    .line 433
    move-object v5, v4

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 434
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 435
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 3

    .prologue
    .line 1885
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method validateChildOrder()V
    .locals 13

    .prologue
    .line 1844
    move-object v0, p0

    const-string v7, "LinearLayoutManager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "validating child count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1845
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_0

    .line 1881
    :goto_0
    return-void

    .line 1848
    :cond_0
    move-object v7, v0

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v1, v7

    .line 1849
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move v2, v7

    .line 1850
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_5

    .line 1851
    const/4 v7, 0x1

    move v3, v7

    :goto_1
    move v7, v3

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 1852
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 1853
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v5, v7

    .line 1854
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move v6, v7

    .line 1855
    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_2

    .line 1856
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 1857
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v6

    move v11, v2

    if-ge v10, v11, :cond_1

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    .line 1860
    :cond_2
    move v7, v6

    move v8, v2

    if-le v7, v8, :cond_3

    .line 1861
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 1862
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "detected invalid location"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1851
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1881
    :cond_4
    goto/16 :goto_0

    .line 1866
    :cond_5
    const/4 v7, 0x1

    move v3, v7

    :goto_3
    move v7, v3

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 1867
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 1868
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v5, v7

    .line 1869
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move v6, v7

    .line 1870
    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_7

    .line 1871
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 1872
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v6

    move v11, v2

    if-ge v10, v11, :cond_6

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    .line 1875
    :cond_7
    move v7, v6

    move v8, v2

    if-ge v7, v8, :cond_8

    .line 1876
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 1877
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "detected invalid location"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1866
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method
