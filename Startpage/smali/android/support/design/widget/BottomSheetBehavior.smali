.class public Landroid/support/design/widget/BottomSheetBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BottomSheetBehavior$SavedState;,
        Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;,
        Landroid/support/design/widget/BottomSheetBehavior$State;,
        Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final HIDE_FRICTION:F = 0.1f

.field private static final HIDE_THRESHOLD:F = 0.5f

.field public static final PEEK_HEIGHT_AUTO:I = -0x1

.field public static final STATE_COLLAPSED:I = 0x4

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_EXPANDED:I = 0x3

.field public static final STATE_HIDDEN:I = 0x5

.field public static final STATE_SETTLING:I = 0x2


# instance fields
.field private mActivePointerId:I

.field private mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

.field private final mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private mHideable:Z

.field private mIgnoreEvents:Z

.field private mInitialY:I

.field private mLastNestedScrollDy:I

.field private mMaxOffset:I

.field private mMaximumVelocity:F

.field private mMinOffset:I

.field private mNestedScrolled:Z

.field private mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mParentHeight:I

.field private mPeekHeight:I

.field private mPeekHeightAuto:Z

.field private mPeekHeightMin:I

.field private mSkipCollapsed:Z

.field private mState:I

.field private mTouchingScrollingChild:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 139
    move-object v1, v0

    const/4 v2, 0x4

    iput v2, v1, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    .line 632
    move-object v1, v0

    new-instance v2, Landroid/support/design/widget/BottomSheetBehavior$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/design/widget/BottomSheetBehavior$2;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v2, v1, Landroid/support/design/widget/BottomSheetBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    move-object v6, v0

    const/4 v7, 0x4

    iput v7, v6, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    .line 632
    move-object v6, v0

    new-instance v7, Landroid/support/design/widget/BottomSheetBehavior$2;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/design/widget/BottomSheetBehavior$2;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v7, v6, Landroid/support/design/widget/BottomSheetBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 180
    move-object v6, v1

    move-object v7, v2

    sget-object v8, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout:[I

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v3, v6

    .line 182
    move-object v6, v3

    sget v7, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    move-object v4, v6

    .line 183
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    iget v6, v6, Landroid/util/TypedValue;->data:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 184
    move-object v6, v0

    move-object v7, v4

    iget v7, v7, Landroid/util/TypedValue;->data:I

    invoke-virtual {v6, v7}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    .line 189
    :goto_0
    move-object v6, v0

    move-object v7, v3

    sget v8, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_hideable:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 190
    move-object v6, v0

    move-object v7, v3

    sget v8, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/design/widget/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 192
    move-object v6, v3

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    move-object v6, v1

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    move-object v5, v6

    .line 194
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Landroid/support/design/widget/BottomSheetBehavior;->mMaximumVelocity:F

    .line 195
    return-void

    .line 186
    :cond_0
    move-object v6, v0

    move-object v7, v3

    sget v8, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/BottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1000(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;F)Z
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method static synthetic access$1100(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1200(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1300(Landroid/support/design/widget/BottomSheetBehavior;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/design/widget/BottomSheetBehavior;)Z
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mTouchingScrollingChild:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$300(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    move v0, v1

    return v0
.end method

.method static synthetic access$400(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/design/widget/BottomSheetBehavior;I)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->dispatchOnSlide(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/design/widget/BottomSheetBehavior;I)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    move v0, v1

    return v0
.end method

.method static synthetic access$900(Landroid/support/design/widget/BottomSheetBehavior;)Z
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    move v0, v1

    return v0
.end method

.method private dispatchOnSlide(I)V
    .locals 8

    .prologue
    .line 717
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    .line 718
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v3, :cond_0

    .line 719
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    if-le v3, v4, :cond_1

    .line 720
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    move v6, v1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    move v6, v1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .locals 9

    .prologue
    .line 595
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    instance-of v6, v6, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v6, :cond_0

    .line 596
    move-object v6, v1

    move-object v0, v6

    .line 607
    :goto_0
    return-object v0

    .line 598
    :cond_0
    move-object v6, v1

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    .line 599
    move-object v6, v1

    check-cast v6, Landroid/view/ViewGroup;

    move-object v2, v6

    .line 600
    const/4 v6, 0x0

    move v3, v6

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v4, v6

    :goto_1
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_2

    .line 601
    move-object v6, v0

    move-object v7, v2

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/design/widget/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 602
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 603
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 600
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 607
    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public static from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Landroid/support/design/widget/BottomSheetBehavior",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 797
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v1, v3

    .line 798
    move-object v3, v1

    instance-of v3, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-nez v3, :cond_0

    .line 799
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "The view is not a child of CoordinatorLayout"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 801
    :cond_0
    move-object v3, v1

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 802
    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v3

    move-object v2, v3

    .line 803
    move-object v3, v2

    instance-of v3, v3, Landroid/support/design/widget/BottomSheetBehavior;

    if-nez v3, :cond_1

    .line 804
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "The view is not associated with BottomSheetBehavior"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 807
    :cond_1
    move-object v3, v2

    check-cast v3, Landroid/support/design/widget/BottomSheetBehavior;

    move-object v0, v3

    return-object v0
.end method

.method private getYVelocity()F
    .locals 4

    .prologue
    .line 611
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->mMaximumVelocity:F

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 612
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    move v0, v1

    return v0
.end method

.method private reset()V
    .locals 3

    .prologue
    .line 575
    move-object v0, p0

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    .line 576
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 577
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 578
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 580
    :cond_0
    return-void
.end method

.method private setStateInternal(I)V
    .locals 6

    .prologue
    .line 564
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 572
    :goto_0
    return-void

    .line 567
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    .line 568
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    .line 569
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v3, :cond_1

    .line 570
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    move-object v4, v2

    move v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    .line 572
    :cond_1
    goto :goto_0
.end method

.method private shouldHide(Landroid/view/View;F)Z
    .locals 7

    .prologue
    .line 583
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->mSkipCollapsed:Z

    if-eqz v4, :cond_0

    .line 584
    const/4 v4, 0x1

    move v0, v4

    .line 591
    :goto_0
    return v0

    .line 586
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    if-ge v4, v5, :cond_1

    .line 588
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 590
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    move v5, v2

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move v3, v4

    .line 591
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private startSettlingAnimation(Landroid/view/View;I)V
    .locals 11

    .prologue
    .line 617
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 618
    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    move v3, v4

    .line 626
    :goto_0
    move-object v4, v0

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 627
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 628
    move-object v4, v1

    new-instance v5, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 630
    :cond_0
    return-void

    .line 619
    :cond_1
    move v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 620
    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    move v3, v4

    goto :goto_0

    .line 621
    :cond_2
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v4, :cond_3

    move v4, v2

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 622
    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    move v3, v4

    goto :goto_0

    .line 624
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal state argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public final getPeekHeight()I
    .locals 2

    .prologue
    .line 461
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    goto :goto_0
.end method

.method public getSkipCollapsed()Z
    .locals 2

    .prologue
    .line 503
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mSkipCollapsed:Z

    move v0, v1

    return v0
.end method

.method public final getState()I
    .locals 2

    .prologue
    .line 560
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    move v0, v1

    return v0
.end method

.method public isHideable()Z
    .locals 2

    .prologue
    .line 481
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    move v0, v1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->isShown()Z

    move-result v7

    if-nez v7, :cond_0

    .line 256
    const/4 v7, 0x0

    move v0, v7

    .line 300
    :goto_0
    return v0

    .line 258
    :cond_0
    move-object v7, v3

    invoke-static {v7}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v7

    move v4, v7

    .line 260
    move v7, v4

    if-nez v7, :cond_1

    .line 261
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/design/widget/BottomSheetBehavior;->reset()V

    .line 263
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_2

    .line 264
    move-object v7, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, v7, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 266
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 267
    move v7, v4

    packed-switch v7, :pswitch_data_0

    .line 290
    :cond_3
    :goto_1
    :pswitch_0
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    if-nez v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 291
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 270
    :pswitch_1
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/design/widget/BottomSheetBehavior;->mTouchingScrollingChild:Z

    .line 271
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    .line 273
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    if-eqz v7, :cond_3

    .line 274
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    .line 275
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 279
    :pswitch_2
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    move v5, v7

    .line 280
    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    .line 281
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v6, v7

    .line 282
    move-object v7, v6

    if-eqz v7, :cond_4

    move-object v7, v1

    move-object v8, v6

    move v9, v5

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 283
    move-object v7, v0

    move-object v8, v3

    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    .line 284
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/design/widget/BottomSheetBehavior;->mTouchingScrollingChild:Z

    .line 286
    :cond_4
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    move-object v8, v1

    move-object v9, v2

    move v10, v5

    move-object v11, v0

    iget v11, v11, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    .line 287
    invoke-virtual {v8, v9, v10, v11}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, v7, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 296
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v5, v7

    .line 297
    move v7, v4

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    move-object v7, v5

    if-eqz v7, :cond_7

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    if-nez v7, :cond_7

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_7

    move-object v7, v1

    move-object v8, v5

    move-object v9, v3

    .line 299
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    move-object v10, v3

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v7

    if-nez v7, :cond_7

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    int-to-float v7, v7

    move-object v8, v3

    .line 300
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    const/4 v7, 0x1

    :goto_3
    move v0, v7

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x0

    goto :goto_3

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v1

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v2

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 217
    move-object v6, v2

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 219
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    move v4, v6

    .line 221
    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 223
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v7

    iput v7, v6, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    .line 225
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    if-eqz v6, :cond_4

    .line 226
    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightMin:I

    if-nez v6, :cond_1

    .line 227
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Landroid/support/design/R$dimen;->design_bottom_sheet_peek_height_min:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightMin:I

    .line 230
    :cond_1
    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightMin:I

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v8

    const/16 v9, 0x9

    mul-int/lit8 v8, v8, 0x9

    const/16 v9, 0x10

    div-int/lit8 v8, v8, 0x10

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v5, v6

    .line 234
    :goto_0
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v6, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    .line 235
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    move v8, v5

    sub-int/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v6, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    .line 236
    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 237
    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 245
    :cond_2
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v6, :cond_3

    .line 246
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/BottomSheetBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v7

    iput-object v7, v6, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 248
    :cond_3
    move-object v6, v0

    new-instance v7, Ljava/lang/ref/WeakReference;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, v6, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 249
    move-object v6, v0

    new-instance v7, Ljava/lang/ref/WeakReference;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Landroid/support/design/widget/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, v6, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 250
    const/4 v6, 0x1

    move v0, v6

    return v0

    .line 232
    :cond_4
    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    move v5, v6

    goto :goto_0

    .line 238
    :cond_5
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v6, :cond_6

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_6

    .line 239
    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 240
    :cond_6
    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    .line 241
    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 242
    :cond_7
    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_8

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 243
    :cond_8
    move-object v6, v2

    move v7, v4

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .prologue
    .line 418
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_1

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    .line 420
    invoke-super/range {v6 .. v11}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_0
    move v0, v6

    return v0

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[I)V"
        }
    .end annotation

    .prologue
    .line 342
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    move-object v7, v10

    .line 343
    move-object v10, v3

    move-object v11, v7

    if-eq v10, v11, :cond_0

    .line 374
    :goto_0
    return-void

    .line 346
    :cond_0
    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    move v8, v10

    .line 347
    move v10, v8

    move v11, v5

    sub-int/2addr v10, v11

    move v9, v10

    .line 348
    move v10, v5

    if-lez v10, :cond_3

    .line 349
    move v10, v9

    move-object v11, v0

    iget v11, v11, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    if-ge v10, v11, :cond_2

    .line 350
    move-object v10, v6

    const/4 v11, 0x1

    move v12, v8

    move-object v13, v0

    iget v13, v13, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    sub-int/2addr v12, v13

    aput v12, v10, v11

    .line 351
    move-object v10, v2

    move-object v11, v6

    const/4 v12, 0x1

    aget v11, v11, v12

    neg-int v11, v11

    invoke-static {v10, v11}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 352
    move-object v10, v0

    const/4 v11, 0x3

    invoke-direct {v10, v11}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 371
    :cond_1
    :goto_1
    move-object v10, v0

    move-object v11, v2

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/support/design/widget/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 372
    move-object v10, v0

    move v11, v5

    iput v11, v10, Landroid/support/design/widget/BottomSheetBehavior;->mLastNestedScrollDy:I

    .line 373
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrolled:Z

    .line 374
    goto :goto_0

    .line 354
    :cond_2
    move-object v10, v6

    const/4 v11, 0x1

    move v12, v5

    aput v12, v10, v11

    .line 355
    move-object v10, v2

    move v11, v5

    neg-int v11, v11

    invoke-static {v10, v11}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 356
    move-object v10, v0

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 358
    :cond_3
    move v10, v5

    if-gez v10, :cond_1

    .line 359
    move-object v10, v3

    const/4 v11, -0x1

    invoke-static {v10, v11}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 360
    move v10, v9

    move-object v11, v0

    iget v11, v11, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    if-le v10, v11, :cond_4

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v10, :cond_5

    .line 361
    :cond_4
    move-object v10, v6

    const/4 v11, 0x1

    move v12, v5

    aput v12, v10, v11

    .line 362
    move-object v10, v2

    move v11, v5

    neg-int v11, v11

    invoke-static {v10, v11}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 363
    move-object v10, v0

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 365
    :cond_5
    move-object v10, v6

    const/4 v11, 0x1

    move v12, v8

    move-object v13, v0

    iget v13, v13, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    sub-int/2addr v12, v13

    aput v12, v10, v11

    .line 366
    move-object v10, v2

    move-object v11, v6

    const/4 v12, 0x1

    aget v11, v11, v12

    neg-int v11, v11

    invoke-static {v10, v11}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 367
    move-object v10, v0

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v3

    check-cast v5, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    move-object v4, v5

    .line 205
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v8

    invoke-super {v5, v6, v7, v8}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 207
    move-object v5, v4

    iget v5, v5, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    move-object v5, v4

    iget v5, v5, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 208
    :cond_0
    move-object v5, v0

    const/4 v6, 0x4

    iput v6, v5, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_1
    move-object v5, v0

    move-object v6, v4

    iget v6, v6, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    iput v6, v5, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;I)V

    move-object v0, v3

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 334
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/design/widget/BottomSheetBehavior;->mLastNestedScrollDy:I

    .line 335
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrolled:Z

    .line 336
    move v6, v5

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v0, v6

    return v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 378
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    if-ne v7, v8, :cond_0

    .line 379
    move-object v7, v0

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 413
    :goto_0
    return-void

    .line 382
    :cond_0
    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_1

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrolled:Z

    if-nez v7, :cond_2

    .line 383
    :cond_1
    goto :goto_0

    .line 387
    :cond_2
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mLastNestedScrollDy:I

    if-lez v7, :cond_3

    .line 388
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    move v4, v7

    .line 389
    const/4 v7, 0x3

    move v5, v7

    .line 406
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v8, v2

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    move v10, v4

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 407
    move-object v7, v0

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 408
    move-object v7, v2

    new-instance v8, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move-object v11, v2

    move v12, v5

    invoke-direct {v9, v10, v11, v12}, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 412
    :goto_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrolled:Z

    .line 413
    goto :goto_0

    .line 390
    :cond_3
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v7, :cond_4

    move-object v7, v0

    move-object v8, v2

    move-object v9, v0

    invoke-direct {v9}, Landroid/support/design/widget/BottomSheetBehavior;->getYVelocity()F

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/support/design/widget/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 391
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    move v4, v7

    .line 392
    const/4 v7, 0x5

    move v5, v7

    goto :goto_1

    .line 393
    :cond_4
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mLastNestedScrollDy:I

    if-nez v7, :cond_6

    .line 394
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    move v6, v7

    .line 395
    move v7, v6

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    move v8, v6

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 396
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    move v4, v7

    .line 397
    const/4 v7, 0x3

    move v5, v7

    .line 402
    :goto_3
    goto :goto_1

    .line 399
    :cond_5
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    move v4, v7

    .line 400
    const/4 v7, 0x4

    move v5, v7

    goto :goto_3

    .line 403
    :cond_6
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    move v4, v7

    .line 404
    const/4 v7, 0x4

    move v5, v7

    goto :goto_1

    .line 410
    :cond_7
    move-object v7, v0

    move v8, v5

    invoke-direct {v7, v8}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 305
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_0

    .line 306
    const/4 v5, 0x0

    move v0, v5

    .line 328
    :goto_0
    return v0

    .line 308
    :cond_0
    move-object v5, v3

    invoke-static {v5}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v5

    move v4, v5

    .line 309
    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move v5, v4

    if-nez v5, :cond_1

    .line 310
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 312
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 314
    move v5, v4

    if-nez v5, :cond_2

    .line 315
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/design/widget/BottomSheetBehavior;->reset()V

    .line 317
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_3

    .line 318
    move-object v5, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, v5, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 320
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 323
    move v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    if-nez v5, :cond_4

    .line 324
    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    int-to-float v5, v5

    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 325
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v6, v2

    move-object v7, v3

    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 328
    :cond_4
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    if-nez v5, :cond_5

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setBottomSheetCallback(Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;)V
    .locals 4

    .prologue
    .line 512
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    .line 513
    return-void
.end method

.method public setHideable(Z)V
    .locals 4

    .prologue
    .line 471
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    .line 472
    return-void
.end method

.method public final setPeekHeight(I)V
    .locals 7

    .prologue
    .line 433
    move-object v0, p0

    move v1, p1

    const/4 v4, 0x0

    move v2, v4

    .line 434
    move v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 435
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    if-nez v4, :cond_0

    .line 436
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    .line 437
    const/4 v4, 0x1

    move v2, v4

    .line 445
    :cond_0
    :goto_0
    move v4, v2

    if-eqz v4, :cond_1

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    .line 446
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v3, v4

    .line 447
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 448
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 451
    :cond_1
    return-void

    .line 439
    :cond_2
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    if-nez v4, :cond_3

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    move v5, v1

    if-eq v4, v5, :cond_0

    .line 440
    :cond_3
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    .line 441
    move-object v4, v0

    const/4 v5, 0x0

    move v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    .line 442
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    move v6, v1

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    .line 443
    const/4 v4, 0x1

    move v2, v4

    goto :goto_0
.end method

.method public setSkipCollapsed(Z)V
    .locals 4

    .prologue
    .line 492
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/BottomSheetBehavior;->mSkipCollapsed:Z

    .line 493
    return-void
.end method

.method public final setState(I)V
    .locals 11

    .prologue
    .line 523
    move-object v0, p0

    move v1, p1

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    if-ne v4, v5, :cond_0

    .line 550
    :goto_0
    return-void

    .line 526
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_3

    .line 528
    move v4, v1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    move v4, v1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v4, :cond_2

    move v4, v1

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 530
    :cond_1
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    .line 532
    :cond_2
    goto :goto_0

    .line 534
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v2, v4

    .line 535
    move-object v4, v2

    if-nez v4, :cond_4

    .line 536
    goto :goto_0

    .line 539
    :cond_4
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v3, v4

    .line 540
    move-object v4, v3

    if-eqz v4, :cond_5

    move-object v4, v3

    invoke-interface {v4}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v2

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 541
    move-object v4, v2

    new-instance v5, Landroid/support/design/widget/BottomSheetBehavior$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v2

    move v9, v1

    invoke-direct {v6, v7, v8, v9}, Landroid/support/design/widget/BottomSheetBehavior$1;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 550
    :goto_1
    goto :goto_0

    .line 548
    :cond_5
    move-object v4, v0

    move-object v5, v2

    move v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/BottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;I)V

    goto :goto_1
.end method
