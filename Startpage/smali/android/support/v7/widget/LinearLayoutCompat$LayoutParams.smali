.class public Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I

.field public weight:F


# direct methods
.method public constructor <init>(II)V
    .locals 6

    .prologue
    .line 1789
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1769
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1790
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1791
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 7

    .prologue
    .line 1804
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1769
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1805
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1806
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 1775
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1769
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1776
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_Layout:[I

    .line 1777
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 1779
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_Layout_android_layout_weight:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1780
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_Layout_android_layout_gravity:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1782
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1783
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;)V
    .locals 4

    .prologue
    .line 1829
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1769
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1831
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1832
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1833
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 1812
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1769
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1813
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 4

    .prologue
    .line 1819
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1769
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1820
    return-void
.end method
