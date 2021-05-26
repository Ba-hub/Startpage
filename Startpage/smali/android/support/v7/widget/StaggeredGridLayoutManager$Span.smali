.class Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Span"
.end annotation


# static fields
.field static final INVALID_LINE:I = -0x80000000


# instance fields
.field mCachedEnd:I

.field mCachedStart:I

.field mDeletedSize:I

.field final mIndex:I

.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V
    .locals 7

    .prologue
    .line 2365
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2359
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2360
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2361
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2362
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2366
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 2367
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;ILandroid/support/v7/widget/StaggeredGridLayoutManager$1;)V
    .locals 7

    .prologue
    .line 2356
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 2356
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method appendToSpan(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 2450
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v3

    move-object v2, v3

    .line 2451
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2452
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 2453
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2454
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2455
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2457
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2458
    :cond_1
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2460
    :cond_2
    return-void
.end method

.method cacheReferenceLineAndClear(ZI)V
    .locals 10

    .prologue
    .line 2465
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    if-eqz v4, :cond_0

    .line 2466
    move-object v4, v0

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v4

    move v3, v4

    .line 2470
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 2471
    move v4, v3

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_1

    .line 2482
    :goto_1
    return-void

    .line 2468
    :cond_0
    move-object v4, v0

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 2474
    :cond_1
    move v4, v1

    if-eqz v4, :cond_2

    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    if-lt v4, v5, :cond_3

    :cond_2
    move v4, v1

    if-nez v4, :cond_4

    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 2475
    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 2476
    :cond_3
    goto :goto_1

    .line 2478
    :cond_4
    move v4, v2

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_5

    .line 2479
    move v4, v3

    move v5, v2

    add-int/2addr v4, v5

    move v3, v4

    .line 2481
    :cond_5
    move-object v4, v0

    move-object v5, v0

    move v6, v3

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2482
    goto :goto_1
.end method

.method calculateCachedEnd()V
    .locals 9

    .prologue
    .line 2415
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v1, v4

    .line 2416
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v4

    move-object v2, v4

    .line 2417
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2418
    move-object v4, v2

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_0

    .line 2419
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v5, v2

    .line 2420
    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v4

    move-object v3, v4

    .line 2421
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2422
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    move-object v6, v3

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2425
    :cond_0
    return-void
.end method

.method calculateCachedStart()V
    .locals 9

    .prologue
    .line 2381
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v1, v4

    .line 2382
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v4

    move-object v2, v4

    .line 2383
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2384
    move-object v4, v2

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_0

    .line 2385
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v5, v2

    .line 2386
    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v4

    move-object v3, v4

    .line 2387
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 2388
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    move-object v6, v3

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2391
    :cond_0
    return-void
.end method

.method clear()V
    .locals 3

    .prologue
    .line 2485
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2486
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->invalidateCache()V

    .line 2487
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2488
    return-void
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 5

    .prologue
    .line 2550
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$300(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2551
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    .line 2552
    :goto_0
    move v0, v1

    return v0

    .line 2551
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2552
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    goto :goto_0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 5

    .prologue
    .line 2544
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$300(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2545
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    .line 2546
    :goto_0
    move v0, v1

    return v0

    .line 2545
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2546
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    goto :goto_0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 5

    .prologue
    .line 2562
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$300(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2563
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    .line 2564
    :goto_0
    move v0, v1

    return v0

    .line 2563
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2564
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    goto :goto_0
.end method

.method public findLastVisibleItemPosition()I
    .locals 5

    .prologue
    .line 2556
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$300(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2557
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    .line 2558
    :goto_0
    move v0, v1

    return v0

    .line 2557
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2558
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    goto :goto_0
.end method

.method findOneVisibleChild(IIZ)I
    .locals 13

    .prologue
    .line 2568
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v11}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v11

    move v4, v11

    .line 2569
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v11}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v11

    move v5, v11

    .line 2570
    move v11, v2

    move v12, v1

    if-le v11, v12, :cond_0

    const/4 v11, 0x1

    :goto_0
    move v6, v11

    .line 2571
    move v11, v1

    move v7, v11

    :goto_1
    move v11, v7

    move v12, v2

    if-eq v11, v12, :cond_3

    .line 2572
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    move-object v8, v11

    .line 2573
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    move v9, v11

    .line 2574
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    move v10, v11

    .line 2575
    move v11, v9

    move v12, v5

    if-ge v11, v12, :cond_2

    move v11, v10

    move v12, v4

    if-le v11, v12, :cond_2

    .line 2576
    move v11, v3

    if-eqz v11, :cond_1

    .line 2577
    move v11, v9

    move v12, v4

    if-lt v11, v12, :cond_2

    move v11, v10

    move v12, v5

    if-gt v11, v12, :cond_2

    .line 2578
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move v0, v11

    .line 2585
    :goto_2
    return v0

    .line 2570
    :cond_0
    const/4 v11, -0x1

    goto :goto_0

    .line 2581
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move v0, v11

    goto :goto_2

    .line 2571
    :cond_2
    move v11, v7

    move v12, v6

    add-int/2addr v11, v12

    move v7, v11

    goto :goto_1

    .line 2585
    :cond_3
    const/4 v11, -0x1

    move v0, v11

    goto :goto_2
.end method

.method public getDeletedSize()I
    .locals 2

    .prologue
    .line 2527
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    move v0, v1

    return v0
.end method

.method getEndLine()I
    .locals 3

    .prologue
    .line 2429
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 2430
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    move v0, v1

    .line 2433
    :goto_0
    return v0

    .line 2432
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2433
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    move v0, v1

    goto :goto_0
.end method

.method getEndLine(I)I
    .locals 5

    .prologue
    .line 2403
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_0

    .line 2404
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    move v0, v3

    .line 2411
    :goto_0
    return v0

    .line 2406
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v3

    .line 2407
    move v3, v2

    if-nez v3, :cond_1

    .line 2408
    move v3, v1

    move v0, v3

    goto :goto_0

    .line 2410
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2411
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    move v0, v3

    goto :goto_0
.end method

.method public getFocusableViewAfter(II)Landroid/view/View;
    .locals 9

    .prologue
    .line 2592
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v7, 0x0

    move-object v3, v7

    .line 2593
    move v7, v2

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 2594
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v7

    .line 2595
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 2596
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v6, v7

    .line 2597
    move-object v7, v6

    invoke-virtual {v7}, Landroid/view/View;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    move-object v8, v6

    .line 2598
    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v8, v1

    if-le v7, v8, :cond_0

    const/4 v7, 0x1

    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$300(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v8

    if-ne v7, v8, :cond_1

    .line 2599
    move-object v7, v6

    move-object v3, v7

    .line 2595
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2598
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 2615
    :cond_1
    move-object v7, v3

    move-object v0, v7

    return-object v0

    .line 2605
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    :goto_2
    move v7, v4

    if-ltz v7, :cond_1

    .line 2606
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v5, v7

    .line 2607
    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    move-object v8, v5

    .line 2608
    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v8, v1

    if-le v7, v8, :cond_3

    const/4 v7, 0x1

    :goto_3
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$300(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    :goto_4
    if-ne v7, v8, :cond_1

    .line 2609
    move-object v7, v5

    move-object v3, v7

    .line 2605
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 2608
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    goto :goto_4
.end method

.method getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    .locals 3

    .prologue
    .line 2531
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v0, v2

    return-object v0
.end method

.method getStartLine()I
    .locals 3

    .prologue
    .line 2395
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 2396
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    move v0, v1

    .line 2399
    :goto_0
    return v0

    .line 2398
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2399
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    move v0, v1

    goto :goto_0
.end method

.method getStartLine(I)I
    .locals 4

    .prologue
    .line 2370
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    .line 2371
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    move v0, v2

    .line 2377
    :goto_0
    return v0

    .line 2373
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2374
    move v2, v1

    move v0, v2

    goto :goto_0

    .line 2376
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2377
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    move v0, v2

    goto :goto_0
.end method

.method invalidateCache()V
    .locals 3

    .prologue
    .line 2491
    move-object v0, p0

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2492
    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2493
    return-void
.end method

.method onOffset(I)V
    .locals 6

    .prologue
    .line 2535
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    .line 2536
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    move v4, v1

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2538
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    .line 2539
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    move v4, v1

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2541
    :cond_1
    return-void
.end method

.method popEnd()V
    .locals 9

    .prologue
    .line 2500
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 2501
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v2, v4

    .line 2502
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v4

    move-object v3, v4

    .line 2503
    move-object v4, v3

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2504
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2505
    :cond_0
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2507
    :cond_1
    move v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2508
    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2510
    :cond_2
    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2511
    return-void
.end method

.method popStart()V
    .locals 8

    .prologue
    .line 2514
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v1, v3

    .line 2515
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v3

    move-object v2, v3

    .line 2516
    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2517
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2518
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2520
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2521
    :cond_1
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2523
    :cond_2
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2524
    return-void
.end method

.method prependToSpan(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 2437
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v3

    move-object v2, v3

    .line 2438
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2439
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2440
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2441
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2442
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2444
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2445
    :cond_1
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2447
    :cond_2
    return-void
.end method

.method setLine(I)V
    .locals 8

    .prologue
    .line 2496
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    move v4, v1

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2497
    return-void
.end method
