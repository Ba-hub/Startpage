.class public Landroid/support/design/widget/AppBarLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$LayoutParams$ScrollFlags;
    }
.end annotation


# static fields
.field static final COLLAPSIBLE_FLAGS:I = 0xa

.field static final FLAG_QUICK_RETURN:I = 0x5

.field static final FLAG_SNAP:I = 0x11

.field public static final SCROLL_FLAG_ENTER_ALWAYS:I = 0x4

.field public static final SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED:I = 0x8

.field public static final SCROLL_FLAG_EXIT_UNTIL_COLLAPSED:I = 0x2

.field public static final SCROLL_FLAG_SCROLL:I = 0x1

.field public static final SCROLL_FLAG_SNAP:I = 0x10


# instance fields
.field mScrollFlags:I

.field mScrollInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(II)V
    .locals 6

    .prologue
    .line 666
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 649
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 667
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 8

    .prologue
    .line 670
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 649
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 671
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    .line 653
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 649
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 654
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroid/support/design/R$styleable;->AppBarLayout_Layout:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v3, v5

    .line 655
    move-object v5, v0

    move-object v6, v3

    sget v7, Landroid/support/design/R$styleable;->AppBarLayout_Layout_layout_scrollFlags:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 656
    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->AppBarLayout_Layout_layout_scrollInterpolator:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 657
    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->AppBarLayout_Layout_layout_scrollInterpolator:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move v4, v5

    .line 659
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    iput-object v6, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 662
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 663
    return-void
.end method

.method public constructor <init>(Landroid/support/design/widget/AppBarLayout$LayoutParams;)V
    .locals 4

    .prologue
    .line 686
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 649
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 687
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    iput v3, v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 688
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iput-object v3, v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 689
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 674
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 675
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 4

    .prologue
    .line 678
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 649
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 679
    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 4

    .prologue
    .line 682
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 649
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 683
    return-void
.end method

.method static synthetic access$100(Landroid/support/design/widget/AppBarLayout$LayoutParams;)Z
    .locals 2

    .prologue
    .line 586
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->isCollapsible()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method private isCollapsible()Z
    .locals 3

    .prologue
    .line 746
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    const/16 v2, 0xa

    and-int/lit8 v1, v1, 0xa

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getScrollFlags()I
    .locals 2

    .prologue
    .line 715
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    move v0, v1

    return v0
.end method

.method public getScrollInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    .prologue
    .line 739
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, v1

    return-object v0
.end method

.method public setScrollFlags(I)V
    .locals 4

    .prologue
    .line 703
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 704
    return-void
.end method

.method public setScrollInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 4

    .prologue
    .line 728
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 729
    return-void
.end method
