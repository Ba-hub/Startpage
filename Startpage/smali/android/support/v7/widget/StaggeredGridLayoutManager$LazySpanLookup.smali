.class Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazySpanLookup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    }
.end annotation


# static fields
.field private static final MIN_SIZE:I = 0xa


# instance fields
.field mData:[I

.field mFullSpanItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 2623
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2857
    return-void
.end method

.method private invalidateFullSpansAfter(I)I
    .locals 9

    .prologue
    .line 2766
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v7, :cond_0

    .line 2767
    const/4 v7, -0x1

    move v0, v7

    .line 2788
    :goto_0
    return v0

    .line 2769
    :cond_0
    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v7

    move-object v2, v7

    .line 2771
    move-object v7, v2

    if-eqz v7, :cond_1

    .line 2772
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move-object v8, v2

    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 2774
    :cond_1
    const/4 v7, -0x1

    move v3, v7

    .line 2775
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v4, v7

    .line 2776
    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 2777
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v6, v7

    .line 2778
    move-object v7, v6

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v8, v1

    if-lt v7, v8, :cond_3

    .line 2779
    move v7, v5

    move v3, v7

    .line 2783
    :cond_2
    move v7, v3

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 2784
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v5, v7

    .line 2785
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 2786
    move-object v7, v5

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v0, v7

    goto :goto_0

    .line 2776
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2788
    :cond_4
    const/4 v7, -0x1

    move v0, v7

    goto :goto_0
.end method

.method private offsetFullSpansForAddition(II)V
    .locals 9

    .prologue
    .line 2749
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v5, :cond_0

    .line 2759
    :goto_0
    return-void

    .line 2752
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_1
    move v5, v3

    if-ltz v5, :cond_2

    .line 2753
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v4, v5

    .line 2754
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 2752
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2757
    :cond_1
    move-object v5, v4

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v7, v2

    add-int/2addr v6, v7

    iput v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    goto :goto_2

    .line 2759
    :cond_2
    goto :goto_0
.end method

.method private offsetFullSpansForRemoval(II)V
    .locals 10

    .prologue
    .line 2719
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v6, :cond_0

    .line 2734
    :goto_0
    return-void

    .line 2722
    :cond_0
    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    move v3, v6

    .line 2723
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    :goto_1
    move v6, v4

    if-ltz v6, :cond_3

    .line 2724
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v5, v6

    .line 2725
    move-object v6, v5

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v7, v1

    if-ge v6, v7, :cond_1

    .line 2723
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2728
    :cond_1
    move-object v6, v5

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 2729
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    .line 2731
    :cond_2
    move-object v6, v5

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v8, v2

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    goto :goto_2

    .line 2734
    :cond_3
    goto :goto_0
.end method


# virtual methods
.method public addFullSpanItem(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V
    .locals 9

    .prologue
    .line 2792
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v5, :cond_0

    .line 2793
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 2795
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v2, v5

    .line 2796
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_3

    .line 2797
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v4, v5

    .line 2798
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move-object v6, v1

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ne v5, v6, :cond_1

    .line 2802
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    .line 2805
    :cond_1
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move-object v6, v1

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v5, v6, :cond_2

    .line 2806
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v6, v3

    move-object v7, v1

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2812
    :goto_1
    return-void

    .line 2796
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2811
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 2812
    goto :goto_1
.end method

.method clear()V
    .locals 3

    .prologue
    .line 2700
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v1, :cond_0

    .line 2701
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 2703
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 2704
    return-void
.end method

.method ensureSize(I)V
    .locals 8

    .prologue
    .line 2688
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-nez v3, :cond_1

    .line 2689
    move-object v3, v0

    move v4, v1

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [I

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2690
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 2697
    :cond_0
    :goto_0
    return-void

    .line 2691
    :cond_1
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 2692
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move-object v2, v3

    .line 2693
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->sizeForPosition(I)I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2694
    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v6, 0x0

    move-object v7, v2

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2695
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move-object v4, v2

    array-length v4, v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v5, v5

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0
.end method

.method forceInvalidateAfter(I)I
    .locals 6

    .prologue
    .line 2634
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 2635
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 2636
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v3, v4

    .line 2637
    move-object v4, v3

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v5, v1

    if-lt v4, v5, :cond_0

    .line 2638
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    .line 2635
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2642
    :cond_1
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public getFirstFullSpanItemInRange(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 10

    .prologue
    .line 2836
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v8, :cond_0

    .line 2837
    const/4 v8, 0x0

    move-object v0, v8

    .line 2851
    :goto_0
    return-object v0

    .line 2839
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v5, v8

    .line 2840
    const/4 v8, 0x0

    move v6, v8

    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_4

    .line 2841
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v7, v8

    .line 2842
    move-object v8, v7

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v9, v2

    if-lt v8, v9, :cond_1

    .line 2843
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 2845
    :cond_1
    move-object v8, v7

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v9, v1

    if-lt v8, v9, :cond_3

    move v8, v3

    if-eqz v8, :cond_2

    move-object v8, v7

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    move v9, v3

    if-eq v8, v9, :cond_2

    move v8, v4

    if-eqz v8, :cond_3

    move-object v8, v7

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    if-eqz v8, :cond_3

    .line 2848
    :cond_2
    move-object v8, v7

    move-object v0, v8

    goto :goto_0

    .line 2840
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2851
    :cond_4
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0
.end method

.method public getFullSpanItem(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 6

    .prologue
    .line 2815
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v4, :cond_0

    .line 2816
    const/4 v4, 0x0

    move-object v0, v4

    .line 2824
    :goto_0
    return-object v0

    .line 2818
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_1
    move v4, v2

    if-ltz v4, :cond_2

    .line 2819
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v3, v4

    .line 2820
    move-object v4, v3

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v5, v1

    if-ne v4, v5, :cond_1

    .line 2821
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 2818
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2824
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method getSpan(I)I
    .locals 4

    .prologue
    .line 2667
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 2668
    :cond_0
    const/4 v2, -0x1

    move v0, v2

    .line 2670
    :goto_0
    return v0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    goto :goto_0
.end method

.method invalidateAfter(I)I
    .locals 7

    .prologue
    .line 2649
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-nez v3, :cond_0

    .line 2650
    const/4 v3, -0x1

    move v0, v3

    .line 2662
    :goto_0
    return v0

    .line 2652
    :cond_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 2653
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0

    .line 2655
    :cond_1
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateFullSpansAfter(I)I

    move-result v3

    move v2, v3

    .line 2656
    move v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 2657
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v5, v5

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 2658
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    move v0, v3

    goto :goto_0

    .line 2661
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 2662
    move v3, v2

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method offsetForAddition(II)V
    .locals 9

    .prologue
    .line 2737
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 2746
    :cond_0
    :goto_0
    return-void

    .line 2740
    :cond_1
    move-object v3, v0

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2741
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v7, v7

    move v8, v1

    sub-int/2addr v7, v8

    move v8, v2

    sub-int/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2743
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v4, v1

    move v5, v1

    move v6, v2

    add-int/2addr v5, v6

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 2745
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetFullSpansForAddition(II)V

    .line 2746
    goto :goto_0
.end method

.method offsetForRemoval(II)V
    .locals 9

    .prologue
    .line 2707
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 2716
    :cond_0
    :goto_0
    return-void

    .line 2710
    :cond_1
    move-object v3, v0

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2711
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v7, v7

    move v8, v1

    sub-int/2addr v7, v8

    move v8, v2

    sub-int/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2713
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v4, v4

    move v5, v2

    sub-int/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v5, v5

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 2715
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetFullSpansForRemoval(II)V

    .line 2716
    goto :goto_0
.end method

.method setSpan(ILandroid/support/v7/widget/StaggeredGridLayoutManager$Span;)V
    .locals 6

    .prologue
    .line 2675
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2676
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v4, v1

    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    aput v5, v3, v4

    .line 2677
    return-void
.end method

.method sizeForPosition(I)I
    .locals 5

    .prologue
    .line 2680
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    move v2, v3

    .line 2681
    :goto_0
    move v3, v2

    move v4, v1

    if-gt v3, v4, :cond_0

    .line 2682
    move v3, v2

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    move v2, v3

    goto :goto_0

    .line 2684
    :cond_0
    move v3, v2

    move v0, v3

    return v0
.end method
