.class public Landroid/support/v7/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Landroid/support/v7/widget/DecorContentParent;
.implements Landroid/support/v4/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ATTRS:[I

.field private static final TAG:Ljava/lang/String; = "ActionBarOverlayLayout"


# instance fields
.field private final ACTION_BAR_ANIMATE_DELAY:I

.field private mActionBarHeight:I

.field private mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

.field private mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;

.field private mAnimatingForFling:Z

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private final mBaseInnerInsets:Landroid/graphics/Rect;

.field private mContent:Landroid/support/v7/widget/ContentFrameLayout;

.field private final mContentInsets:Landroid/graphics/Rect;

.field private mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

.field private mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;

.field private mHasNonEmbeddedTabs:Z

.field private mHideOnContentScroll:Z

.field private mHideOnContentScrollReference:I

.field private mIgnoreWindowContentOverlay:Z

.field private final mInnerInsets:Landroid/graphics/Rect;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastInnerInsets:Landroid/graphics/Rect;

.field private mLastSystemUiVisibility:I

.field private mOverlayMode:Z

.field private final mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field private final mTopAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const v3, 0x1010059

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 75
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 76
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 77
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 78
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 79
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 80
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 84
    move-object v3, v0

    const/16 v4, 0x258

    iput v4, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    .line 90
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/ActionBarOverlayLayout$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v7/widget/ActionBarOverlayLayout$1;-><init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V

    iput-object v4, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 105
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/ActionBarOverlayLayout$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v7/widget/ActionBarOverlayLayout$2;-><init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V

    iput-object v4, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 113
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/ActionBarOverlayLayout$3;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v7/widget/ActionBarOverlayLayout$3;-><init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V

    iput-object v4, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 135
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 137
    move-object v3, v0

    new-instance v4, Landroid/support/v4/view/NestedScrollingParentHelper;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v4, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 138
    return-void
.end method

.method static synthetic access$002(Landroid/support/v7/widget/ActionBarOverlayLayout;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$102(Landroid/support/v7/widget/ActionBarOverlayLayout;Z)Z
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/ActionBarOverlayLayout;)V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/widget/ActionBarOverlayLayout;)Landroid/support/v4/view/ViewPropertyAnimatorListener;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/ActionBarOverlayLayout;)Landroid/support/v7/widget/ActionBarContainer;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    move-object v0, v1

    return-object v0
.end method

.method private addActionBarHideOffset()V
    .locals 2

    .prologue
    .line 592
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 593
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 594
    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 11

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    const/4 v9, 0x0

    move v7, v9

    .line 256
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    move-object v8, v9

    .line 257
    move v9, v3

    if-eqz v9, :cond_0

    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-eq v9, v10, :cond_0

    .line 258
    const/4 v9, 0x1

    move v7, v9

    .line 259
    move-object v9, v8

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iput v10, v9, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    .line 261
    :cond_0
    move v9, v4

    if-eqz v9, :cond_1

    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-eq v9, v10, :cond_1

    .line 262
    const/4 v9, 0x1

    move v7, v9

    .line 263
    move-object v9, v8

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iput v10, v9, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    .line 265
    :cond_1
    move v9, v6

    if-eqz v9, :cond_2

    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->right:I

    if-eq v9, v10, :cond_2

    .line 266
    const/4 v9, 0x1

    move v7, v9

    .line 267
    move-object v9, v8

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iput v10, v9, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    .line 269
    :cond_2
    move v9, v5

    if-eqz v9, :cond_3

    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    if-eq v9, v10, :cond_3

    .line 270
    const/4 v9, 0x1

    move v7, v9

    .line 271
    move-object v9, v8

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iput v10, v9, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    .line 273
    :cond_3
    move v9, v7

    move v0, v9

    return v0
.end method

.method private getDecorToolbar(Landroid/view/View;)Landroid/support/v7/widget/DecorToolbar;
    .locals 7

    .prologue
    .line 533
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/DecorToolbar;

    if-eqz v2, :cond_0

    .line 534
    move-object v2, v1

    check-cast v2, Landroid/support/v7/widget/DecorToolbar;

    move-object v0, v2

    .line 536
    :goto_0
    return-object v0

    .line 535
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/Toolbar;

    if-eqz v2, :cond_1

    .line 536
    move-object v2, v1

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getWrapper()Landroid/support/v7/widget/DecorToolbar;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 538
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t make a decor toolbar out of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    .line 539
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private haltActionBarHideOffsetAnimations()V
    .locals 3

    .prologue
    .line 569
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 570
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 571
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v1, :cond_0

    .line 572
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 574
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Landroid/support/v7/widget/ActionBarOverlayLayout;->ATTRS:[I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v2, v3

    .line 142
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 143
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 144
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setWillNotDraw(Z)V

    .line 145
    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 150
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;

    .line 151
    return-void

    .line 144
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 147
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private postAddActionBarHideOffset()V
    .locals 5

    .prologue
    .line 582
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 583
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    .line 584
    return-void
.end method

.method private postRemoveActionBarHideOffset()V
    .locals 5

    .prologue
    .line 577
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 578
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    .line 579
    return-void
.end method

.method private removeActionBarHideOffset()V
    .locals 2

    .prologue
    .line 587
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 588
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 589
    return-void
.end method

.method private shouldHideActionBarOnFling(FF)Z
    .locals 13

    .prologue
    .line 597
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v2

    float-to-int v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, -0x80000000

    const v12, 0x7fffffff

    invoke-virtual/range {v4 .. v12}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 598
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v4

    move v3, v4

    .line 599
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v5}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 2

    .prologue
    .line 673
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 674
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->canShowOverflowMenu()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .prologue
    .line 322
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    move v0, v2

    return v0
.end method

.method public dismissPopups()V
    .locals 2

    .prologue
    .line 727
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 728
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->dismissPopupMenus()V

    .line 729
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 440
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 441
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    if-nez v3, :cond_0

    .line 442
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionBarContainer;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    .line 443
    invoke-virtual {v3}, Landroid/support/v7/widget/ActionBarContainer;->getBottom()I

    move-result v3

    int-to-float v3, v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    :goto_0
    move v2, v3

    .line 445
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v6

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 446
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 445
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 447
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 449
    :cond_0
    return-void

    .line 443
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 13

    .prologue
    .line 278
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 280
    move-object v6, v0

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v6

    move v2, v6

    .line 281
    move v6, v2

    const/16 v7, 0x100

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_0
    move v3, v6

    .line 282
    move-object v6, v1

    move-object v4, v6

    .line 285
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    move-object v8, v4

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v6 .. v12}, Landroid/support/v7/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v6

    move v5, v6

    .line 287
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 288
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-static {v6, v7, v8}, Landroid/support/v7/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 289
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 290
    const/4 v6, 0x1

    move v5, v6

    .line 291
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 294
    :cond_0
    move v6, v5

    if-eqz v6, :cond_1

    .line 295
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 302
    :cond_1
    const/4 v6, 0x1

    move v0, v6

    return v0

    .line 281
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 6

    .prologue
    .line 307
    move-object v0, p0

    new-instance v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 7

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 317
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 2

    .prologue
    .line 558
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .prologue
    .line 521
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v1}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 616
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 617
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public hasIcon()Z
    .locals 2

    .prologue
    .line 643
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 644
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->hasIcon()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public hasLogo()Z
    .locals 2

    .prologue
    .line 649
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 650
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->hasLogo()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .prologue
    .line 697
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 698
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public initFeature(I)V
    .locals 4

    .prologue
    .line 622
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 623
    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 634
    :goto_0
    return-void

    .line 625
    :sswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v2}, Landroid/support/v7/widget/DecorToolbar;->initProgress()V

    .line 626
    goto :goto_0

    .line 628
    :sswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v2}, Landroid/support/v7/widget/DecorToolbar;->initIndeterminateProgress()V

    .line 629
    goto :goto_0

    .line 631
    :sswitch_2
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    goto :goto_0

    .line 623
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6d -> :sswitch_2
    .end sparse-switch
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 2

    .prologue
    .line 554
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    move v0, v1

    return v0
.end method

.method public isInOverlayMode()Z
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    move v0, v1

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 2

    .prologue
    .line 685
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 686
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->isOverflowMenuShowPending()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 2

    .prologue
    .line 679
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 680
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 216
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 217
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 218
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 156
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 157
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 26

    .prologue
    .line 414
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v20

    move/from16 v8, v20

    .line 416
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v20

    move/from16 v9, v20

    .line 417
    move/from16 v20, v6

    move/from16 v21, v4

    sub-int v20, v20, v21

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v10, v20

    .line 419
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v20

    move/from16 v11, v20

    .line 420
    move/from16 v20, v7

    move/from16 v21, v5

    sub-int v20, v20, v21

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v12, v20

    .line 422
    const/16 v20, 0x0

    move/from16 v13, v20

    :goto_0
    move/from16 v20, v13

    move/from16 v21, v8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 423
    move-object/from16 v20, v2

    move/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v14, v20

    .line 424
    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 425
    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    move-object/from16 v15, v20

    .line 427
    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    move/from16 v16, v20

    .line 428
    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    move/from16 v17, v20

    .line 430
    move/from16 v20, v9

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v18, v20

    .line 431
    move/from16 v20, v11

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v19, v20

    .line 433
    move-object/from16 v20, v14

    move/from16 v21, v18

    move/from16 v22, v19

    move/from16 v23, v18

    move/from16 v24, v16

    add-int v23, v23, v24

    move/from16 v24, v19

    move/from16 v25, v17

    add-int v24, v24, v25

    invoke-virtual/range {v20 .. v24}, Landroid/view/View;->layout(IIII)V

    .line 422
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 436
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    .prologue
    .line 327
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 329
    const/4 v12, 0x0

    move v3, v12

    .line 330
    const/4 v12, 0x0

    move v4, v12

    .line 331
    const/4 v12, 0x0

    move v5, v12

    .line 333
    const/4 v12, 0x0

    move v6, v12

    .line 334
    const/4 v12, 0x0

    move v7, v12

    .line 336
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    move v14, v1

    const/4 v15, 0x0

    move/from16 v16, v2

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/support/v7/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 337
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v12}, Landroid/support/v7/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    move-object v8, v12

    .line 338
    move v12, v4

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    .line 339
    invoke-virtual {v13}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v13

    move-object v14, v8

    iget v14, v14, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    move-object v14, v8

    iget v14, v14, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    .line 338
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v4, v12

    .line 340
    move v12, v3

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    .line 341
    invoke-virtual {v13}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v13

    move-object v14, v8

    iget v14, v14, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v13, v14

    move-object v14, v8

    iget v14, v14, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    .line 340
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v3, v12

    .line 342
    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    .line 343
    invoke-static {v13}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v13

    .line 342
    invoke-static {v12, v13}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v12

    move v5, v12

    .line 345
    move-object v12, v0

    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v12

    move v9, v12

    .line 346
    move v12, v9

    const/16 v13, 0x100

    and-int/lit16 v12, v12, 0x100

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    :goto_0
    move v10, v12

    .line 348
    move v12, v10

    if-eqz v12, :cond_3

    .line 351
    move-object v12, v0

    iget v12, v12, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    move v6, v12

    .line 352
    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    if-eqz v12, :cond_0

    .line 353
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v12}, Landroid/support/v7/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v12

    move-object v11, v12

    .line 354
    move-object v12, v11

    if-eqz v12, :cond_0

    .line 356
    move v12, v6

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v12, v13

    move v6, v12

    .line 369
    :cond_0
    :goto_1
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 370
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 371
    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v7/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v12, :cond_4

    move v12, v10

    if-nez v12, :cond_4

    .line 372
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move v14, v6

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->top:I

    .line 373
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    move v14, v7

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    .line 378
    :goto_2
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-direct/range {v12 .. v18}, Landroid/support/v7/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v12

    .line 380
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 384
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 386
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/ContentFrameLayout;->dispatchFitSystemWindows(Landroid/graphics/Rect;)V

    .line 389
    :cond_1
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    move v14, v1

    const/4 v15, 0x0

    move/from16 v16, v2

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/support/v7/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 390
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    invoke-virtual {v12}, Landroid/support/v7/widget/ContentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    move-object v8, v12

    .line 391
    move v12, v4

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    .line 392
    invoke-virtual {v13}, Landroid/support/v7/widget/ContentFrameLayout;->getMeasuredWidth()I

    move-result v13

    move-object v14, v8

    iget v14, v14, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    move-object v14, v8

    iget v14, v14, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    .line 391
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v4, v12

    .line 393
    move v12, v3

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    .line 394
    invoke-virtual {v13}, Landroid/support/v7/widget/ContentFrameLayout;->getMeasuredHeight()I

    move-result v13

    move-object v14, v8

    iget v14, v14, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v13, v14

    move-object v14, v8

    iget v14, v14, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    .line 393
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v3, v12

    .line 395
    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    .line 396
    invoke-static {v13}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v13

    .line 395
    invoke-static {v12, v13}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v12

    move v5, v12

    .line 399
    move v12, v4

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v13

    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    move v4, v12

    .line 400
    move v12, v3

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v13

    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    move v3, v12

    .line 403
    move v12, v3

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v3, v12

    .line 404
    move v12, v4

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v4, v12

    .line 406
    move-object v12, v0

    move v13, v4

    move v14, v1

    move v15, v5

    .line 407
    invoke-static {v13, v14, v15}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v13

    move v14, v3

    move v15, v2

    move/from16 v16, v5

    const/16 v17, 0x10

    shl-int/lit8 v16, v16, 0x10

    .line 408
    invoke-static/range {v14 .. v16}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v14

    .line 406
    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    .line 410
    return-void

    .line 346
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 359
    :cond_3
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v12}, Landroid/support/v7/widget/ActionBarContainer;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    .line 362
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v12}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v12

    move v6, v12

    goto/16 :goto_1

    .line 375
    :cond_4
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move v14, v6

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->top:I

    .line 376
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    move v14, v7

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 8

    .prologue
    .line 497
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v5, :cond_0

    move v5, v4

    if-nez v5, :cond_1

    .line 498
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 506
    :goto_0
    return v0

    .line 500
    :cond_1
    move-object v5, v0

    move v6, v2

    move v7, v3

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/ActionBarOverlayLayout;->shouldHideActionBarOnFling(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 501
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/ActionBarOverlayLayout;->addActionBarHideOffset()V

    .line 505
    :goto_1
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    .line 506
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 503
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/ActionBarOverlayLayout;->removeActionBarHideOffset()V

    goto :goto_1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 5

    .prologue
    .line 516
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    .prologue
    .line 512
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 10

    .prologue
    .line 477
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    move v8, v3

    add-int/2addr v7, v8

    iput v7, v6, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 478
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 479
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 8

    .prologue
    .line 466
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionBarOverlayLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 467
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 468
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 469
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v4, :cond_0

    .line 470
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v4}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    .line 472
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 458
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, v3

    const/4 v5, 0x2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionBarContainer;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 459
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    .line 461
    :goto_0
    return v0

    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    move v0, v4

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 483
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    if-nez v2, :cond_0

    .line 484
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 485
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postRemoveActionBarHideOffset()V

    .line 490
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v2, :cond_1

    .line 491
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v2}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    .line 493
    :cond_1
    return-void

    .line 487
    :cond_2
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postAddActionBarHideOffset()V

    goto :goto_0
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 7

    .prologue
    .line 221
    move-object v0, p0

    move v1, p1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 222
    move-object v5, v0

    move v6, v1

    invoke-super {v5, v6}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 224
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 225
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    move v6, v1

    xor-int/2addr v5, v6

    move v2, v5

    .line 226
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 227
    move v5, v1

    const/4 v6, 0x4

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 228
    move v5, v1

    const/16 v6, 0x100

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_1
    move v4, v5

    .line 229
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v5, :cond_2

    .line 233
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    move v6, v4

    if-nez v6, :cond_6

    const/4 v6, 0x1

    :goto_2
    invoke-interface {v5, v6}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    .line 234
    move v5, v3

    if-nez v5, :cond_1

    move v5, v4

    if-nez v5, :cond_7

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v5}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    .line 237
    :cond_2
    :goto_3
    move v5, v2

    const/16 v6, 0x100

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_3

    .line 238
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v5, :cond_3

    .line 239
    move-object v5, v0

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 242
    :cond_3
    return-void

    .line 227
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 228
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 233
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 235
    :cond_7
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v5}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    goto :goto_3
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4

    .prologue
    .line 246
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 247
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 248
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v2, :cond_0

    .line 249
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 251
    :cond_0
    return-void
.end method

.method pullChildren()V
    .locals 5

    .prologue
    .line 525
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    if-nez v1, :cond_0

    .line 526
    move-object v1, v0

    move-object v2, v0

    sget v3, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ContentFrameLayout;

    iput-object v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    .line 527
    move-object v1, v0

    move-object v2, v0

    sget v3, Landroid/support/v7/appcompat/R$id;->action_bar_container:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActionBarContainer;

    iput-object v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    .line 528
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    sget v4, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getDecorToolbar(Landroid/view/View;)Landroid/support/v7/widget/DecorToolbar;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    .line 530
    :cond_0
    return-void
.end method

.method public restoreToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 721
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 722
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 723
    return-void
.end method

.method public saveToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 715
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 716
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 717
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 6

    .prologue
    .line 562
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 563
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v3

    move v2, v3

    .line 564
    const/4 v3, 0x0

    move v4, v1

    move v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v1, v3

    .line 565
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    move v4, v1

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 566
    return-void
.end method

.method public setActionBarVisibilityCallback(Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V
    .locals 5

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .line 161
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 164
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    invoke-interface {v3, v4}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 165
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    if-eqz v3, :cond_0

    .line 166
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    move v2, v3

    .line 167
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 168
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 171
    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 4

    .prologue
    .line 190
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    .line 191
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 4

    .prologue
    .line 544
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eq v2, v3, :cond_0

    .line 545
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    .line 546
    move v2, v1

    if-nez v2, :cond_0

    .line 547
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 548
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 551
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 4

    .prologue
    .line 655
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 656
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setIcon(I)V

    .line 657
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 661
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 662
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 663
    return-void
.end method

.method public setLogo(I)V
    .locals 4

    .prologue
    .line 667
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 668
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setLogo(I)V

    .line 669
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 6

    .prologue
    .line 709
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 710
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/DecorToolbar;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 711
    return-void
.end method

.method public setMenuPrepared()V
    .locals 2

    .prologue
    .line 703
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 704
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->setMenuPrepared()V

    .line 705
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 5

    .prologue
    .line 174
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 180
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 181
    invoke-virtual {v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 183
    return-void

    .line 181
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setShowingForActionMode(Z)V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0

    .prologue
    .line 639
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 4

    .prologue
    .line 604
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 605
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 606
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 610
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 611
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 612
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 2

    .prologue
    .line 453
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 2

    .prologue
    .line 691
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 692
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v1

    move v0, v1

    return v0
.end method
