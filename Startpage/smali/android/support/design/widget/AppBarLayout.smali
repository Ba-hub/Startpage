.class public Landroid/support/design/widget/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;,
        Landroid/support/design/widget/AppBarLayout$Behavior;,
        Landroid/support/design/widget/AppBarLayout$LayoutParams;,
        Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;
    }
.end annotation


# static fields
.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field private static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field private static final PENDING_ACTION_COLLAPSED:I = 0x2

.field private static final PENDING_ACTION_EXPANDED:I = 0x1

.field private static final PENDING_ACTION_NONE:I


# instance fields
.field private mCollapsed:Z

.field private mCollapsible:Z

.field private mDownPreScrollRange:I

.field private mDownScrollRange:I

.field private mHaveChildWithInterpolator:Z

.field private mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAction:I

.field private final mTmpStatesArray:[I

.field private mTotalScrollRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 130
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 131
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    .line 135
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    .line 144
    move-object v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, v4, Landroid/support/design/widget/AppBarLayout;->mTmpStatesArray:[I

    .line 152
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/design/widget/AppBarLayout;->setOrientation(I)V

    .line 154
    move-object v4, v1

    invoke-static {v4}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 156
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 159
    move-object v4, v0

    invoke-static {v4}, Landroid/support/design/widget/ViewUtilsLollipop;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 163
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    sget v7, Landroid/support/design/R$style;->Widget_Design_AppBarLayout:I

    invoke-static {v4, v5, v6, v7}, Landroid/support/design/widget/ViewUtilsLollipop;->setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 167
    :cond_0
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroid/support/design/R$styleable;->AppBarLayout:[I

    const/4 v7, 0x0

    sget v8, Landroid/support/design/R$style;->Widget_Design_AppBarLayout:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 169
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->AppBarLayout_android_background:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/AppBarLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    move-object v4, v3

    sget v5, Landroid/support/design/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->AppBarLayout_expanded:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 173
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    move-object v4, v3

    sget v5, Landroid/support/design/R$styleable;->AppBarLayout_elevation:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->AppBarLayout_elevation:I

    const/4 v7, 0x0

    .line 175
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    .line 174
    invoke-static {v4, v5}, Landroid/support/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 177
    :cond_2
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    move-object v4, v0

    new-instance v5, Landroid/support/design/widget/AppBarLayout$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/design/widget/AppBarLayout$1;-><init>(Landroid/support/design/widget/AppBarLayout;)V

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 187
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/AppBarLayout;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/AppBarLayout;->onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/design/widget/AppBarLayout;Z)Z
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/AppBarLayout;->setCollapsedState(Z)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic access$200(Landroid/support/design/widget/AppBarLayout;)Z
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/AppBarLayout;->hasScrollableChildren()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$300(Landroid/support/design/widget/AppBarLayout;)I
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$400(Landroid/support/design/widget/AppBarLayout;)I
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$500(Landroid/support/design/widget/AppBarLayout;)I
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$600(Landroid/support/design/widget/AppBarLayout;)I
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/AppBarLayout;->getPendingAction()I

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$700(Landroid/support/design/widget/AppBarLayout;)V
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/AppBarLayout;->resetPendingAction()V

    return-void
.end method

.method static synthetic access$800(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/AppBarLayout;->dispatchOffsetUpdates(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/design/widget/AppBarLayout;)Z
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method private dispatchOffsetUpdates(I)V
    .locals 8

    .prologue
    .line 460
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 461
    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 462
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    move-object v4, v5

    .line 463
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 464
    move-object v5, v4

    move-object v6, v0

    move v7, v1

    invoke-interface {v5, v6, v7}, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;->onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V

    .line 461
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    :cond_1
    return-void
.end method

.method private getDownNestedPreScrollRange()I
    .locals 12

    .prologue
    .line 384
    move-object v0, p0

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 386
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    move v0, v7

    .line 416
    :goto_0
    return v0

    .line 389
    :cond_0
    const/4 v7, 0x0

    move v1, v7

    .line 390
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v2, v7

    :goto_1
    move v7, v2

    if-ltz v7, :cond_5

    .line 391
    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 392
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v4, v7

    .line 393
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    move v5, v7

    .line 394
    move-object v7, v4

    iget v7, v7, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    move v6, v7

    .line 396
    move v7, v6

    const/4 v8, 0x5

    and-int/lit8 v7, v7, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_4

    .line 398
    move v7, v1

    move-object v8, v4

    iget v8, v8, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    move-object v9, v4

    iget v9, v9, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    move v1, v7

    .line 400
    move v7, v6

    const/16 v8, 0x8

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_2

    .line 402
    move v7, v1

    move-object v8, v3

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    move v1, v7

    .line 390
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 403
    :cond_2
    move v7, v6

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_3

    .line 405
    move v7, v1

    move v8, v5

    move-object v9, v3

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    move v1, v7

    goto :goto_2

    .line 408
    :cond_3
    move v7, v1

    move v8, v5

    add-int/2addr v7, v8

    move v1, v7

    goto :goto_2

    .line 410
    :cond_4
    move v7, v1

    if-lez v7, :cond_1

    .line 416
    :cond_5
    move-object v7, v0

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    move v0, v7

    goto :goto_0
.end method

.method private getDownNestedScrollRange()I
    .locals 13

    .prologue
    .line 423
    move-object v0, p0

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 425
    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    move v0, v8

    .line 454
    :goto_0
    return v0

    .line 428
    :cond_0
    const/4 v8, 0x0

    move v1, v8

    .line 429
    const/4 v8, 0x0

    move v2, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v8

    move v3, v8

    :goto_1
    move v8, v2

    move v9, v3

    if-ge v8, v9, :cond_1

    .line 430
    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v4, v8

    .line 431
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v5, v8

    .line 432
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move v6, v8

    .line 433
    move v8, v6

    move-object v9, v5

    iget v9, v9, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    move-object v10, v5

    iget v10, v10, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v6, v8

    .line 435
    move-object v8, v5

    iget v8, v8, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    move v7, v8

    .line 437
    move v8, v7

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 439
    move v8, v1

    move v9, v6

    add-int/2addr v8, v9

    move v1, v8

    .line 441
    move v8, v7

    const/4 v9, 0x2

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    .line 445
    move v8, v1

    move-object v9, v4

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v1, v8

    .line 454
    :cond_1
    move-object v8, v0

    const/4 v9, 0x0

    move v10, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object v11, v8

    move v12, v9

    move v8, v12

    move-object v9, v11

    move v10, v12

    iput v10, v9, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    move v0, v8

    goto :goto_0

    .line 429
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getPendingAction()I
    .locals 2

    .prologue
    .line 557
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    move v0, v1

    return v0
.end method

.method private getUpNestedPreScrollRange()I
    .locals 2

    .prologue
    .line 377
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    move v0, v1

    return v0
.end method

.method private hasChildWithInterpolator()Z
    .locals 2

    .prologue
    .line 329
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    move v0, v1

    return v0
.end method

.method private hasScrollableChildren()Z
    .locals 2

    .prologue
    .line 370
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

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

.method private invalidateScrollRanges()V
    .locals 3

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 256
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 257
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    .line 258
    return-void
.end method

.method private onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 5

    .prologue
    .line 570
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move-object v2, v3

    .line 572
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 574
    move-object v3, v1

    move-object v2, v3

    .line 578
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/design/widget/ViewUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 579
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 580
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 583
    :cond_1
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method private resetPendingAction()V
    .locals 3

    .prologue
    .line 561
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    .line 562
    return-void
.end method

.method private setCollapsedState(Z)Z
    .locals 4

    .prologue
    .line 523
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/AppBarLayout;->mCollapsed:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 524
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/AppBarLayout;->mCollapsed:Z

    .line 525
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    .line 526
    const/4 v2, 0x1

    move v0, v2

    .line 528
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private setCollapsibleState(Z)Z
    .locals 4

    .prologue
    .line 509
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/AppBarLayout;->mCollapsible:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 510
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/AppBarLayout;->mCollapsible:Z

    .line 511
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    .line 512
    const/4 v2, 0x1

    move v0, v2

    .line 514
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private updateCollapsible()V
    .locals 6

    .prologue
    .line 243
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    .line 244
    const/4 v4, 0x0

    move v2, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    move v3, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_0

    .line 245
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-static {v4}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->access$100(Landroid/support/design/widget/AppBarLayout$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    const/4 v4, 0x1

    move v1, v4

    .line 250
    :cond_0
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroid/support/design/widget/AppBarLayout;->setCollapsibleState(Z)Z

    move-result v4

    .line 251
    return-void

    .line 244
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 6

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    if-nez v2, :cond_0

    .line 198
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    .line 200
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 203
    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .prologue
    .line 305
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move v0, v2

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .locals 6

    .prologue
    .line 310
    move-object v0, p0

    new-instance v1, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .locals 7

    .prologue
    .line 315
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .locals 6

    .prologue
    .line 320
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 321
    new-instance v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    move-object v0, v2

    .line 325
    :goto_0
    return-object v0

    .line 322
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 323
    new-instance v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    goto :goto_0

    .line 325
    :cond_1
    new-instance v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method final getMinimumHeightForVisibleOverlappingContent()I
    .locals 8

    .prologue
    .line 471
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v5

    move v1, v5

    .line 472
    move-object v5, v0

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    move v2, v5

    .line 473
    move v5, v2

    if-eqz v5, :cond_0

    .line 475
    move v5, v2

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    move v6, v1

    add-int/2addr v5, v6

    move v0, v5

    .line 488
    :goto_0
    return v0

    .line 479
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v5

    move v3, v5

    .line 480
    move v5, v3

    const/4 v6, 0x1

    if-lt v5, v6, :cond_1

    move-object v5, v0

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    .line 481
    invoke-virtual {v5, v6}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    :goto_1
    move v4, v5

    .line 482
    move v5, v4

    if-eqz v5, :cond_2

    .line 483
    move v5, v4

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    move v6, v1

    add-int/2addr v5, v6

    move v0, v5

    goto :goto_0

    .line 481
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 488
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v5

    const/4 v6, 0x3

    div-int/lit8 v5, v5, 0x3

    move v0, v5

    goto :goto_0
.end method

.method public getTargetElevation()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 553
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method final getTopInset()I
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 566
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getTotalScrollRange()I
    .locals 14

    .prologue
    .line 338
    move-object v0, p0

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 339
    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    move v0, v8

    .line 366
    :goto_0
    return v0

    .line 342
    :cond_0
    const/4 v8, 0x0

    move v1, v8

    .line 343
    const/4 v8, 0x0

    move v2, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v8

    move v3, v8

    :goto_1
    move v8, v2

    move v9, v3

    if-ge v8, v9, :cond_1

    .line 344
    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v4, v8

    .line 345
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v5, v8

    .line 346
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move v6, v8

    .line 347
    move-object v8, v5

    iget v8, v8, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    move v7, v8

    .line 349
    move v8, v7

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 351
    move v8, v1

    move v9, v6

    move-object v10, v5

    iget v10, v10, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    move-object v10, v5

    iget v10, v10, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v1, v8

    .line 353
    move v8, v7

    const/4 v9, 0x2

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    .line 357
    move v8, v1

    move-object v9, v4

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    move v1, v8

    .line 366
    :cond_1
    move-object v8, v0

    const/4 v9, 0x0

    move v10, v1

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    iput v10, v9, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    move v0, v8

    goto :goto_0

    .line 343
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7

    .prologue
    .line 493
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/AppBarLayout;->mTmpStatesArray:[I

    move-object v2, v4

    .line 494
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    array-length v6, v6

    add-int/2addr v5, v6

    invoke-super {v4, v5}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v4

    move-object v3, v4

    .line 496
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/design/widget/AppBarLayout;->mCollapsible:Z

    if-eqz v6, :cond_0

    sget v6, Landroid/support/design/R$attr;->state_collapsible:I

    :goto_0
    aput v6, v4, v5

    .line 497
    move-object v4, v2

    const/4 v5, 0x1

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/design/widget/AppBarLayout;->mCollapsible:Z

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/design/widget/AppBarLayout;->mCollapsed:Z

    if-eqz v6, :cond_1

    sget v6, Landroid/support/design/R$attr;->state_collapsed:I

    :goto_1
    aput v6, v4, v5

    .line 500
    move-object v4, v3

    move-object v5, v2

    invoke-static {v4, v5}, Landroid/support/design/widget/AppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object v4

    move-object v0, v4

    return-object v0

    .line 496
    :cond_0
    sget v6, Landroid/support/design/R$attr;->state_collapsible:I

    neg-int v6, v6

    goto :goto_0

    .line 497
    :cond_1
    sget v6, Landroid/support/design/R$attr;->state_collapsed:I

    neg-int v6, v6

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    .prologue
    .line 224
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v11, v0

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    invoke-super/range {v11 .. v16}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 225
    move-object v11, v0

    invoke-direct {v11}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 227
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/support/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    .line 228
    const/4 v11, 0x0

    move v6, v11

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v11

    move v7, v11

    :goto_0
    move v11, v6

    move v12, v7

    if-ge v11, v12, :cond_0

    .line 229
    move-object v11, v0

    move v12, v6

    invoke-virtual {v11, v12}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v8, v11

    .line 230
    move-object v11, v8

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v9, v11

    .line 231
    move-object v11, v9

    invoke-virtual {v11}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v11

    move-object v10, v11

    .line 233
    move-object v11, v10

    if-eqz v11, :cond_1

    .line 234
    move-object v11, v0

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/support/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    .line 239
    :cond_0
    move-object v11, v0

    invoke-direct {v11}, Landroid/support/design/widget/AppBarLayout;->updateCollapsible()V

    .line 240
    return-void

    .line 228
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 218
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 219
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 220
    return-void
.end method

.method public removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 4

    .prologue
    .line 211
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 212
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 214
    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 5

    .prologue
    .line 282
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 283
    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 6

    .prologue
    .line 298
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v5, v2

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    :goto_1
    or-int/2addr v4, v5

    iput v4, v3, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    .line 300
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/AppBarLayout;->requestLayout()V

    .line 301
    return-void

    .line 298
    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setOrientation(I)V
    .locals 6

    .prologue
    .line 262
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 263
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 266
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 267
    return-void
.end method

.method public setTargetElevation(F)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 541
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 542
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 544
    :cond_0
    return-void
.end method
