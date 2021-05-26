.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayoutManager$LayoutParams;,
        Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 43
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    move-object v3, v0

    new-instance v4, Landroid/util/SparseIntArray;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    move-object v3, v0

    new-instance v4, Landroid/util/SparseIntArray;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 84
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 10

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 43
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    move-object v5, v0

    new-instance v6, Landroid/util/SparseIntArray;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v5, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    move-object v5, v0

    new-instance v6, Landroid/util/SparseIntArray;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v5, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    move-object v5, v0

    new-instance v6, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v6, v5, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 97
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 12

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    move-object v6, v0

    new-instance v7, Landroid/util/SparseIntArray;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v6, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    move-object v6, v0

    new-instance v7, Landroid/util/SparseIntArray;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v6, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v7, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 72
    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Landroid/support/v7/widget/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v6

    move-object v5, v6

    .line 73
    move-object v6, v0

    move-object v7, v5

    iget v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 74
    return-void
.end method

.method private assignSpans(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;IIZ)V
    .locals 19

    .prologue
    .line 755
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v13, v5

    if-eqz v13, :cond_0

    .line 756
    const/4 v13, 0x0

    move v7, v13

    .line 757
    move v13, v3

    move v8, v13

    .line 758
    const/4 v13, 0x1

    move v9, v13

    .line 764
    :goto_0
    const/4 v13, 0x0

    move v6, v13

    .line 765
    move v13, v7

    move v10, v13

    :goto_1
    move v13, v10

    move v14, v8

    if-eq v13, v14, :cond_1

    .line 766
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move v14, v10

    aget-object v13, v13, v14

    move-object v11, v13

    .line 767
    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object v12, v13

    .line 768
    move-object v13, v12

    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v17

    invoke-direct/range {v14 .. v17}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v14

    invoke-static {v13, v14}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$002(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I

    move-result v13

    .line 769
    move-object v13, v12

    move v14, v6

    invoke-static {v13, v14}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$102(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I

    move-result v13

    .line 770
    move v13, v6

    move-object v14, v12

    invoke-static {v14}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v14

    add-int/2addr v13, v14

    move v6, v13

    .line 765
    move v13, v10

    move v14, v9

    add-int/2addr v13, v14

    move v10, v13

    goto :goto_1

    .line 760
    :cond_0
    move v13, v3

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v7, v13

    .line 761
    const/4 v13, -0x1

    move v8, v13

    .line 762
    const/4 v13, -0x1

    move v9, v13

    goto :goto_0

    .line 772
    :cond_1
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 8

    .prologue
    .line 189
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    move v1, v5

    .line 190
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 191
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object v3, v5

    .line 192
    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    move v4, v5

    .line 193
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    move v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    move v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 6

    .prologue
    .line 309
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move v5, v1

    invoke-static {v3, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    .line 310
    return-void
.end method

.method static calculateItemBorders([III)[I
    .locals 12

    .prologue
    .line 320
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v9, v0

    if-eqz v9, :cond_0

    move-object v9, v0

    array-length v9, v9

    move v10, v1

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    if-ne v9, v10, :cond_0

    move-object v9, v0

    move-object v10, v0

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    move v10, v2

    if-eq v9, v10, :cond_1

    .line 322
    :cond_0
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [I

    move-object v0, v9

    .line 324
    :cond_1
    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 325
    move v9, v2

    move v10, v1

    div-int/2addr v9, v10

    move v3, v9

    .line 326
    move v9, v2

    move v10, v1

    rem-int/2addr v9, v10

    move v4, v9

    .line 327
    const/4 v9, 0x0

    move v5, v9

    .line 328
    const/4 v9, 0x0

    move v6, v9

    .line 329
    const/4 v9, 0x1

    move v7, v9

    :goto_0
    move v9, v7

    move v10, v1

    if-gt v9, v10, :cond_3

    .line 330
    move v9, v3

    move v8, v9

    .line 331
    move v9, v6

    move v10, v4

    add-int/2addr v9, v10

    move v6, v9

    .line 332
    move v9, v6

    if-lez v9, :cond_2

    move v9, v1

    move v10, v6

    sub-int/2addr v9, v10

    move v10, v4

    if-ge v9, v10, :cond_2

    .line 333
    add-int/lit8 v8, v8, 0x1

    .line 334
    move v9, v6

    move v10, v1

    sub-int/2addr v9, v10

    move v6, v9

    .line 336
    :cond_2
    move v9, v5

    move v10, v8

    add-int/2addr v9, v10

    move v5, v9

    .line 337
    move-object v9, v0

    move v10, v7

    move v11, v5

    aput v11, v9, v10

    .line 329
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 339
    :cond_3
    move-object v9, v0

    move-object v0, v9

    return-object v0
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 2

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 185
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 186
    return-void
.end method

.method private ensureAnchorIsInCorrectSpan(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 17

    .prologue
    .line 386
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move v11, v4

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    const/4 v11, 0x1

    :goto_0
    move v5, v11

    .line 388
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    iget v14, v14, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v11

    move v6, v11

    .line 389
    move v11, v5

    if-eqz v11, :cond_1

    .line 391
    :goto_1
    move v11, v6

    if-lez v11, :cond_3

    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v11, :cond_3

    .line 392
    move-object v11, v3

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    iput v12, v11, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 393
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    iget v14, v14, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v11

    move v6, v11

    goto :goto_1

    .line 386
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 397
    :cond_1
    move-object v11, v2

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v7, v11

    .line 398
    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    move v8, v11

    .line 399
    move v11, v6

    move v9, v11

    .line 400
    :goto_2
    move v11, v8

    move v12, v7

    if-ge v11, v12, :cond_2

    .line 401
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move v14, v8

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v11

    move v10, v11

    .line 402
    move v11, v10

    move v12, v9

    if-le v11, v12, :cond_2

    .line 403
    add-int/lit8 v8, v8, 0x1

    .line 404
    move v11, v10

    move v9, v11

    .line 408
    goto :goto_2

    .line 409
    :cond_2
    move-object v11, v3

    move v12, v8

    iput v12, v11, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 411
    :cond_3
    return-void
.end method

.method private ensureViewSet()V
    .locals 3

    .prologue
    .line 363
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v1, v1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-eq v1, v2, :cond_1

    .line 364
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    new-array v2, v2, [Landroid/view/View;

    iput-object v2, v1, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 366
    :cond_1
    return-void
.end method

.method private getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 9

    .prologue
    .line 450
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_0

    .line 451
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move v6, v3

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v5

    move v0, v5

    .line 462
    :goto_0
    return v0

    .line 453
    :cond_0
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v5

    move v4, v5

    .line 454
    move v5, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 459
    const-string v5, "GridLayoutManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find span size for pre layout position. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 460
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 462
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method private getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 10

    .prologue
    .line 466
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v6

    if-nez v6, :cond_0

    .line 467
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v6

    move v0, v6

    .line 483
    :goto_0
    return v0

    .line 469
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    move v7, v3

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    move v4, v6

    .line 470
    move v6, v4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 471
    move v6, v4

    move v0, v6

    goto :goto_0

    .line 473
    :cond_1
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v6

    move v5, v6

    .line 474
    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 479
    const-string v6, "GridLayoutManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 481
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 483
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method private getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 10

    .prologue
    .line 487
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v6

    if-nez v6, :cond_0

    .line 488
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v6

    move v0, v6

    .line 504
    :goto_0
    return v0

    .line 490
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    move v7, v3

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    move v4, v6

    .line 491
    move v6, v4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 492
    move v6, v4

    move v0, v6

    goto :goto_0

    .line 494
    :cond_1
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v6

    move v5, v6

    .line 495
    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 500
    const-string v6, "GridLayoutManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 502
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 504
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method private guessMeasurement(FI)V
    .locals 7

    .prologue
    .line 730
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v3, v4

    .line 732
    move-object v4, v0

    move v5, v3

    move v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 733
    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .locals 16

    .prologue
    .line 696
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v11, v1

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object v4, v11

    .line 697
    move-object v11, v4

    iget-object v11, v11, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v5, v11

    .line 698
    move-object v11, v5

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move-object v12, v5

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    move-object v12, v4

    iget v12, v12, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    move-object v12, v4

    iget v12, v12, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    move v6, v11

    .line 700
    move-object v11, v5

    iget v11, v11, Landroid/graphics/Rect;->left:I

    move-object v12, v5

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    move-object v12, v4

    iget v12, v12, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v11, v12

    move-object v12, v4

    iget v12, v12, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    move v7, v11

    .line 702
    move-object v11, v0

    move-object v12, v4

    invoke-static {v12}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v12

    move-object v13, v4

    invoke-static {v13}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v11

    move v8, v11

    .line 705
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 706
    move v11, v8

    move v12, v2

    move v13, v7

    move-object v14, v4

    iget v14, v14, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    const/4 v15, 0x0

    invoke-static {v11, v12, v13, v14, v15}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v11

    move v9, v11

    .line 708
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v11}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/GridLayoutManager;->getHeightMode()I

    move-result v12

    move v13, v6

    move-object v14, v4

    iget v14, v14, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    const/4 v15, 0x1

    invoke-static {v11, v12, v13, v14, v15}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v11

    move v10, v11

    .line 716
    :goto_0
    move-object v11, v0

    move-object v12, v1

    move v13, v9

    move v14, v10

    move v15, v3

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 717
    return-void

    .line 711
    :cond_0
    move v11, v8

    move v12, v2

    move v13, v6

    move-object v14, v4

    iget v14, v14, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    const/4 v15, 0x0

    invoke-static {v11, v12, v13, v14, v15}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v11

    move v10, v11

    .line 713
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v11}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/GridLayoutManager;->getWidthMode()I

    move-result v12

    move v13, v7

    move-object v14, v4

    iget v14, v14, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    const/4 v15, 0x1

    invoke-static {v11, v12, v13, v14, v15}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v11

    move v9, v11

    goto :goto_0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 12

    .prologue
    .line 737
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v5, v7

    .line 739
    move v7, v4

    if-eqz v7, :cond_1

    .line 740
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/support/v7/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v7

    move v6, v7

    .line 744
    :goto_0
    move v7, v6

    if-eqz v7, :cond_0

    .line 745
    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 747
    :cond_0
    return-void

    .line 742
    :cond_1
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/support/v7/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v7

    move v6, v7

    goto :goto_0
.end method

.method private updateMeasurements()V
    .locals 4

    .prologue
    .line 275
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 276
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->getWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    .line 280
    :goto_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 281
    return-void

    .line 278
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->getHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 3

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move v0, v2

    return v0
.end method

.method findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 21

    .prologue
    .line 416
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/GridLayoutManager;->ensureLayoutState()V

    .line 417
    const/16 v17, 0x0

    move-object/from16 v8, v17

    .line 418
    const/16 v17, 0x0

    move-object/from16 v9, v17

    .line 419
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v17

    move/from16 v10, v17

    .line 420
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v17

    move/from16 v11, v17

    .line 421
    move/from16 v17, v6

    move/from16 v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    const/16 v17, 0x1

    :goto_0
    move/from16 v12, v17

    .line 423
    move/from16 v17, v5

    move/from16 v13, v17

    :goto_1
    move/from16 v17, v13

    move/from16 v18, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 424
    move-object/from16 v17, v2

    move/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v14, v17

    .line 425
    move-object/from16 v17, v2

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v17

    move/from16 v15, v17

    .line 426
    move/from16 v17, v15

    if-ltz v17, :cond_0

    move/from16 v17, v15

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 427
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v15

    invoke-direct/range {v17 .. v20}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v17

    move/from16 v16, v17

    .line 428
    move/from16 v17, v16

    if-eqz v17, :cond_2

    .line 423
    :cond_0
    :goto_2
    move/from16 v17, v13

    move/from16 v18, v12

    add-int v17, v17, v18

    move/from16 v13, v17

    goto :goto_1

    .line 421
    :cond_1
    const/16 v17, -0x1

    goto :goto_0

    .line 431
    :cond_2
    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 432
    move-object/from16 v17, v8

    if-nez v17, :cond_0

    .line 433
    move-object/from16 v17, v14

    move-object/from16 v8, v17

    goto :goto_2

    .line 435
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    move/from16 v18, v11

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v14

    .line 436
    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v17

    move/from16 v18, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 437
    :cond_4
    move-object/from16 v17, v9

    if-nez v17, :cond_0

    .line 438
    move-object/from16 v17, v14

    move-object/from16 v9, v17

    goto :goto_2

    .line 441
    :cond_5
    move-object/from16 v17, v14

    move-object/from16 v2, v17

    .line 445
    :goto_3
    return-object v2

    :cond_6
    move-object/from16 v17, v9

    if-eqz v17, :cond_7

    move-object/from16 v17, v9

    :goto_4
    move-object/from16 v2, v17

    goto :goto_3

    :cond_7
    move-object/from16 v17, v8

    goto :goto_4
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 230
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    move-object v0, v1

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 8

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 243
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    .line 245
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 132
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move v0, v3

    .line 139
    :goto_0
    return v0

    .line 134
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 135
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 139
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_0

    .line 118
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move v0, v3

    .line 125
    :goto_0
    return v0

    .line 120
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 121
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 125
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method getSpaceForSpanRange(II)I
    .locals 7

    .prologue
    .line 343
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move v5, v1

    sub-int/2addr v4, v5

    aget v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move v6, v1

    sub-int/2addr v5, v6

    move v6, v2

    sub-int/2addr v5, v6

    aget v4, v4, v5

    sub-int/2addr v3, v4

    move v0, v3

    .line 347
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    aget v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move v5, v1

    aget v4, v4, v5

    sub-int/2addr v3, v4

    move v0, v3

    goto :goto_0
.end method

.method public getSpanCount()I
    .locals 2

    .prologue
    .line 781
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move v0, v1

    return v0
.end method

.method public getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    .locals 2

    .prologue
    .line 270
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-object v0, v1

    return-object v0
.end method

.method layoutChunk(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 32

    .prologue
    .line 510
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/OrientationHelper;->getModeInOther()I

    move-result v25

    move/from16 v7, v25

    .line 511
    move/from16 v25, v7

    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    const/16 v25, 0x1

    :goto_0
    move/from16 v8, v25

    .line 512
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v25

    if-lez v25, :cond_3

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v26, v0

    aget v25, v25, v26

    :goto_1
    move/from16 v9, v25

    .line 516
    move/from16 v25, v8

    if-eqz v25, :cond_0

    .line 517
    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v25}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 519
    :cond_0
    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    const/16 v25, 0x1

    :goto_2
    move/from16 v10, v25

    .line 521
    const/16 v25, 0x0

    move/from16 v11, v25

    .line 522
    const/16 v25, 0x0

    move/from16 v12, v25

    .line 523
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v25, v0

    move/from16 v13, v25

    .line 524
    move/from16 v25, v10

    if-nez v25, :cond_1

    .line 525
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v28, v0

    invoke-direct/range {v25 .. v28}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v25

    move/from16 v14, v25

    .line 526
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v28, v0

    invoke-direct/range {v25 .. v28}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v25

    move/from16 v15, v25

    .line 527
    move/from16 v25, v14

    move/from16 v26, v15

    add-int v25, v25, v26

    move/from16 v13, v25

    .line 529
    :cond_1
    :goto_3
    move/from16 v25, v11

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_6

    move-object/from16 v25, v5

    move-object/from16 v26, v4

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v25

    if-eqz v25, :cond_6

    move/from16 v25, v13

    if-lez v25, :cond_6

    .line 530
    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v25, v0

    move/from16 v14, v25

    .line 531
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move/from16 v28, v14

    invoke-direct/range {v25 .. v28}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v25

    move/from16 v15, v25

    .line 532
    move/from16 v25, v15

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_5

    .line 533
    new-instance v25, Ljava/lang/IllegalArgumentException;

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    new-instance v27, Ljava/lang/StringBuilder;

    move-object/from16 v31, v27

    move-object/from16 v27, v31

    move-object/from16 v28, v31

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Item at position "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move/from16 v28, v14

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " requires "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move/from16 v28, v15

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " spans but GridLayoutManager has only "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " spans."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 511
    :cond_2
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 512
    :cond_3
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 519
    :cond_4
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 537
    :cond_5
    move/from16 v25, v13

    move/from16 v26, v15

    sub-int v25, v25, v26

    move/from16 v13, v25

    .line 538
    move/from16 v25, v13

    if-gez v25, :cond_7

    .line 550
    :cond_6
    :goto_4
    move/from16 v25, v11

    if-nez v25, :cond_9

    .line 551
    move-object/from16 v25, v6

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 684
    :goto_5
    return-void

    .line 541
    :cond_7
    move-object/from16 v25, v5

    move-object/from16 v26, v3

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v25

    move-object/from16 v16, v25

    .line 542
    move-object/from16 v25, v16

    if-nez v25, :cond_8

    .line 543
    goto :goto_4

    .line 545
    :cond_8
    move/from16 v25, v12

    move/from16 v26, v15

    add-int v25, v25, v26

    move/from16 v12, v25

    .line 546
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v25, v0

    move/from16 v26, v11

    move-object/from16 v27, v16

    aput-object v27, v25, v26

    .line 547
    add-int/lit8 v11, v11, 0x1

    .line 548
    goto/16 :goto_3

    .line 555
    :cond_9
    const/16 v25, 0x0

    move/from16 v14, v25

    .line 556
    const/16 v25, 0x0

    move/from16 v15, v25

    .line 559
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move/from16 v28, v11

    move/from16 v29, v12

    move/from16 v30, v10

    invoke-direct/range {v25 .. v30}, Landroid/support/v7/widget/GridLayoutManager;->assignSpans(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;IIZ)V

    .line 560
    const/16 v25, 0x0

    move/from16 v16, v25

    :goto_6
    move/from16 v25, v16

    move/from16 v26, v11

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    .line 561
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v25, v0

    move/from16 v26, v16

    aget-object v25, v25, v26

    move-object/from16 v17, v25

    .line 562
    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    move-object/from16 v25, v0

    if-nez v25, :cond_d

    .line 563
    move/from16 v25, v10

    if-eqz v25, :cond_c

    .line 564
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    .line 575
    :goto_7
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 577
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    move/from16 v27, v7

    const/16 v28, 0x0

    invoke-direct/range {v25 .. v28}, Landroid/support/v7/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 578
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v25, v0

    move-object/from16 v26, v17

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v25

    move/from16 v18, v25

    .line 579
    move/from16 v25, v18

    move/from16 v26, v14

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_a

    .line 580
    move/from16 v25, v18

    move/from16 v14, v25

    .line 582
    :cond_a
    move-object/from16 v25, v17

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v19, v25

    .line 583
    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v26, v0

    move-object/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    move-object/from16 v26, v19

    .line 584
    invoke-static/range {v26 .. v26}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v20, v25

    .line 585
    move/from16 v25, v20

    move/from16 v26, v15

    cmpl-float v25, v25, v26

    if-lez v25, :cond_b

    .line 586
    move/from16 v25, v20

    move/from16 v15, v25

    .line 560
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 566
    :cond_c
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/support/v7/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto/16 :goto_7

    .line 569
    :cond_d
    move/from16 v25, v10

    if-eqz v25, :cond_e

    .line 570
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto/16 :goto_7

    .line 572
    :cond_e
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/support/v7/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto/16 :goto_7

    .line 589
    :cond_f
    move/from16 v25, v8

    if-eqz v25, :cond_11

    .line 591
    move-object/from16 v25, v2

    move/from16 v26, v15

    move/from16 v27, v9

    invoke-direct/range {v25 .. v27}, Landroid/support/v7/widget/GridLayoutManager;->guessMeasurement(FI)V

    .line 593
    const/16 v25, 0x0

    move/from16 v14, v25

    .line 594
    const/16 v25, 0x0

    move/from16 v16, v25

    :goto_8
    move/from16 v25, v16

    move/from16 v26, v11

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_11

    .line 595
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v25, v0

    move/from16 v26, v16

    aget-object v25, v25, v26

    move-object/from16 v17, v25

    .line 596
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    const/high16 v27, 0x40000000    # 2.0f

    const/16 v28, 0x1

    invoke-direct/range {v25 .. v28}, Landroid/support/v7/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 597
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v25, v0

    move-object/from16 v26, v17

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v25

    move/from16 v18, v25

    .line 598
    move/from16 v25, v18

    move/from16 v26, v14

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_10

    .line 599
    move/from16 v25, v18

    move/from16 v14, v25

    .line 594
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 606
    :cond_11
    const/16 v25, 0x0

    move/from16 v16, v25

    :goto_9
    move/from16 v25, v16

    move/from16 v26, v11

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_14

    .line 607
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v25, v0

    move/from16 v26, v16

    aget-object v25, v25, v26

    move-object/from16 v17, v25

    .line 608
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v25, v0

    move-object/from16 v26, v17

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v25

    move/from16 v26, v14

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_12

    .line 609
    move-object/from16 v25, v17

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v18, v25

    .line 610
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v19, v25

    .line 611
    move-object/from16 v25, v19

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->topMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v20, v25

    .line 613
    move-object/from16 v25, v19

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v21, v25

    .line 615
    move-object/from16 v25, v2

    move-object/from16 v26, v18

    invoke-static/range {v26 .. v26}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v26

    move-object/from16 v27, v18

    invoke-static/range {v27 .. v27}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Landroid/support/v7/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v25

    move/from16 v22, v25

    .line 618
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    .line 619
    move/from16 v25, v22

    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v27, v21

    move-object/from16 v28, v18

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    move/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v25 .. v29}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v25

    move/from16 v23, v25

    .line 621
    move/from16 v25, v14

    move/from16 v26, v20

    sub-int v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v24, v25

    .line 629
    :goto_a
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    move/from16 v27, v23

    move/from16 v28, v24

    const/16 v29, 0x1

    invoke-direct/range {v25 .. v29}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 606
    :cond_12
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_9

    .line 624
    :cond_13
    move/from16 v25, v14

    move/from16 v26, v21

    sub-int v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v23, v25

    .line 626
    move/from16 v25, v22

    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v27, v20

    move-object/from16 v28, v18

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    move/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v25 .. v29}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v25

    move/from16 v24, v25

    goto :goto_a

    .line 633
    :cond_14
    move-object/from16 v25, v6

    move/from16 v26, v14

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 635
    const/16 v25, 0x0

    move/from16 v16, v25

    const/16 v25, 0x0

    move/from16 v17, v25

    const/16 v25, 0x0

    move/from16 v18, v25

    const/16 v25, 0x0

    move/from16 v19, v25

    .line 636
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    .line 637
    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_17

    .line 638
    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v25, v0

    move/from16 v19, v25

    .line 639
    move/from16 v25, v19

    move/from16 v26, v14

    sub-int v25, v25, v26

    move/from16 v18, v25

    .line 653
    :goto_b
    const/16 v25, 0x0

    move/from16 v20, v25

    :goto_c
    move/from16 v25, v20

    move/from16 v26, v11

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1c

    .line 654
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v25, v0

    move/from16 v26, v20

    aget-object v25, v25, v26

    move-object/from16 v21, v25

    .line 655
    move-object/from16 v25, v21

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v22, v25

    .line 656
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1b

    .line 657
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 658
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v25

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v27, v0

    move-object/from16 v28, v22

    invoke-static/range {v28 .. v28}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v28

    sub-int v27, v27, v28

    aget v26, v26, v27

    add-int v25, v25, v26

    move/from16 v17, v25

    .line 659
    move/from16 v25, v17

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v26, v0

    move-object/from16 v27, v21

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v26

    sub-int v25, v25, v26

    move/from16 v16, v25

    .line 670
    :goto_d
    move-object/from16 v25, v2

    move-object/from16 v26, v21

    move/from16 v27, v16

    move/from16 v28, v18

    move/from16 v29, v17

    move/from16 v30, v19

    invoke-virtual/range {v25 .. v30}, Landroid/support/v7/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 678
    move-object/from16 v25, v22

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v25

    if-nez v25, :cond_15

    move-object/from16 v25, v22

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v25

    if-eqz v25, :cond_16

    .line 679
    :cond_15
    move-object/from16 v25, v6

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 681
    :cond_16
    move-object/from16 v25, v6

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    move/from16 v26, v0

    move-object/from16 v27, v21

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->isFocusable()Z

    move-result v27

    or-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 653
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_c

    .line 641
    :cond_17
    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v25, v0

    move/from16 v18, v25

    .line 642
    move/from16 v25, v18

    move/from16 v26, v14

    add-int v25, v25, v26

    move/from16 v19, v25

    goto/16 :goto_b

    .line 645
    :cond_18
    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_19

    .line 646
    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v25, v0

    move/from16 v17, v25

    .line 647
    move/from16 v25, v17

    move/from16 v26, v14

    sub-int v25, v25, v26

    move/from16 v16, v25

    goto/16 :goto_b

    .line 649
    :cond_19
    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v25, v0

    move/from16 v16, v25

    .line 650
    move/from16 v25, v16

    move/from16 v26, v14

    add-int v25, v25, v26

    move/from16 v17, v25

    goto/16 :goto_b

    .line 661
    :cond_1a
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v25

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v26, v0

    move-object/from16 v27, v22

    invoke-static/range {v27 .. v27}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v27

    aget v26, v26, v27

    add-int v25, v25, v26

    move/from16 v16, v25

    .line 662
    move/from16 v25, v16

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v26, v0

    move-object/from16 v27, v21

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v26

    add-int v25, v25, v26

    move/from16 v17, v25

    goto/16 :goto_d

    .line 665
    :cond_1b
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v25

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v26, v0

    move-object/from16 v27, v22

    invoke-static/range {v27 .. v27}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v27

    aget v26, v26, v27

    add-int v25, v25, v26

    move/from16 v18, v25

    .line 666
    move/from16 v25, v18

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v26, v0

    move-object/from16 v27, v21

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v26

    add-int v25, v25, v26

    move/from16 v19, v25

    goto/16 :goto_d

    .line 683
    :cond_1c
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 684
    goto/16 :goto_5
.end method

.method onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 10

    .prologue
    .line 354
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 355
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 356
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    if-lez v5, :cond_0

    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_0

    .line 357
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 359
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 360
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 35

    .prologue
    .line 979
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    invoke-virtual/range {v30 .. v31}, Landroid/support/v7/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v30

    move-object/from16 v7, v30

    .line 980
    move-object/from16 v30, v7

    if-nez v30, :cond_0

    .line 981
    const/16 v30, 0x0

    move-object/from16 v2, v30

    .line 1045
    :goto_0
    return-object v2

    .line 983
    :cond_0
    move-object/from16 v30, v7

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v8, v30

    .line 984
    move-object/from16 v30, v8

    invoke-static/range {v30 .. v30}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v30

    move/from16 v9, v30

    .line 985
    move-object/from16 v30, v8

    invoke-static/range {v30 .. v30}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v30

    move-object/from16 v31, v8

    invoke-static/range {v31 .. v31}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v31

    add-int v30, v30, v31

    move/from16 v10, v30

    .line 986
    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move-object/from16 v34, v6

    invoke-super/range {v30 .. v34}, Landroid/support/v7/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v30

    move-object/from16 v11, v30

    .line 987
    move-object/from16 v30, v11

    if-nez v30, :cond_1

    .line 988
    const/16 v30, 0x0

    move-object/from16 v2, v30

    goto :goto_0

    .line 992
    :cond_1
    move-object/from16 v30, v2

    move/from16 v31, v4

    invoke-virtual/range {v30 .. v31}, Landroid/support/v7/widget/GridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v30

    move/from16 v12, v30

    .line 993
    move/from16 v30, v12

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    const/16 v30, 0x1

    :goto_1
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-boolean v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_4

    const/16 v30, 0x1

    :goto_2
    move/from16 v13, v30

    .line 995
    move/from16 v30, v13

    if-eqz v30, :cond_5

    .line 996
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v30

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    move/from16 v14, v30

    .line 997
    const/16 v30, -0x1

    move/from16 v15, v30

    .line 998
    const/16 v30, -0x1

    move/from16 v16, v30

    .line 1004
    :goto_3
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v30

    if-eqz v30, :cond_6

    const/16 v30, 0x1

    :goto_4
    move/from16 v17, v30

    .line 1005
    const/16 v30, 0x0

    move-object/from16 v18, v30

    .line 1006
    const/16 v30, -0x1

    move/from16 v19, v30

    .line 1007
    const/16 v30, 0x0

    move/from16 v20, v30

    .line 1009
    move/from16 v30, v14

    move/from16 v21, v30

    :goto_5
    move/from16 v30, v21

    move/from16 v31, v16

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    .line 1010
    move-object/from16 v30, v2

    move/from16 v31, v21

    invoke-virtual/range {v30 .. v31}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v22, v30

    .line 1011
    move-object/from16 v30, v22

    move-object/from16 v31, v7

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_7

    .line 1045
    :cond_2
    move-object/from16 v30, v18

    move-object/from16 v2, v30

    goto/16 :goto_0

    .line 993
    :cond_3
    const/16 v30, 0x0

    goto :goto_1

    :cond_4
    const/16 v30, 0x0

    goto :goto_2

    .line 1000
    :cond_5
    const/16 v30, 0x0

    move/from16 v14, v30

    .line 1001
    const/16 v30, 0x1

    move/from16 v15, v30

    .line 1002
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v30

    move/from16 v16, v30

    goto :goto_3

    .line 1004
    :cond_6
    const/16 v30, 0x0

    goto :goto_4

    .line 1014
    :cond_7
    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->isFocusable()Z

    move-result v30

    if-nez v30, :cond_9

    .line 1009
    :cond_8
    :goto_6
    move/from16 v30, v21

    move/from16 v31, v15

    add-int v30, v30, v31

    move/from16 v21, v30

    goto :goto_5

    .line 1017
    :cond_9
    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v23, v30

    .line 1018
    move-object/from16 v30, v23

    invoke-static/range {v30 .. v30}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v30

    move/from16 v24, v30

    .line 1019
    move-object/from16 v30, v23

    invoke-static/range {v30 .. v30}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v30

    move-object/from16 v31, v23

    invoke-static/range {v31 .. v31}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v31

    add-int v30, v30, v31

    move/from16 v25, v30

    .line 1020
    move/from16 v30, v24

    move/from16 v31, v9

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    move/from16 v30, v25

    move/from16 v31, v10

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    .line 1021
    move-object/from16 v30, v22

    move-object/from16 v2, v30

    goto/16 :goto_0

    .line 1023
    :cond_a
    const/16 v30, 0x0

    move/from16 v26, v30

    .line 1024
    move-object/from16 v30, v18

    if-nez v30, :cond_c

    .line 1025
    const/16 v30, 0x1

    move/from16 v26, v30

    .line 1038
    :cond_b
    :goto_7
    move/from16 v30, v26

    if-eqz v30, :cond_8

    .line 1039
    move-object/from16 v30, v22

    move-object/from16 v18, v30

    .line 1040
    move-object/from16 v30, v23

    invoke-static/range {v30 .. v30}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v30

    move/from16 v19, v30

    .line 1041
    move/from16 v30, v25

    move/from16 v31, v10

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    move-result v30

    move/from16 v31, v24

    move/from16 v32, v9

    .line 1042
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    sub-int v30, v30, v31

    move/from16 v20, v30

    goto :goto_6

    .line 1027
    :cond_c
    move/from16 v30, v24

    move/from16 v31, v9

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v27, v30

    .line 1028
    move/from16 v30, v25

    move/from16 v31, v10

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    move-result v30

    move/from16 v28, v30

    .line 1029
    move/from16 v30, v28

    move/from16 v31, v27

    sub-int v30, v30, v31

    move/from16 v29, v30

    .line 1030
    move/from16 v30, v29

    move/from16 v31, v20

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_d

    .line 1031
    const/16 v30, 0x1

    move/from16 v26, v30

    goto :goto_7

    .line 1032
    :cond_d
    move/from16 v30, v29

    move/from16 v31, v20

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_b

    move/from16 v30, v17

    move/from16 v31, v24

    move/from16 v32, v19

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_e

    const/16 v31, 0x1

    :goto_8
    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_b

    .line 1034
    const/16 v30, 0x1

    move/from16 v26, v30

    goto :goto_7

    .line 1032
    :cond_e
    const/16 v31, 0x0

    goto :goto_8
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 15

    .prologue
    .line 145
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    move-object v5, v8

    .line 146
    move-object v8, v5

    instance-of v8, v8, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    if-nez v8, :cond_0

    .line 147
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    invoke-super {v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 163
    :goto_0
    return-void

    .line 150
    :cond_0
    move-object v8, v5

    check-cast v8, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object v6, v8

    .line 151
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v6

    invoke-virtual {v11}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v8

    move v7, v8

    .line 152
    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v8, :cond_2

    .line 153
    move-object v8, v4

    move-object v9, v6

    .line 154
    invoke-virtual {v9}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v9

    move-object v10, v6

    invoke-virtual {v10}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v10

    move v11, v7

    const/4 v12, 0x1

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_1

    move-object v13, v6

    .line 156
    invoke-virtual {v13}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v13

    move-object v14, v0

    iget v14, v14, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne v13, v14, :cond_1

    const/4 v13, 0x1

    :goto_1
    const/4 v14, 0x0

    .line 153
    invoke-static/range {v9 .. v14}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 163
    :goto_2
    goto :goto_0

    .line 156
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 158
    :cond_2
    move-object v8, v4

    move v9, v7

    const/4 v10, 0x1

    move-object v11, v6

    .line 160
    invoke-virtual {v11}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v11

    move-object v12, v6

    invoke-virtual {v12}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v12

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_3

    move-object v13, v6

    .line 161
    invoke-virtual {v13}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v13

    move-object v14, v0

    iget v14, v14, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne v13, v14, :cond_3

    const/4 v13, 0x1

    :goto_3
    const/4 v14, 0x0

    .line 158
    invoke-static/range {v9 .. v14}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_2

    .line 161
    :cond_3
    const/4 v13, 0x0

    goto :goto_3
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 5

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 201
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    .line 205
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 206
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 6

    .prologue
    .line 221
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 222
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 5

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 211
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 6

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 217
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 6

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 170
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 174
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    .line 175
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 180
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 181
    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 371
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 372
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 373
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 379
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 380
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 381
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 13

    .prologue
    .line 285
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v9, :cond_0

    .line 286
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-super {v9, v10, v11, v12}, Landroid/support/v7/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 289
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    move v6, v9

    .line 290
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    move v7, v9

    .line 291
    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 292
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    move v10, v7

    add-int/2addr v9, v10

    move v8, v9

    .line 293
    move v9, v3

    move v10, v8

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v9

    move v5, v9

    .line 294
    move v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v11, v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    move v11, v6

    add-int/2addr v10, v11

    move-object v11, v0

    .line 295
    invoke-virtual {v11}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v11

    .line 294
    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v9

    move v4, v9

    .line 302
    :goto_0
    move-object v9, v0

    move v10, v4

    move v11, v5

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/GridLayoutManager;->setMeasuredDimension(II)V

    .line 303
    return-void

    .line 297
    :cond_1
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    move v10, v6

    add-int/2addr v9, v10

    move v8, v9

    .line 298
    move v9, v2

    move v10, v8

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v9

    move v4, v9

    .line 299
    move v9, v3

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v11, v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    move v11, v7

    add-int/2addr v10, v11

    move-object v11, v0

    .line 300
    invoke-virtual {v11}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v11

    .line 299
    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v9

    move v5, v9

    goto :goto_0
.end method

.method public setSpanCount(I)V
    .locals 7

    .prologue
    .line 794
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne v2, v3, :cond_0

    .line 805
    :goto_0
    return-void

    .line 797
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 798
    move v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 799
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Span count should be at least 1. Provided "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 802
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 803
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 804
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->requestLayout()V

    .line 805
    goto :goto_0
.end method

.method public setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 4

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 262
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 6

    .prologue
    .line 106
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 107
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-super {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 112
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .prologue
    .line 1050
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/GridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
