.class public Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabLayoutOnPageChangeListener"
.end annotation


# instance fields
.field private mPreviousScrollState:I

.field private mScrollState:I

.field private final mTabLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/design/widget/TabLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 7

    .prologue
    .line 2106
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2107
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    .line 2108
    return-void
.end method

.method static synthetic access$400(Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;)V
    .locals 2

    .prologue
    .line 2101
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->reset()V

    return-void
.end method

.method private reset()V
    .locals 7

    .prologue
    .line 2149
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    iput v2, v1, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    .line 2150
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4

    .prologue
    .line 2112
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    iput v3, v2, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    .line 2113
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    .line 2114
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 12

    .prologue
    .line 2119
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/TabLayout;

    move-object v4, v7

    .line 2120
    move-object v7, v4

    if-eqz v7, :cond_2

    .line 2123
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    :cond_0
    const/4 v7, 0x1

    :goto_0
    move v5, v7

    .line 2128
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    if-eqz v7, :cond_4

    :cond_1
    const/4 v7, 0x1

    :goto_1
    move v6, v7

    .line 2130
    move-object v7, v4

    move v8, v1

    move v9, v2

    move v10, v5

    move v11, v6

    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/design/widget/TabLayout;->access$2800(Landroid/support/design/widget/TabLayout;IFZZ)V

    .line 2132
    :cond_2
    return-void

    .line 2123
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 2128
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 7

    .prologue
    .line 2136
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/TabLayout;

    move-object v2, v4

    .line 2137
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v4

    move v5, v1

    if-eq v4, v5, :cond_1

    move v4, v1

    move-object v5, v2

    .line 2138
    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 2141
    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    if-eqz v4, :cond_0

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    if-nez v4, :cond_2

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 2144
    move-object v4, v2

    move-object v5, v2

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 2146
    :cond_1
    return-void

    .line 2141
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method
