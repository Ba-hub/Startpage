.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v4/view/ScrollingView;
.implements Landroid/support/v4/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimator;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Landroid/support/v7/widget/RecyclerView$OnFlingListener;,
        Landroid/support/v7/widget/RecyclerView$State;,
        Landroid/support/v7/widget/RecyclerView$SavedState;,
        Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;,
        Landroid/support/v7/widget/RecyclerView$SmoothScroller;,
        Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;,
        Landroid/support/v7/widget/RecyclerView$LayoutParams;,
        Landroid/support/v7/widget/RecyclerView$ViewHolder;,
        Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Landroid/support/v7/widget/RecyclerView$RecyclerListener;,
        Landroid/support/v7/widget/RecyclerView$OnScrollListener;,
        Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;,
        Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;,
        Landroid/support/v7/widget/RecyclerView$ItemDecoration;,
        Landroid/support/v7/widget/RecyclerView$LayoutManager;,
        Landroid/support/v7/widget/RecyclerView$Adapter;,
        Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;,
        Landroid/support/v7/widget/RecyclerView$Recycler;,
        Landroid/support/v7/widget/RecyclerView$RecycledViewPool;,
        Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;,
        Landroid/support/v7/widget/RecyclerView$ViewFlinger;
    }
.end annotation


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field private static final CLIP_TO_PADDING_ATTR:[I

.field private static final DEBUG:Z = false

.field static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field private static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field private static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field private static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final VERTICAL:I = 0x1

.field private static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

.field private mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Landroid/support/v7/widget/ChildHelper;

.field private mClipToPadding:Z

.field private mDataSetHasChangedAfterLayout:Z

.field private mDispatchScrollCounter:I

.field private mEatRequestLayout:I

.field private mEatenAccessibilityChangeFlags:I

.field mFirstLayoutComplete:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mIsAttached:Z

.field mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field private final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field private mLayoutRequestEaten:Z

.field private mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

.field private final mPostUpdatesOnAnimation:Z

.field private mPostedAnimatorRunner:Z

.field private mPreserveFocusAfterLayout:Z

.field final mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field private mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

.field private mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mScrollConsumed:[I

.field private mScrollFactor:F

.field private mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field final mState:Landroid/support/v7/widget/RecyclerView$State;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mTouchSlop:I

.field private final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x1010436

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    .line 159
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100eb

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 253
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 439
    new-instance v0, Landroid/support/v7/widget/RecyclerView$3;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$3;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void

    .line 168
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 175
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 486
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 487
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 490
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 491
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 494
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move v14, v3

    invoke-direct {v11, v12, v13, v14}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 256
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$1;)V

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    .line 258
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/RecyclerView$Recycler;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 275
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/ViewInfoStore;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Landroid/support/v7/widget/ViewInfoStore;-><init>()V

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    .line 289
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/RecyclerView$1;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/RecyclerView$1;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 309
    move-object v11, v0

    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 310
    move-object v11, v0

    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 311
    move-object v11, v0

    new-instance v12, Landroid/graphics/RectF;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 315
    move-object v11, v0

    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 316
    move-object v11, v0

    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 324
    move-object v11, v0

    const/4 v12, 0x0

    iput v12, v11, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 341
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 351
    move-object v11, v0

    const/4 v12, 0x0

    iput v12, v11, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 360
    move-object v11, v0

    const/4 v12, 0x0

    iput v12, v11, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 364
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/DefaultItemAnimator;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 389
    move-object v11, v0

    const/4 v12, 0x0

    iput v12, v11, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    .line 390
    move-object v11, v0

    const/4 v12, -0x1

    iput v12, v11, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 401
    move-object v11, v0

    const/4 v12, 0x1

    iput v12, v11, Landroid/support/v7/widget/RecyclerView;->mScrollFactor:F

    .line 402
    move-object v11, v0

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 404
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    .line 406
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Landroid/support/v7/widget/RecyclerView$State;-><init>()V

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 412
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 413
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    .line 414
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$1;)V

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 416
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 422
    move-object v11, v0

    const/4 v12, 0x2

    new-array v12, v12, [I

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 425
    move-object v11, v0

    const/4 v12, 0x2

    new-array v12, v12, [I

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    .line 426
    move-object v11, v0

    const/4 v12, 0x2

    new-array v12, v12, [I

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    .line 427
    move-object v11, v0

    const/4 v12, 0x2

    new-array v12, v12, [I

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    .line 429
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/RecyclerView$2;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/RecyclerView$2;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 450
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/RecyclerView$4;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/RecyclerView$4;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

    .line 495
    move-object v11, v2

    if-eqz v11, :cond_3

    .line 496
    move-object v11, v1

    move-object v12, v2

    sget-object v13, Landroid/support/v7/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    move v14, v3

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    move-object v4, v11

    .line 497
    move-object v11, v0

    move-object v12, v4

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    iput-boolean v12, v11, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 498
    move-object v11, v4

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 502
    :goto_0
    move-object v11, v0

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->setScrollContainer(Z)V

    .line 503
    move-object v11, v0

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 504
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    move v4, v11

    .line 505
    move-object v11, v0

    move v12, v4

    const/16 v13, 0x10

    if-lt v12, v13, :cond_4

    const/4 v12, 0x1

    :goto_1
    iput-boolean v12, v11, Landroid/support/v7/widget/RecyclerView;->mPostUpdatesOnAnimation:Z

    .line 507
    move-object v11, v1

    invoke-static {v11}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    move-object v5, v11

    .line 508
    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v12

    iput v12, v11, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 509
    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v12

    iput v12, v11, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    .line 510
    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v12

    iput v12, v11, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 511
    move-object v11, v0

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 513
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 514
    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->initAdapterManager()V

    .line 515
    move-object v11, v0

    invoke-direct {v11}, Landroid/support/v7/widget/RecyclerView;->initChildrenHelper()V

    .line 517
    move-object v11, v0

    invoke-static {v11}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v11

    if-nez v11, :cond_0

    .line 519
    move-object v11, v0

    const/4 v12, 0x1

    invoke-static {v11, v12}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 522
    :cond_0
    move-object v11, v0

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "accessibility"

    .line 523
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityManager;

    iput-object v12, v11, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 524
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    .line 527
    const/4 v11, 0x1

    move v6, v11

    .line 529
    move-object v11, v2

    if-eqz v11, :cond_6

    .line 530
    const/4 v11, 0x0

    move v7, v11

    .line 531
    move-object v11, v1

    move-object v12, v2

    sget-object v13, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    move v14, v3

    move v15, v7

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    move-object v8, v11

    .line 533
    move-object v11, v8

    sget v12, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_layoutManager:I

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 534
    move-object v11, v8

    sget v12, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_android_descendantFocusability:I

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    move v10, v11

    .line 536
    move v11, v10

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 537
    move-object v11, v0

    const/high16 v12, 0x40000

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 539
    :cond_1
    move-object v11, v8

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 540
    move-object v11, v0

    move-object v12, v1

    move-object v13, v9

    move-object v14, v2

    move v15, v3

    move/from16 v16, v7

    invoke-direct/range {v11 .. v16}, Landroid/support/v7/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 542
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v11, v12, :cond_2

    .line 543
    move-object v11, v1

    move-object v12, v2

    sget-object v13, Landroid/support/v7/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    move v14, v3

    move v15, v7

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    move-object v8, v11

    .line 545
    move-object v11, v8

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    move v6, v11

    .line 546
    move-object v11, v8

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 553
    :cond_2
    :goto_3
    move-object v11, v0

    move v12, v6

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 554
    return-void

    .line 500
    :cond_3
    move-object v11, v0

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    goto/16 :goto_0

    .line 505
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 511
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 549
    :cond_6
    move-object v11, v0

    const/high16 v12, 0x40000

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    goto :goto_3
.end method

.method static synthetic access$100(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 8

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$3000()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$302(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$3200(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$3300(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    return-void
.end method

.method static synthetic access$3400(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$3600(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$3700(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 6

    .prologue
    .line 150
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    return-void
.end method

.method static synthetic access$3800(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$3900(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    return-void
.end method

.method static synthetic access$4000(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    return-void
.end method

.method static synthetic access$4100(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mPostUpdatesOnAnimation:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$4200(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$4300(Landroid/support/v7/widget/RecyclerView;)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$4402(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$4500()Z
    .locals 1

    .prologue
    .line 150
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    return v0
.end method

.method static synthetic access$4600(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 6

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method static synthetic access$4700(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$5100(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic access$5200(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$RecyclerListener;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$5300(Landroid/support/v7/widget/RecyclerView;)Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$5400(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$5500(Landroid/support/v7/widget/RecyclerView;)Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$5600(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 6

    .prologue
    .line 150
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$5700(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView;->getAdapterPositionFor(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic access$5900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewFlinger;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$602(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$6200(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    return-void
.end method

.method static synthetic access$6400(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 8

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView;->animateDisappearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 8

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView;->animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    move v0, v1

    return v0
.end method

.method private addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 9

    .prologue
    .line 1173
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, v4

    .line 1174
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v5, v0

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 1175
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1176
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1178
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v5, v2

    const/4 v6, -0x1

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1184
    :goto_1
    return-void

    .line 1174
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1179
    :cond_1
    move v4, v3

    if-nez v4, :cond_2

    .line 1180
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    .line 1182
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->hide(Landroid/view/View;)V

    goto :goto_1
.end method

.method private animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 8
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3527
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3528
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3529
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 3531
    :cond_0
    return-void
.end method

.method private animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .locals 12
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3545
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3546
    move v7, v5

    if-eqz v7, :cond_0

    .line 3547
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3549
    :cond_0
    move-object v7, v1

    move-object v8, v2

    if-eq v7, v8, :cond_2

    .line 3550
    move v7, v6

    if-eqz v7, :cond_1

    .line 3551
    move-object v7, v0

    move-object v8, v2

    invoke-direct {v7, v8}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3553
    :cond_1
    move-object v7, v1

    move-object v8, v2

    iput-object v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 3555
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3556
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3557
    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3558
    move-object v7, v2

    move-object v8, v1

    iput-object v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 3560
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3561
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 3563
    :cond_3
    return-void
.end method

.method private animateDisappearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 8
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3535
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3536
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3537
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateDisappearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3538
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 3540
    :cond_0
    return-void
.end method

.method private canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    .prologue
    .line 3838
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v3, v1

    move-object v4, v1

    .line 3839
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v4

    .line 3838
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private cancelTouch()V
    .locals 3

    .prologue
    .line 2753
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    .line 2754
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2755
    return-void
.end method

.method private considerReleasingGlowsOnScroll(II)V
    .locals 6

    .prologue
    .line 2036
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v4, 0x0

    move v3, v4

    .line 2037
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v1

    if-lez v4, :cond_0

    .line 2038
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v4

    move v3, v4

    .line 2040
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v1

    if-gez v4, :cond_1

    .line 2041
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v5

    or-int/2addr v4, v5

    move v3, v4

    .line 2043
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    if-lez v4, :cond_2

    .line 2044
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v5

    or-int/2addr v4, v5

    move v3, v4

    .line 2046
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v2

    if-gez v4, :cond_3

    .line 2047
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v5

    or-int/2addr v4, v5

    move v3, v4

    .line 2049
    :cond_3
    move v4, v3

    if-eqz v4, :cond_4

    .line 2050
    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2052
    :cond_4
    return-void
.end method

.method private consumePendingUpdateOperations()V
    .locals 3

    .prologue
    .line 1520
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v1, :cond_1

    .line 1521
    :cond_0
    const-string v1, "RV FullInvalidate"

    invoke-static {v1}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1522
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1523
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 1552
    :goto_0
    return-void

    .line 1526
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1527
    goto :goto_0

    .line 1532
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    const/16 v2, 0xb

    .line 1533
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1534
    const-string v1, "RV PartialInvalidate"

    invoke-static {v1}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1535
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1536
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->preProcess()V

    .line 1537
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-nez v1, :cond_3

    .line 1538
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->hasUpdatedView()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1539
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1545
    :cond_3
    :goto_1
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1546
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 1552
    :cond_4
    :goto_2
    goto :goto_0

    .line 1542
    :cond_5
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->consumePostponedUpdates()V

    goto :goto_1

    .line 1547
    :cond_6
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1548
    const-string v1, "RV FullInvalidate"

    invoke-static {v1}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1549
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1550
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_2
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 17

    .prologue
    .line 579
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v12, v2

    if-eqz v12, :cond_0

    .line 580
    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    move-object v2, v12

    .line 581
    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_0

    .line 582
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    invoke-direct {v12, v13, v14}, Landroid/support/v7/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v2, v12

    .line 585
    move-object v12, v0

    :try_start_0
    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 587
    move-object v12, v0

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object v6, v12

    .line 591
    :goto_0
    move-object v12, v6

    move-object v13, v2

    .line 592
    invoke-virtual {v12, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-class v13, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v12, v13}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v12

    move-object v7, v12

    .line 594
    const/4 v12, 0x0

    move-object v9, v12

    .line 596
    move-object v12, v7

    :try_start_1
    sget-object v13, Landroid/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 597
    invoke-virtual {v12, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    move-object v8, v12

    .line 598
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move-object v15, v1

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x1

    move-object v15, v3

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x2

    move v15, v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x3

    move v15, v5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v9, v12

    .line 608
    :goto_1
    move-object v12, v8

    const/4 v13, 0x1

    :try_start_2
    invoke-virtual {v12, v13}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 609
    move-object v12, v0

    move-object v13, v8

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 628
    :cond_0
    return-void

    .line 589
    :cond_1
    move-object v12, v1

    invoke-virtual {v12}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v12

    move-object v6, v12

    goto :goto_0

    .line 599
    :catch_0
    move-exception v12

    move-object v10, v12

    .line 601
    move-object v12, v7

    const/4 v13, 0x0

    :try_start_3
    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v12

    move-object v8, v12

    .line 606
    goto :goto_1

    .line 602
    :catch_1
    move-exception v12

    move-object v11, v12

    .line 603
    move-object v12, v11

    move-object v13, v10

    :try_start_4
    invoke-virtual {v12, v13}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v12

    .line 604
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": Error creating LayoutManager "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v11

    invoke-direct {v13, v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    .line 610
    :catch_2
    move-exception v12

    move-object v6, v12

    .line 611
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": Unable to find LayoutManager "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v6

    invoke-direct {v13, v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 613
    :catch_3
    move-exception v12

    move-object v6, v12

    .line 614
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v6

    invoke-direct {v13, v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 616
    :catch_4
    move-exception v12

    move-object v6, v12

    .line 617
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v6

    invoke-direct {v13, v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 619
    :catch_5
    move-exception v12

    move-object v6, v12

    .line 620
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": Cannot access non-public constructor "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v6

    invoke-direct {v13, v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 622
    :catch_6
    move-exception v12

    move-object v6, v12

    .line 623
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": Class is not a LayoutManager "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v6

    invoke-direct {v13, v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
.end method

.method private didChildRangeChange(II)Z
    .locals 5

    .prologue
    .line 3497
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {v3, v4}, Landroid/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3498
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move v4, v1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move v4, v2

    if-eq v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private dispatchChildAttached(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 6298
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    move-object v2, v5

    .line 6299
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 6300
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v5, :cond_0

    move-object v5, v2

    if-eqz v5, :cond_0

    .line 6301
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6303
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 6304
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .line 6305
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_0
    move v5, v4

    if-ltz v5, :cond_1

    .line 6306
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 6305
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 6309
    :cond_1
    return-void
.end method

.method private dispatchChildDetached(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 6284
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    move-object v2, v5

    .line 6285
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 6286
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v5, :cond_0

    move-object v5, v2

    if-eqz v5, :cond_0

    .line 6287
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6289
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 6290
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .line 6291
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_0
    move v5, v4

    if-ltz v5, :cond_1

    .line 6292
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    .line 6291
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 6295
    :cond_1
    return-void
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 5

    .prologue
    .line 2960
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    move v1, v3

    .line 2961
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 2962
    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2963
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    move-object v2, v3

    .line 2964
    move-object v3, v2

    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 2965
    move-object v3, v2

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 2966
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2968
    :cond_0
    return-void
.end method

.method private dispatchLayoutStep1()V
    .locals 15

    .prologue
    .line 3215
    move-object v0, p0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3216
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/support/v7/widget/RecyclerView$State;->access$2202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v8

    .line 3217
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3218
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v8}, Landroid/support/v7/widget/ViewInfoStore;->clear()V

    .line 3219
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3220
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/RecyclerView;->saveFocusInfo()V

    .line 3221
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3222
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView$State;->access$2500(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    invoke-static {v8, v9}, Landroid/support/v7/widget/RecyclerView$State;->access$2702(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v8

    .line 3223
    move-object v8, v0

    move-object v9, v0

    const/4 v10, 0x0

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    iput-boolean v11, v10, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v9, v8, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 3224
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView$State;->access$2300(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v9

    invoke-static {v8, v9}, Landroid/support/v7/widget/RecyclerView$State;->access$2402(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v8

    .line 3225
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    iput v9, v8, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 3226
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {v8, v9}, Landroid/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3228
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView$State;->access$2500(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3230
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v8

    move v1, v8

    .line 3231
    const/4 v8, 0x0

    move v2, v8

    :goto_1
    move v8, v2

    move v9, v1

    if-ge v8, v9, :cond_3

    .line 3232
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v9, v2

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v3, v8

    .line 3233
    move-object v8, v3

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v3

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v8

    if-nez v8, :cond_2

    .line 3231
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3222
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 3236
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v10, v3

    move-object v11, v3

    .line 3238
    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v11

    move-object v12, v3

    .line 3239
    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v12

    .line 3237
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v8

    move-object v4, v8

    .line 3240
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/ViewInfoStore;->addToPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3241
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView$State;->access$2700(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v3

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v3

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v3

    .line 3242
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v3

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3243
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v8

    move-wide v5, v8

    .line 3251
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-wide v9, v5

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v7/widget/ViewInfoStore;->addToOldChangeHolders(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_2

    .line 3255
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView$State;->access$2300(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3262
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->saveOldPositions()V

    .line 3263
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView$State;->access$1800(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v8

    move v1, v8

    .line 3264
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/support/v7/widget/RecyclerView$State;->access$1802(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v8

    .line 3266
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3267
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move v9, v1

    invoke-static {v8, v9}, Landroid/support/v7/widget/RecyclerView$State;->access$1802(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v8

    .line 3269
    const/4 v8, 0x0

    move v2, v8

    :goto_3
    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 3270
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v9, v2

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v3, v8

    .line 3271
    move-object v8, v3

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v4, v8

    .line 3272
    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3269
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3275
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ViewInfoStore;->isInPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 3276
    move-object v8, v4

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v8

    move v5, v8

    .line 3277
    move-object v8, v4

    const/16 v9, 0x2000

    .line 3278
    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v8

    move v6, v8

    .line 3279
    move v8, v6

    if-nez v8, :cond_6

    .line 3280
    move v8, v5

    const/16 v9, 0x1000

    or-int/lit16 v8, v8, 0x1000

    move v5, v8

    .line 3282
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v10, v4

    move v11, v5

    move-object v12, v4

    .line 3283
    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v12

    .line 3282
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v8

    move-object v7, v8

    .line 3284
    move v8, v6

    if-eqz v8, :cond_7

    .line 3285
    move-object v8, v0

    move-object v9, v4

    move-object v10, v7

    invoke-direct {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    .line 3287
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v9, v4

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    .line 3292
    :cond_8
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    .line 3296
    :goto_5
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3297
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3298
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/support/v7/widget/RecyclerView$State;->access$2102(Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v8

    .line 3299
    return-void

    .line 3294
    :cond_9
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    goto :goto_5
.end method

.method private dispatchLayoutStep2()V
    .locals 4

    .prologue
    .line 3306
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3307
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3308
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3309
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3310
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 3311
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView$State;->access$1702(Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    .line 3314
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView$State;->access$2402(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v1

    .line 3315
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3317
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView$State;->access$1802(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v1

    .line 3318
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 3321
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView$State;->access$2500(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView$State;->access$2502(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v1

    .line 3322
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView$State;->access$2102(Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    .line 3323
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3324
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3325
    return-void

    .line 3321
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private dispatchLayoutStep3()V
    .locals 18

    .prologue
    .line 3332
    move-object/from16 v0, p0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3333
    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3334
    move-object v11, v0

    invoke-direct {v11}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3335
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Landroid/support/v7/widget/RecyclerView$State;->access$2102(Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v11

    .line 3336
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView$State;->access$2500(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 3340
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v11}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v1, v11

    :goto_0
    move v11, v1

    if-ltz v11, :cond_4

    .line 3341
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v12, v1

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v11

    move-object v2, v11

    .line 3342
    move-object v11, v2

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3340
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3345
    :cond_0
    move-object v11, v0

    move-object v12, v2

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v11

    move-wide v3, v11

    .line 3346
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v13, v2

    .line 3347
    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v11

    move-object v5, v11

    .line 3348
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-wide v12, v3

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/ViewInfoStore;->getFromOldChangeHolders(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v11

    move-object v6, v11

    .line 3349
    move-object v11, v6

    if-eqz v11, :cond_3

    move-object v11, v6

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-nez v11, :cond_3

    .line 3360
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v12, v6

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/ViewInfoStore;->isDisappearing(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v11

    move v7, v11

    .line 3362
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v12, v2

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/ViewInfoStore;->isDisappearing(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v11

    move v8, v11

    .line 3363
    move v11, v7

    if-eqz v11, :cond_1

    move-object v11, v6

    move-object v12, v2

    if-ne v11, v12, :cond_1

    .line 3365
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v12, v2

    move-object v13, v5

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/ViewInfoStore;->addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3379
    :goto_2
    goto :goto_1

    .line 3367
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v12, v6

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/ViewInfoStore;->popFromPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v11

    move-object v9, v11

    .line 3370
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v12, v2

    move-object v13, v5

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/ViewInfoStore;->addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3371
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v12, v2

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/ViewInfoStore;->popFromPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v11

    move-object v10, v11

    .line 3372
    move-object v11, v9

    if-nez v11, :cond_2

    .line 3373
    move-object v11, v0

    move-wide v12, v3

    move-object v14, v2

    move-object v15, v6

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/support/v7/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLandroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_2

    .line 3375
    :cond_2
    move-object v11, v0

    move-object v12, v6

    move-object v13, v2

    move-object v14, v9

    move-object v15, v10

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v11 .. v17}, Landroid/support/v7/widget/RecyclerView;->animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    goto :goto_2

    .line 3380
    :cond_3
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v12, v2

    move-object v13, v5

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/ViewInfoStore;->addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto/16 :goto_1

    .line 3385
    :cond_4
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/ViewInfoStore;->process(Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;)V

    .line 3388
    :cond_5
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 3389
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v12, v12, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    invoke-static {v11, v12}, Landroid/support/v7/widget/RecyclerView$State;->access$2802(Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v11

    .line 3390
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3391
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/support/v7/widget/RecyclerView$State;->access$2502(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v11

    .line 3393
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/support/v7/widget/RecyclerView$State;->access$2302(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v11

    .line 3394
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->access$2602(Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)Z

    move-result v11

    .line 3395
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView$Recycler;->access$2900(Landroid/support/v7/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 3396
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView$Recycler;->access$2900(Landroid/support/v7/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 3398
    :cond_6
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3399
    move-object v11, v0

    invoke-direct {v11}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3400
    move-object v11, v0

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3401
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v11}, Landroid/support/v7/widget/ViewInfoStore;->clear()V

    .line 3402
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    invoke-direct {v11, v12, v13}, Landroid/support/v7/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 3403
    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 3405
    :cond_7
    move-object v11, v0

    invoke-direct {v11}, Landroid/support/v7/widget/RecyclerView;->recoverFocusFromState()V

    .line 3406
    move-object v11, v0

    invoke-direct {v11}, Landroid/support/v7/widget/RecyclerView;->resetFocusInfo()V

    .line 3407
    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    .line 2458
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    move v2, v6

    .line 2459
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    if-eqz v6, :cond_0

    .line 2460
    move v6, v2

    if-nez v6, :cond_1

    .line 2462
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2475
    :cond_0
    move v6, v2

    if-eqz v6, :cond_5

    .line 2476
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 2477
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_5

    .line 2478
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    move-object v5, v6

    .line 2479
    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2480
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2481
    const/4 v6, 0x1

    move v0, v6

    .line 2485
    :goto_1
    return v0

    .line 2464
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    move-object v7, v0

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 2465
    move v6, v2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    move v6, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 2467
    :cond_2
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2469
    :cond_3
    const/4 v6, 0x1

    move v0, v6

    goto :goto_1

    .line 2477
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2485
    :cond_5
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    .line 2441
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    move v2, v6

    .line 2442
    move v6, v2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    move v6, v2

    if-nez v6, :cond_1

    .line 2443
    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2446
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 2447
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_3

    .line 2448
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    move-object v5, v6

    .line 2449
    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    .line 2450
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2451
    const/4 v6, 0x1

    move v0, v6

    .line 2454
    :goto_1
    return v0

    .line 2447
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2454
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 11

    .prologue
    .line 3471
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v8

    move v2, v8

    .line 3472
    move v8, v2

    if-nez v8, :cond_0

    .line 3473
    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v8, v9

    .line 3474
    move-object v8, v1

    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v8, v9

    .line 3494
    :goto_0
    return-void

    .line 3477
    :cond_0
    const v8, 0x7fffffff

    move v3, v8

    .line 3478
    const/high16 v8, -0x80000000

    move v4, v8

    .line 3479
    const/4 v8, 0x0

    move v5, v8

    :goto_1
    move v8, v5

    move v9, v2

    if-ge v8, v9, :cond_4

    .line 3480
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v6, v8

    .line 3481
    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3479
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3484
    :cond_2
    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v8

    move v7, v8

    .line 3485
    move v8, v7

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 3486
    move v8, v7

    move v3, v8

    .line 3488
    :cond_3
    move v8, v7

    move v9, v4

    if-le v8, v9, :cond_1

    .line 3489
    move v8, v7

    move v4, v8

    goto :goto_2

    .line 3492
    :cond_4
    move-object v8, v1

    const/4 v9, 0x0

    move v10, v3

    aput v10, v8, v9

    .line 3493
    move-object v8, v1

    const/4 v9, 0x1

    move v10, v4

    aput v10, v8, v9

    .line 3494
    goto :goto_0
.end method

.method private getAdapterPositionFor(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4

    .prologue
    .line 9799
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/16 v3, 0x20c

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    .line 9801
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9802
    :cond_0
    const/4 v2, -0x1

    move v0, v2

    .line 9804
    :goto_0
    return v0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .prologue
    .line 3976
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    .line 3977
    const/4 v1, 0x0

    move-object v0, v1

    .line 3979
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v0, v1

    goto :goto_0
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .locals 6

    .prologue
    .line 3196
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    move v2, v4

    .line 3197
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3198
    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    move-object v1, v4

    .line 3199
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    move v3, v4

    .line 3200
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 3201
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    move v2, v4

    .line 3203
    :cond_0
    goto :goto_0

    .line 3204
    :cond_1
    move v4, v2

    move v0, v4

    return v0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 631
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_0

    .line 632
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 637
    :goto_0
    return-object v0

    .line 634
    :cond_0
    move-object v3, v2

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 635
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 637
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private getScrollFactor()F
    .locals 7

    .prologue
    .line 2808
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView;->mScrollFactor:F

    const/4 v3, 0x1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 2809
    new-instance v2, Landroid/util/TypedValue;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    move-object v1, v2

    .line 2810
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2812
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    .line 2813
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2812
    invoke-virtual {v3, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/RecyclerView;->mScrollFactor:F

    .line 2818
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView;->mScrollFactor:F

    move v0, v2

    :goto_0
    return v0

    .line 2815
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;
    .locals 6

    .prologue
    .line 11618
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    if-nez v1, :cond_0

    .line 11619
    move-object v1, v0

    new-instance v2, Landroid/support/v4/view/NestedScrollingChildHelper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 11621
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move-object v0, v1

    return-object v0
.end method

.method private handleMissingPreInfoForChangeError(JLandroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 16

    .prologue
    .line 3427
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v11}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v11

    move v5, v11

    .line 3428
    const/4 v11, 0x0

    move v6, v11

    :goto_0
    move v11, v6

    move v12, v5

    if-ge v11, v12, :cond_3

    .line 3429
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v12, v6

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v7, v11

    .line 3430
    move-object v11, v7

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v11

    move-object v8, v11

    .line 3431
    move-object v11, v8

    move-object v12, v3

    if-ne v11, v12, :cond_1

    .line 3428
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3434
    :cond_1
    move-object v11, v0

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v11

    move-wide v9, v11

    .line 3435
    move-wide v11, v9

    move-wide v13, v1

    cmp-long v11, v11, v13

    if-nez v11, :cond_0

    .line 3436
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v11, :cond_2

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3437
    new-instance v11, Ljava/lang/IllegalStateException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " \n View Holder 2:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 3441
    :cond_2
    new-instance v11, Ljava/lang/IllegalStateException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " \n View Holder 2:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 3449
    :cond_3
    const-string v11, "RecyclerView"

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " cannot be found but it is necessary for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 3452
    return-void
.end method

.method private hasUpdatedView()Z
    .locals 6

    .prologue
    .line 1558
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v4

    move v1, v4

    .line 1559
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 1560
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 1561
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1559
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1564
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1565
    const/4 v4, 0x1

    move v0, v4

    .line 1568
    :goto_1
    return v0

    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private initChildrenHelper()V
    .locals 8

    .prologue
    .line 641
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/ChildHelper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Landroid/support/v7/widget/RecyclerView$5;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v7/widget/RecyclerView$5;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ChildHelper;-><init>(Landroid/support/v7/widget/ChildHelper$Callback;)V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    .line 738
    return-void
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .locals 10

    .prologue
    .line 2230
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    move-object v7, v0

    if-ne v6, v7, :cond_1

    .line 2231
    :cond_0
    const/4 v6, 0x0

    move v0, v6

    .line 2250
    :goto_0
    return v0

    .line 2233
    :cond_1
    move-object v6, v1

    if-nez v6, :cond_2

    .line 2234
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 2237
    :cond_2
    move v6, v3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    move v6, v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 2238
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    :goto_1
    move v4, v6

    .line 2239
    move v6, v3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_2
    move v7, v4

    xor-int/2addr v6, v7

    if-eqz v6, :cond_6

    const/16 v6, 0x42

    :goto_3
    move v5, v6

    .line 2241
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v5

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2242
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 2238
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 2239
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    const/16 v6, 0x11

    goto :goto_3

    .line 2244
    :cond_7
    move v6, v3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    .line 2245
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    const/16 v9, 0x82

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v6

    move v0, v6

    goto :goto_0

    .line 2247
    :cond_8
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    const/16 v9, 0x21

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v6

    move v0, v6

    goto :goto_0

    .line 2250
    :cond_9
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method private isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z
    .locals 10

    .prologue
    .line 2259
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2260
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2261
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2262
    move-object v4, v0

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2263
    move v4, v3

    sparse-switch v4, :sswitch_data_0

    .line 2281
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "direction must be absolute. received:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2265
    :sswitch_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-gt v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-lt v4, v5, :cond_1

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-le v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 2277
    :goto_1
    return v0

    .line 2265
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2269
    :sswitch_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-lt v4, v5, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gt v4, v5, :cond_3

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-ge v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 2273
    :sswitch_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v5, :cond_4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-lt v4, v5, :cond_5

    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_5

    const/4 v4, 0x1

    :goto_3
    move v0, v4

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 2277
    :sswitch_3
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-lt v4, v5, :cond_6

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gt v4, v5, :cond_7

    :cond_6
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v5, :cond_7

    const/4 v4, 0x1

    :goto_4
    move v0, v4

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    .line 2263
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private jumpToPositionForSmoothScroller(I)V
    .locals 4

    .prologue
    .line 1454
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_0

    .line 1459
    :goto_0
    return-void

    .line 1457
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1458
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v2

    .line 1459
    goto :goto_0
.end method

.method private onEnterLayoutOrScroll()V
    .locals 5

    .prologue
    .line 2940
    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2941
    return-void
.end method

.method private onExitLayoutOrScroll()V
    .locals 5

    .prologue
    .line 2944
    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2945
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 2950
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2951
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 2953
    :cond_0
    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 10

    .prologue
    .line 2758
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    move v2, v4

    .line 2759
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    if-ne v4, v5, :cond_0

    .line 2761
    move v4, v2

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 2762
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2763
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v5, v4, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2764
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v5, v4, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2766
    :cond_0
    return-void

    .line 2761
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private postAnimationRunner()V
    .locals 3

    .prologue
    .line 3042
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v1, :cond_0

    .line 3043
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3044
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 3046
    :cond_0
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 2

    .prologue
    .line 3049
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

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

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 4

    .prologue
    .line 3059
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v2, :cond_0

    .line 3062
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/AdapterHelper;->reset()V

    .line 3063
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 3064
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V

    .line 3069
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3070
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/AdapterHelper;->preProcess()V

    .line 3074
    :goto_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    if-nez v2, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v2, :cond_5

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move v1, v2

    .line 3075
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v3, :cond_6

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v3, :cond_6

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v3, :cond_2

    move v3, v1

    if-nez v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 3077
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->access$2600(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 3078
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    const/4 v3, 0x1

    .line 3075
    :goto_2
    invoke-static {v2, v3}, Landroid/support/v7/widget/RecyclerView$State;->access$2502(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v2

    .line 3079
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$State;->access$2500(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v3, :cond_7

    move-object v3, v0

    .line 3081
    invoke-direct {v3}, Landroid/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    .line 3079
    :goto_3
    invoke-static {v2, v3}, Landroid/support/v7/widget/RecyclerView$State;->access$2302(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v2

    .line 3082
    return-void

    .line 3072
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    goto :goto_0

    .line 3074
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 3078
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 3081
    :cond_7
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private pullGlows(FFFF)V
    .locals 11

    .prologue
    .line 1994
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    const/4 v6, 0x0

    move v5, v6

    .line 1995
    move v6, v2

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 1996
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 1997
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move v7, v2

    neg-float v7, v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v3

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1998
    const/4 v6, 0x1

    move v5, v6

    .line 2007
    :cond_0
    :goto_0
    move v6, v4

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    .line 2008
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 2009
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move v7, v4

    neg-float v7, v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    move v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2010
    const/4 v6, 0x1

    move v5, v6

    .line 2019
    :cond_1
    :goto_1
    move v6, v5

    if-nez v6, :cond_2

    move v6, v2

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    move v6, v4

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_3

    .line 2020
    :cond_2
    move-object v6, v0

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2022
    :cond_3
    return-void

    .line 2000
    :cond_4
    move v6, v2

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 2001
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 2002
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move v7, v2

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    move v8, v3

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2003
    const/4 v6, 0x1

    move v5, v6

    goto :goto_0

    .line 2012
    :cond_5
    move v6, v4

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 2013
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 2014
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move v7, v4

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2015
    const/4 v6, 0x1

    move v5, v6

    goto :goto_1
.end method

.method private recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 9

    .prologue
    .line 3461
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    const/4 v6, 0x0

    const/16 v7, 0x2000

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 3462
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView$State;->access$2700(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    .line 3463
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3464
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v5

    move-wide v3, v5

    .line 3465
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-wide v6, v3

    move-object v8, v1

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/widget/ViewInfoStore;->addToOldChangeHolders(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3467
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/ViewInfoStore;->addToPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3468
    return-void
.end method

.method private recoverFocusFromState()V
    .locals 8

    .prologue
    .line 3162
    move-object v0, p0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3193
    :cond_0
    :goto_0
    return-void

    .line 3166
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3167
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    move-object v1, v4

    .line 3168
    move-object v4, v1

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3169
    :cond_2
    goto :goto_0

    .line 3172
    :cond_3
    const/4 v4, 0x0

    move-object v1, v4

    .line 3173
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 3174
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v1, v4

    .line 3176
    :cond_4
    move-object v4, v1

    if-nez v4, :cond_5

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-wide v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3177
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-wide v5, v5, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForItemId(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v1, v4

    .line 3179
    :cond_5
    move-object v4, v1

    if-eqz v4, :cond_6

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_6

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3180
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_7

    .line 3181
    :cond_6
    goto :goto_0

    .line 3185
    :cond_7
    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, v4

    .line 3186
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    int-to-long v4, v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    .line 3187
    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 3188
    move-object v4, v3

    if-eqz v4, :cond_8

    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3189
    move-object v4, v3

    move-object v2, v4

    .line 3192
    :cond_8
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v4

    .line 3193
    goto/16 :goto_0
.end method

.method private releaseGlows()V
    .locals 4

    .prologue
    .line 2025
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    .line 2026
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v2

    move v1, v2

    .line 2027
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v3

    or-int/2addr v2, v3

    move v1, v2

    .line 2028
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_2

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v3

    or-int/2addr v2, v3

    move v1, v2

    .line 2029
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_3

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v3

    or-int/2addr v2, v3

    move v1, v2

    .line 2030
    :cond_3
    move v2, v1

    if-eqz v2, :cond_4

    .line 2031
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2033
    :cond_4
    return-void
.end method

.method private removeAnimatingView(Landroid/view/View;)Z
    .locals 6

    .prologue
    .line 1193
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1194
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v4

    move v2, v4

    .line 1195
    move v4, v2

    if-eqz v4, :cond_0

    .line 1196
    move-object v4, v1

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 1197
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1198
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1204
    :cond_0
    move-object v4, v0

    move v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1205
    move v4, v2

    move v0, v4

    return v0

    .line 1204
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private repositionShadowingViews()V
    .locals 14

    .prologue
    .line 4584
    move-object v0, p0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v8

    move v1, v8

    .line 4585
    const/4 v8, 0x0

    move v2, v8

    :goto_0
    move v8, v2

    move v9, v1

    if-ge v8, v9, :cond_2

    .line 4586
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v9, v2

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v3, v8

    .line 4587
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v4, v8

    .line 4588
    move-object v8, v4

    if-eqz v8, :cond_1

    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v8, :cond_1

    .line 4589
    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v5, v8

    .line 4590
    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    move v6, v8

    .line 4591
    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move v7, v8

    .line 4592
    move v8, v6

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    if-ne v8, v9, :cond_0

    move v8, v7

    move-object v9, v5

    .line 4593
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 4594
    :cond_0
    move-object v8, v5

    move v9, v6

    move v10, v7

    move v11, v6

    move-object v12, v5

    .line 4595
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    move v12, v7

    move-object v13, v5

    .line 4596
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    .line 4594
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 4585
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4600
    :cond_2
    return-void
.end method

.method private resetFocusInfo()V
    .locals 4

    .prologue
    .line 3156
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    .line 3157
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 3158
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    .line 3159
    return-void
.end method

.method private resetTouch()V
    .locals 2

    .prologue
    .line 2745
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 2746
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 2748
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll()V

    .line 2749
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->releaseGlows()V

    .line 2750
    return-void
.end method

.method private saveFocusInfo()V
    .locals 6

    .prologue
    .line 3139
    move-object v0, p0

    const/4 v3, 0x0

    move-object v1, v3

    .line 3140
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_0

    .line 3141
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    move-object v1, v3

    .line 3144
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    .line 3145
    move-object v3, v2

    if-nez v3, :cond_2

    .line 3146
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/RecyclerView;->resetFocusInfo()V

    .line 3153
    :goto_1
    return-void

    .line 3144
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    goto :goto_0

    .line 3148
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    :goto_2
    iput-wide v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    .line 3149
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    .line 3150
    :goto_3
    iput v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 3151
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v4, v0

    move-object v5, v2

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v4, v5}, Landroid/support/v7/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    goto :goto_1

    .line 3148
    :cond_3
    const-wide/16 v4, -0x1

    goto :goto_2

    .line 3149
    :cond_4
    move-object v4, v2

    .line 3150
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    goto :goto_3
.end method

.method private setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V
    .locals 9

    .prologue
    .line 930
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v5, :cond_0

    .line 931
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 932
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 934
    :cond_0
    move v5, v2

    if-eqz v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_4

    .line 936
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v5, :cond_2

    .line 937
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 943
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v5, :cond_3

    .line 944
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 945
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 948
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 950
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/AdapterHelper;->reset()V

    .line 951
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move-object v4, v5

    .line 952
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 953
    move-object v5, v1

    if-eqz v5, :cond_5

    .line 954
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 955
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 957
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v5, :cond_6

    .line 958
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 960
    :cond_6
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move v8, v2

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$Recycler;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 961
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/support/v7/widget/RecyclerView$State;->access$1802(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v5

    .line 962
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 963
    return-void
.end method

.method private setDataSetChangedAfterLayout()V
    .locals 6

    .prologue
    .line 3843
    move-object v0, p0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_0

    .line 3855
    :goto_0
    return-void

    .line 3846
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3847
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v4

    move v1, v4

    .line 3848
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 3849
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 3850
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3851
    move-object v4, v3

    const/16 v5, 0x200

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3848
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3854
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->setAdapterPositionsAsUnknown()V

    .line 3855
    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 4

    .prologue
    .line 1279
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v2, v3, :cond_0

    .line 1291
    :goto_0
    return-void

    .line 1286
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    .line 1287
    move v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1288
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    .line 1290
    :cond_1
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    .line 1291
    goto :goto_0
.end method

.method private stopScrollersInternal()V
    .locals 2

    .prologue
    .line 1965
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->stop()V

    .line 1966
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    .line 1967
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    .line 1969
    :cond_0
    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 5

    .prologue
    .line 2055
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    if-gez v3, :cond_4

    .line 2056
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 2057
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move v4, v1

    neg-int v4, v4

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    move-result v3

    .line 2063
    :cond_0
    :goto_0
    move v3, v2

    if-gez v3, :cond_5

    .line 2064
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 2065
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move v4, v2

    neg-int v4, v4

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    move-result v3

    .line 2071
    :cond_1
    :goto_1
    move v3, v1

    if-nez v3, :cond_2

    move v3, v2

    if-eqz v3, :cond_3

    .line 2072
    :cond_2
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2074
    :cond_3
    return-void

    .line 2058
    :cond_4
    move v3, v1

    if-lez v3, :cond_0

    .line 2059
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 2060
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    move-result v3

    goto :goto_0

    .line 2066
    :cond_5
    move v3, v2

    if-lez v3, :cond_1

    .line 2067
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 2068
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    move-result v3

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2319
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2320
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2322
    :cond_1
    return-void
.end method

.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 5

    .prologue
    .line 1337
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V

    .line 1338
    return-void
.end method

.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V
    .locals 6

    .prologue
    .line 1308
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v3, :cond_0

    .line 1309
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string v4, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1312
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1313
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1315
    :cond_1
    move v3, v2

    if-gez v3, :cond_2

    .line 1316
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1320
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1321
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1322
    return-void

    .line 1318
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 6

    .prologue
    .line 1018
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v2, :cond_0

    .line 1019
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 1021
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1022
    return-void
.end method

.method public addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .locals 4

    .prologue
    .line 2425
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 2426
    return-void
.end method

.method public addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 6

    .prologue
    .line 1405
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v2, :cond_0

    .line 1406
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 1408
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1409
    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 2377
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2378
    move-object v2, v1

    if-nez v2, :cond_0

    .line 2379
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2382
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2385
    :cond_1
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 2395
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2396
    move-object v2, v1

    if-nez v2, :cond_0

    .line 2397
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2400
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2402
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    if-lez v2, :cond_2

    .line 2403
    const-string v2, "RecyclerView"

    const-string v3, "Cannot call this method in a scroll callback. Scroll callbacks might be run during a measure & layout pass where you cannot change the RecyclerView data. Any method call that might change the structure of the RecyclerView or the adapter contents should be postponed to the next frame."

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 2409
    :cond_2
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 3664
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method clearOldPositions()V
    .locals 6

    .prologue
    .line 3718
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v4

    move v1, v4

    .line 3719
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 3720
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 3721
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3722
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 3719
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3725
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->clearOldPositions()V

    .line 3726
    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 2

    .prologue
    .line 1041
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1042
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1044
    :cond_0
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 2

    .prologue
    .line 1426
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1427
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1429
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 3

    .prologue
    .line 1677
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 1678
    const/4 v1, 0x0

    move v0, v1

    .line 1680
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public computeHorizontalScrollOffset()I
    .locals 3

    .prologue
    .line 1652
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 1653
    const/4 v1, 0x0

    move v0, v1

    .line 1655
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 1700
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 1701
    const/4 v1, 0x0

    move v0, v1

    .line 1703
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public computeVerticalScrollExtent()I
    .locals 3

    .prologue
    .line 1749
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 1750
    const/4 v1, 0x0

    move v0, v1

    .line 1752
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public computeVerticalScrollOffset()I
    .locals 3

    .prologue
    .line 1725
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 1726
    const/4 v1, 0x0

    move v0, v1

    .line 1728
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 1772
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 1773
    const/4 v1, 0x0

    move v0, v1

    .line 1775
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method defaultOnMeasure(II)V
    .locals 8

    .prologue
    .line 2898
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v1

    move-object v6, v0

    .line 2899
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    move-object v7, v0

    .line 2900
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v7

    .line 2898
    invoke-static {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v5

    move v3, v5

    .line 2901
    move v5, v2

    move-object v6, v0

    .line 2902
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    move-object v7, v0

    .line 2903
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    .line 2901
    invoke-static {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v5

    move v4, v5

    .line 2905
    move-object v5, v0

    move v6, v3

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 2906
    return-void
.end method

.method dispatchLayout()V
    .locals 3

    .prologue
    .line 3110
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v1, :cond_0

    .line 3111
    const-string v1, "RecyclerView"

    const-string v2, "No adapter attached; skipping layout"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3136
    :goto_0
    return-void

    .line 3115
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 3116
    const-string v1, "RecyclerView"

    const-string v2, "No layout manager attached; skipping layout"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3118
    goto :goto_0

    .line 3120
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView$State;->access$2202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v1

    .line 3121
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView$State;->access$2100(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 3122
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3123
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    .line 3124
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3135
    :goto_1
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep3()V

    .line 3136
    goto :goto_0

    .line 3125
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->hasUpdates()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_3

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 3126
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 3129
    :cond_3
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    .line 3130
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_1

    .line 3133
    :cond_4
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_1
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 8

    .prologue
    .line 9848
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v4

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
    .line 9853
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v3

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
    .line 9843
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v5

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
    .line 9837
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v6

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

.method dispatchOnScrollStateChanged(I)V
    .locals 6

    .prologue
    .line 4328
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v3, :cond_0

    .line 4329
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 4334
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 4337
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v3, :cond_1

    .line 4338
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-object v4, v0

    move v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4340
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 4341
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_2

    .line 4342
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-object v4, v0

    move v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4341
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4345
    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 12

    .prologue
    .line 4288
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4291
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getScrollX()I

    move-result v6

    move v3, v6

    .line 4292
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v6

    move v4, v6

    .line 4293
    move-object v6, v0

    move v7, v3

    move v8, v4

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 4296
    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView;->onScrolled(II)V

    .line 4300
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v6, :cond_0

    .line 4301
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-object v7, v0

    move v8, v1

    move v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 4303
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 4304
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v5, v6

    :goto_0
    move v6, v5

    if-ltz v6, :cond_1

    .line 4305
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    move v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-object v7, v0

    move v8, v1

    move v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 4304
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 4308
    :cond_1
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4309
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
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
    .line 1161
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1162
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
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
    .line 1153
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1154
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    .line 3593
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3595
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v7

    .line 3596
    const/4 v7, 0x0

    move v3, v7

    :goto_0
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_0

    .line 3597
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-object v8, v1

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3596
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3601
    :cond_0
    const/4 v7, 0x0

    move v3, v7

    .line 3602
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v7}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3603
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v4, v7

    .line 3604
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v7, :cond_8

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v7

    :goto_1
    move v5, v7

    .line 3605
    move-object v7, v1

    const/high16 v8, 0x43870000    # 270.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3606
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    neg-int v8, v8

    move v9, v5

    add-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3607
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v7, :cond_9

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    :goto_2
    move v3, v7

    .line 3608
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3610
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v7}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3611
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v4, v7

    .line 3612
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v7, :cond_2

    .line 3613
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3615
    :cond_2
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v8, :cond_a

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    :goto_3
    or-int/2addr v7, v8

    move v3, v7

    .line 3616
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3618
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v7}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v7

    if-nez v7, :cond_4

    .line 3619
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v4, v7

    .line 3620
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v7

    move v5, v7

    .line 3621
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v7, :cond_b

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v7

    :goto_4
    move v6, v7

    .line 3622
    move-object v7, v1

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3623
    move-object v7, v1

    move v8, v6

    neg-int v8, v8

    int-to-float v8, v8

    move v9, v5

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3624
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v8, :cond_c

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    :goto_5
    or-int/2addr v7, v8

    move v3, v7

    .line 3625
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3627
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v7}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v7

    if-nez v7, :cond_5

    .line 3628
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v4, v7

    .line 3629
    move-object v7, v1

    const/high16 v8, 0x43340000    # 180.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3630
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v7, :cond_d

    .line 3631
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    neg-int v8, v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    neg-int v9, v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3635
    :goto_6
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v8, :cond_e

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    :goto_7
    or-int/2addr v7, v8

    move v3, v7

    .line 3636
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3642
    :cond_5
    move v7, v3

    if-nez v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 3643
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3644
    const/4 v7, 0x1

    move v3, v7

    .line 3647
    :cond_6
    move v7, v3

    if-eqz v7, :cond_7

    .line 3648
    move-object v7, v0

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 3650
    :cond_7
    return-void

    .line 3604
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 3607
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 3615
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 3621
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 3624
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 3633
    :cond_d
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    .line 3635
    :cond_e
    const/4 v8, 0x0

    goto :goto_7
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    .prologue
    .line 4184
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-wide v8, v3

    invoke-super {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method eatRequestLayout()V
    .locals 5

    .prologue
    .line 1780
    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 1781
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_0

    .line 1782
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1784
    :cond_0
    return-void
.end method

.method ensureBottomGlow()V
    .locals 6

    .prologue
    .line 2117
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    .line 2127
    :goto_0
    return-void

    .line 2120
    :cond_0
    move-object v1, v0

    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2121
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 2122
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    .line 2123
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2122
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2127
    :goto_1
    goto :goto_0

    .line 2125
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1
.end method

.method ensureLeftGlow()V
    .locals 6

    .prologue
    .line 2077
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    .line 2087
    :goto_0
    return-void

    .line 2080
    :cond_0
    move-object v1, v0

    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2081
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 2082
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    .line 2083
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2082
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2087
    :goto_1
    goto :goto_0

    .line 2085
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1
.end method

.method ensureRightGlow()V
    .locals 6

    .prologue
    .line 2090
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    .line 2100
    :goto_0
    return-void

    .line 2093
    :cond_0
    move-object v1, v0

    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2094
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 2095
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    .line 2096
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2095
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2100
    :goto_1
    goto :goto_0

    .line 2098
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1
.end method

.method ensureTopGlow()V
    .locals 6

    .prologue
    .line 2103
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    .line 2114
    :goto_0
    return-void

    .line 2106
    :cond_0
    move-object v1, v0

    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2107
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 2108
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    .line 2109
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2108
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2114
    :goto_1
    goto :goto_0

    .line 2111
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 11

    .prologue
    .line 4167
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v8

    move v3, v8

    .line 4168
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    :goto_0
    move v8, v4

    if-ltz v8, :cond_1

    .line 4169
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 4170
    move-object v8, v5

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v8

    move v6, v8

    .line 4171
    move-object v8, v5

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v8

    move v7, v8

    .line 4172
    move v8, v1

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    move v10, v6

    add-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    move v8, v1

    move-object v9, v5

    .line 4173
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    int-to-float v9, v9

    move v10, v6

    add-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    move v8, v2

    move-object v9, v5

    .line 4174
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    move v10, v7

    add-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    move v8, v2

    move-object v9, v5

    .line 4175
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    int-to-float v9, v9

    move v10, v7

    add-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    .line 4176
    move-object v8, v5

    move-object v0, v8

    .line 4179
    :goto_1
    return-object v0

    .line 4168
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 4179
    :cond_1
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_1
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 3952
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    .line 3953
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    if-eq v3, v4, :cond_0

    move-object v3, v2

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 3954
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    move-object v1, v3

    .line 3955
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 3957
    :cond_0
    move-object v3, v2

    move-object v4, v0

    if-ne v3, v4, :cond_1

    move-object v3, v1

    :goto_1
    move-object v0, v3

    return-object v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 3970
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 3971
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    goto :goto_0
.end method

.method public findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 8

    .prologue
    .line 4081
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v6, :cond_0

    .line 4082
    const/4 v6, 0x0

    move-object v0, v6

    .line 4097
    :goto_0
    return-object v0

    .line 4084
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v6

    move v2, v6

    .line 4086
    const/4 v6, 0x0

    move-object v3, v6

    .line 4087
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_3

    .line 4088
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    move-object v5, v6

    .line 4089
    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Landroid/support/v7/widget/RecyclerView;->getAdapterPositionFor(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_1

    .line 4090
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v7, v5

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4091
    move-object v6, v5

    move-object v3, v6

    .line 4087
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4093
    :cond_2
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 4097
    :cond_3
    move-object v6, v3

    move-object v0, v6

    goto :goto_0
.end method

.method public findViewHolderForItemId(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 11

    .prologue
    .line 4141
    move-object v0, p0

    move-wide v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v7

    if-nez v7, :cond_1

    .line 4142
    :cond_0
    const/4 v7, 0x0

    move-object v0, v7

    .line 4156
    :goto_0
    return-object v0

    .line 4144
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v7

    move v3, v7

    .line 4145
    const/4 v7, 0x0

    move-object v4, v7

    .line 4146
    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_4

    .line 4147
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    move-object v6, v7

    .line 4148
    move-object v7, v6

    if-eqz v7, :cond_2

    move-object v7, v6

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v6

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v7

    move-wide v9, v1

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 4149
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v8, v6

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4150
    move-object v7, v6

    move-object v4, v7

    .line 4146
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4152
    :cond_3
    move-object v7, v6

    move-object v0, v7

    goto :goto_0

    .line 4156
    :cond_4
    move-object v7, v4

    move-object v0, v7

    goto :goto_0
.end method

.method public findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5

    .prologue
    .line 4060
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4037
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 9

    .prologue
    .line 4101
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v7

    move v3, v7

    .line 4102
    const/4 v7, 0x0

    move-object v4, v7

    .line 4103
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_4

    .line 4104
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    move-object v6, v7

    .line 4105
    move-object v7, v6

    if-eqz v7, :cond_0

    move-object v7, v6

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_0

    .line 4106
    move v7, v2

    if-eqz v7, :cond_1

    .line 4107
    move-object v7, v6

    iget v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v8, v1

    if-eq v7, v8, :cond_2

    .line 4103
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4110
    :cond_1
    move-object v7, v6

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    move v8, v1

    if-eq v7, v8, :cond_2

    .line 4111
    goto :goto_1

    .line 4113
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v8, v6

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4114
    move-object v7, v6

    move-object v4, v7

    goto :goto_1

    .line 4116
    :cond_3
    move-object v7, v6

    move-object v0, v7

    .line 4123
    :goto_2
    return-object v0

    :cond_4
    move-object v7, v4

    move-object v0, v7

    goto :goto_2
.end method

.method public fling(II)Z
    .locals 10

    .prologue
    .line 1911
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v6, :cond_0

    .line 1912
    const-string v6, "RecyclerView"

    const-string v7, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1914
    const/4 v6, 0x0

    move v0, v6

    .line 1949
    :goto_0
    return v0

    .line 1916
    :cond_0
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v6, :cond_1

    .line 1917
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1920
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v6

    move v3, v6

    .line 1921
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v6

    move v4, v6

    .line 1923
    move v6, v3

    if-eqz v6, :cond_2

    move v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_3

    .line 1924
    :cond_2
    const/4 v6, 0x0

    move v1, v6

    .line 1926
    :cond_3
    move v6, v4

    if-eqz v6, :cond_4

    move v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_5

    .line 1927
    :cond_4
    const/4 v6, 0x0

    move v2, v6

    .line 1929
    :cond_5
    move v6, v1

    if-nez v6, :cond_6

    move v6, v2

    if-nez v6, :cond_6

    .line 1931
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1934
    :cond_6
    move-object v6, v0

    move v7, v1

    int-to-float v7, v7

    move v8, v2

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1935
    move v6, v3

    if-nez v6, :cond_7

    move v6, v4

    if-eqz v6, :cond_8

    :cond_7
    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 1936
    move-object v6, v0

    move v7, v1

    int-to-float v7, v7

    move v8, v2

    int-to-float v8, v8

    move v9, v5

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    move-result v6

    .line 1938
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    if-eqz v6, :cond_9

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$OnFlingListener;->onFling(II)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1939
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 1935
    :cond_8
    const/4 v6, 0x0

    goto :goto_1

    .line 1942
    :cond_9
    move v6, v5

    if-eqz v6, :cond_a

    .line 1943
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v6, v6

    move v7, v1

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v1, v6

    .line 1944
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v6, v6

    move v7, v2

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v2, v6

    .line 1945
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->fling(II)V

    .line 1946
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 1949
    :cond_a
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 15

    .prologue
    .line 2165
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v11, v1

    move v12, v2

    invoke-virtual {v10, v11, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    move-object v3, v10

    .line 2166
    move-object v10, v3

    if-eqz v10, :cond_0

    .line 2167
    move-object v10, v3

    move-object v0, v10

    .line 2218
    :goto_0
    return-object v0

    .line 2169
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v10, :cond_4

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v10, :cond_4

    move-object v10, v0

    .line 2170
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v10

    if-nez v10, :cond_4

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v10, :cond_4

    const/4 v10, 0x1

    :goto_1
    move v4, v10

    .line 2172
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v10

    move-object v5, v10

    .line 2173
    move v10, v4

    if-eqz v10, :cond_e

    move v10, v2

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    move v10, v2

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    .line 2177
    :cond_1
    const/4 v10, 0x0

    move v6, v10

    .line 2178
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2179
    move v10, v2

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    const/16 v10, 0x82

    :goto_2
    move v7, v10

    .line 2181
    move-object v10, v5

    move-object v11, v0

    move-object v12, v1

    move v13, v7

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    move-object v8, v10

    .line 2182
    move-object v10, v8

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_3
    move v6, v10

    .line 2184
    :cond_2
    move v10, v6

    if-nez v10, :cond_3

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2185
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    :goto_4
    move v7, v10

    .line 2186
    move v10, v2

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    const/4 v10, 0x1

    :goto_5
    move v11, v7

    xor-int/2addr v10, v11

    if-eqz v10, :cond_9

    const/16 v10, 0x42

    :goto_6
    move v8, v10

    .line 2188
    move-object v10, v5

    move-object v11, v0

    move-object v12, v1

    move v13, v8

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    move-object v9, v10

    .line 2189
    move-object v10, v9

    if-nez v10, :cond_a

    const/4 v10, 0x1

    :goto_7
    move v6, v10

    .line 2191
    :cond_3
    move v10, v6

    if-eqz v10, :cond_c

    .line 2192
    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2193
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    move-object v7, v10

    .line 2194
    move-object v10, v7

    if-nez v10, :cond_b

    .line 2196
    const/4 v10, 0x0

    move-object v0, v10

    goto/16 :goto_0

    .line 2170
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 2179
    :cond_5
    const/16 v10, 0x21

    goto :goto_2

    .line 2182
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 2185
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 2186
    :cond_8
    const/4 v10, 0x0

    goto :goto_5

    :cond_9
    const/16 v10, 0x11

    goto :goto_6

    .line 2189
    :cond_a
    const/4 v10, 0x0

    goto :goto_7

    .line 2198
    :cond_b
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2199
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v11, v1

    move v12, v2

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v10

    .line 2200
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2202
    :cond_c
    move-object v10, v5

    move-object v11, v0

    move-object v12, v1

    move v13, v2

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    move-object v3, v10

    .line 2217
    :cond_d
    :goto_8
    move-object v10, v0

    move-object v11, v1

    move-object v12, v3

    move v13, v2

    invoke-direct {v10, v11, v12, v13}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v10

    if-eqz v10, :cond_10

    move-object v10, v3

    .line 2218
    :goto_9
    move-object v0, v10

    goto/16 :goto_0

    .line 2204
    :cond_e
    move-object v10, v5

    move-object v11, v0

    move-object v12, v1

    move v13, v2

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    move-object v3, v10

    .line 2205
    move-object v10, v3

    if-nez v10, :cond_d

    move v10, v4

    if-eqz v10, :cond_d

    .line 2206
    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2207
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    move-object v6, v10

    .line 2208
    move-object v10, v6

    if-nez v10, :cond_f

    .line 2210
    const/4 v10, 0x0

    move-object v0, v10

    goto/16 :goto_0

    .line 2212
    :cond_f
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2213
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v11, v1

    move v12, v2

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v10

    move-object v3, v10

    .line 2214
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    goto :goto_8

    .line 2217
    :cond_10
    move-object v10, v0

    move-object v11, v1

    move v12, v2

    .line 2218
    invoke-super {v10, v11, v12}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    goto :goto_9
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 5

    .prologue
    .line 3669
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 3670
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "RecyclerView has no LayoutManager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3672
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 3677
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_0

    .line 3678
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "RecyclerView has no LayoutManager"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3680
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 3685
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_0

    .line 3686
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "RecyclerView has no LayoutManager"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3688
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 2

    .prologue
    .line 972
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move-object v0, v1

    return-object v0
.end method

.method public getBaseline()I
    .locals 2

    .prologue
    .line 999
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    .line 1000
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result v1

    move v0, v1

    .line 1002
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J
    .locals 4

    .prologue
    .line 3522
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    :goto_0
    move-wide v0, v2

    return-wide v0

    :cond_0
    move-object v2, v1

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v2, v2

    goto :goto_0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 3998
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 3999
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 6

    .prologue
    .line 11588
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v3, :cond_0

    .line 11589
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v3

    move v0, v3

    .line 11591
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 5

    .prologue
    .line 4024
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4025
    :cond_0
    const-wide/16 v3, -0x1

    move-wide v0, v3

    .line 4028
    :goto_0
    return-wide v0

    .line 4027
    :cond_1
    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 4028
    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    :goto_1
    move-wide v0, v3

    goto :goto_0

    :cond_2
    const-wide/16 v3, -0x1

    goto :goto_1
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 4013
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 4014
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3988
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 8

    .prologue
    .line 3929
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    .line 3930
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    if-eq v3, v4, :cond_0

    .line 3931
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a direct child of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3934
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getCompatAccessibilityDelegate()Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;
    .locals 2

    .prologue
    .line 561
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    move-object v0, v1

    return-object v0
.end method

.method public getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    .locals 2

    .prologue
    .line 3034
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v0, v1

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 12

    .prologue
    .line 4239
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v2, v6

    .line 4240
    move-object v6, v2

    iget-boolean v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v6, :cond_0

    .line 4241
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v0, v6

    .line 4260
    :goto_0
    return-object v0

    .line 4244
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isViewInvalid()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4246
    :cond_1
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v0, v6

    goto :goto_0

    .line 4248
    :cond_2
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v3, v6

    .line 4249
    move-object v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 4250
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .line 4251
    const/4 v6, 0x0

    move v5, v6

    :goto_1
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_3

    .line 4252
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 4253
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v1

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 4254
    move-object v6, v3

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 4255
    move-object v6, v3

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 4256
    move-object v6, v3

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 4257
    move-object v6, v3

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 4251
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4259
    :cond_3
    move-object v6, v2

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4260
    move-object v6, v3

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 1215
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v0, v1

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 2

    .prologue
    .line 1987
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    move v0, v1

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 2

    .prologue
    .line 1977
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    move v0, v1

    return v0
.end method

.method public getOnFlingListener()Landroid/support/v7/widget/RecyclerView$OnFlingListener;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1117
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    move-object v0, v1

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 2

    .prologue
    .line 3901
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    move v0, v1

    return v0
.end method

.method public getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    .locals 2

    .prologue
    .line 1227
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getScrollState()I
    .locals 2

    .prologue
    .line 1275
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    move v0, v1

    return v0
.end method

.method public hasFixedSize()Z
    .locals 2

    .prologue
    .line 841
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    move v0, v1

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 2

    .prologue
    .line 9831
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 2

    .prologue
    .line 4361
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    .line 4362
    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method initAdapterManager()V
    .locals 8

    .prologue
    .line 741
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/AdapterHelper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Landroid/support/v7/widget/RecyclerView$6;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v7/widget/RecyclerView$6;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v3, v4}, Landroid/support/v7/widget/AdapterHelper;-><init>(Landroid/support/v7/widget/AdapterHelper$Callback;)V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    .line 819
    return-void
.end method

.method invalidateGlows()V
    .locals 9

    .prologue
    .line 2130
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    move-object v7, v4

    move-object v8, v5

    move-object v4, v8

    move-object v5, v7

    move-object v6, v8

    iput-object v6, v5, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v7, v3

    move-object v8, v4

    move-object v3, v8

    move-object v4, v7

    move-object v5, v8

    iput-object v5, v4, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v7, v2

    move-object v8, v3

    move-object v2, v8

    move-object v3, v7

    move-object v4, v8

    iput-object v4, v3, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2131
    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 3

    .prologue
    .line 3878
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3887
    :goto_0
    return-void

    .line 3881
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 3882
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string v2, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3885
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 3886
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3887
    goto :goto_0
.end method

.method isAccessibilityEnabled()Z
    .locals 2

    .prologue
    .line 2956
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

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

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 3700
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

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

.method public isAttachedToWindow()Z
    .locals 2

    .prologue
    .line 2366
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    move v0, v1

    return v0
.end method

.method public isComputingLayout()Z
    .locals 2

    .prologue
    .line 2990
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLayoutFrozen()Z
    .locals 2

    .prologue
    .line 1868
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    move v0, v1

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 2

    .prologue
    .line 9816
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method markItemDecorInsetsDirty()V
    .locals 6

    .prologue
    .line 3583
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v4

    move v1, v4

    .line 3584
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 3585
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 3586
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 3584
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3588
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    .line 3589
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 6

    .prologue
    .line 3862
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v4

    move v1, v4

    .line 3863
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 3864
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 3865
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3866
    move-object v4, v3

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3863
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3869
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 3870
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    .line 3871
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 6

    .prologue
    .line 4232
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v4

    move v2, v4

    .line 4233
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 4234
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4233
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4236
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 6

    .prologue
    .line 4194
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v4

    move v2, v4

    .line 4195
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 4196
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4195
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4198
    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 9

    .prologue
    .line 3763
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v6

    move v3, v6

    .line 3764
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 3765
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    move-object v5, v6

    .line 3766
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v5

    iget v6, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v7, v1

    if-lt v6, v7, :cond_0

    .line 3771
    move-object v6, v5

    move v7, v2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3772
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/support/v7/widget/RecyclerView$State;->access$1802(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v6

    .line 3764
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3775
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 3776
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3777
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 12

    .prologue
    .line 3729
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v9

    move v3, v9

    .line 3731
    move v9, v1

    move v10, v2

    if-ge v9, v10, :cond_1

    .line 3732
    move v9, v1

    move v4, v9

    .line 3733
    move v9, v2

    move v5, v9

    .line 3734
    const/4 v9, -0x1

    move v6, v9

    .line 3741
    :goto_0
    const/4 v9, 0x0

    move v7, v9

    :goto_1
    move v9, v7

    move v10, v3

    if-ge v9, v10, :cond_4

    .line 3742
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v8, v9

    .line 3743
    move-object v9, v8

    if-eqz v9, :cond_0

    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v4

    if-lt v9, v10, :cond_0

    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v5

    if-le v9, v10, :cond_2

    .line 3741
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3736
    :cond_1
    move v9, v2

    move v4, v9

    .line 3737
    move v9, v1

    move v5, v9

    .line 3738
    const/4 v9, 0x1

    move v6, v9

    goto :goto_0

    .line 3750
    :cond_2
    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v1

    if-ne v9, v10, :cond_3

    .line 3751
    move-object v9, v8

    move v10, v2

    move v11, v1

    sub-int/2addr v10, v11

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3756
    :goto_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/support/v7/widget/RecyclerView$State;->access$1802(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v9

    goto :goto_2

    .line 3753
    :cond_3
    move-object v9, v8

    move v10, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_3

    .line 3758
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move v10, v1

    move v11, v2

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 3759
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3760
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 12

    .prologue
    .line 3781
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v8, v1

    move v9, v2

    add-int/2addr v8, v9

    move v4, v8

    .line 3782
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v8

    move v5, v8

    .line 3783
    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_2

    .line 3784
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v7, v8

    .line 3785
    move-object v8, v7

    if-eqz v8, :cond_0

    move-object v8, v7

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3786
    move-object v8, v7

    iget v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v9, v4

    if-lt v8, v9, :cond_1

    .line 3792
    move-object v8, v7

    move v9, v2

    neg-int v9, v9

    move v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3793
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/support/v7/widget/RecyclerView$State;->access$1802(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v8

    .line 3783
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3794
    :cond_1
    move-object v8, v7

    iget v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v9, v1

    if-lt v8, v9, :cond_0

    .line 3799
    move-object v8, v7

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v10, v2

    neg-int v10, v10

    move v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 3801
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/support/v7/widget/RecyclerView$State;->access$1802(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v8

    goto :goto_1

    .line 3805
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move v9, v1

    move v10, v2

    move v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 3806
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3807
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 2336
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2337
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2338
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2339
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2340
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    .line 2341
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 2343
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2344
    return-void

    .line 2339
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 4211
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 4223
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 2348
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2349
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_0

    .line 2350
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2352
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 2353
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2354
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 2355
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 2357
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 2358
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v1}, Landroid/support/v7/widget/ViewInfoStore;->onDetach()V

    .line 2359
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 3654
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 3656
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 3657
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 3658
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-object v5, v1

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3657
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3660
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    .line 2770
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v5, :cond_0

    .line 2771
    const/4 v5, 0x0

    move v0, v5

    .line 2801
    :goto_0
    return v0

    .line 2773
    :cond_0
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v5, :cond_1

    .line 2774
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 2776
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 2777
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 2779
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2782
    move-object v5, v1

    const/16 v6, 0x9

    .line 2783
    invoke-static {v5, v6}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v5

    neg-float v5, v5

    move v2, v5

    .line 2787
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2788
    move-object v5, v1

    const/16 v6, 0xa

    .line 2789
    invoke-static {v5, v6}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v5

    move v3, v5

    .line 2794
    :goto_2
    move v5, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    move v5, v3

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    .line 2795
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/RecyclerView;->getScrollFactor()F

    move-result v5

    move v4, v5

    .line 2796
    move-object v5, v0

    move v6, v3

    move v7, v4

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move v7, v2

    move v8, v4

    mul-float/2addr v7, v8

    float-to-int v7, v7

    move-object v8, v1

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v5

    .line 2801
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 2785
    :cond_4
    const/4 v5, 0x0

    move v2, v5

    goto :goto_1

    .line 2791
    :cond_5
    const/4 v5, 0x0

    move v3, v5

    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    .prologue
    .line 2490
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v15, v2

    iget-boolean v15, v15, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v15, :cond_0

    .line 2493
    const/4 v15, 0x0

    move v2, v15

    .line 2589
    :goto_0
    return v2

    .line 2495
    :cond_0
    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v16}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2496
    move-object v15, v2

    invoke-direct {v15}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    .line 2497
    const/4 v15, 0x1

    move v2, v15

    goto :goto_0

    .line 2500
    :cond_1
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v15, :cond_2

    .line 2501
    const/4 v15, 0x0

    move v2, v15

    goto :goto_0

    .line 2504
    :cond_2
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v15

    move v4, v15

    .line 2505
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v15

    move v5, v15

    .line 2507
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v15, :cond_3

    .line 2508
    move-object v15, v2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2510
    :cond_3
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2512
    move-object v15, v3

    invoke-static {v15}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v15

    move v6, v15

    .line 2513
    move-object v15, v3

    invoke-static {v15}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v15

    move v7, v15

    .line 2515
    move v15, v6

    packed-switch v15, :pswitch_data_0

    .line 2589
    :goto_1
    :pswitch_0
    move-object v15, v2

    iget v15, v15, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    const/4 v15, 0x1

    :goto_2
    move v2, v15

    goto :goto_0

    .line 2517
    :pswitch_1
    move-object v15, v2

    iget-boolean v15, v15, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v15, :cond_4

    .line 2518
    move-object v15, v2

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2520
    :cond_4
    move-object v15, v2

    move-object/from16 v16, v3

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2521
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v21, v16

    move/from16 v22, v17

    move/from16 v16, v22

    move-object/from16 v17, v21

    move/from16 v18, v22

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2522
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v21, v16

    move/from16 v22, v17

    move/from16 v16, v22

    move-object/from16 v17, v21

    move/from16 v18, v22

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2524
    move-object v15, v2

    iget v15, v15, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 2525
    move-object v15, v2

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2526
    move-object v15, v2

    const/16 v16, 0x1

    invoke-direct/range {v15 .. v16}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2530
    :cond_5
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    const/16 v16, 0x0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v21, v17

    move/from16 v22, v18

    move/from16 v23, v19

    move/from16 v17, v23

    move-object/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v23

    aput v20, v18, v19

    aput v17, v15, v16

    .line 2532
    const/4 v15, 0x0

    move v8, v15

    .line 2533
    move v15, v4

    if-eqz v15, :cond_6

    .line 2534
    move v15, v8

    const/16 v16, 0x1

    or-int/lit8 v15, v15, 0x1

    move v8, v15

    .line 2536
    :cond_6
    move v15, v5

    if-eqz v15, :cond_7

    .line 2537
    move v15, v8

    const/16 v16, 0x2

    or-int/lit8 v15, v15, 0x2

    move v8, v15

    .line 2539
    :cond_7
    move-object v15, v2

    move/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    move-result v15

    .line 2540
    goto/16 :goto_1

    .line 2543
    :pswitch_2
    move-object v15, v2

    move-object/from16 v16, v3

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2544
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v7

    invoke-virtual/range {v17 .. v18}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v21, v16

    move/from16 v22, v17

    move/from16 v16, v22

    move-object/from16 v17, v21

    move/from16 v18, v22

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2545
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v7

    invoke-virtual/range {v17 .. v18}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v21, v16

    move/from16 v22, v17

    move/from16 v16, v22

    move-object/from16 v17, v21

    move/from16 v18, v22

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2546
    goto/16 :goto_1

    .line 2549
    :pswitch_3
    move-object v15, v3

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    move v9, v15

    .line 2550
    move v15, v9

    if-gez v15, :cond_8

    .line 2551
    const-string v15, "RecyclerView"

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error processing scroll; pointer index for id "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " not found. Did any MotionEvents get skipped?"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 2553
    const/4 v15, 0x0

    move v2, v15

    goto/16 :goto_0

    .line 2556
    :cond_8
    move-object v15, v3

    move/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    move v10, v15

    .line 2557
    move-object v15, v3

    move/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    move v11, v15

    .line 2558
    move-object v15, v2

    iget v15, v15, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_b

    .line 2559
    move v15, v10

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move v12, v15

    .line 2560
    move v15, v11

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move v13, v15

    .line 2561
    const/4 v15, 0x0

    move v14, v15

    .line 2562
    move v15, v4

    if-eqz v15, :cond_9

    move v15, v12

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_9

    .line 2563
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    move/from16 v18, v12

    if-gez v18, :cond_c

    const/16 v18, -0x1

    :goto_3
    mul-int v17, v17, v18

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 2564
    const/4 v15, 0x1

    move v14, v15

    .line 2566
    :cond_9
    move v15, v5

    if-eqz v15, :cond_a

    move v15, v13

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_a

    .line 2567
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    move/from16 v18, v13

    if-gez v18, :cond_d

    const/16 v18, -0x1

    :goto_4
    mul-int v17, v17, v18

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 2568
    const/4 v15, 0x1

    move v14, v15

    .line 2570
    :cond_a
    move v15, v14

    if-eqz v15, :cond_b

    .line 2571
    move-object v15, v2

    const/16 v16, 0x1

    invoke-direct/range {v15 .. v16}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2574
    :cond_b
    goto/16 :goto_1

    .line 2563
    :cond_c
    const/16 v18, 0x1

    goto :goto_3

    .line 2567
    :cond_d
    const/16 v18, 0x1

    goto :goto_4

    .line 2577
    :pswitch_4
    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v16}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 2578
    goto/16 :goto_1

    .line 2581
    :pswitch_5
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15}, Landroid/view/VelocityTracker;->clear()V

    .line 2582
    move-object v15, v2

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll()V

    .line 2583
    goto/16 :goto_1

    .line 2586
    :pswitch_6
    move-object v15, v2

    invoke-direct {v15}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_1

    .line 2589
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 2515
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    .line 3567
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    const-string v6, "RV OnLayout"

    invoke-static {v6}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 3568
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 3569
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 3570
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 3571
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .prologue
    .line 2823
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v6, :cond_0

    .line 2824
    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 2890
    :goto_0
    return-void

    .line 2827
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->access$2000(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2828
    move v6, v1

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    move v3, v6

    .line 2829
    move v6, v2

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    move v4, v6

    .line 2830
    move v6, v3

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v6, v7, :cond_2

    move v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 2832
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move v9, v1

    move v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 2833
    move v6, v5

    if-nez v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v6, :cond_3

    .line 2834
    :cond_1
    goto :goto_0

    .line 2830
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 2836
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView$State;->access$2100(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 2837
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 2841
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 2842
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/support/v7/widget/RecyclerView$State;->access$2202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v6

    .line 2843
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 2846
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 2850
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2851
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v7, v0

    .line 2852
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move-object v8, v0

    .line 2853
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 2851
    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 2854
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/support/v7/widget/RecyclerView$State;->access$2202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v6

    .line 2855
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 2857
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 2890
    :cond_5
    :goto_2
    goto/16 :goto_0

    .line 2860
    :cond_6
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v6, :cond_7

    .line 2861
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move v9, v1

    move v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 2862
    goto/16 :goto_0

    .line 2865
    :cond_7
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v6, :cond_8

    .line 2866
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2867
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 2869
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView$State;->access$2300(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2870
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/support/v7/widget/RecyclerView$State;->access$2402(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v6

    .line 2876
    :goto_3
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 2877
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2880
    :cond_8
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v6, :cond_a

    .line 2881
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 2885
    :goto_4
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2886
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move v9, v1

    move v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 2887
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2888
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/support/v7/widget/RecyclerView$State;->access$2402(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v6

    goto :goto_2

    .line 2873
    :cond_9
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 2874
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/support/v7/widget/RecyclerView$State;->access$2402(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v6

    goto :goto_3

    .line 2883
    :cond_a
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    goto :goto_4
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 6

    .prologue
    .line 2326
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2329
    const/4 v3, 0x0

    move v0, v3

    .line 2331
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 1136
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/RecyclerView$SavedState;

    if-nez v2, :cond_0

    .line 1137
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1146
    :goto_0
    return-void

    .line 1141
    :cond_0
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/support/v7/widget/RecyclerView$SavedState;

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 1142
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1143
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v2, :cond_1

    .line 1144
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1146
    :cond_1
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 1122
    move-object v0, p0

    new-instance v2, Landroid/support/v7/widget/RecyclerView$SavedState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-super {v4}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v1, v2

    .line 1123
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v2, :cond_0

    .line 1124
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-static {v2, v3}, Landroid/support/v7/widget/RecyclerView$SavedState;->access$1900(Landroid/support/v7/widget/RecyclerView$SavedState;Landroid/support/v7/widget/RecyclerView$SavedState;)V

    .line 1131
    :goto_0
    move-object v2, v1

    move-object v0, v2

    return-object v0

    .line 1125
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_1

    .line 1126
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    .line 1128
    :cond_1
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 4323
    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    .prologue
    .line 4285
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    .prologue
    .line 2910
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2911
    move v5, v1

    move v6, v3

    if-ne v5, v6, :cond_0

    move v5, v2

    move v6, v4

    if-eq v5, v6, :cond_1

    .line 2912
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 2915
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25

    .prologue
    .line 2604
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 2605
    :cond_0
    const/16 v16, 0x0

    move/from16 v2, v16

    .line 2741
    :goto_0
    return v2

    .line 2607
    :cond_1
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v17}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 2608
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    .line 2609
    const/16 v16, 0x1

    move/from16 v2, v16

    goto :goto_0

    .line 2612
    :cond_2
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v16, v0

    if-nez v16, :cond_3

    .line 2613
    const/16 v16, 0x0

    move/from16 v2, v16

    goto :goto_0

    .line 2616
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v16

    move/from16 v4, v16

    .line 2617
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v16

    move/from16 v5, v16

    .line 2619
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    .line 2620
    move-object/from16 v16, v2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2622
    :cond_4
    const/16 v16, 0x0

    move/from16 v6, v16

    .line 2624
    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v16

    move-object/from16 v7, v16

    .line 2625
    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v16

    move/from16 v8, v16

    .line 2626
    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v16

    move/from16 v9, v16

    .line 2628
    move/from16 v16, v8

    if-nez v16, :cond_5

    .line 2629
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v22, v18

    move/from16 v23, v19

    move/from16 v24, v20

    move/from16 v18, v24

    move-object/from16 v19, v22

    move/from16 v20, v23

    move/from16 v21, v24

    aput v21, v19, v20

    aput v18, v16, v17

    .line 2631
    :cond_5
    move-object/from16 v16, v7

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2633
    move/from16 v16, v8

    packed-switch v16, :pswitch_data_0

    .line 2736
    :goto_1
    :pswitch_0
    move/from16 v16, v6

    if-nez v16, :cond_6

    .line 2737
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2739
    :cond_6
    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V

    .line 2741
    const/16 v16, 0x1

    move/from16 v2, v16

    goto/16 :goto_0

    .line 2635
    :pswitch_1
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2636
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v22, v17

    move/from16 v23, v18

    move/from16 v17, v23

    move-object/from16 v18, v22

    move/from16 v19, v23

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2637
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v22, v17

    move/from16 v23, v18

    move/from16 v17, v23

    move-object/from16 v18, v22

    move/from16 v19, v23

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2639
    const/16 v16, 0x0

    move/from16 v10, v16

    .line 2640
    move/from16 v16, v4

    if-eqz v16, :cond_7

    .line 2641
    move/from16 v16, v10

    const/16 v17, 0x1

    or-int/lit8 v16, v16, 0x1

    move/from16 v10, v16

    .line 2643
    :cond_7
    move/from16 v16, v5

    if-eqz v16, :cond_8

    .line 2644
    move/from16 v16, v10

    const/16 v17, 0x2

    or-int/lit8 v16, v16, 0x2

    move/from16 v10, v16

    .line 2646
    :cond_8
    move-object/from16 v16, v2

    move/from16 v17, v10

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    move-result v16

    .line 2647
    goto/16 :goto_1

    .line 2650
    :pswitch_2
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v9

    invoke-virtual/range {v17 .. v18}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2651
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v9

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v22, v17

    move/from16 v23, v18

    move/from16 v17, v23

    move-object/from16 v18, v22

    move/from16 v19, v23

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2652
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v9

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v22, v17

    move/from16 v23, v18

    move/from16 v17, v23

    move-object/from16 v18, v22

    move/from16 v19, v23

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2653
    goto/16 :goto_1

    .line 2656
    :pswitch_3
    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    move/from16 v10, v16

    .line 2657
    move/from16 v16, v10

    if-gez v16, :cond_9

    .line 2658
    const-string v16, "RecyclerView"

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error processing scroll; pointer index for id "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " not found. Did any MotionEvents get skipped?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 2660
    const/16 v16, 0x0

    move/from16 v2, v16

    goto/16 :goto_0

    .line 2663
    :cond_9
    move-object/from16 v16, v3

    move/from16 v17, v10

    invoke-virtual/range {v16 .. v17}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v11, v16

    .line 2664
    move-object/from16 v16, v3

    move/from16 v17, v10

    invoke-virtual/range {v16 .. v17}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v12, v16

    .line 2665
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move/from16 v16, v0

    move/from16 v17, v11

    sub-int v16, v16, v17

    move/from16 v13, v16

    .line 2666
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move/from16 v16, v0

    move/from16 v17, v12

    sub-int v16, v16, v17

    move/from16 v14, v16

    .line 2668
    move-object/from16 v16, v2

    move/from16 v17, v13

    move/from16 v18, v14

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v20}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 2669
    move/from16 v16, v13

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v13, v16

    .line 2670
    move/from16 v16, v14

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v14, v16

    .line 2671
    move-object/from16 v16, v7

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2673
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v22, v16

    move/from16 v23, v17

    move-object/from16 v16, v22

    move/from16 v17, v23

    move-object/from16 v18, v22

    move/from16 v19, v23

    aget v18, v18, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    add-int v18, v18, v19

    aput v18, v16, v17

    .line 2674
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v22, v16

    move/from16 v23, v17

    move-object/from16 v16, v22

    move/from16 v17, v23

    move-object/from16 v18, v22

    move/from16 v19, v23

    aget v18, v18, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    add-int v18, v18, v19

    aput v18, v16, v17

    .line 2677
    :cond_a
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    .line 2678
    const/16 v16, 0x0

    move/from16 v15, v16

    .line 2679
    move/from16 v16, v4

    if-eqz v16, :cond_b

    move/from16 v16, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_b

    .line 2680
    move/from16 v16, v13

    if-lez v16, :cond_f

    .line 2681
    move/from16 v16, v13

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v13, v16

    .line 2685
    :goto_2
    const/16 v16, 0x1

    move/from16 v15, v16

    .line 2687
    :cond_b
    move/from16 v16, v5

    if-eqz v16, :cond_c

    move/from16 v16, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_c

    .line 2688
    move/from16 v16, v14

    if-lez v16, :cond_10

    .line 2689
    move/from16 v16, v14

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v14, v16

    .line 2693
    :goto_3
    const/16 v16, 0x1

    move/from16 v15, v16

    .line 2695
    :cond_c
    move/from16 v16, v15

    if-eqz v16, :cond_d

    .line 2696
    move-object/from16 v16, v2

    const/16 v17, 0x1

    invoke-direct/range {v16 .. v17}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2700
    :cond_d
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 2701
    move-object/from16 v16, v2

    move/from16 v17, v11

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 2702
    move-object/from16 v16, v2

    move/from16 v17, v12

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 2704
    move-object/from16 v16, v2

    move/from16 v17, v4

    if-eqz v17, :cond_11

    move/from16 v17, v13

    :goto_4
    move/from16 v18, v5

    if-eqz v18, :cond_12

    move/from16 v18, v14

    :goto_5
    move-object/from16 v19, v7

    invoke-virtual/range {v16 .. v19}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 2708
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2711
    :cond_e
    goto/16 :goto_1

    .line 2683
    :cond_f
    move/from16 v16, v13

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v13, v16

    goto/16 :goto_2

    .line 2691
    :cond_10
    move/from16 v16, v14

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v14, v16

    goto/16 :goto_3

    .line 2704
    :cond_11
    const/16 v17, 0x0

    goto :goto_4

    :cond_12
    const/16 v18, 0x0

    goto :goto_5

    .line 2714
    :pswitch_4
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v17}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 2715
    goto/16 :goto_1

    .line 2718
    :pswitch_5
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2719
    const/16 v16, 0x1

    move/from16 v6, v16

    .line 2720
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    const/16 v17, 0x3e8

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2721
    move/from16 v16, v4

    if-eqz v16, :cond_16

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v17, v0

    .line 2722
    invoke-static/range {v16 .. v17}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v16

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    :goto_6
    move/from16 v10, v16

    .line 2723
    move/from16 v16, v5

    if-eqz v16, :cond_17

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v17, v0

    .line 2724
    invoke-static/range {v16 .. v17}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v16

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    :goto_7
    move/from16 v11, v16

    .line 2725
    move/from16 v16, v10

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-nez v16, :cond_13

    move/from16 v16, v11

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_14

    :cond_13
    move-object/from16 v16, v2

    move/from16 v17, v10

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v18, v11

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v16

    if-nez v16, :cond_15

    .line 2726
    :cond_14
    move-object/from16 v16, v2

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2728
    :cond_15
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    .line 2729
    goto/16 :goto_1

    .line 2722
    :cond_16
    const/16 v16, 0x0

    goto :goto_6

    .line 2724
    :cond_17
    const/16 v16, 0x0

    goto :goto_7

    .line 2732
    :pswitch_6
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_1

    .line 2633
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 9

    .prologue
    .line 3504
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 3505
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 3506
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3507
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 3513
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 3514
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 3515
    return-void

    .line 3508
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3509
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 5

    .prologue
    .line 1350
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_0

    .line 1351
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string v3, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1354
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1355
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1356
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1358
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1359
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1360
    return-void

    .line 1356
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 4

    .prologue
    .line 1030
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v2, :cond_0

    .line 1034
    :goto_0
    return-void

    .line 1033
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1034
    goto :goto_0
.end method

.method public removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .locals 4

    .prologue
    .line 2434
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2435
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 2436
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2438
    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 4

    .prologue
    .line 1417
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1418
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1420
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 12

    .prologue
    .line 2286
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v2

    if-eqz v6, :cond_1

    .line 2287
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2292
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object v3, v6

    .line 2293
    move-object v6, v3

    instance-of v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v6, :cond_0

    .line 2295
    move-object v6, v3

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v4, v6

    .line 2296
    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v6, :cond_0

    .line 2297
    move-object v6, v4

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v5, v6

    .line 2298
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object v8, v5

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 2299
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object v8, v5

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 2300
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object v8, v5

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 2301
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object v8, v5

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 2305
    :cond_0
    move-object v6, v0

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2306
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2307
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v7/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v6

    .line 2309
    :cond_1
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-super {v6, v7, v8}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2310
    return-void

    .line 2307
    :cond_2
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 9

    .prologue
    .line 2314
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 7

    .prologue
    .line 2594
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 2595
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 2596
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    move-object v4, v5

    .line 2597
    move-object v5, v4

    move v6, v1

    invoke-interface {v5, v6}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 2595
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2599
    :cond_0
    move-object v5, v0

    move v6, v1

    invoke-super {v5, v6}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2600
    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    .line 3575
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_0

    .line 3576
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3580
    :goto_0
    return-void

    .line 3578
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_0
.end method

.method resumeRequestLayout(Z)V
    .locals 6

    .prologue
    .line 1787
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 1792
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 1794
    :cond_0
    move v2, v1

    if-nez v2, :cond_1

    .line 1803
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1805
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1807
    move v2, v1

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_2

    .line 1809
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1811
    :cond_2
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_3

    .line 1812
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1815
    :cond_3
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 1816
    return-void
.end method

.method saveOldPositions()V
    .locals 6

    .prologue
    .line 3704
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v4

    move v1, v4

    .line 3705
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 3706
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 3711
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3712
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    .line 3705
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3715
    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 9

    .prologue
    .line 1496
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v5, :cond_0

    .line 1497
    const-string v5, "RecyclerView"

    const-string v6, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1509
    :goto_0
    return-void

    .line 1501
    :cond_0
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v5, :cond_1

    .line 1502
    goto :goto_0

    .line 1504
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    move v3, v5

    .line 1505
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    move v4, v5

    .line 1506
    move v5, v3

    if-nez v5, :cond_2

    move v5, v4

    if-eqz v5, :cond_3

    .line 1507
    :cond_2
    move-object v5, v0

    move v6, v3

    if-eqz v6, :cond_4

    move v6, v1

    :goto_1
    move v7, v4

    if-eqz v7, :cond_5

    move v7, v2

    :goto_2
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v5

    .line 1509
    :cond_3
    goto :goto_0

    .line 1507
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 16

    .prologue
    .line 1583
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v8, 0x0

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    .line 1584
    const/4 v8, 0x0

    move v6, v8

    const/4 v8, 0x0

    move v7, v8

    .line 1586
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 1587
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v8, :cond_2

    .line 1588
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1589
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1590
    const-string v8, "RV Scroll"

    invoke-static {v8}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1591
    move v8, v1

    if-eqz v8, :cond_0

    .line 1592
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v8

    move v6, v8

    .line 1593
    move v8, v1

    move v9, v6

    sub-int/2addr v8, v9

    move v4, v8

    .line 1595
    :cond_0
    move v8, v2

    if-eqz v8, :cond_1

    .line 1596
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v8

    move v7, v8

    .line 1597
    move v8, v2

    move v9, v7

    sub-int/2addr v8, v9

    move v5, v8

    .line 1599
    :cond_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 1600
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 1601
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1602
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1604
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1605
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1608
    :cond_3
    move-object v8, v0

    move v9, v6

    move v10, v7

    move v11, v4

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    invoke-virtual/range {v8 .. v13}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1610
    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 1611
    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 1612
    move-object v8, v3

    if-eqz v8, :cond_4

    .line 1613
    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    int-to-float v9, v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1615
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    const/4 v9, 0x0

    move-object v14, v8

    move v15, v9

    move-object v8, v14

    move v9, v15

    move-object v10, v14

    move v11, v15

    aget v10, v10, v11

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    add-int/2addr v10, v11

    aput v10, v8, v9

    .line 1616
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    const/4 v9, 0x1

    move-object v14, v8

    move v15, v9

    move-object v8, v14

    move v9, v15

    move-object v10, v14

    move v11, v15

    aget v10, v10, v11

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    aput v10, v8, v9

    .line 1623
    :cond_5
    :goto_0
    move v8, v6

    if-nez v8, :cond_6

    move v8, v7

    if-eqz v8, :cond_7

    .line 1624
    :cond_6
    move-object v8, v0

    move v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 1626
    :cond_7
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1627
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1629
    :cond_8
    move v8, v6

    if-nez v8, :cond_9

    move v8, v7

    if-eqz v8, :cond_c

    :cond_9
    const/4 v8, 0x1

    :goto_1
    move v0, v8

    return v0

    .line 1617
    :cond_a
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    .line 1618
    move-object v8, v3

    if-eqz v8, :cond_b

    .line 1619
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    move v10, v4

    int-to-float v10, v10

    move-object v11, v3

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move v12, v5

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/RecyclerView;->pullGlows(FFFF)V

    .line 1621
    :cond_b
    move-object v8, v0

    move v9, v1

    move v10, v2

    invoke-direct {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    goto :goto_0

    .line 1629
    :cond_c
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public scrollTo(II)V
    .locals 5

    .prologue
    .line 1490
    move-object v0, p0

    move v1, p1

    move v2, p2

    const-string v3, "RecyclerView"

    const-string v4, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1492
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 4

    .prologue
    .line 1440
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v2, :cond_0

    .line 1451
    :goto_0
    return-void

    .line 1443
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1444
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_1

    .line 1445
    const-string v2, "RecyclerView"

    const-string v3, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1447
    goto :goto_0

    .line 1449
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1450
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v2

    .line 1451
    goto :goto_0
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 3018
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3022
    :goto_0
    return-void

    .line 3021
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3022
    goto :goto_0
.end method

.method public setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 4

    .prologue
    .line 570
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    .line 571
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 572
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 6

    .prologue
    .line 914
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 915
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 916
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 917
    return-void
.end method

.method public setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 4

    .prologue
    .line 1375
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-ne v2, v3, :cond_0

    .line 1380
    :goto_0
    return-void

    .line 1378
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1379
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    .line 1380
    goto :goto_0

    .line 1379
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setClipToPadding(Z)V
    .locals 4

    .prologue
    .line 846
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eq v2, v3, :cond_0

    .line 847
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 849
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 850
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 851
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_1

    .line 852
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 854
    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 4

    .prologue
    .line 833
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    .line 834
    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V
    .locals 4

    .prologue
    .line 2929
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_0

    .line 2930
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2931
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 2933
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 2934
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_1

    .line 2935
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 2937
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 4

    .prologue
    .line 1265
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    .line 1266
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 13

    .prologue
    .line 1841
    move-object v0, p0

    move v1, p1

    move v5, v1

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eq v5, v6, :cond_1

    .line 1842
    move-object v5, v0

    const-string v6, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1843
    move v5, v1

    if-nez v5, :cond_2

    .line 1844
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1845
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v5, :cond_0

    .line 1846
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1848
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1859
    :cond_1
    :goto_0
    return-void

    .line 1850
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v2, v5

    .line 1851
    move-wide v5, v2

    move-wide v7, v2

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    move-object v4, v5

    .line 1853
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 1854
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1855
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 1856
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    goto :goto_0
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 7

    .prologue
    .line 1059
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-ne v2, v3, :cond_0

    .line 1096
    :goto_0
    return-void

    .line 1062
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1065
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_3

    .line 1067
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_1

    .line 1068
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1070
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1071
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1072
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 1074
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v2, :cond_2

    .line 1075
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1077
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1078
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 1083
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/ChildHelper;->removeAllViewsUnfiltered()V

    .line 1084
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 1085
    move-object v2, v1

    if-eqz v2, :cond_5

    .line 1086
    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_4

    .line 1087
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LayoutManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already attached to a RecyclerView: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1080
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    goto :goto_1

    .line 1090
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1091
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v2, :cond_5

    .line 1092
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 1095
    :cond_5
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1096
    goto/16 :goto_0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 4

    .prologue
    .line 9811
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 9812
    return-void
.end method

.method public setOnFlingListener(Landroid/support/v7/widget/RecyclerView$OnFlingListener;)V
    .locals 4
    .param p1    # Landroid/support/v7/widget/RecyclerView$OnFlingListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1107
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    .line 1108
    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1392
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 1393
    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 4

    .prologue
    .line 3919
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 3920
    return-void
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V
    .locals 4

    .prologue
    .line 1239
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V

    .line 1240
    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V
    .locals 4

    .prologue
    .line 986
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    .line 987
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 7

    .prologue
    .line 866
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    move-object v2, v3

    .line 867
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 869
    const-string v3, "RecyclerView"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; using default value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 873
    :pswitch_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 880
    :goto_0
    return-void

    .line 877
    :pswitch_1
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    goto :goto_0

    .line 867
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;)V
    .locals 4

    .prologue
    .line 1250
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;)V

    .line 1251
    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7

    .prologue
    .line 3002
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3003
    const/4 v3, 0x0

    move v2, v3

    .line 3004
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 3005
    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v3

    move v2, v3

    .line 3007
    :cond_0
    move v3, v2

    if-nez v3, :cond_1

    .line 3008
    const/4 v3, 0x0

    move v2, v3

    .line 3010
    :cond_1
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    move v5, v2

    or-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3011
    const/4 v3, 0x1

    move v0, v3

    .line 3013
    :goto_0
    return v0

    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 6

    .prologue
    .line 1878
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_0

    .line 1879
    const-string v3, "RecyclerView"

    const-string v4, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1895
    :goto_0
    return-void

    .line 1883
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v3, :cond_1

    .line 1884
    goto :goto_0

    .line 1886
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1887
    const/4 v3, 0x0

    move v1, v3

    .line 1889
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1890
    const/4 v3, 0x0

    move v2, v3

    .line 1892
    :cond_3
    move v3, v1

    if-nez v3, :cond_4

    move v3, v2

    if-eqz v3, :cond_5

    .line 1893
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    .line 1895
    :cond_5
    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 6

    .prologue
    .line 1477
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v2, :cond_0

    .line 1486
    :goto_0
    return-void

    .line 1480
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_1

    .line 1481
    const-string v2, "RecyclerView"

    const-string v3, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1483
    goto :goto_0

    .line 1485
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V

    .line 1486
    goto :goto_0
.end method

.method public startNestedScroll(I)Z
    .locals 4

    .prologue
    .line 9821
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public stopNestedScroll()V
    .locals 2

    .prologue
    .line 9826
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 9827
    return-void
.end method

.method public stopScroll()V
    .locals 3

    .prologue
    .line 1957
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1958
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    .line 1959
    return-void
.end method

.method public swapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;Z)V
    .locals 7

    .prologue
    .line 898
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 899
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x1

    move v6, v2

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 900
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 901
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 902
    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 12

    .prologue
    .line 3816
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v9

    move v4, v9

    .line 3817
    move v9, v1

    move v10, v2

    add-int/2addr v9, v10

    move v5, v9

    .line 3819
    const/4 v9, 0x0

    move v6, v9

    :goto_0
    move v9, v6

    move v10, v4

    if-ge v9, v10, :cond_2

    .line 3820
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 3821
    move-object v9, v7

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v8, v9

    .line 3822
    move-object v9, v8

    if-eqz v9, :cond_0

    move-object v9, v8

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3819
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3825
    :cond_1
    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v1

    if-lt v9, v10, :cond_0

    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v5

    if-ge v9, v10, :cond_0

    .line 3828
    move-object v9, v8

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3829
    move-object v9, v8

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 3831
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_1

    .line 3834
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move v10, v1

    move v11, v2

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    .line 3835
    return-void
.end method
