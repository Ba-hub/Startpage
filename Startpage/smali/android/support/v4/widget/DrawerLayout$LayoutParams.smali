.class public Landroid/support/v4/widget/DrawerLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final FLAG_IS_CLOSING:I = 0x4

.field private static final FLAG_IS_OPENED:I = 0x1

.field private static final FLAG_IS_OPENING:I = 0x2


# instance fields
.field public gravity:I

.field private isPeeking:Z

.field private onScreen:F

.field private openState:I


# direct methods
.method public constructor <init>(II)V
    .locals 6

    .prologue
    .line 2242
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2228
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2243
    return-void
.end method

.method public constructor <init>(III)V
    .locals 7

    .prologue
    .line 2246
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    .line 2247
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2248
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 2234
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2228
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2236
    move-object v4, v1

    move-object v5, v2

    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->access$400()[I

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 2237
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2238
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2239
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V
    .locals 4

    .prologue
    .line 2251
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2228
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2252
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v3, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2253
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 2256
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2228
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2257
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 4

    .prologue
    .line 2260
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2228
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2261
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F
    .locals 2

    .prologue
    .line 2223
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move v0, v1

    return v0
.end method

.method static synthetic access$002(Landroid/support/v4/widget/DrawerLayout$LayoutParams;F)F
    .locals 7

    .prologue
    .line 2223
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move v0, v2

    return v0
.end method

.method static synthetic access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I
    .locals 2

    .prologue
    .line 2223
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    move v0, v1

    return v0
.end method

.method static synthetic access$102(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I
    .locals 7

    .prologue
    .line 2223
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    move v0, v2

    return v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)Z
    .locals 2

    .prologue
    .line 2223
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$202(Landroid/support/v4/widget/DrawerLayout$LayoutParams;Z)Z
    .locals 7

    .prologue
    .line 2223
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    move v0, v2

    return v0
.end method
