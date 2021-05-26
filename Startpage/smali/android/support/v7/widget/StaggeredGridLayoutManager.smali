.class public Landroid/support/v7/widget/StaggeredGridLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final GAP_HANDLING_LAZY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS:I = 0x2

.field public static final GAP_HANDLING_NONE:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "StaggeredGridLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

.field private final mCheckForGapsRunnable:Ljava/lang/Runnable;

.field private mFullSizeSpec:I

.field private mGapStrategy:I

.field private mLaidOutInvalidFullSpan:Z

.field private mLastLayoutFromEnd:Z

.field private mLastLayoutRTL:Z

.field private final mLayoutState:Landroid/support/v7/widget/LayoutState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private mOrientation:I

.field private mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRemainingSpans:Ljava/util/BitSet;

.field private mReverseLayout:Z

.field mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mShouldReverseLayout:Z

.field private mSizePerSpan:I

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field private mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 8

    .prologue
    .line 243
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 110
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 133
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 138
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 149
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 155
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 161
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 166
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 192
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 197
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 205
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 211
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 213
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 244
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 245
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 246
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 247
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/LayoutState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/support/v7/widget/LayoutState;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    .line 248
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    .line 249
    return-void

    .line 246
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 110
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 133
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 138
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 149
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 155
    move-object v6, v0

    const/high16 v7, -0x80000000

    iput v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 161
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 166
    move-object v6, v0

    const/4 v7, 0x2

    iput v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 192
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 197
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 205
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 211
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 213
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 227
    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v6

    move-object v5, v6

    .line 228
    move-object v6, v0

    move-object v7, v5

    iget v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setOrientation(I)V

    .line 229
    move-object v6, v0

    move-object v7, v5

    iget v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 230
    move-object v6, v0

    move-object v7, v5

    iget-boolean v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 231
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 232
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/LayoutState;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/support/v7/widget/LayoutState;-><init>()V

    iput-object v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    .line 233
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    .line 234
    return-void

    .line 231
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    move v0, v1

    return v0
.end method

.method private appendViewToAllSpans(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1755
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 1756
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    .line 1755
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1758
    :cond_0
    return-void
.end method

.method private applyPendingSavedState(Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 6

    .prologue
    .line 769
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v4, :cond_2

    .line 770
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ne v4, v5, :cond_4

    .line 771
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_2

    .line 772
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 773
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    move v5, v2

    aget v4, v4, v5

    move v3, v4

    .line 774
    move v4, v3

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    .line 775
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v4, :cond_1

    .line 776
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    add-int/2addr v4, v5

    move v3, v4

    .line 781
    :cond_0
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v5, v2

    aget-object v4, v4, v5

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 771
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 778
    :cond_1
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    add-int/2addr v4, v5

    move v3, v4

    goto :goto_1

    .line 788
    :cond_2
    :goto_2
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 789
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 790
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 792
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 793
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 794
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 798
    :goto_3
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 799
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 800
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 802
    :cond_3
    return-void

    .line 784
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 785
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_2

    .line 796
    :cond_5
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_3
.end method

.method private attachViewToSpans(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Landroid/support/v7/widget/LayoutState;)V
    .locals 6

    .prologue
    .line 1699
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v3

    iget v4, v4, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1700
    move-object v4, v2

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_0

    .line 1701
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->appendViewToAllSpans(Landroid/view/View;)V

    .line 1712
    :goto_0
    return-void

    .line 1703
    :cond_0
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    goto :goto_0

    .line 1706
    :cond_1
    move-object v4, v2

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_2

    .line 1707
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->prependViewToAllSpans(Landroid/view/View;)V

    goto :goto_0

    .line 1709
    :cond_2
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    goto :goto_0
.end method

.method private calculateScrollDirectionForPosition(I)I
    .locals 5

    .prologue
    .line 1992
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1993
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 1996
    :goto_1
    return v0

    .line 1993
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 1995
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    move v2, v3

    .line 1996
    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_2
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v3, v4, :cond_3

    const/4 v3, -0x1

    :goto_3
    move v0, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    goto :goto_3
.end method

.method private checkForGaps()Z
    .locals 11

    .prologue
    .line 264
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isAttachedToWindow()Z

    move-result v6

    if-nez v6, :cond_1

    .line 265
    :cond_0
    const/4 v6, 0x0

    move v0, v6

    .line 305
    :goto_0
    return v0

    .line 268
    :cond_1
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_2

    .line 269
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v6

    move v1, v6

    .line 270
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v6

    move v2, v6

    .line 275
    :goto_1
    move v6, v1

    if-nez v6, :cond_3

    .line 276
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    .line 277
    move-object v6, v3

    if-eqz v6, :cond_3

    .line 278
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 279
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 280
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 281
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 272
    :cond_2
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v6

    move v1, v6

    .line 273
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v6

    move v2, v6

    goto :goto_1

    .line 284
    :cond_3
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v6, :cond_4

    .line 285
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 287
    :cond_4
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_5

    const/4 v6, -0x1

    :goto_2
    move v3, v6

    .line 288
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v7, v1

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v3

    const/4 v10, 0x1

    .line 289
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v6

    move-object v4, v6

    .line 290
    move-object v6, v4

    if-nez v6, :cond_6

    .line 291
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 292
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    move-result v6

    .line 293
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 287
    :cond_5
    const/4 v6, 0x1

    goto :goto_2

    .line 295
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v7, v1

    move-object v8, v4

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v9, v3

    const/4 v10, -0x1

    mul-int/lit8 v9, v9, -0x1

    const/4 v10, 0x1

    .line 296
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v6

    move-object v5, v6

    .line 298
    move-object v6, v5

    if-nez v6, :cond_7

    .line 299
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v7, v4

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    move-result v6

    .line 303
    :goto_3
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 304
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 305
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 301
    :cond_7
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v7, v5

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    move-result v6

    goto :goto_3
.end method

.method private checkSpanForGap(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Z
    .locals 7

    .prologue
    .line 395
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_1

    .line 396
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 398
    move-object v4, v1

    invoke-static {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->access$100(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v5, v1

    invoke-static {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->access$100(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v2, v4

    .line 399
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v4

    move-object v3, v4

    .line 400
    move-object v4, v3

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 408
    :goto_1
    return v0

    .line 400
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 402
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 404
    move-object v4, v1

    invoke-static {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->access$100(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v2, v4

    .line 405
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v4

    move-object v3, v4

    .line 406
    move-object v4, v3

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 408
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1075
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1076
    const/4 v2, 0x0

    move v0, v2

    .line 1078
    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x1

    .line 1079
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x1

    .line 1080
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1078
    invoke-static/range {v2 .. v7}, Landroid/support/v7/widget/ScrollbarHelper;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1079
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 9

    .prologue
    .line 1055
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1056
    const/4 v2, 0x0

    move v0, v2

    .line 1058
    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x1

    .line 1059
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x1

    .line 1060
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 1058
    invoke-static/range {v2 .. v8}, Landroid/support/v7/widget/ScrollbarHelper;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;ZZ)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1059
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1095
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1096
    const/4 v2, 0x0

    move v0, v2

    .line 1098
    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x1

    .line 1099
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x1

    .line 1100
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1098
    invoke-static/range {v2 .. v7}, Landroid/support/v7/widget/ScrollbarHelper;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1099
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    .prologue
    .line 2242
    move-object v0, p0

    move v1, p1

    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 2275
    const/high16 v2, -0x80000000

    move v0, v2

    :goto_0
    return v0

    .line 2244
    :sswitch_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2245
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 2246
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2247
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 2249
    :cond_1
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 2252
    :sswitch_1
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2253
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 2254
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2255
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 2257
    :cond_3
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 2260
    :sswitch_2
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, -0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_4
    const/high16 v2, -0x80000000

    goto :goto_1

    .line 2263
    :sswitch_3
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_0

    :cond_5
    const/high16 v2, -0x80000000

    goto :goto_2

    .line 2266
    :sswitch_4
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v2, :cond_6

    const/4 v2, -0x1

    :goto_3
    move v0, v2

    goto :goto_0

    :cond_6
    const/high16 v2, -0x80000000

    goto :goto_3

    .line 2269
    :sswitch_5
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v2, :cond_7

    const/4 v2, 0x1

    :goto_4
    move v0, v2

    goto :goto_0

    :cond_7
    const/high16 v2, -0x80000000

    goto :goto_4

    .line 2242
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

.method private createFullSpanItemFromEnd(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 10

    .prologue
    .line 1681
    move-object v0, p0

    move v1, p1

    new-instance v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    move-object v2, v4

    .line 1682
    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v5, v5, [I

    iput-object v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1683
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_0

    .line 1684
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    move v5, v3

    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v8, v3

    aget-object v7, v7, v8

    move v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v4, v5

    .line 1683
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1686
    :cond_0
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method

.method private createFullSpanItemFromStart(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 9

    .prologue
    .line 1690
    move-object v0, p0

    move v1, p1

    new-instance v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    move-object v2, v4

    .line 1691
    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v5, v5, [I

    iput-object v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1692
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_0

    .line 1693
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v7, v3

    aget-object v6, v6, v7

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v6

    move v7, v1

    sub-int/2addr v6, v7

    aput v6, v4, v5

    .line 1692
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1695
    :cond_0
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method

.method private createOrientationHelpers()V
    .locals 5

    .prologue
    .line 252
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    invoke-static {v2, v3}, Landroid/support/v7/widget/OrientationHelper;->createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 253
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    rsub-int/lit8 v3, v4, 0x1

    .line 254
    invoke-static {v2, v3}, Landroid/support/v7/widget/OrientationHelper;->createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 255
    return-void
.end method

.method private fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 25

    .prologue
    .line 1524
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Ljava/util/BitSet;->set(IIZ)V

    .line 1529
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/LayoutState;->mInfinite:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 1530
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 1531
    const v19, 0x7fffffff

    move/from16 v6, v19

    .line 1543
    :goto_0
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move/from16 v20, v0

    move/from16 v21, v6

    invoke-direct/range {v19 .. v21}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    .line 1550
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v19, v0

    .line 1551
    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v19

    .line 1552
    :goto_1
    move/from16 v7, v19

    .line 1553
    const/16 v19, 0x0

    move/from16 v8, v19

    .line 1554
    :goto_2
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v19

    if-eqz v19, :cond_1a

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/LayoutState;->mInfinite:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v19, v0

    .line 1555
    invoke-virtual/range {v19 .. v19}, Ljava/util/BitSet;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1a

    .line 1556
    :cond_0
    move-object/from16 v19, v4

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/LayoutState;->next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v9, v19

    .line 1557
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object/from16 v10, v19

    .line 1558
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v19

    move/from16 v11, v19

    .line 1559
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getSpan(I)I

    move-result v19

    move/from16 v12, v19

    .line 1561
    move/from16 v19, v12

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    const/16 v19, 0x1

    :goto_3
    move/from16 v14, v19

    .line 1562
    move/from16 v19, v14

    if-eqz v19, :cond_a

    .line 1563
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    :goto_4
    move-object/from16 v13, v19

    .line 1564
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move/from16 v20, v11

    move-object/from16 v21, v13

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->setSpan(ILandroid/support/v7/widget/StaggeredGridLayoutManager$Span;)V

    .line 1575
    :goto_5
    move-object/from16 v19, v10

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 1576
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 1577
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;)V

    .line 1581
    :goto_6
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Z)V

    .line 1585
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1586
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v19, v2

    move/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v19

    .line 1587
    :goto_7
    move/from16 v15, v19

    .line 1588
    move/from16 v19, v15

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v16, v19

    .line 1589
    move/from16 v19, v14

    if-eqz v19, :cond_1

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1591
    move-object/from16 v19, v2

    move/from16 v20, v15

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->createFullSpanItemFromEnd(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v19

    move-object/from16 v17, v19

    .line 1592
    move-object/from16 v19, v17

    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1593
    move-object/from16 v19, v17

    move/from16 v20, v11

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1594
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    .line 1610
    :cond_1
    :goto_8
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mItemDirection:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1611
    move/from16 v19, v14

    if-eqz v19, :cond_f

    .line 1612
    move-object/from16 v19, v2

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 1630
    :cond_2
    :goto_9
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v4

    invoke-direct/range {v19 .. v22}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->attachViewToSpans(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Landroid/support/v7/widget/LayoutState;)V

    .line 1633
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v19

    if-eqz v19, :cond_15

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 1634
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v19

    .line 1635
    :goto_a
    move/from16 v18, v19

    .line 1637
    move/from16 v19, v18

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v17, v19

    .line 1645
    :goto_b
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 1646
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move/from16 v21, v17

    move/from16 v22, v15

    move/from16 v23, v18

    move/from16 v24, v16

    invoke-virtual/range {v19 .. v24}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1651
    :goto_c
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_18

    .line 1652
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move/from16 v20, v0

    move/from16 v21, v6

    invoke-direct/range {v19 .. v21}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    .line 1656
    :goto_d
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->recycle(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;)V

    .line 1657
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/LayoutState;->mStopInFocusable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->isFocusable()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1658
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_19

    .line 1659
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/BitSet;->clear()V

    .line 1664
    :cond_3
    :goto_e
    const/16 v19, 0x1

    move/from16 v8, v19

    .line 1665
    goto/16 :goto_2

    .line 1533
    :cond_4
    const/high16 v19, -0x80000000

    move/from16 v6, v19

    goto/16 :goto_0

    .line 1536
    :cond_5
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 1537
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    move/from16 v19, v0

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v6, v19

    goto/16 :goto_0

    .line 1539
    :cond_6
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    move/from16 v19, v0

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v6, v19

    goto/16 :goto_0

    .line 1551
    :cond_7
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v19, v0

    .line 1552
    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v19

    goto/16 :goto_1

    .line 1561
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1563
    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getNextSpan(Landroid/support/v7/widget/LayoutState;)Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-result-object v19

    goto/16 :goto_4

    .line 1572
    :cond_a
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v19, v0

    move/from16 v20, v12

    aget-object v19, v19, v20

    move-object/from16 v13, v19

    goto/16 :goto_5

    .line 1579
    :cond_b
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 1586
    :cond_c
    move-object/from16 v19, v13

    move/from16 v20, v7

    .line 1587
    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v19

    goto/16 :goto_7

    .line 1597
    :cond_d
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v19, v2

    move/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v19

    .line 1598
    :goto_f
    move/from16 v16, v19

    .line 1599
    move/from16 v19, v16

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v15, v19

    .line 1600
    move/from16 v19, v14

    if-eqz v19, :cond_1

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1602
    move-object/from16 v19, v2

    move/from16 v20, v16

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->createFullSpanItemFromStart(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v19

    move-object/from16 v17, v19

    .line 1603
    move-object/from16 v19, v17

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1604
    move-object/from16 v19, v17

    move/from16 v20, v11

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1605
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    goto/16 :goto_8

    .line 1597
    :cond_e
    move-object/from16 v19, v13

    move/from16 v20, v7

    .line 1598
    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v19

    goto :goto_f

    .line 1615
    :cond_f
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 1616
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->areAllEndsEqual()Z

    move-result v19

    if-nez v19, :cond_11

    const/16 v19, 0x1

    :goto_10
    move/from16 v17, v19

    .line 1620
    :goto_11
    move/from16 v19, v17

    if-eqz v19, :cond_2

    .line 1621
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move/from16 v20, v11

    .line 1622
    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v19

    move-object/from16 v18, v19

    .line 1623
    move-object/from16 v19, v18

    if-eqz v19, :cond_10

    .line 1624
    move-object/from16 v19, v18

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    .line 1626
    :cond_10
    move-object/from16 v19, v2

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    goto/16 :goto_9

    .line 1616
    :cond_11
    const/16 v19, 0x0

    goto :goto_10

    .line 1618
    :cond_12
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->areAllStartsEqual()Z

    move-result v19

    if-nez v19, :cond_13

    const/16 v19, 0x1

    :goto_12
    move/from16 v17, v19

    goto :goto_11

    :cond_13
    const/16 v19, 0x0

    goto :goto_12

    .line 1634
    :cond_14
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v19, v0

    .line 1635
    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v19

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v21, v13

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    sub-int v19, v19, v20

    goto/16 :goto_a

    .line 1639
    :cond_15
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v19

    .line 1641
    :goto_13
    move/from16 v17, v19

    .line 1642
    move/from16 v19, v17

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v18, v19

    goto/16 :goto_b

    .line 1639
    :cond_16
    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v20, v0

    .line 1641
    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v20

    add-int v19, v19, v20

    goto :goto_13

    .line 1648
    :cond_17
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move/from16 v21, v15

    move/from16 v22, v17

    move/from16 v23, v16

    move/from16 v24, v18

    invoke-virtual/range {v19 .. v24}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_c

    .line 1654
    :cond_18
    move-object/from16 v19, v2

    move-object/from16 v20, v13

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move/from16 v21, v0

    move/from16 v22, v6

    invoke-direct/range {v19 .. v22}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;II)V

    goto/16 :goto_d

    .line 1661
    :cond_19
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v19, v0

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_e

    .line 1666
    :cond_1a
    move/from16 v19, v8

    if-nez v19, :cond_1b

    .line 1667
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->recycle(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;)V

    .line 1670
    :cond_1b
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1c

    .line 1671
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v19

    move/from16 v10, v19

    .line 1672
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v19

    move/from16 v20, v10

    sub-int v19, v19, v20

    move/from16 v9, v19

    .line 1677
    :goto_14
    move/from16 v19, v9

    if-lez v19, :cond_1d

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    move/from16 v19, v0

    move/from16 v20, v9

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    :goto_15
    move/from16 v2, v19

    return v2

    .line 1674
    :cond_1c
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v19

    move/from16 v10, v19

    .line 1675
    move/from16 v19, v10

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v9, v19

    goto :goto_14

    .line 1677
    :cond_1d
    const/16 v19, 0x0

    goto :goto_15
.end method

.method private findFirstReferenceChildPosition(I)I
    .locals 8

    .prologue
    .line 2107
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    move v2, v6

    .line 2108
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 2109
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 2110
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    move v5, v6

    .line 2111
    move v6, v5

    if-ltz v6, :cond_0

    move v6, v5

    move v7, v1

    if-ge v6, v7, :cond_0

    .line 2112
    move v6, v5

    move v0, v6

    .line 2115
    :goto_1
    return v0

    .line 2108
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2115
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private findLastReferenceChildPosition(I)I
    .locals 7

    .prologue
    .line 2124
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    :goto_0
    move v5, v2

    if-ltz v5, :cond_1

    .line 2125
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 2126
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    move v4, v5

    .line 2127
    move v5, v4

    if-ltz v5, :cond_0

    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 2128
    move v5, v4

    move v0, v5

    .line 2131
    :goto_1
    return v0

    .line 2124
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2131
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method private fixEndGap(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V
    .locals 11

    .prologue
    .line 1360
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v0

    const/high16 v8, -0x80000000

    invoke-direct {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v7

    move v4, v7

    .line 1361
    move v7, v4

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_0

    .line 1375
    :goto_0
    return-void

    .line 1364
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move v8, v4

    sub-int/2addr v7, v8

    move v5, v7

    .line 1366
    move v7, v5

    if-lez v7, :cond_2

    .line 1367
    move-object v7, v0

    move v8, v5

    neg-int v8, v8

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v7

    neg-int v7, v7

    move v6, v7

    .line 1371
    move v7, v5

    move v8, v6

    sub-int/2addr v7, v8

    move v5, v7

    .line 1372
    move v7, v3

    if-eqz v7, :cond_1

    move v7, v5

    if-lez v7, :cond_1

    .line 1373
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 1375
    :cond_1
    goto :goto_0

    .line 1369
    :cond_2
    goto :goto_0
.end method

.method private fixStartGap(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V
    .locals 11

    .prologue
    .line 1379
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v0

    const v8, 0x7fffffff

    invoke-direct {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v7

    move v4, v7

    .line 1380
    move v7, v4

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_0

    .line 1394
    :goto_0
    return-void

    .line 1383
    :cond_0
    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 1385
    move v7, v5

    if-lez v7, :cond_2

    .line 1386
    move-object v7, v0

    move v8, v5

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v7

    move v6, v7

    .line 1390
    move v7, v5

    move v8, v6

    sub-int/2addr v7, v8

    move v5, v7

    .line 1391
    move v7, v3

    if-eqz v7, :cond_1

    move v7, v5

    if-lez v7, :cond_1

    .line 1392
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move v8, v5

    neg-int v8, v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 1394
    :cond_1
    goto :goto_0

    .line 1388
    :cond_2
    goto :goto_0
.end method

.method private getFirstChildPosition()I
    .locals 5

    .prologue
    .line 2097
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    move v1, v2

    .line 2098
    move v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method private getLastChildPosition()I
    .locals 6

    .prologue
    .line 2092
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    move v1, v2

    .line 2093
    move v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method private getMaxEnd(I)I
    .locals 7

    .prologue
    .line 1834
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    move v2, v5

    .line 1835
    const/4 v5, 0x1

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_1

    .line 1836
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    move v4, v5

    .line 1837
    move v5, v4

    move v6, v2

    if-le v5, v6, :cond_0

    .line 1838
    move v5, v4

    move v2, v5

    .line 1835
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1841
    :cond_1
    move v5, v2

    move v0, v5

    return v0
.end method

.method private getMaxStart(I)I
    .locals 7

    .prologue
    .line 1792
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    move v2, v5

    .line 1793
    const/4 v5, 0x1

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_1

    .line 1794
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    move v4, v5

    .line 1795
    move v5, v4

    move v6, v2

    if-le v5, v6, :cond_0

    .line 1796
    move v5, v4

    move v2, v5

    .line 1793
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1799
    :cond_1
    move v5, v2

    move v0, v5

    return v0
.end method

.method private getMinEnd(I)I
    .locals 7

    .prologue
    .line 1845
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    move v2, v5

    .line 1846
    const/4 v5, 0x1

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_1

    .line 1847
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    move v4, v5

    .line 1848
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 1849
    move v5, v4

    move v2, v5

    .line 1846
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1852
    :cond_1
    move v5, v2

    move v0, v5

    return v0
.end method

.method private getMinStart(I)I
    .locals 7

    .prologue
    .line 1803
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    move v2, v5

    .line 1804
    const/4 v5, 0x1

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_1

    .line 1805
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    move v4, v5

    .line 1806
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 1807
    move v5, v4

    move v2, v5

    .line 1804
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1810
    :cond_1
    move v5, v2

    move v0, v5

    return v0
.end method

.method private getNextSpan(Landroid/support/v7/widget/LayoutState;)Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    .locals 14

    .prologue
    .line 1929
    move-object v0, p0

    move-object v1, p1

    move-object v12, v0

    move-object v13, v1

    iget v13, v13, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {v12, v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v12

    move v2, v12

    .line 1931
    move v12, v2

    if-eqz v12, :cond_1

    .line 1932
    move-object v12, v0

    iget v12, v12, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v3, v12

    .line 1933
    const/4 v12, -0x1

    move v4, v12

    .line 1934
    const/4 v12, -0x1

    move v5, v12

    .line 1940
    :goto_0
    move-object v12, v1

    iget v12, v12, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 1941
    const/4 v12, 0x0

    move-object v6, v12

    .line 1942
    const v12, 0x7fffffff

    move v7, v12

    .line 1943
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v12}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v12

    move v8, v12

    .line 1944
    move v12, v3

    move v9, v12

    :goto_1
    move v12, v9

    move v13, v4

    if-eq v12, v13, :cond_2

    .line 1945
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v13, v9

    aget-object v12, v12, v13

    move-object v10, v12

    .line 1946
    move-object v12, v10

    move v13, v8

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v12

    move v11, v12

    .line 1947
    move v12, v11

    move v13, v7

    if-ge v12, v13, :cond_0

    .line 1948
    move-object v12, v10

    move-object v6, v12

    .line 1949
    move v12, v11

    move v7, v12

    .line 1944
    :cond_0
    move v12, v9

    move v13, v5

    add-int/2addr v12, v13

    move v9, v12

    goto :goto_1

    .line 1936
    :cond_1
    const/4 v12, 0x0

    move v3, v12

    .line 1937
    move-object v12, v0

    iget v12, v12, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move v4, v12

    .line 1938
    const/4 v12, 0x1

    move v5, v12

    goto :goto_0

    .line 1952
    :cond_2
    move-object v12, v6

    move-object v0, v12

    .line 1965
    :goto_2
    return-object v0

    .line 1954
    :cond_3
    const/4 v12, 0x0

    move-object v6, v12

    .line 1955
    const/high16 v12, -0x80000000

    move v7, v12

    .line 1956
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v12}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v12

    move v8, v12

    .line 1957
    move v12, v3

    move v9, v12

    :goto_3
    move v12, v9

    move v13, v4

    if-eq v12, v13, :cond_5

    .line 1958
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v13, v9

    aget-object v12, v12, v13

    move-object v10, v12

    .line 1959
    move-object v12, v10

    move v13, v8

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v12

    move v11, v12

    .line 1960
    move v12, v11

    move v13, v7

    if-le v12, v13, :cond_4

    .line 1961
    move-object v12, v10

    move-object v6, v12

    .line 1962
    move v12, v11

    move v7, v12

    .line 1957
    :cond_4
    move v12, v9

    move v13, v5

    add-int/2addr v12, v13

    move v9, v12

    goto :goto_3

    .line 1965
    :cond_5
    move-object v12, v6

    move-object v0, v12

    goto :goto_2
.end method

.method private handleUpdate(III)V
    .locals 11

    .prologue
    .line 1480
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_0

    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v8

    :goto_0
    move v4, v8

    .line 1484
    move v8, v3

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2

    .line 1485
    move v8, v1

    move v9, v2

    if-ge v8, v9, :cond_1

    .line 1486
    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    .line 1487
    move v8, v1

    move v6, v8

    .line 1497
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    move-result v8

    .line 1498
    move v8, v3

    sparse-switch v8, :sswitch_data_0

    .line 1512
    :goto_2
    move v8, v5

    move v9, v4

    if-gt v8, v9, :cond_3

    .line 1520
    :goto_3
    return-void

    .line 1480
    :cond_0
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v8

    goto :goto_0

    .line 1489
    :cond_1
    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    .line 1490
    move v8, v2

    move v6, v8

    goto :goto_1

    .line 1493
    :cond_2
    move v8, v1

    move v6, v8

    .line 1494
    move v8, v1

    move v9, v2

    add-int/2addr v8, v9

    move v5, v8

    goto :goto_1

    .line 1500
    :sswitch_0
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    .line 1501
    goto :goto_2

    .line 1503
    :sswitch_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    .line 1504
    goto :goto_2

    .line 1507
    :sswitch_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    .line 1508
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v2

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_2

    .line 1516
    :cond_3
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_5

    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v8

    :goto_4
    move v7, v8

    .line 1517
    move v8, v6

    move v9, v7

    if-gt v8, v9, :cond_4

    .line 1518
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1520
    :cond_4
    goto :goto_3

    .line 1516
    :cond_5
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v8

    goto :goto_4

    .line 1498
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 12

    .prologue
    .line 1138
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1139
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v5, v7

    .line 1140
    move-object v7, v0

    move v8, v2

    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    move-object v10, v5

    iget v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result v7

    move v2, v7

    .line 1142
    move-object v7, v0

    move v8, v3

    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    move-object v10, v5

    iget v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result v7

    move v3, v7

    .line 1144
    move v7, v4

    if-eqz v7, :cond_1

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v5

    .line 1145
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v7

    .line 1146
    :goto_0
    move v6, v7

    .line 1147
    move v7, v6

    if-eqz v7, :cond_0

    .line 1148
    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 1151
    :cond_0
    return-void

    .line 1145
    :cond_1
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v5

    .line 1146
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v7

    goto :goto_0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Z)V
    .locals 12

    .prologue
    .line 1111
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_1

    .line 1112
    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1113
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    move-object v7, v0

    .line 1114
    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v8

    const/4 v9, 0x0

    move-object v10, v2

    iget v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    const/4 v11, 0x1

    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v7

    move v8, v3

    .line 1113
    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 1134
    :goto_0
    return-void

    .line 1117
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    .line 1118
    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, v2

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    const/4 v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    move v8, v3

    .line 1117
    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1122
    :cond_1
    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1123
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move-object v7, v0

    .line 1124
    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, v2

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    move-object v7, v0

    .line 1125
    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v8

    const/4 v9, 0x0

    move-object v10, v2

    iget v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    const/4 v11, 0x1

    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v7

    move v8, v3

    .line 1123
    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1128
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    .line 1129
    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, v2

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    const/4 v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move-object v8, v0

    .line 1130
    invoke-virtual {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v8

    const/4 v9, 0x0

    move-object v10, v2

    iget v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v7

    move v8, v3

    .line 1128
    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0
.end method

.method private onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V
    .locals 11

    .prologue
    .line 604
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    move-object v4, v7

    .line 605
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v7, :cond_0

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 606
    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 607
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 608
    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 705
    :goto_0
    return-void

    .line 613
    :cond_1
    move-object v7, v4

    iget-boolean v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    if-eqz v7, :cond_2

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_3

    .line 615
    :cond_2
    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 616
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_8

    .line 617
    move-object v7, v0

    move-object v8, v4

    invoke-direct {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->applyPendingSavedState(Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 623
    :goto_1
    move-object v7, v0

    move-object v8, v2

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateAnchorInfoForLayout(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 624
    move-object v7, v4

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    .line 626
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v7, :cond_5

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    .line 627
    move-object v7, v4

    iget-boolean v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-ne v7, v8, :cond_4

    move-object v7, v0

    .line 628
    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v7

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eq v7, v8, :cond_5

    .line 629
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 630
    move-object v7, v4

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 634
    :cond_5
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_9

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    const/4 v8, 0x1

    if-ge v7, v8, :cond_9

    .line 636
    :cond_6
    move-object v7, v4

    iget-boolean v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    if-eqz v7, :cond_f

    .line 637
    const/4 v7, 0x0

    move v5, v7

    :goto_2
    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v7, v8, :cond_9

    .line 639
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v8, v5

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 640
    move-object v7, v4

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_7

    .line 641
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v8, v5

    aget-object v7, v7, v8

    move-object v8, v4

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 637
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 619
    :cond_8
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 620
    move-object v7, v4

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_1

    .line 650
    :cond_9
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 651
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v7/widget/LayoutState;->mRecycle:Z

    .line 652
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 653
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    .line 654
    move-object v7, v0

    move-object v8, v4

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroid/support/v7/widget/RecyclerView$State;)V

    .line 655
    move-object v7, v4

    iget-boolean v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_10

    .line 657
    move-object v7, v0

    const/4 v8, -0x1

    invoke-direct {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 658
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v10, v2

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v7

    .line 660
    move-object v7, v0

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 661
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v8, v4

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LayoutState;->mItemDirection:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LayoutState;->mCurrentPosition:I

    .line 662
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v10, v2

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v7

    .line 673
    :goto_3
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->repositionToWrapContentIfNecessary()V

    .line 675
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_a

    .line 676
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_11

    .line 677
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fixEndGap(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    .line 678
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fixStartGap(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    .line 684
    :cond_a
    :goto_4
    const/4 v7, 0x0

    move v5, v7

    .line 685
    move v7, v3

    if-eqz v7, :cond_c

    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v7

    if-nez v7, :cond_c

    .line 686
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v7, :cond_12

    move-object v7, v0

    .line 687
    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_12

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v7, :cond_b

    move-object v7, v0

    .line 688
    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_12

    :cond_b
    const/4 v7, 0x1

    :goto_5
    move v6, v7

    .line 689
    move v7, v6

    if-eqz v7, :cond_c

    .line 690
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v7

    .line 691
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 692
    const/4 v7, 0x1

    move v5, v7

    .line 696
    :cond_c
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 697
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 699
    :cond_d
    move-object v7, v0

    move-object v8, v4

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 700
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v8

    iput-boolean v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 701
    move v7, v5

    if-eqz v7, :cond_e

    .line 702
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 703
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    .line 705
    :cond_e
    goto/16 :goto_0

    .line 645
    :cond_f
    const/4 v7, 0x0

    move v5, v7

    :goto_6
    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v7, v8, :cond_9

    .line 646
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v8, v5

    aget-object v7, v7, v8

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move-object v9, v4

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->cacheReferenceLineAndClear(ZI)V

    .line 645
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 665
    :cond_10
    move-object v7, v0

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 666
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v10, v2

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v7

    .line 668
    move-object v7, v0

    const/4 v8, -0x1

    invoke-direct {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 669
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v8, v4

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LayoutState;->mItemDirection:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LayoutState;->mCurrentPosition:I

    .line 670
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v10, v2

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v7

    goto/16 :goto_3

    .line 680
    :cond_11
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fixStartGap(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    .line 681
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fixEndGap(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    goto/16 :goto_4

    .line 688
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_5
.end method

.method private preferLastSpan(I)Z
    .locals 4

    .prologue
    .line 1919
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v2, :cond_2

    .line 1920
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .line 1922
    :goto_2
    return v0

    .line 1920
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1922
    :cond_2
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_3
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_4
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_5
    move v0, v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_5
.end method

.method private prependViewToAllSpans(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1762
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 1763
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    .line 1762
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1765
    :cond_0
    return-void
.end method

.method private recycle(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;)V
    .locals 8

    .prologue
    .line 1715
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    iget-boolean v5, v5, Landroid/support/v7/widget/LayoutState;->mRecycle:Z

    if-eqz v5, :cond_0

    move-object v5, v2

    iget-boolean v5, v5, Landroid/support/v7/widget/LayoutState;->mInfinite:Z

    if-eqz v5, :cond_1

    .line 1751
    :cond_0
    :goto_0
    return-void

    .line 1718
    :cond_1
    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    if-nez v5, :cond_3

    .line 1720
    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 1721
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    iget v7, v7, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->recycleFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    .line 1751
    :goto_1
    goto :goto_0

    .line 1723
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    iget v7, v7, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->recycleFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_1

    .line 1728
    :cond_3
    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 1730
    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    move-object v6, v0

    move-object v7, v2

    iget v7, v7, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    invoke-direct {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMaxStart(I)I

    move-result v6

    sub-int/2addr v5, v6

    move v3, v5

    .line 1732
    move v5, v3

    if-gez v5, :cond_4

    .line 1733
    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    move v4, v5

    .line 1737
    :goto_2
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->recycleFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    .line 1738
    goto :goto_1

    .line 1735
    :cond_4
    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    move v6, v3

    move-object v7, v2

    iget v7, v7, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    goto :goto_2

    .line 1740
    :cond_5
    move-object v5, v0

    move-object v6, v2

    iget v6, v6, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    invoke-direct {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinEnd(I)I

    move-result v5

    move-object v6, v2

    iget v6, v6, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 1742
    move v5, v3

    if-gez v5, :cond_6

    .line 1743
    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    move v4, v5

    .line 1747
    :goto_3
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->recycleFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_1

    .line 1745
    :cond_6
    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    move v6, v3

    move-object v7, v2

    iget v7, v7, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v5, v6

    move v4, v5

    goto :goto_3
.end method

.method private recycleFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 11

    .prologue
    .line 1885
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    move v3, v8

    .line 1887
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    :goto_0
    move v8, v4

    if-ltz v8, :cond_6

    .line 1888
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 1889
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    move v9, v2

    if-lt v8, v9, :cond_5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v9, v5

    .line 1890
    invoke-virtual {v8, v9}, Landroid/support/v7/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v8

    move v9, v2

    if-lt v8, v9, :cond_5

    .line 1891
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v6, v8

    .line 1893
    move-object v8, v6

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v8, :cond_3

    .line 1894
    const/4 v8, 0x0

    move v7, v8

    :goto_1
    move v8, v7

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v8, v9, :cond_1

    .line 1895
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v9, v7

    aget-object v8, v8, v9

    invoke-static {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->access$100(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 1913
    :goto_2
    return-void

    .line 1894
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1899
    :cond_1
    const/4 v8, 0x0

    move v7, v8

    :goto_3
    move v8, v7

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v8, v9, :cond_2

    .line 1900
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v9, v7

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    .line 1899
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1908
    :cond_2
    :goto_4
    move-object v8, v0

    move-object v9, v5

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1887
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1903
    :cond_3
    move-object v8, v6

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-static {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->access$100(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 1904
    goto :goto_2

    .line 1906
    :cond_4
    move-object v8, v6

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    goto :goto_4

    .line 1910
    :cond_5
    goto :goto_2

    .line 1913
    :cond_6
    goto :goto_2
.end method

.method private recycleFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 9

    .prologue
    .line 1856
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    if-lez v6, :cond_6

    .line 1857
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    .line 1858
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    move v7, v2

    if-gt v6, v7, :cond_5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v7, v3

    .line 1859
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v6

    move v7, v2

    if-gt v6, v7, :cond_5

    .line 1860
    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v4, v6

    .line 1862
    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v6, :cond_3

    .line 1863
    const/4 v6, 0x0

    move v5, v6

    :goto_1
    move v6, v5

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v6, v7, :cond_1

    .line 1864
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v7, v5

    aget-object v6, v6, v7

    invoke-static {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->access$100(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1882
    :goto_2
    return-void

    .line 1863
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1868
    :cond_1
    const/4 v6, 0x0

    move v5, v6

    :goto_3
    move v6, v5

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v6, v7, :cond_2

    .line 1869
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v7, v5

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->popStart()V

    .line 1868
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1877
    :cond_2
    :goto_4
    move-object v6, v0

    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1881
    goto :goto_0

    .line 1872
    :cond_3
    move-object v6, v4

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-static {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->access$100(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 1873
    goto :goto_2

    .line 1875
    :cond_4
    move-object v6, v4

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->popStart()V

    goto :goto_4

    .line 1879
    :cond_5
    goto :goto_2

    .line 1882
    :cond_6
    goto :goto_2
.end method

.method private repositionToWrapContentIfNecessary()V
    .locals 13

    .prologue
    .line 717
    move-object v0, p0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v10}, Landroid/support/v7/widget/OrientationHelper;->getMode()I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v10, v11, :cond_0

    .line 763
    :goto_0
    return-void

    .line 720
    :cond_0
    const/4 v10, 0x0

    move v1, v10

    .line 721
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v10

    move v2, v10

    .line 722
    const/4 v10, 0x0

    move v3, v10

    :goto_1
    move v10, v3

    move v11, v2

    if-ge v10, v11, :cond_3

    .line 723
    move-object v10, v0

    move v11, v3

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v4, v10

    .line 724
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v11, v4

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    int-to-float v10, v10

    move v5, v10

    .line 725
    move v10, v5

    move v11, v1

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 722
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 728
    :cond_1
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v6, v10

    .line 729
    move-object v10, v6

    invoke-virtual {v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 730
    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v5

    mul-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v5, v10

    .line 732
    :cond_2
    move v10, v1

    move v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    move v1, v10

    goto :goto_2

    .line 734
    :cond_3
    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move v3, v10

    .line 735
    move v10, v1

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    move v4, v10

    .line 736
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v10}, Landroid/support/v7/widget/OrientationHelper;->getMode()I

    move-result v10

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_4

    .line 737
    move v10, v4

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v11}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v4, v10

    .line 739
    :cond_4
    move-object v10, v0

    move v11, v4

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    .line 740
    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move v11, v3

    if-ne v10, v11, :cond_5

    .line 741
    goto :goto_0

    .line 743
    :cond_5
    const/4 v10, 0x0

    move v5, v10

    :goto_3
    move v10, v5

    move v11, v2

    if-ge v10, v11, :cond_9

    .line 744
    move-object v10, v0

    move v11, v5

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v6, v10

    .line 745
    move-object v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v7, v10

    .line 746
    move-object v10, v7

    iget-boolean v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v10, :cond_6

    .line 743
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 749
    :cond_6
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 750
    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move-object v11, v7

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v10, v11

    neg-int v10, v10

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v10, v11

    move v8, v10

    .line 751
    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move-object v11, v7

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v10, v11

    neg-int v10, v10

    move v11, v3

    mul-int/2addr v10, v11

    move v9, v10

    .line 752
    move-object v10, v6

    move v11, v8

    move v12, v9

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 753
    goto :goto_4

    .line 754
    :cond_7
    move-object v10, v7

    iget-object v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v10, v11

    move v8, v10

    .line 755
    move-object v10, v7

    iget-object v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move v11, v3

    mul-int/2addr v10, v11

    move v9, v10

    .line 756
    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 757
    move-object v10, v6

    move v11, v8

    move v12, v9

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 759
    :cond_8
    move-object v10, v6

    move v11, v8

    move v12, v9

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4

    .line 763
    :cond_9
    goto/16 :goto_0
.end method

.method private resolveShouldLayoutReverse()V
    .locals 3

    .prologue
    .line 553
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 554
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setLayoutStateDirection(I)V
    .locals 6

    .prologue
    .line 1428
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    .line 1429
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput v3, v2, Landroid/support/v7/widget/LayoutState;->mItemDirection:I

    .line 1431
    return-void

    .line 1429
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private updateAllRemainingSpans(II)V
    .locals 8

    .prologue
    .line 1768
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_1

    .line 1769
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v5, v3

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->access$100(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1768
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1772
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;II)V

    goto :goto_1

    .line 1774
    :cond_1
    return-void
.end method

.method private updateAnchorFromChildren(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 6

    .prologue
    .line 823
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v1

    .line 824
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastReferenceChildPosition(I)I

    move-result v4

    .line 825
    :goto_0
    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 826
    move-object v3, v2

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 827
    const/4 v3, 0x1

    move v0, v3

    return v0

    .line 824
    :cond_0
    move-object v4, v0

    move-object v5, v1

    .line 825
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstReferenceChildPosition(I)I

    move-result v4

    goto :goto_0
.end method

.method private updateLayoutState(ILandroid/support/v7/widget/RecyclerView$State;)V
    .locals 9

    .prologue
    .line 1397
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    .line 1398
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move v7, v1

    iput v7, v6, Landroid/support/v7/widget/LayoutState;->mCurrentPosition:I

    .line 1399
    const/4 v6, 0x0

    move v3, v6

    .line 1400
    const/4 v6, 0x0

    move v4, v6

    .line 1401
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isSmoothScrolling()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1402
    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$State;->getTargetScrollPosition()I

    move-result v6

    move v5, v6

    .line 1403
    move v6, v5

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 1404
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_1

    const/4 v7, 0x1

    :goto_0
    if-ne v6, v7, :cond_2

    .line 1405
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    move v4, v6

    .line 1413
    :cond_0
    :goto_1
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getClipToPadding()Z

    move-result v6

    move v5, v6

    .line 1414
    move v6, v5

    if-eqz v6, :cond_3

    .line 1415
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    move v8, v3

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    .line 1416
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move v8, v4

    add-int/2addr v7, v8

    iput v7, v6, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    .line 1421
    :goto_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/LayoutState;->mStopInFocusable:Z

    .line 1422
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/widget/LayoutState;->mRecycle:Z

    .line 1423
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getMode()I

    move-result v7

    if-nez v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 1424
    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, v6, Landroid/support/v7/widget/LayoutState;->mInfinite:Z

    .line 1425
    return-void

    .line 1404
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1407
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    move v3, v6

    goto :goto_1

    .line 1418
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v7

    move v8, v4

    add-int/2addr v7, v8

    iput v7, v6, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    .line 1419
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move v7, v3

    neg-int v7, v7

    iput v7, v6, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    goto :goto_2

    .line 1424
    :cond_4
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private updateRemainingSpans(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;II)V
    .locals 9

    .prologue
    .line 1777
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getDeletedSize()I

    move-result v6

    move v4, v6

    .line 1778
    move v6, v2

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 1779
    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v6

    move v5, v6

    .line 1780
    move v6, v5

    move v7, v4

    add-int/2addr v6, v7

    move v7, v3

    if-gt v6, v7, :cond_0

    .line 1781
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object v7, v1

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/BitSet;->set(IZ)V

    .line 1789
    :cond_0
    :goto_0
    return-void

    .line 1784
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v6

    move v5, v6

    .line 1785
    move v6, v5

    move v7, v4

    sub-int/2addr v6, v7

    move v7, v3

    if-lt v6, v7, :cond_0

    .line 1786
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object v7, v1

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method private updateSpecWithExtra(III)I
    .locals 8

    .prologue
    .line 1154
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v2

    if-nez v5, :cond_0

    move v5, v3

    if-nez v5, :cond_0

    .line 1155
    move v5, v1

    move v0, v5

    .line 1162
    :goto_0
    return v0

    .line 1157
    :cond_0
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    move v4, v5

    .line 1158
    move v5, v4

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_1

    move v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_2

    .line 1159
    :cond_1
    const/4 v5, 0x0

    move v6, v1

    .line 1160
    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    move v7, v2

    sub-int/2addr v6, v7

    move v7, v3

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v4

    .line 1159
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 1162
    :cond_2
    move v5, v1

    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method areAllEndsEqual()Z
    .locals 5

    .prologue
    .line 1814
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    move v1, v3

    .line 1815
    const/4 v3, 0x1

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_1

    .line 1816
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 1817
    const/4 v3, 0x0

    move v0, v3

    .line 1820
    :goto_1
    return v0

    .line 1815
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1820
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1
.end method

.method areAllStartsEqual()Z
    .locals 5

    .prologue
    .line 1824
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    move v1, v3

    .line 1825
    const/4 v3, 0x1

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_1

    .line 1826
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 1827
    const/4 v3, 0x0

    move v0, v3

    .line 1830
    :goto_1
    return v0

    .line 1825
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1830
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 521
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v2, :cond_0

    .line 522
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 524
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 2

    .prologue
    .line 1976
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

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
    .line 1971
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

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

.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 3

    .prologue
    .line 2162
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move v0, v2

    return v0
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1071
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1051
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1091
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 7

    .prologue
    .line 2001
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v4

    move v2, v4

    .line 2002
    new-instance v4, Landroid/graphics/PointF;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    move-object v3, v4

    .line 2003
    move v4, v2

    if-nez v4, :cond_0

    .line 2004
    const/4 v4, 0x0

    move-object v0, v4

    .line 2013
    :goto_0
    return-object v0

    .line 2006
    :cond_0
    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v4, :cond_1

    .line 2007
    move-object v4, v3

    move v5, v2

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 2008
    move-object v4, v3

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 2013
    :goto_1
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 2010
    :cond_1
    move-object v4, v3

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 2011
    move-object v4, v3

    move v5, v2

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    goto :goto_1
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1086
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1066
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1106
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public findFirstCompletelyVisibleItemPositions([I)[I
    .locals 8

    .prologue
    .line 973
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_1

    .line 974
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    move-object v1, v3

    .line 979
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_2

    .line 980
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findFirstCompletelyVisibleItemPosition()I

    move-result v5

    aput v5, v3, v4

    .line 979
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 975
    :cond_1
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 976
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", array size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 982
    :cond_2
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;
    .locals 12

    .prologue
    .line 1336
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v10}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v10

    move v3, v10

    .line 1337
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v10}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v10

    move v4, v10

    .line 1338
    const/4 v10, 0x0

    move-object v5, v10

    .line 1339
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v6, v10

    :goto_0
    move v10, v6

    if-ltz v10, :cond_4

    .line 1340
    move-object v10, v0

    move v11, v6

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v7, v10

    .line 1341
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v11, v7

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    move v8, v10

    .line 1342
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v11, v7

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v10

    move v9, v10

    .line 1343
    move v10, v9

    move v11, v3

    if-le v10, v11, :cond_0

    move v10, v8

    move v11, v4

    if-lt v10, v11, :cond_1

    .line 1339
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1346
    :cond_1
    move v10, v9

    move v11, v4

    if-le v10, v11, :cond_2

    move v10, v1

    if-nez v10, :cond_3

    .line 1349
    :cond_2
    move-object v10, v7

    move-object v0, v10

    .line 1355
    :goto_2
    return-object v0

    .line 1351
    :cond_3
    move v10, v2

    if-eqz v10, :cond_0

    move-object v10, v5

    if-nez v10, :cond_0

    .line 1352
    move-object v10, v7

    move-object v5, v10

    goto :goto_1

    .line 1355
    :cond_4
    move-object v10, v5

    move-object v0, v10

    goto :goto_2
.end method

.method findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;
    .locals 13

    .prologue
    .line 1306
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v11}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v11

    move v3, v11

    .line 1307
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v11}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v11

    move v4, v11

    .line 1308
    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v11

    move v5, v11

    .line 1309
    const/4 v11, 0x0

    move-object v6, v11

    .line 1310
    const/4 v11, 0x0

    move v7, v11

    :goto_0
    move v11, v7

    move v12, v5

    if-ge v11, v12, :cond_4

    .line 1311
    move-object v11, v0

    move v12, v7

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v8, v11

    .line 1312
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    move v9, v11

    .line 1313
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    move v10, v11

    .line 1314
    move v11, v10

    move v12, v3

    if-le v11, v12, :cond_0

    move v11, v9

    move v12, v4

    if-lt v11, v12, :cond_1

    .line 1310
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1317
    :cond_1
    move v11, v9

    move v12, v3

    if-ge v11, v12, :cond_2

    move v11, v1

    if-nez v11, :cond_3

    .line 1320
    :cond_2
    move-object v11, v8

    move-object v0, v11

    .line 1326
    :goto_2
    return-object v0

    .line 1322
    :cond_3
    move v11, v2

    if-eqz v11, :cond_0

    move-object v11, v6

    if-nez v11, :cond_0

    .line 1323
    move-object v11, v8

    move-object v6, v11

    goto :goto_1

    .line 1326
    :cond_4
    move-object v11, v6

    move-object v0, v11

    goto :goto_2
.end method

.method findFirstVisibleItemPositionInt()I
    .locals 5

    .prologue
    .line 1276
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v2

    .line 1277
    :goto_0
    move-object v1, v2

    .line 1278
    move-object v2, v1

    if-nez v2, :cond_1

    const/4 v2, -0x1

    :goto_1
    move v0, v2

    return v0

    .line 1276
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 1277
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1278
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_1
.end method

.method public findFirstVisibleItemPositions([I)[I
    .locals 8

    .prologue
    .line 941
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_1

    .line 942
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    move-object v1, v3

    .line 947
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_2

    .line 948
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findFirstVisibleItemPosition()I

    move-result v5

    aput v5, v3, v4

    .line 947
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 943
    :cond_1
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 944
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", array size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 950
    :cond_2
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public findLastCompletelyVisibleItemPositions([I)[I
    .locals 8

    .prologue
    .line 1037
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_1

    .line 1038
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    move-object v1, v3

    .line 1043
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_2

    .line 1044
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findLastCompletelyVisibleItemPosition()I

    move-result v5

    aput v5, v3, v4

    .line 1043
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1039
    :cond_1
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 1040
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", array size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1046
    :cond_2
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public findLastVisibleItemPositions([I)[I
    .locals 8

    .prologue
    .line 1005
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_1

    .line 1006
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    move-object v1, v3

    .line 1011
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_2

    .line 1012
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findLastVisibleItemPosition()I

    move-result v5

    aput v5, v3, v4

    .line 1011
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1007
    :cond_1
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 1008
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", array size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1014
    :cond_2
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 2137
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v1, :cond_0

    .line 2138
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 2141
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    move-object v0, v1

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 8

    .prologue
    .line 2148
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 2153
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 2154
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    .line 2156
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 6

    .prologue
    .line 1293
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1294
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move v0, v3

    .line 1296
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getGapStrategy()I
    .locals 2

    .prologue
    .line 492
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    move v0, v1

    return v0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 2166
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    move v0, v1

    return v0
.end method

.method public getReverseLayout()Z
    .locals 2

    .prologue
    .line 573
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    move v0, v1

    return v0
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 6

    .prologue
    .line 1284
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v3, :cond_0

    .line 1285
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move v0, v3

    .line 1287
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getSpanCount()I
    .locals 2

    .prologue
    .line 532
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move v0, v1

    return v0
.end method

.method hasGapsToFix()Landroid/view/View;
    .locals 22

    .prologue
    .line 331
    move-object/from16 v2, p0

    const/16 v17, 0x0

    move/from16 v3, v17

    .line 332
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v17

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v4, v17

    .line 333
    new-instance v17, Ljava/util/BitSet;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/util/BitSet;-><init>(I)V

    move-object/from16 v5, v17

    .line 334
    move-object/from16 v17, v5

    const/16 v18, 0x0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v17 .. v20}, Ljava/util/BitSet;->set(IIZ)V

    .line 337
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x1

    :goto_0
    move/from16 v8, v17

    .line 339
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 340
    move/from16 v17, v4

    move/from16 v6, v17

    .line 341
    move/from16 v17, v3

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v7, v17

    .line 346
    :goto_1
    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    const/16 v17, 0x1

    :goto_2
    move/from16 v9, v17

    .line 347
    move/from16 v17, v6

    move/from16 v10, v17

    :goto_3
    move/from16 v17, v10

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    .line 348
    move-object/from16 v17, v2

    move/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v11, v17

    .line 349
    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object/from16 v12, v17

    .line 350
    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->get(I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 351
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->checkSpanForGap(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 352
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    .line 391
    :goto_4
    return-object v2

    .line 337
    :cond_0
    const/16 v17, -0x1

    goto :goto_0

    .line 343
    :cond_1
    move/from16 v17, v3

    move/from16 v6, v17

    .line 344
    move/from16 v17, v4

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v7, v17

    goto :goto_1

    .line 346
    :cond_2
    const/16 v17, -0x1

    goto :goto_2

    .line 354
    :cond_3
    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->clear(I)V

    .line 356
    :cond_4
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 347
    :cond_5
    move/from16 v17, v10

    move/from16 v18, v9

    add-int v17, v17, v18

    move/from16 v10, v17

    goto/16 :goto_3

    .line 360
    :cond_6
    move/from16 v17, v10

    move/from16 v18, v9

    add-int v17, v17, v18

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 361
    move-object/from16 v17, v2

    move/from16 v18, v10

    move/from16 v19, v9

    add-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v13, v17

    .line 362
    const/16 v17, 0x0

    move/from16 v14, v17

    .line 363
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 365
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v17

    move/from16 v15, v17

    .line 366
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v17

    move/from16 v16, v17

    .line 367
    move/from16 v17, v15

    move/from16 v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 368
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    goto/16 :goto_4

    .line 369
    :cond_7
    move/from16 v17, v15

    move/from16 v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 370
    const/16 v17, 0x1

    move/from16 v14, v17

    .line 381
    :cond_8
    :goto_5
    move/from16 v17, v14

    if-eqz v17, :cond_5

    .line 383
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object/from16 v15, v17

    .line 384
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v17, v0

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    if-gez v17, :cond_b

    const/16 v17, 0x1

    :goto_6
    move/from16 v18, v8

    if-gez v18, :cond_c

    const/16 v18, 0x1

    :goto_7
    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 385
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    goto/16 :goto_4

    .line 373
    :cond_9
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    move/from16 v15, v17

    .line 374
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    move/from16 v16, v17

    .line 375
    move/from16 v17, v15

    move/from16 v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 376
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    goto/16 :goto_4

    .line 377
    :cond_a
    move/from16 v17, v15

    move/from16 v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 378
    const/16 v17, 0x1

    move/from16 v14, v17

    goto :goto_5

    .line 384
    :cond_b
    const/16 v17, 0x0

    goto :goto_6

    :cond_c
    const/16 v18, 0x0

    goto :goto_7

    .line 391
    :cond_d
    const/16 v17, 0x0

    move-object/from16 v2, v17

    goto/16 :goto_4
.end method

.method public invalidateSpanAssignments()V
    .locals 2

    .prologue
    .line 542
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 543
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 544
    return-void
.end method

.method isLayoutRTL()Z
    .locals 3

    .prologue
    .line 561
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLayoutDirection()I

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

.method public offsetChildrenHorizontal(I)V
    .locals 5

    .prologue
    .line 1435
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 1436
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 1437
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 1436
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1439
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 5

    .prologue
    .line 1443
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 1444
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 1445
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 1444
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1447
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 6

    .prologue
    .line 317
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    .line 318
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_0

    .line 319
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v5, v3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 318
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 322
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 323
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 17
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 2173
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v13

    if-nez v13, :cond_0

    .line 2174
    const/4 v13, 0x0

    move-object v0, v13

    .line 2228
    :goto_0
    return-object v0

    .line 2177
    :cond_0
    move-object v13, v0

    move-object v14, v1

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v13

    move-object v5, v13

    .line 2178
    move-object v13, v5

    if-nez v13, :cond_1

    .line 2179
    const/4 v13, 0x0

    move-object v0, v13

    goto :goto_0

    .line 2182
    :cond_1
    move-object v13, v0

    invoke-direct {v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 2183
    move-object v13, v0

    move v14, v2

    invoke-direct {v13, v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v13

    move v6, v13

    .line 2184
    move v13, v6

    const/high16 v14, -0x80000000

    if-ne v13, v14, :cond_2

    .line 2185
    const/4 v13, 0x0

    move-object v0, v13

    goto :goto_0

    .line 2187
    :cond_2
    move-object v13, v5

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v7, v13

    .line 2188
    move-object v13, v7

    iget-boolean v13, v13, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move v8, v13

    .line 2189
    move-object v13, v7

    iget-object v13, v13, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object v9, v13

    .line 2191
    move v13, v6

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 2192
    move-object v13, v0

    invoke-direct {v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v13

    move v10, v13

    .line 2196
    :goto_1
    move-object v13, v0

    move v14, v10

    move-object v15, v4

    invoke-direct {v13, v14, v15}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroid/support/v7/widget/RecyclerView$State;)V

    .line 2197
    move-object v13, v0

    move v14, v6

    invoke-direct {v13, v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 2199
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move v14, v10

    move-object v15, v0

    iget-object v15, v15, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v15, v15, Landroid/support/v7/widget/LayoutState;->mItemDirection:I

    add-int/2addr v14, v15

    iput v14, v13, Landroid/support/v7/widget/LayoutState;->mCurrentPosition:I

    .line 2200
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    const v14, 0x3eaaaaab

    move-object v15, v0

    iget-object v15, v15, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v15}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v13, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    .line 2201
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/support/v7/widget/LayoutState;->mStopInFocusable:Z

    .line 2202
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    const/4 v14, 0x0

    iput-boolean v14, v13, Landroid/support/v7/widget/LayoutState;->mRecycle:Z

    .line 2203
    move-object v13, v0

    move-object v14, v3

    move-object v15, v0

    iget-object v15, v15, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v16}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v13

    .line 2204
    move-object v13, v0

    move-object v14, v0

    iget-boolean v14, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v14, v13, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 2205
    move v13, v8

    if-nez v13, :cond_4

    .line 2206
    move-object v13, v9

    move v14, v10

    move v15, v6

    invoke-virtual {v13, v14, v15}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v13

    move-object v11, v13

    .line 2207
    move-object v13, v11

    if-eqz v13, :cond_4

    move-object v13, v11

    move-object v14, v5

    if-eq v13, v14, :cond_4

    .line 2208
    move-object v13, v11

    move-object v0, v13

    goto/16 :goto_0

    .line 2194
    :cond_3
    move-object v13, v0

    invoke-direct {v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v13

    move v10, v13

    goto :goto_1

    .line 2213
    :cond_4
    move-object v13, v0

    move v14, v6

    invoke-direct {v13, v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2214
    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v11, v13

    :goto_2
    move v13, v11

    if-ltz v13, :cond_6

    .line 2215
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v14, v11

    aget-object v13, v13, v14

    move v14, v10

    move v15, v6

    invoke-virtual {v13, v14, v15}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v13

    move-object v12, v13

    .line 2216
    move-object v13, v12

    if-eqz v13, :cond_5

    move-object v13, v12

    move-object v14, v5

    if-eq v13, v14, :cond_5

    .line 2217
    move-object v13, v12

    move-object v0, v13

    goto/16 :goto_0

    .line 2214
    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 2228
    :cond_6
    const/4 v13, 0x0

    move-object v0, v13

    goto/16 :goto_0

    .line 2221
    :cond_7
    const/4 v13, 0x0

    move v11, v13

    :goto_3
    move v13, v11

    move-object v14, v0

    iget v14, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v13, v14, :cond_6

    .line 2222
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v14, v11

    aget-object v13, v13, v14

    move v14, v10

    move v15, v6

    invoke-virtual {v13, v14, v15}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v13

    move-object v12, v13

    .line 2223
    move-object v13, v12

    if-eqz v13, :cond_8

    move-object v13, v12

    move-object v14, v5

    if-eq v13, v14, :cond_8

    .line 2224
    move-object v13, v12

    move-object v0, v13

    goto/16 :goto_0

    .line 2221
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 10

    .prologue
    .line 1249
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1250
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_2

    .line 1251
    move-object v7, v1

    .line 1252
    invoke-static {v7}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v7

    move-object v2, v7

    .line 1253
    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 1254
    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 1255
    move-object v7, v3

    if-eqz v7, :cond_0

    move-object v7, v4

    if-nez v7, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v5, v7

    .line 1259
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v6, v7

    .line 1260
    move v7, v5

    move v8, v6

    if-ge v7, v8, :cond_3

    .line 1261
    move-object v7, v2

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 1262
    move-object v7, v2

    move v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    .line 1268
    :cond_2
    :goto_1
    goto :goto_0

    .line 1264
    :cond_3
    move-object v7, v2

    move v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 1265
    move-object v7, v2

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 14

    .prologue
    .line 1228
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v5, v7

    .line 1229
    move-object v7, v5

    instance-of v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-nez v7, :cond_0

    .line 1230
    move-object v7, v0

    move-object v8, v3

    move-object v9, v4

    invoke-super {v7, v8, v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1245
    :goto_0
    return-void

    .line 1233
    :cond_0
    move-object v7, v5

    check-cast v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v6, v7

    .line 1234
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v7, :cond_2

    .line 1235
    move-object v7, v4

    move-object v8, v6

    .line 1236
    invoke-virtual {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v8

    move-object v9, v6

    iget-boolean v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v9, :cond_1

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    :goto_1
    const/4 v10, -0x1

    const/4 v11, -0x1

    move-object v12, v6

    iget-boolean v12, v12, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v13, 0x0

    .line 1235
    invoke-static/range {v8 .. v13}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 1245
    :goto_2
    goto :goto_0

    .line 1236
    :cond_1
    const/4 v9, 0x1

    goto :goto_1

    .line 1240
    :cond_2
    move-object v7, v4

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v10, v6

    .line 1242
    invoke-virtual {v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v10

    move-object v11, v6

    iget-boolean v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v11, :cond_3

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    :goto_3
    move-object v12, v6

    iget-boolean v12, v12, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v13, 0x0

    .line 1240
    invoke-static/range {v8 .. v13}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_2

    .line 1242
    :cond_3
    const/4 v11, 0x1

    goto :goto_3
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 8

    .prologue
    .line 1456
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v2

    move v6, v3

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1457
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    .line 1461
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 1462
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1463
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 9

    .prologue
    .line 1467
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v2

    move v7, v3

    const/16 v8, 0x8

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1468
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 8

    .prologue
    .line 1451
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v2

    move v6, v3

    const/4 v7, 0x2

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1452
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 9

    .prologue
    .line 1473
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v2

    move v7, v3

    const/4 v8, 0x4

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1474
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 7

    .prologue
    .line 598
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    .line 599
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    .line 709
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 710
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 711
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 712
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 713
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 714
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 1167
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_0

    .line 1168
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 1169
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1173
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 1177
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v4, :cond_0

    .line 1178
    new-instance v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;)V

    move-object v0, v4

    .line 1222
    :goto_0
    return-object v0

    .line 1180
    :cond_0
    new-instance v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    move-object v1, v4

    .line 1181
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 1182
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    iput-boolean v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1183
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iput-boolean v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 1185
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v4, :cond_2

    .line 1186
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iput-object v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 1187
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v5, v5

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 1188
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    iput-object v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    .line 1193
    :goto_1
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_6

    .line 1194
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v5

    .line 1195
    :goto_2
    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1196
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositionInt()I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1197
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 1198
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v5, v5, [I

    iput-object v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 1199
    const/4 v4, 0x0

    move v2, v4

    :goto_3
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_5

    .line 1201
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v4, :cond_4

    .line 1202
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v5, v2

    aget-object v4, v4, v5

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v4

    move v3, v4

    .line 1203
    move v4, v3

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_1

    .line 1204
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    sub-int/2addr v4, v5

    move v3, v4

    .line 1212
    :cond_1
    :goto_4
    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    move v5, v2

    move v6, v3

    aput v6, v4, v5

    .line 1199
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1190
    :cond_2
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    goto :goto_1

    .line 1194
    :cond_3
    move-object v5, v0

    .line 1195
    invoke-direct {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v5

    goto :goto_2

    .line 1207
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v5, v2

    aget-object v4, v4, v5

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v4

    move v3, v4

    .line 1208
    move v4, v3

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_1

    .line 1209
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int/2addr v4, v5

    move v3, v4

    goto :goto_4

    .line 1222
    :cond_5
    :goto_5
    move-object v4, v1

    move-object v0, v4

    goto/16 :goto_0

    .line 1215
    :cond_6
    move-object v4, v1

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1216
    move-object v4, v1

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1217
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    goto :goto_5
.end method

.method public onScrollStateChanged(I)V
    .locals 3

    .prologue
    .line 310
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 311
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result v2

    .line 313
    :cond_0
    return-void
.end method

.method scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 13

    .prologue
    .line 2059
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move v9, v1

    if-lez v9, :cond_0

    .line 2060
    const/4 v9, 0x1

    move v5, v9

    .line 2061
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v9

    move v4, v9

    .line 2066
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/support/v7/widget/LayoutState;->mRecycle:Z

    .line 2067
    move-object v9, v0

    move v10, v4

    move-object v11, v3

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroid/support/v7/widget/RecyclerView$State;)V

    .line 2068
    move-object v9, v0

    move v10, v5

    invoke-direct {v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 2069
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move v10, v4

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v11, v11, Landroid/support/v7/widget/LayoutState;->mItemDirection:I

    add-int/2addr v10, v11

    iput v10, v9, Landroid/support/v7/widget/LayoutState;->mCurrentPosition:I

    .line 2070
    move v9, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    move v6, v9

    .line 2071
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move v10, v6

    iput v10, v9, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    .line 2072
    move-object v9, v0

    move-object v10, v2

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v9

    move v7, v9

    .line 2074
    move v9, v6

    move v10, v7

    if-ge v9, v10, :cond_1

    .line 2075
    move v9, v1

    move v8, v9

    .line 2085
    :goto_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move v10, v8

    neg-int v10, v10

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 2087
    move-object v9, v0

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v10, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 2088
    move v9, v8

    move v0, v9

    return v0

    .line 2063
    :cond_0
    const/4 v9, -0x1

    move v5, v9

    .line 2064
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v9

    move v4, v9

    goto :goto_0

    .line 2076
    :cond_1
    move v9, v1

    if-gez v9, :cond_2

    .line 2077
    move v9, v7

    neg-int v9, v9

    move v8, v9

    goto :goto_1

    .line 2079
    :cond_2
    move v9, v7

    move v8, v9

    goto :goto_1
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1982
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 4

    .prologue
    .line 2026
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 2027
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 2029
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 2030
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 2031
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 2032
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 5

    .prologue
    .line 2048
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v3, :cond_0

    .line 2049
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 2051
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 2052
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 2053
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 2054
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1988
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public setGapStrategy(I)V
    .locals 6

    .prologue
    .line 505
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 506
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-ne v2, v3, :cond_0

    .line 517
    :goto_0
    return-void

    .line 509
    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    move v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 511
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 514
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 515
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 516
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 517
    goto :goto_0

    .line 515
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 12

    .prologue
    .line 580
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    move v6, v9

    .line 581
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    move v7, v9

    .line 582
    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 583
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    move v10, v7

    add-int/2addr v9, v10

    move v8, v9

    .line 584
    move v9, v3

    move v10, v8

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v9

    move v5, v9

    .line 585
    move v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr v10, v11

    move v11, v6

    add-int/2addr v10, v11

    move-object v11, v0

    .line 586
    invoke-virtual {v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v11

    .line 585
    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v9

    move v4, v9

    .line 593
    :goto_0
    move-object v9, v0

    move v10, v4

    move v11, v5

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setMeasuredDimension(II)V

    .line 594
    return-void

    .line 588
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    move v10, v6

    add-int/2addr v9, v10

    move v8, v9

    .line 589
    move v9, v2

    move v10, v8

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v9

    move v4, v9

    .line 590
    move v9, v3

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr v10, v11

    move v11, v7

    add-int/2addr v10, v11

    move-object v11, v0

    .line 591
    invoke-virtual {v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v11

    .line 590
    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v9

    move v5, v9

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 7

    .prologue
    .line 441
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_0

    move v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 442
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "invalid orientation."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 444
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 445
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v3, v4, :cond_1

    .line 453
    :goto_0
    return-void

    .line 448
    :cond_1
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 449
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v2, v3

    .line 450
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 451
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 452
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 453
    goto :goto_0
.end method

.method public setReverseLayout(Z)V
    .locals 4

    .prologue
    .line 469
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 470
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 471
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 473
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 474
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 475
    return-void
.end method

.method public setSpanCount(I)V
    .locals 11

    .prologue
    .line 421
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 422
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-eq v3, v4, :cond_1

    .line 423
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->invalidateSpanAssignments()V

    .line 424
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 425
    move-object v3, v0

    new-instance v4, Ljava/util/BitSet;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v5, v6}, Ljava/util/BitSet;-><init>(I)V

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 426
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v4, v4, [Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 427
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 428
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    new-instance v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move v8, v2

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;ILandroid/support/v7/widget/StaggeredGridLayoutManager$1;)V

    aput-object v5, v3, v4

    .line 427
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 432
    :cond_1
    return-void
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 9

    .prologue
    .line 2019
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    new-instance v5, Landroid/support/v7/widget/LinearSmoothScroller;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    move-object v4, v5

    .line 2020
    move-object v5, v4

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 2021
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 2022
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .prologue
    .line 918
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method updateAnchorFromPendingData(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 11

    .prologue
    .line 832
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 833
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 906
    :goto_0
    return v0

    .line 836
    :cond_1
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ltz v7, :cond_2

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 837
    :cond_2
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 838
    move-object v7, v0

    const/high16 v8, -0x80000000

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 839
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 842
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    const/4 v8, 0x1

    if-ge v7, v8, :cond_f

    .line 845
    :cond_4
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 846
    move-object v7, v3

    if-eqz v7, :cond_c

    .line 849
    move-object v7, v2

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_5

    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v8

    .line 850
    :goto_1
    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 851
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_7

    .line 852
    move-object v7, v2

    iget-boolean v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_6

    .line 853
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v7, v8

    move v4, v7

    .line 855
    move-object v7, v2

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 861
    :goto_2
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 849
    :cond_5
    move-object v8, v0

    .line 850
    invoke-direct {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v8

    goto :goto_1

    .line 857
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v7, v8

    move v4, v7

    .line 859
    move-object v7, v2

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_2

    .line 865
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v7

    move v4, v7

    .line 866
    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v8

    if-le v7, v8, :cond_9

    .line 868
    move-object v7, v2

    move-object v8, v2

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v8, :cond_8

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 869
    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    .line 870
    :goto_3
    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 871
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 869
    :cond_8
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 870
    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    goto :goto_3

    .line 874
    :cond_9
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 875
    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 876
    move v7, v5

    if-gez v7, :cond_a

    .line 877
    move-object v7, v2

    move v8, v5

    neg-int v8, v8

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 878
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 880
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v9, v3

    .line 881
    invoke-virtual {v8, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    .line 882
    move v7, v6

    if-gez v7, :cond_b

    .line 883
    move-object v7, v2

    move v8, v6

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 884
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 887
    :cond_b
    move-object v7, v2

    const/high16 v8, -0x80000000

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 906
    :goto_4
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 891
    :cond_c
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 892
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_e

    .line 893
    move-object v7, v0

    move-object v8, v2

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v7

    move v4, v7

    .line 895
    move-object v7, v2

    move v8, v4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 896
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 900
    :goto_6
    move-object v7, v2

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    goto :goto_4

    .line 895
    :cond_d
    const/4 v8, 0x0

    goto :goto_5

    .line 898
    :cond_e
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding(I)V

    goto :goto_6

    .line 903
    :cond_f
    move-object v7, v2

    const/high16 v8, -0x80000000

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 904
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    goto :goto_4
.end method

.method updateAnchorInfoForLayout(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 6

    .prologue
    .line 805
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateAnchorFromPendingData(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 816
    :goto_0
    return-void

    .line 808
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateAnchorFromChildren(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 809
    goto :goto_0

    .line 814
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 815
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 816
    goto :goto_0
.end method

.method updateMeasureSpecs(I)V
    .locals 5

    .prologue
    .line 910
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    div-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 912
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 913
    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->getMode()I

    move-result v4

    .line 912
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 914
    return-void
.end method
