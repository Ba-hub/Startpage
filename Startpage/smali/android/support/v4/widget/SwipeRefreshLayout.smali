.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;
.implements Landroid/support/v4/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;,
        Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field private static final CIRCLE_BG_LIGHT:I = -0x50506

.field static final CIRCLE_DIAMETER:I = 0x28
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CIRCLE_DIAMETER_LARGE:I = 0x38
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field private static final DRAG_RATE:F = 0.5f

.field private static final INVALID_POINTER:I = -0x1

.field public static final LARGE:I = 0x0

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mChildScrollUpCallback:Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

.field private mCircleDiameter:I

.field private mCircleView:Landroid/support/v4/widget/CircleImageView;

.field private mCircleViewIndex:I

.field private mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private mNotify:Z

.field protected mOriginalOffsetTop:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field private mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field private mRefreshing:Z

.field private mReturningToStart:Z

.field private mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field private mSpinnerFinalOffset:F

.field private mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field private mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 78
    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x101000e

    aput v3, v1, v2

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 305
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 306
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 315
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 108
    move-object v5, v0

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 116
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 117
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    .line 126
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 139
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 170
    move-object v5, v0

    new-instance v6, Landroid/support/v4/widget/SwipeRefreshLayout$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/widget/SwipeRefreshLayout$1;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1110
    move-object v5, v0

    new-instance v6, Landroid/support/v4/widget/SwipeRefreshLayout$6;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/widget/SwipeRefreshLayout$6;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 1134
    move-object v5, v0

    new-instance v6, Landroid/support/v4/widget/SwipeRefreshLayout$7;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/widget/SwipeRefreshLayout$7;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 317
    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    .line 319
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 322
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 323
    move-object v5, v0

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 325
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v3, v5

    .line 326
    move-object v5, v0

    move-object v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 327
    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 329
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    move-object v4, v5

    .line 330
    move-object v5, v0

    const/high16 v6, 0x42200000    # 40.0f

    move-object v7, v4

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 332
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->createProgressView()V

    .line 333
    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    .line 335
    move-object v5, v0

    const/high16 v6, 0x42800000    # 64.0f

    move-object v7, v4

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 336
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 337
    move-object v5, v0

    new-instance v6, Landroid/support/v4/view/NestedScrollingParentHelper;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 339
    move-object v5, v0

    new-instance v6, Landroid/support/v4/view/NestedScrollingChildHelper;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 340
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 342
    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    neg-int v7, v7

    move-object v9, v6

    move v10, v7

    move v6, v10

    move-object v7, v9

    move v8, v10

    iput v8, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 343
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveToStart(F)V

    .line 344
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$100(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/MaterialProgressDrawable;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$1100(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    move v0, v1

    return v0
.end method

.method static synthetic access$1200(Landroid/support/v4/widget/SwipeRefreshLayout;IZ)V
    .locals 6

    .prologue
    .line 66
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    return-void
.end method

.method static synthetic access$1300(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveToStart(F)V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    move v0, v1

    return v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$402(Landroid/support/v4/widget/SwipeRefreshLayout;I)I
    .locals 7

    .prologue
    .line 66
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move v0, v2

    return v0
.end method

.method static synthetic access$500(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/CircleImageView;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->reset()V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$900(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 6

    .prologue
    .line 1082
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 1083
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->reset()V

    .line 1084
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1085
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1086
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1087
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1089
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v3}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 1090
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1091
    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 6

    .prologue
    .line 1094
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v3, :cond_0

    .line 1096
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1108
    :goto_0
    return-void

    .line 1098
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 1099
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->reset()V

    .line 1100
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1101
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1102
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 1103
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1105
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v3}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 1106
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private createProgressView()V
    .locals 7

    .prologue
    .line 363
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Landroid/support/v4/widget/CircleImageView;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, -0x50506

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/CircleImageView;-><init>(Landroid/content/Context;I)V

    iput-object v2, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    .line 364
    move-object v1, v0

    new-instance v2, Landroid/support/v4/widget/MaterialProgressDrawable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    .line 365
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const v2, -0x50506

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 366
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 368
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 369
    return-void
.end method

.method private ensureTarget()V
    .locals 5

    .prologue
    .line 575
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v3, :cond_0

    .line 576
    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 577
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 578
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 579
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 584
    :cond_0
    return-void

    .line 576
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private finishSpinner(F)V
    .locals 7

    .prologue
    .line 961
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 962
    move-object v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    .line 991
    :goto_0
    return-void

    .line 965
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 966
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 967
    const/4 v3, 0x0

    move-object v2, v3

    .line 968
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v3, :cond_1

    .line 969
    new-instance v3, Landroid/support/v4/widget/SwipeRefreshLayout$5;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout$5;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    move-object v2, v3

    .line 988
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 989
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/MaterialProgressDrawable;->showArrow(Z)V

    goto :goto_0
.end method

.method private isAlphaUsedForScale()Z
    .locals 3

    .prologue
    .line 383
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 3

    .prologue
    .line 908
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private moveSpinner(F)V
    .locals 21

    .prologue
    .line 912
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object v15, v2

    iget-object v15, v15, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/widget/MaterialProgressDrawable;->showArrow(Z)V

    .line 913
    move v15, v3

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    move/from16 v16, v0

    div-float v15, v15, v16

    move v4, v15

    .line 915
    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v16, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v15

    move v5, v15

    .line 916
    move v15, v5

    float-to-double v15, v15

    const-wide v17, 0x3fd999999999999aL    # 0.4

    sub-double v15, v15, v17

    const-wide/16 v17, 0x0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->max(DD)D

    move-result-wide v15

    double-to-float v15, v15

    const/high16 v16, 0x40a00000    # 5.0f

    mul-float v15, v15, v16

    const/high16 v16, 0x40400000    # 3.0f

    div-float v15, v15, v16

    move v6, v15

    .line 917
    move v15, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move v7, v15

    .line 918
    move-object v15, v2

    iget-boolean v15, v15, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v15, :cond_4

    move-object v15, v2

    iget v15, v15, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    :goto_0
    move v8, v15

    .line 920
    const/4 v15, 0x0

    move/from16 v16, v7

    move/from16 v17, v8

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v16

    move/from16 v17, v8

    div-float v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v15

    move v9, v15

    .line 922
    move v15, v9

    const/high16 v16, 0x40800000    # 4.0f

    div-float v15, v15, v16

    float-to-double v15, v15

    move/from16 v17, v9

    const/high16 v18, 0x40800000    # 4.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    sub-double v15, v15, v17

    double-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    move v10, v15

    .line 924
    move v15, v8

    move/from16 v16, v10

    mul-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    move v11, v15

    .line 926
    move-object v15, v2

    iget v15, v15, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move/from16 v16, v8

    move/from16 v17, v5

    mul-float v16, v16, v17

    move/from16 v17, v11

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    move v12, v15

    .line 928
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v15}, Landroid/support/v4/widget/CircleImageView;->getVisibility()I

    move-result v15

    if-eqz v15, :cond_0

    .line 929
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 931
    :cond_0
    move-object v15, v2

    iget-boolean v15, v15, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v15, :cond_1

    .line 932
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v15 .. v16}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 933
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v15 .. v16}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 936
    :cond_1
    move-object v15, v2

    iget-boolean v15, v15, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v15, :cond_2

    .line 937
    move-object v15, v2

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v17, v3

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    move/from16 v18, v0

    div-float v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v16

    invoke-direct/range {v15 .. v16}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 939
    :cond_2
    move v15, v3

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_5

    .line 940
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v15}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v15

    const/16 v16, 0x4c

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    move-object/from16 v16, v0

    .line 941
    invoke-direct/range {v15 .. v16}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 943
    move-object v15, v2

    invoke-direct {v15}, Landroid/support/v4/widget/SwipeRefreshLayout;->startProgressAlphaStartAnimation()V

    .line 951
    :cond_3
    :goto_1
    move v15, v6

    const v16, 0x3f4ccccd    # 0.8f

    mul-float v15, v15, v16

    move v13, v15

    .line 952
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v16, 0x0

    const v17, 0x3f4ccccd    # 0.8f

    move/from16 v18, v13

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/support/v4/widget/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 953
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v17, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/widget/MaterialProgressDrawable;->setArrowScale(F)V

    .line 955
    const/high16 v15, -0x41800000    # -0.25f

    const v16, 0x3ecccccd    # 0.4f

    move/from16 v17, v6

    mul-float v16, v16, v17

    add-float v15, v15, v16

    move/from16 v16, v10

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v16, v16, v17

    add-float v15, v15, v16

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v15, v15, v16

    move v14, v15

    .line 956
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/widget/MaterialProgressDrawable;->setProgressRotation(F)V

    .line 957
    move-object v15, v2

    move/from16 v16, v12

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 958
    return-void

    .line 918
    :cond_4
    move-object v15, v2

    iget v15, v15, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    goto/16 :goto_0

    .line 946
    :cond_5
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v15}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v15

    const/16 v16, 0xff

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 948
    move-object v15, v2

    invoke-direct {v15}, Landroid/support/v4/widget/SwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    goto :goto_1
.end method

.method private moveToStart(F)V
    .locals 7

    .prologue
    .line 1128
    move-object v0, p0

    move v1, p1

    const/4 v4, 0x0

    move v2, v4

    .line 1129
    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move v6, v1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    move v2, v4

    .line 1130
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v5}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    move v3, v4

    .line 1131
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 1132
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    .line 1175
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-static {v5}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v5

    move v2, v5

    .line 1176
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    move v3, v5

    .line 1177
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v5, v6, :cond_0

    .line 1180
    move v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 1181
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1183
    :cond_0
    return-void

    .line 1180
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private reset()V
    .locals 4

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 199
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->stop()V

    .line 200
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 201
    move-object v1, v0

    const/16 v2, 0xff

    invoke-direct {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 203
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v1, :cond_0

    .line 204
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 209
    :goto_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v2

    iput v2, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 210
    return-void

    .line 206
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    goto :goto_0
.end method

.method private setAnimationProgress(F)V
    .locals 5

    .prologue
    .line 438
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    move-object v2, v0

    move v3, v1

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 444
    :goto_0
    return-void

    .line 441
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 442
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private setColorViewAlpha(I)V
    .locals 4

    .prologue
    .line 227
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 228
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 229
    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 6

    .prologue
    .line 447
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 448
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    .line 449
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 450
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 451
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz v3, :cond_1

    .line 452
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private setTargetOffsetTopAndBottom(IZ)V
    .locals 5

    .prologue
    .line 1166
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v3}, Landroid/support/v4/widget/CircleImageView;->bringToFront()V

    .line 1167
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1168
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v4}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v4

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 1169
    move v3, v2

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 1170
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->invalidate()V

    .line 1172
    :cond_0
    return-void
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .locals 10

    .prologue
    .line 483
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 484
    const/4 v4, 0x0

    move-object v0, v4

    .line 498
    :goto_0
    return-object v0

    .line 486
    :cond_0
    new-instance v4, Landroid/support/v4/widget/SwipeRefreshLayout$4;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/widget/SwipeRefreshLayout$4;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V

    move-object v3, v4

    .line 493
    move-object v4, v3

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 495
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 496
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v4}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 497
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 498
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method private startDragging(F)V
    .locals 6

    .prologue
    .line 1073
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    sub-float/2addr v3, v4

    move v2, v3

    .line 1074
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v3, :cond_0

    .line 1075
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    .line 1076
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1077
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v4, 0x4c

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 1079
    :cond_0
    return-void
.end method

.method private startProgressAlphaMaxAnimation()V
    .locals 5

    .prologue
    .line 477
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v3

    const/16 v4, 0xff

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    .line 478
    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .locals 5

    .prologue
    .line 473
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v3

    const/16 v4, 0x4c

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 474
    return-void
.end method

.method private startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 7

    .prologue
    .line 460
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    new-instance v3, Landroid/support/v4/widget/SwipeRefreshLayout$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout$3;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v3, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 466
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 467
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 468
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 469
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 470
    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 8

    .prologue
    .line 1143
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 1144
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1145
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v4}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    .line 1149
    :goto_0
    move-object v3, v0

    new-instance v4, Landroid/support/v4/widget/SwipeRefreshLayout$8;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout$8;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 1157
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1158
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1159
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1161
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v3}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 1162
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1163
    return-void

    .line 1147
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getScaleX(Landroid/view/View;)F

    move-result v4

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    goto :goto_0
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 7

    .prologue
    .line 412
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 413
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 417
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 419
    :cond_0
    move-object v2, v0

    new-instance v3, Landroid/support/v4/widget/SwipeRefreshLayout$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout$2;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v3, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 425
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 426
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 427
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 429
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 430
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 431
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 5

    .prologue
    .line 660
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    if-eqz v2, :cond_0

    .line 661
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-interface {v2, v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;->canChildScrollUp(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/View;)Z

    move-result v2

    move v0, v2

    .line 673
    :goto_0
    return v0

    .line 663
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_6

    .line 664
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/AbsListView;

    if-eqz v2, :cond_3

    .line 665
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    move-object v1, v2

    .line 666
    move-object v2, v1

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    move-object v2, v1

    .line 667
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-gtz v2, :cond_1

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 668
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    move-object v3, v1

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v3

    if-ge v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 670
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-lez v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 673
    :cond_6
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 8

    .prologue
    .line 899
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 6

    .prologue
    .line 904
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 10

    .prologue
    .line 881
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 12

    .prologue
    .line 875
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v6

    move v0, v6

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 6

    .prologue
    .line 348
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-gez v3, :cond_0

    .line 349
    move v3, v2

    move v0, v3

    .line 358
    :goto_0
    return v0

    .line 350
    :cond_0
    move v3, v2

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1

    .line 352
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    move v0, v3

    goto :goto_0

    .line 353
    :cond_1
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-lt v3, v4, :cond_2

    .line 355
    move v3, v2

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_0

    .line 358
    :cond_2
    move v3, v2

    move v0, v3

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .prologue
    .line 809
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v1}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 2

    .prologue
    .line 652
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    move v0, v1

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 2

    .prologue
    .line 869
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 2

    .prologue
    .line 854
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isRefreshing()Z
    .locals 2

    .prologue
    .line 569
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    move v0, v1

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 223
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->reset()V

    .line 224
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 688
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 690
    move-object v5, v1

    invoke-static {v5}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v5

    move v2, v5

    .line 693
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v5, :cond_0

    move v5, v2

    if-nez v5, :cond_0

    .line 694
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 697
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v5, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v5, :cond_1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v5, :cond_2

    .line 700
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    .line 741
    :goto_0
    return v0

    .line 703
    :cond_2
    move v5, v2

    packed-switch v5, :pswitch_data_0

    .line 741
    :goto_1
    :pswitch_0
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    move v0, v5

    goto :goto_0

    .line 705
    :pswitch_1
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v7}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 706
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 707
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 709
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    move v3, v5

    .line 710
    move v5, v3

    if-gez v5, :cond_3

    .line 711
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 713
    :cond_3
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    .line 714
    goto :goto_1

    .line 717
    :pswitch_2
    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 718
    sget-object v5, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 719
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 722
    :cond_4
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    move v3, v5

    .line 723
    move v5, v3

    if-gez v5, :cond_5

    .line 724
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 726
    :cond_5
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    move v4, v5

    .line 727
    move-object v5, v0

    move v6, v4

    invoke-direct {v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->startDragging(F)V

    .line 728
    goto :goto_1

    .line 731
    :pswitch_3
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 732
    goto :goto_1

    .line 736
    :pswitch_4
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 737
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_1

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 22

    .prologue
    .line 597
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v16

    move/from16 v7, v16

    .line 598
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v16

    move/from16 v8, v16

    .line 599
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v16

    if-nez v16, :cond_0

    .line 618
    :goto_0
    return-void

    .line 602
    :cond_0
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 603
    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v16}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 605
    :cond_1
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 606
    goto :goto_0

    .line 608
    :cond_2
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v9, v16

    .line 609
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v16

    move/from16 v10, v16

    .line 610
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v16

    move/from16 v11, v16

    .line 611
    move/from16 v16, v7

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v12, v16

    .line 612
    move/from16 v16, v8

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v13, v16

    .line 613
    move-object/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v10

    move/from16 v20, v12

    add-int v19, v19, v20

    move/from16 v20, v11

    move/from16 v21, v13

    add-int v20, v20, v21

    invoke-virtual/range {v16 .. v20}, Landroid/view/View;->layout(IIII)V

    .line 614
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/widget/CircleImageView;->getMeasuredWidth()I

    move-result v16

    move/from16 v14, v16

    .line 615
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v16

    move/from16 v15, v16

    .line 616
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object/from16 v16, v0

    move/from16 v17, v7

    const/16 v18, 0x2

    div-int/lit8 v17, v17, 0x2

    move/from16 v18, v14

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move/from16 v18, v0

    move/from16 v19, v7

    const/16 v20, 0x2

    div-int/lit8 v19, v19, 0x2

    move/from16 v20, v14

    const/16 v21, 0x2

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move/from16 v20, v0

    move/from16 v21, v15

    add-int v20, v20, v21

    invoke-virtual/range {v16 .. v20}, Landroid/support/v4/widget/CircleImageView;->layout(IIII)V

    .line 618
    goto/16 :goto_0
.end method

.method public onMeasure(II)V
    .locals 8

    .prologue
    .line 622
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 623
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v4, :cond_0

    .line 624
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 626
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v4, :cond_1

    .line 643
    :goto_0
    return-void

    .line 629
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    move-object v5, v0

    .line 630
    invoke-virtual {v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    .line 629
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move-object v6, v0

    .line 632
    invoke-virtual {v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    .line 631
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 629
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 633
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    const/high16 v7, 0x40000000    # 2.0f

    .line 634
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 633
    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/CircleImageView;->measure(II)V

    .line 635
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 637
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 638
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    if-ne v4, v5, :cond_3

    .line 639
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 643
    :cond_2
    goto :goto_0

    .line 637
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 9

    .prologue
    .line 894
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v2

    move v7, v3

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 7

    .prologue
    .line 888
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 13

    .prologue
    .line 779
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move v6, v3

    if-lez v6, :cond_0

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 780
    move v6, v3

    int-to-float v6, v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 781
    move-object v6, v4

    const/4 v7, 0x1

    move v8, v3

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    float-to-int v9, v9

    sub-int/2addr v8, v9

    aput v8, v6, v7

    .line 782
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 787
    :goto_0
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {v6, v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 794
    :cond_0
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v6, :cond_1

    move v6, v3

    if-lez v6, :cond_1

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    move v6, v3

    move-object v7, v4

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    .line 795
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-lez v6, :cond_1

    .line 796
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 800
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    move-object v5, v6

    .line 801
    move-object v6, v0

    move v7, v2

    move-object v8, v4

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int/2addr v7, v8

    move v8, v3

    move-object v9, v4

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v8, v9

    move-object v9, v5

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 802
    move-object v6, v4

    const/4 v7, 0x0

    move-object v11, v6

    move v12, v7

    move-object v6, v11

    move v7, v12

    move-object v8, v11

    move v9, v12

    aget v8, v8, v9

    move-object v9, v5

    const/4 v10, 0x0

    aget v9, v9, v10

    add-int/2addr v8, v9

    aput v8, v6, v7

    .line 803
    move-object v6, v4

    const/4 v7, 0x1

    move-object v11, v6

    move v12, v7

    move-object v6, v11

    move v7, v12

    move-object v8, v11

    move v9, v12

    aget v8, v8, v9

    move-object v9, v5

    const/4 v10, 0x1

    aget v9, v9, v10

    add-int/2addr v8, v9

    aput v8, v6, v7

    .line 805
    :cond_2
    return-void

    .line 784
    :cond_3
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    move v8, v3

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 785
    move-object v6, v4

    const/4 v7, 0x1

    move v8, v3

    aput v8, v6, v7

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 14

    .prologue
    .line 830
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v0

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    invoke-virtual/range {v7 .. v12}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    move-result v7

    .line 838
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v7, v8

    move v6, v7

    .line 839
    move v7, v6

    if-gez v7, :cond_0

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v7

    if-nez v7, :cond_0

    .line 840
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    move v9, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 841
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {v7, v8}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 843
    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 8

    .prologue
    .line 768
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 770
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    move-result v4

    .line 771
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 772
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 773
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 761
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v4, :cond_0

    move v4, v3

    const/4 v5, 0x2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 814
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 815
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 818
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 819
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->finishSpinner(F)V

    .line 820
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 823
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->stopNestedScroll()V

    .line 824
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    .line 995
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-static {v6}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v6

    move v2, v6

    .line 996
    const/4 v6, -0x1

    move v3, v6

    .line 998
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v6, :cond_0

    move v6, v2

    if-nez v6, :cond_0

    .line 999
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 1002
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v6, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v6, :cond_2

    .line 1005
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    .line 1069
    :goto_0
    return v0

    .line 1008
    :cond_2
    move v6, v2

    packed-switch v6, :pswitch_data_0

    .line 1069
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 1010
    :pswitch_1
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1011
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1012
    goto :goto_1

    .line 1015
    :pswitch_2
    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    move v3, v6

    .line 1016
    move v6, v3

    if-gez v6, :cond_4

    .line 1017
    sget-object v6, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1018
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1021
    :cond_4
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    move v4, v6

    .line 1022
    move-object v6, v0

    move v7, v4

    invoke-direct {v6, v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->startDragging(F)V

    .line 1024
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v6, :cond_3

    .line 1025
    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    move v5, v6

    .line 1026
    move v6, v5

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 1027
    move-object v6, v0

    move v7, v5

    invoke-direct {v6, v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 1031
    goto :goto_1

    .line 1029
    :cond_5
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1035
    :pswitch_3
    move-object v6, v1

    invoke-static {v6}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v6

    move v3, v6

    .line 1036
    move v6, v3

    if-gez v6, :cond_6

    .line 1037
    sget-object v6, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1039
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1041
    :cond_6
    move-object v6, v0

    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1042
    goto :goto_1

    .line 1046
    :pswitch_4
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1047
    goto :goto_1

    .line 1050
    :pswitch_5
    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    move v3, v6

    .line 1051
    move v6, v3

    if-gez v6, :cond_7

    .line 1052
    sget-object v6, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1053
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 1056
    :cond_7
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v6, :cond_8

    .line 1057
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    move v4, v6

    .line 1058
    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    move v5, v6

    .line 1059
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1060
    move-object v6, v0

    move v7, v5

    invoke-direct {v6, v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->finishSpinner(F)V

    .line 1062
    :cond_8
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1063
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 1066
    :pswitch_6
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 1008
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    .prologue
    .line 749
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/AbsListView;

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 750
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 755
    :cond_1
    :goto_0
    return-void

    .line 753
    :cond_2
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public varargs setColorScheme([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 533
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 534
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 560
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 561
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 562
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 10
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 544
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v2, v5

    .line 545
    move-object v5, v1

    array-length v5, v5

    new-array v5, v5, [I

    move-object v3, v5

    .line 546
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move-object v6, v1

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 547
    move-object v5, v3

    move v6, v4

    move-object v7, v2

    move-object v8, v1

    move v9, v4

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v5, v6

    .line 546
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 549
    :cond_0
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 550
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 4

    .prologue
    .line 592
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    int-to-float v3, v3

    iput v3, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 593
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .prologue
    .line 214
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 215
    move v2, v1

    if-nez v2, :cond_0

    .line 216
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->reset()V

    .line 218
    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 4

    .prologue
    .line 849
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 850
    return-void
.end method

.method public setOnChildScrollUpCallback(Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;)V
    .locals 4
    .param p1    # Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 683
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    .line 684
    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 4

    .prologue
    .line 376
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    .line 377
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 506
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 507
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 524
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/CircleImageView;->setBackgroundColor(I)V

    .line 525
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 526
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 515
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 516
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 5

    .prologue
    .line 273
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v2

    int-to-float v4, v4

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 274
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    .line 275
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v3}, Landroid/support/v4/widget/CircleImageView;->invalidate()V

    .line 276
    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 6

    .prologue
    .line 251
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    .line 252
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 253
    move-object v4, v0

    move v5, v3

    int-to-float v5, v5

    iput v5, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 254
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 255
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->reset()V

    .line 256
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 257
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 6

    .prologue
    .line 393
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    move v4, v1

    if-eq v3, v4, :cond_1

    .line 395
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 396
    const/4 v3, 0x0

    move v2, v3

    .line 397
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v3, :cond_0

    .line 398
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    move v2, v3

    .line 402
    :goto_0
    move-object v3, v0

    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 404
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    .line 405
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 409
    :goto_1
    return-void

    .line 400
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    float-to-int v3, v3

    move v2, v3

    goto :goto_0

    .line 407
    :cond_1
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 6

    .prologue
    .line 282
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_0

    move v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 297
    :goto_0
    return-void

    .line 285
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    move-object v2, v3

    .line 286
    move v3, v1

    if-nez v3, :cond_1

    .line 287
    move-object v3, v0

    const/high16 v4, 0x42600000    # 56.0f

    move-object v5, v2

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 294
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateSizes(I)V

    .line 296
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    goto :goto_0

    .line 289
    :cond_1
    move-object v3, v0

    const/high16 v4, 0x42200000    # 40.0f

    move-object v5, v2

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    goto :goto_1
.end method

.method public startNestedScroll(I)Z
    .locals 4

    .prologue
    .line 859
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public stopNestedScroll()V
    .locals 2

    .prologue
    .line 864
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 865
    return-void
.end method
