.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPager$ViewPositionComparator;,
        Landroid/support/v4/view/ViewPager$LayoutParams;,
        Landroid/support/v4/view/ViewPager$PagerObserver;,
        Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;,
        Landroid/support/v4/view/ViewPager$SavedState;,
        Landroid/support/v4/view/ViewPager$DecorView;,
        Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;,
        Landroid/support/v4/view/ViewPager$PageTransformer;,
        Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$OnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100b3

    aput v3, v1, v2

    sput-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    .line 142
    new-instance v0, Landroid/support/v4/view/ViewPager$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/support/v4/view/ViewPager$1;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 149
    new-instance v0, Landroid/support/v4/view/ViewPager$2;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/support/v4/view/ViewPager$2;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 253
    new-instance v0, Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/support/v4/view/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 393
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 157
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 158
    move-object v2, v0

    new-instance v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    iput-object v3, v2, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 160
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 164
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 165
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 166
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 181
    move-object v2, v0

    const v3, -0x800001

    iput v3, v2, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 182
    move-object v2, v0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    iput v3, v2, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 191
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 209
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 236
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 237
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 271
    move-object v2, v0

    new-instance v3, Landroid/support/v4/view/ViewPager$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v3, v2, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 279
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 394
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    .line 395
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 398
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 158
    move-object v3, v0

    new-instance v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    iput-object v4, v3, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 160
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 164
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 165
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 166
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 181
    move-object v3, v0

    const v4, -0x800001

    iput v4, v3, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 182
    move-object v3, v0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    iput v4, v3, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 191
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 209
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 236
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 237
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 271
    move-object v3, v0

    new-instance v4, Landroid/support/v4/view/ViewPager$3;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v4, v3, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 279
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 399
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    .line 400
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/view/ViewPager;I)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/view/ViewPager;)I
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move v0, v1

    return v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 110
    sget-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V
    .locals 16

    .prologue
    .line 1294
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v12

    move v4, v12

    .line 1295
    move-object v12, v0

    invoke-direct {v12}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v12

    move v5, v12

    .line 1296
    move v12, v5

    if-lez v12, :cond_0

    move-object v12, v0

    iget v12, v12, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v12, v12

    move v13, v5

    int-to-float v13, v13

    div-float/2addr v12, v13

    :goto_0
    move v6, v12

    .line 1298
    move-object v12, v3

    if-eqz v12, :cond_3

    .line 1299
    move-object v12, v3

    iget v12, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move v7, v12

    .line 1301
    move v12, v7

    move-object v13, v1

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v12, v13, :cond_4

    .line 1302
    const/4 v12, 0x0

    move v8, v12

    .line 1303
    const/4 v12, 0x0

    move-object v9, v12

    .line 1304
    move-object v12, v3

    iget v12, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move-object v13, v3

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    move v13, v6

    add-float/2addr v12, v13

    move v10, v12

    .line 1305
    move v12, v7

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v11, v12

    .line 1306
    :goto_1
    move v12, v11

    move-object v13, v1

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-gt v12, v13, :cond_3

    move v12, v8

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_3

    .line 1307
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v9, v12

    .line 1308
    :goto_2
    move v12, v11

    move-object v13, v9

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v12, v13, :cond_1

    move v12, v8

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ge v12, v13, :cond_1

    .line 1309
    add-int/lit8 v8, v8, 0x1

    .line 1310
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v9, v12

    goto :goto_2

    .line 1296
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 1312
    :cond_1
    :goto_3
    move v12, v11

    move-object v13, v9

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v12, v13, :cond_2

    .line 1315
    move v12, v10

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move v14, v11

    invoke-virtual {v13, v14}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    move v14, v6

    add-float/2addr v13, v14

    add-float/2addr v12, v13

    move v10, v12

    .line 1316
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1318
    :cond_2
    move-object v12, v9

    move v13, v10

    iput v13, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1319
    move v12, v10

    move-object v13, v9

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move v14, v6

    add-float/2addr v13, v14

    add-float/2addr v12, v13

    move v10, v12

    .line 1306
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1345
    :cond_3
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v7, v12

    .line 1346
    move-object v12, v1

    iget v12, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move v8, v12

    .line 1347
    move-object v12, v1

    iget v12, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v9, v12

    .line 1348
    move-object v12, v0

    move-object v13, v1

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-nez v13, :cond_7

    move-object v13, v1

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    :goto_4
    iput v13, v12, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 1349
    move-object v12, v0

    move-object v13, v1

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move v14, v4

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    if-ne v13, v14, :cond_8

    move-object v13, v1

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move-object v14, v1

    iget v14, v14, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v13, v14

    :goto_5
    iput v13, v12, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 1352
    move v12, v2

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v10, v12

    :goto_6
    move v12, v10

    if-ltz v12, :cond_b

    .line 1353
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move v13, v10

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v11, v12

    .line 1354
    :goto_7
    move v12, v9

    move-object v13, v11

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v12, v13, :cond_9

    .line 1355
    move v12, v8

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move v14, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v13, v14}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    move v14, v6

    add-float/2addr v13, v14

    sub-float/2addr v12, v13

    move v8, v12

    goto :goto_7

    .line 1321
    :cond_4
    move v12, v7

    move-object v13, v1

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v12, v13, :cond_3

    .line 1322
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v8, v12

    .line 1323
    const/4 v12, 0x0

    move-object v9, v12

    .line 1324
    move-object v12, v3

    iget v12, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move v10, v12

    .line 1325
    move v12, v7

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v11, v12

    .line 1326
    :goto_8
    move v12, v11

    move-object v13, v1

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-lt v12, v13, :cond_3

    move v12, v8

    if-ltz v12, :cond_3

    .line 1327
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v9, v12

    .line 1328
    :goto_9
    move v12, v11

    move-object v13, v9

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v12, v13, :cond_5

    move v12, v8

    if-lez v12, :cond_5

    .line 1329
    add-int/lit8 v8, v8, -0x1

    .line 1330
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v9, v12

    goto :goto_9

    .line 1332
    :cond_5
    :goto_a
    move v12, v11

    move-object v13, v9

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v12, v13, :cond_6

    .line 1335
    move v12, v10

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move v14, v11

    invoke-virtual {v13, v14}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    move v14, v6

    add-float/2addr v13, v14

    sub-float/2addr v12, v13

    move v10, v12

    .line 1336
    add-int/lit8 v11, v11, -0x1

    goto :goto_a

    .line 1338
    :cond_6
    move v12, v10

    move-object v13, v9

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move v14, v6

    add-float/2addr v13, v14

    sub-float/2addr v12, v13

    move v10, v12

    .line 1339
    move-object v12, v9

    move v13, v10

    iput v13, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1326
    add-int/lit8 v11, v11, -0x1

    goto :goto_8

    .line 1348
    :cond_7
    const v13, -0x800001

    goto/16 :goto_4

    .line 1349
    :cond_8
    const v13, 0x7f7fffff    # Float.MAX_VALUE

    goto/16 :goto_5

    .line 1357
    :cond_9
    move v12, v8

    move-object v13, v11

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move v14, v6

    add-float/2addr v13, v14

    sub-float/2addr v12, v13

    move v8, v12

    .line 1358
    move-object v12, v11

    move v13, v8

    iput v13, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1359
    move-object v12, v11

    iget v12, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_a

    move-object v12, v0

    move v13, v8

    iput v13, v12, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 1352
    :cond_a
    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_6

    .line 1361
    :cond_b
    move-object v12, v1

    iget v12, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move-object v13, v1

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    move v13, v6

    add-float/2addr v12, v13

    move v8, v12

    .line 1362
    move-object v12, v1

    iget v12, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v9, v12

    .line 1364
    move v12, v2

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v10, v12

    :goto_b
    move v12, v10

    move v13, v7

    if-ge v12, v13, :cond_e

    .line 1365
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move v13, v10

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v11, v12

    .line 1366
    :goto_c
    move v12, v9

    move-object v13, v11

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v12, v13, :cond_c

    .line 1367
    move v12, v8

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move v14, v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v13, v14}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    move v14, v6

    add-float/2addr v13, v14

    add-float/2addr v12, v13

    move v8, v12

    goto :goto_c

    .line 1369
    :cond_c
    move-object v12, v11

    iget v12, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move v13, v4

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_d

    .line 1370
    move-object v12, v0

    move v13, v8

    move-object v14, v11

    iget v14, v14, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v13, v14

    iput v13, v12, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 1372
    :cond_d
    move-object v12, v11

    move v13, v8

    iput v13, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1373
    move v12, v8

    move-object v13, v11

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move v14, v6

    add-float/2addr v13, v14

    add-float/2addr v12, v13

    move v8, v12

    .line 1364
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1376
    :cond_e
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 1377
    return-void
.end method

.method private completeScroll(Z)V
    .locals 11

    .prologue
    .line 1966
    move-object v0, p0

    move v1, p1

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/view/ViewPager;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    :goto_0
    move v2, v8

    .line 1967
    move v8, v2

    if-eqz v8, :cond_1

    .line 1969
    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1970
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    move v3, v8

    .line 1971
    move v8, v3

    if-eqz v8, :cond_1

    .line 1972
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1973
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v8

    move v4, v8

    .line 1974
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v8

    move v5, v8

    .line 1975
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v8

    move v6, v8

    .line 1976
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v8

    move v7, v8

    .line 1977
    move v8, v4

    move v9, v6

    if-ne v8, v9, :cond_0

    move v8, v5

    move v9, v7

    if-eq v8, v9, :cond_1

    .line 1978
    :cond_0
    move-object v8, v0

    move v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1979
    move v8, v6

    move v9, v4

    if-eq v8, v9, :cond_1

    .line 1980
    move-object v8, v0

    move v9, v6

    invoke-direct {v8, v9}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    move-result v8

    .line 1985
    :cond_1
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1986
    const/4 v8, 0x0

    move v3, v8

    :goto_2
    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 1987
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v4, v8

    .line 1988
    move-object v8, v4

    iget-boolean v8, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v8, :cond_2

    .line 1989
    const/4 v8, 0x1

    move v2, v8

    .line 1990
    move-object v8, v4

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    .line 1986
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1966
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 1970
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 1993
    :cond_5
    move v8, v2

    if-eqz v8, :cond_6

    .line 1994
    move v8, v1

    if-eqz v8, :cond_7

    .line 1995
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {v8, v9}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2000
    :cond_6
    :goto_3
    return-void

    .line 1997
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_3
.end method

.method private determineTargetPage(IFII)I
    .locals 11

    .prologue
    .line 2395
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    if-le v8, v9, :cond_2

    move v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    if-le v8, v9, :cond_2

    .line 2396
    move v8, v3

    if-lez v8, :cond_1

    move v8, v1

    :goto_0
    move v5, v8

    .line 2402
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 2403
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v6, v8

    .line 2404
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v7, v8

    .line 2407
    move-object v8, v6

    iget v8, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move v9, v5

    move-object v10, v7

    iget v10, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v5, v8

    .line 2410
    :cond_0
    move v8, v5

    move v0, v8

    return v0

    .line 2396
    :cond_1
    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2398
    :cond_2
    move v8, v1

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-lt v8, v9, :cond_3

    const v8, 0x3ecccccd    # 0.4f

    :goto_2
    move v6, v8

    .line 2399
    move v8, v1

    move v9, v2

    move v10, v6

    add-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    move v5, v8

    goto :goto_1

    .line 2398
    :cond_3
    const v8, 0x3f19999a    # 0.6f

    goto :goto_2
.end method

.method private dispatchOnPageScrolled(IFI)V
    .locals 11

    .prologue
    .line 1915
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v7, :cond_0

    .line 1916
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move v8, v1

    move v9, v2

    move v10, v3

    invoke-interface {v7, v8, v9, v10}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1918
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v7, :cond_2

    .line 1919
    const/4 v7, 0x0

    move v4, v7

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v5, v7

    :goto_0
    move v7, v4

    move v8, v5

    if-ge v7, v8, :cond_2

    .line 1920
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-object v6, v7

    .line 1921
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 1922
    move-object v7, v6

    move v8, v1

    move v9, v2

    move v10, v3

    invoke-interface {v7, v8, v9, v10}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1919
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1926
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v7, :cond_3

    .line 1927
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move v8, v1

    move v9, v2

    move v10, v3

    invoke-interface {v7, v8, v9, v10}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1929
    :cond_3
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .locals 7

    .prologue
    .line 1932
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v5, :cond_0

    .line 1933
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move v6, v1

    invoke-interface {v5, v6}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1935
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 1936
    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_2

    .line 1937
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-object v4, v5

    .line 1938
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 1939
    move-object v5, v4

    move v6, v1

    invoke-interface {v5, v6}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1936
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1943
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v5, :cond_3

    .line 1944
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move v6, v1

    invoke-interface {v5, v6}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1946
    :cond_3
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .locals 7

    .prologue
    .line 1949
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v5, :cond_0

    .line 1950
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move v6, v1

    invoke-interface {v5, v6}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1952
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 1953
    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_2

    .line 1954
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-object v4, v5

    .line 1955
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 1956
    move-object v5, v4

    move v6, v1

    invoke-interface {v5, v6}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1953
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1960
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v5, :cond_3

    .line 1961
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move v6, v1

    invoke-interface {v5, v6}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1963
    :cond_3
    return-void
.end method

.method private enableLayers(Z)V
    .locals 8

    .prologue
    .line 2007
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    move v2, v5

    .line 2008
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 2009
    move v5, v1

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    :goto_1
    move v4, v5

    .line 2011
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move v6, v4

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 2008
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2009
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 2013
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 3

    .prologue
    .line 2649
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2650
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 2652
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 2653
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 2654
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2656
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 11

    .prologue
    .line 2844
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    if-nez v5, :cond_0

    .line 2845
    new-instance v5, Landroid/graphics/Rect;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v1, v5

    .line 2847
    :cond_0
    move-object v5, v2

    if-nez v5, :cond_1

    .line 2848
    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2849
    move-object v5, v1

    move-object v0, v5

    .line 2866
    :goto_0
    return-object v0

    .line 2851
    :cond_1
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 2852
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 2853
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 2854
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 2856
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    .line 2857
    :goto_1
    move-object v5, v3

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    move-object v5, v3

    move-object v6, v0

    if-eq v5, v6, :cond_2

    .line 2858
    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup;

    move-object v4, v5

    .line 2859
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 2860
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 2861
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 2862
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getBottom()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 2864
    move-object v5, v4

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    .line 2865
    goto :goto_1

    .line 2866
    :cond_2
    move-object v5, v1

    move-object v0, v5

    goto :goto_0
.end method

.method private getClientWidth()I
    .locals 3

    .prologue
    .line 601
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 18

    .prologue
    .line 2352
    move-object/from16 v1, p0

    move-object v15, v1

    invoke-direct {v15}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v15

    move v2, v15

    .line 2353
    move v15, v2

    if-lez v15, :cond_3

    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v15

    int-to-float v15, v15

    move/from16 v16, v2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    :goto_0
    move v3, v15

    .line 2354
    move v15, v2

    if-lez v15, :cond_4

    move-object v15, v1

    iget v15, v15, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v15, v15

    move/from16 v16, v2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    :goto_1
    move v4, v15

    .line 2355
    const/4 v15, -0x1

    move v5, v15

    .line 2356
    const/4 v15, 0x0

    move v6, v15

    .line 2357
    const/4 v15, 0x0

    move v7, v15

    .line 2358
    const/4 v15, 0x1

    move v8, v15

    .line 2360
    const/4 v15, 0x0

    move-object v9, v15

    .line 2361
    const/4 v15, 0x0

    move v10, v15

    :goto_2
    move v15, v10

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 2362
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v11, v15

    .line 2364
    move v15, v8

    if-nez v15, :cond_0

    move-object v15, v11

    iget v15, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v16, v5

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 2366
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v11, v15

    .line 2367
    move-object v15, v11

    move/from16 v16, v6

    move/from16 v17, v7

    add-float v16, v16, v17

    move/from16 v17, v4

    add-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 2368
    move-object v15, v11

    move/from16 v16, v5

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2369
    move-object v15, v11

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v16, v0

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 2370
    add-int/lit8 v10, v10, -0x1

    .line 2372
    :cond_0
    move-object v15, v11

    iget v15, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move v12, v15

    .line 2374
    move v15, v12

    move v13, v15

    .line 2375
    move v15, v12

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v16, v0

    add-float v15, v15, v16

    move/from16 v16, v4

    add-float v15, v15, v16

    move v14, v15

    .line 2376
    move v15, v8

    if-nez v15, :cond_1

    move v15, v3

    move/from16 v16, v13

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_5

    .line 2377
    :cond_1
    move v15, v3

    move/from16 v16, v14

    cmpg-float v15, v15, v16

    if-ltz v15, :cond_2

    move v15, v10

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 2378
    :cond_2
    move-object v15, v11

    move-object v1, v15

    .line 2390
    :goto_3
    return-object v1

    .line 2353
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 2354
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 2381
    :cond_5
    move-object v15, v9

    move-object v1, v15

    goto :goto_3

    .line 2383
    :cond_6
    const/4 v15, 0x0

    move v8, v15

    .line 2384
    move-object v15, v11

    iget v15, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move v5, v15

    .line 2385
    move v15, v12

    move v6, v15

    .line 2386
    move-object v15, v11

    iget v15, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move v7, v15

    .line 2387
    move-object v15, v11

    move-object v9, v15

    .line 2361
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 2390
    :cond_7
    move-object v15, v9

    move-object v1, v15

    goto :goto_3
.end method

.method private static isDecorView(Landroid/view/View;)Z
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1490
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 1491
    move-object v2, v1

    const-class v3, Landroid/support/v4/view/ViewPager$DecorView;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isGutterDrag(FF)Z
    .locals 6

    .prologue
    .line 2003
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v3, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    :cond_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    move v3, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    .line 2634
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-static {v5}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v5

    move v2, v5

    .line 2635
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    move v3, v5

    .line 2636
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    if-ne v5, v6, :cond_0

    .line 2639
    move v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 2640
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, v5, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2641
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2642
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_0

    .line 2643
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 2646
    :cond_0
    return-void

    .line 2639
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 14

    .prologue
    .line 1810
    move-object v0, p0

    move v1, p1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 1811
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-eqz v9, :cond_0

    .line 1814
    const/4 v9, 0x0

    move v0, v9

    .line 1839
    :goto_0
    return v0

    .line 1816
    :cond_0
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1817
    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 1818
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    if-nez v9, :cond_1

    .line 1819
    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "onPageScrolled did not call superclass implementation"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1822
    :cond_1
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 1824
    :cond_2
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v9

    move-object v2, v9

    .line 1825
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v9

    move v3, v9

    .line 1826
    move v9, v3

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v9, v10

    move v4, v9

    .line 1827
    move-object v9, v0

    iget v9, v9, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v9, v9

    move v10, v3

    int-to-float v10, v10

    div-float/2addr v9, v10

    move v5, v9

    .line 1828
    move-object v9, v2

    iget v9, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move v6, v9

    .line 1829
    move v9, v1

    int-to-float v9, v9

    move v10, v3

    int-to-float v10, v10

    div-float/2addr v9, v10

    move-object v10, v2

    iget v10, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v9, v10

    move-object v10, v2

    iget v10, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move v11, v5

    add-float/2addr v10, v11

    div-float/2addr v9, v10

    move v7, v9

    .line 1831
    move v9, v7

    move v10, v4

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move v8, v9

    .line 1833
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1834
    move-object v9, v0

    move v10, v6

    move v11, v7

    move v12, v8

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 1835
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    if-nez v9, :cond_3

    .line 1836
    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "onPageScrolled did not call superclass implementation"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1839
    :cond_3
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0
.end method

.method private performDrag(F)Z
    .locals 20

    .prologue
    .line 2301
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v15, 0x0

    move v3, v15

    .line 2303
    move-object v15, v1

    iget v15, v15, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move/from16 v16, v2

    sub-float v15, v15, v16

    move v4, v15

    .line 2304
    move-object v15, v1

    move/from16 v16, v2

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2306
    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v15

    int-to-float v15, v15

    move v5, v15

    .line 2307
    move v15, v5

    move/from16 v16, v4

    add-float v15, v15, v16

    move v6, v15

    .line 2308
    move-object v15, v1

    invoke-direct {v15}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v15

    move v7, v15

    .line 2310
    move v15, v7

    int-to-float v15, v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move v8, v15

    .line 2311
    move v15, v7

    int-to-float v15, v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move v9, v15

    .line 2312
    const/4 v15, 0x1

    move v10, v15

    .line 2313
    const/4 v15, 0x1

    move v11, v15

    .line 2315
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v12, v15

    .line 2316
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v13, v15

    .line 2317
    move-object v15, v12

    iget v15, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eqz v15, :cond_0

    .line 2318
    const/4 v15, 0x0

    move v10, v15

    .line 2319
    move-object v15, v12

    iget v15, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move/from16 v16, v7

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    move v8, v15

    .line 2321
    :cond_0
    move-object v15, v13

    iget v15, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 2322
    const/4 v15, 0x0

    move v11, v15

    .line 2323
    move-object v15, v13

    iget v15, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move/from16 v16, v7

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    move v9, v15

    .line 2326
    :cond_1
    move v15, v6

    move/from16 v16, v8

    cmpg-float v15, v15, v16

    if-gez v15, :cond_4

    .line 2327
    move v15, v10

    if-eqz v15, :cond_2

    .line 2328
    move v15, v8

    move/from16 v16, v6

    sub-float v15, v15, v16

    move v14, v15

    .line 2329
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move/from16 v16, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v17, v7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v15

    move v3, v15

    .line 2331
    :cond_2
    move v15, v8

    move v6, v15

    .line 2340
    :cond_3
    :goto_0
    move-object v15, v1

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move/from16 v16, v0

    move/from16 v17, v6

    move/from16 v18, v6

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    add-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2341
    move-object v15, v1

    move/from16 v16, v6

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 2342
    move-object v15, v1

    move/from16 v16, v6

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    move-result v15

    .line 2344
    move v15, v3

    move v1, v15

    return v1

    .line 2332
    :cond_4
    move v15, v6

    move/from16 v16, v9

    cmpl-float v15, v15, v16

    if-lez v15, :cond_3

    .line 2333
    move v15, v11

    if-eqz v15, :cond_5

    .line 2334
    move v15, v6

    move/from16 v16, v9

    sub-float v15, v15, v16

    move v14, v15

    .line 2335
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move/from16 v16, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v17, v7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v15

    move v3, v15

    .line 2337
    :cond_5
    move v15, v9

    move v6, v15

    goto :goto_0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 13

    .prologue
    .line 1647
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v10, v2

    if-lez v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1648
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1649
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v11

    move-object v12, v0

    invoke-direct {v12}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v12

    mul-int/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 1670
    :cond_0
    :goto_0
    return-void

    .line 1651
    :cond_1
    move v10, v1

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    move v11, v3

    add-int/2addr v10, v11

    move v5, v10

    .line 1652
    move v10, v2

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    move v11, v4

    add-int/2addr v10, v11

    move v6, v10

    .line 1654
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v10

    move v7, v10

    .line 1655
    move v10, v7

    int-to-float v10, v10

    move v11, v6

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v8, v10

    .line 1656
    move v10, v8

    move v11, v5

    int-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v9, v10

    .line 1658
    move-object v10, v0

    move v11, v9

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1659
    goto :goto_0

    .line 1661
    :cond_2
    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {v10, v11}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v10

    move-object v5, v10

    .line 1662
    move-object v10, v5

    if-eqz v10, :cond_3

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    :goto_1
    move v6, v10

    .line 1663
    move v10, v6

    move v11, v1

    move-object v12, v0

    .line 1664
    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v7, v10

    .line 1665
    move v10, v7

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v11

    if-eq v10, v11, :cond_0

    .line 1666
    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 1667
    move-object v10, v0

    move v11, v7

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1662
    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 6

    .prologue
    .line 557
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    :goto_0
    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 558
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 559
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object v3, v4

    .line 560
    move-object v4, v3

    iget-boolean v4, v4, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v4, :cond_0

    .line 561
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    .line 562
    add-int/lit8 v1, v1, -0x1

    .line 557
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 565
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 5

    .prologue
    .line 2294
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    .line 2295
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 2296
    move-object v3, v2

    move v4, v1

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2298
    :cond_0
    return-void
.end method

.method private resetTouch()Z
    .locals 4

    .prologue
    .line 2287
    move-object v0, p0

    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2288
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 2289
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v3

    or-int/2addr v2, v3

    move v1, v2

    .line 2290
    move v2, v1

    move v0, v2

    return v0
.end method

.method private scrollToItem(IZIZ)V
    .locals 12

    .prologue
    .line 677
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v8

    move-object v5, v8

    .line 678
    const/4 v8, 0x0

    move v6, v8

    .line 679
    move-object v8, v5

    if-eqz v8, :cond_0

    .line 680
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v8

    move v7, v8

    .line 681
    move v8, v7

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 682
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 681
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v6, v8

    .line 684
    :cond_0
    move v8, v2

    if-eqz v8, :cond_2

    .line 685
    move-object v8, v0

    move v9, v6

    const/4 v10, 0x0

    move v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    .line 686
    move v8, v4

    if-eqz v8, :cond_1

    .line 687
    move-object v8, v0

    move v9, v1

    invoke-direct {v8, v9}, Landroid/support/v4/view/ViewPager;->dispatchOnPageSelected(I)V

    .line 697
    :cond_1
    :goto_0
    return-void

    .line 690
    :cond_2
    move v8, v4

    if-eqz v8, :cond_3

    .line 691
    move-object v8, v0

    move v9, v1

    invoke-direct {v8, v9}, Landroid/support/v4/view/ViewPager;->dispatchOnPageSelected(I)V

    .line 693
    :cond_3
    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 694
    move-object v8, v0

    move v9, v6

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 695
    move-object v8, v0

    move v9, v6

    invoke-direct {v8, v9}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    move-result v8

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 4

    .prologue
    .line 490
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/view/ViewPager;->mScrollState:I

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 500
    :goto_0
    return-void

    .line 494
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 495
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v2, :cond_1

    .line 497
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-direct {v2, v3}, Landroid/support/v4/view/ViewPager;->enableLayers(Z)V

    .line 499
    :cond_1
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/view/ViewPager;->dispatchOnScrollStateChanged(I)V

    .line 500
    goto :goto_0

    .line 497
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 4

    .prologue
    .line 2659
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 2660
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    .line 2671
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 8

    .prologue
    .line 1278
    move-object v0, p0

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    if-eqz v4, :cond_2

    .line 1279
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 1280
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1284
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    move v1, v4

    .line 1285
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 1286
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1287
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1285
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1282
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1289
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v5, Landroid/support/v4/view/ViewPager;->sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1291
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 13
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
    .line 2890
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v9, v1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v4, v9

    .line 2892
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v9

    move v5, v9

    .line 2894
    move v9, v5

    const/high16 v10, 0x60000

    if-eq v9, v10, :cond_1

    .line 2895
    const/4 v9, 0x0

    move v6, v9

    :goto_0
    move v9, v6

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 2896
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 2897
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    .line 2898
    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v9

    move-object v8, v9

    .line 2899
    move-object v9, v8

    if-eqz v9, :cond_0

    move-object v9, v8

    iget v9, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v9, v10, :cond_0

    .line 2900
    move-object v9, v7

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2895
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2910
    :cond_1
    move v9, v5

    const/high16 v10, 0x40000

    if-ne v9, v10, :cond_2

    move v9, v4

    move-object v10, v1

    .line 2911
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_5

    .line 2914
    :cond_2
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v9

    if-nez v9, :cond_3

    .line 2925
    :goto_1
    return-void

    .line 2917
    :cond_3
    move v9, v3

    const/4 v10, 0x1

    and-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    move-object v9, v0

    .line 2918
    invoke-virtual {v9}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v9

    if-nez v9, :cond_4

    .line 2919
    goto :goto_1

    .line 2921
    :cond_4
    move-object v9, v1

    if-eqz v9, :cond_5

    .line 2922
    move-object v9, v1

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 2925
    :cond_5
    goto :goto_1
.end method

.method addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 9

    .prologue
    .line 1004
    move-object v0, p0

    move v1, p1

    move v2, p2

    new-instance v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    move-object v3, v4

    .line 1005
    move-object v4, v3

    move v5, v1

    iput v5, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1006
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object v6, v0

    move v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 1007
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    iput v5, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 1008
    move v4, v2

    if-ltz v4, :cond_0

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 1009
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1013
    :goto_0
    move-object v4, v3

    move-object v0, v4

    return-object v0

    .line 1011
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V
    .locals 6
    .param p1    # Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 582
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-nez v2, :cond_0

    .line 583
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 585
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 586
    return-void
.end method

.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 6

    .prologue
    .line 724
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v2, :cond_0

    .line 725
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 727
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 728
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2935
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 2936
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 2937
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 2938
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v5

    move-object v4, v5

    .line 2939
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    iget v5, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 2940
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2935
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2944
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 10

    .prologue
    .line 1464
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1465
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v3, v5

    .line 1467
    :cond_0
    move-object v5, v3

    check-cast v5, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object v4, v5

    .line 1469
    move-object v5, v4

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget-boolean v6, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    move-object v7, v1

    invoke-static {v7}, Landroid/support/v4/view/ViewPager;->isDecorView(Landroid/view/View;)Z

    move-result v7

    or-int/2addr v6, v7

    iput-boolean v6, v5, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    .line 1470
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v5, :cond_2

    .line 1471
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-boolean v5, v5, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v5, :cond_1

    .line 1472
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "Cannot add pager decor view during layout"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1474
    :cond_1
    move-object v5, v4

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1475
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    .line 1487
    :goto_0
    return-void

    .line 1477
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 12

    .prologue
    .line 2778
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v7

    move-object v2, v7

    .line 2779
    move-object v7, v2

    move-object v8, v0

    if-ne v7, v8, :cond_3

    .line 2780
    const/4 v7, 0x0

    move-object v2, v7

    .line 2804
    :cond_0
    :goto_0
    const/4 v7, 0x0

    move v3, v7

    .line 2806
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    move-object v8, v0

    move-object v9, v2

    move v10, v1

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 2808
    move-object v7, v4

    if-eqz v7, :cond_a

    move-object v7, v4

    move-object v8, v2

    if-eq v7, v8, :cond_a

    .line 2809
    move v7, v1

    const/16 v8, 0x11

    if-ne v7, v8, :cond_8

    .line 2812
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move v5, v7

    .line 2813
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move v6, v7

    .line 2814
    move-object v7, v2

    if-eqz v7, :cond_7

    move v7, v5

    move v8, v6

    if-lt v7, v8, :cond_7

    .line 2815
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v7

    move v3, v7

    .line 2837
    :cond_1
    :goto_1
    move v7, v3

    if-eqz v7, :cond_2

    .line 2838
    move-object v7, v0

    move v8, v1

    invoke-static {v8}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    .line 2840
    :cond_2
    move v7, v3

    move v0, v7

    return v0

    .line 2781
    :cond_3
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 2782
    const/4 v7, 0x0

    move v3, v7

    .line 2783
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v4, v7

    :goto_2
    move-object v7, v4

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_4

    .line 2785
    move-object v7, v4

    move-object v8, v0

    if-ne v7, v8, :cond_5

    .line 2786
    const/4 v7, 0x1

    move v3, v7

    .line 2790
    :cond_4
    move v7, v3

    if-nez v7, :cond_0

    .line 2792
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v7

    .line 2793
    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2794
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v5, v7

    :goto_3
    move-object v7, v5

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_6

    .line 2796
    move-object v7, v4

    const-string v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2795
    move-object v7, v5

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v5, v7

    goto :goto_3

    .line 2784
    :cond_5
    move-object v7, v4

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v4, v7

    goto :goto_2

    .line 2798
    :cond_6
    const-string v7, "ViewPager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    .line 2799
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2798
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2800
    const/4 v7, 0x0

    move-object v2, v7

    goto/16 :goto_0

    .line 2817
    :cond_7
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    move-result v7

    move v3, v7

    goto/16 :goto_1

    .line 2819
    :cond_8
    move v7, v1

    const/16 v8, 0x42

    if-ne v7, v8, :cond_1

    .line 2822
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move v5, v7

    .line 2823
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move v6, v7

    .line 2824
    move-object v7, v2

    if-eqz v7, :cond_9

    move v7, v5

    move v8, v6

    if-gt v7, v8, :cond_9

    .line 2825
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v7

    move v3, v7

    .line 2829
    :goto_4
    goto/16 :goto_1

    .line 2827
    :cond_9
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    move-result v7

    move v3, v7

    goto :goto_4

    .line 2830
    :cond_a
    move v7, v1

    const/16 v8, 0x11

    if-eq v7, v8, :cond_b

    move v7, v1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 2832
    :cond_b
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v7

    move v3, v7

    goto/16 :goto_1

    .line 2833
    :cond_c
    move v7, v1

    const/16 v8, 0x42

    if-eq v7, v8, :cond_d

    move v7, v1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 2835
    :cond_d
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v7

    move v3, v7

    goto/16 :goto_1
.end method

.method public beginFakeDrag()Z
    .locals 14

    .prologue
    .line 2517
    move-object v0, p0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v4, :cond_0

    .line 2518
    const/4 v4, 0x0

    move v0, v4

    .line 2533
    :goto_0
    return v0

    .line 2520
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    .line 2521
    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 2522
    move-object v4, v0

    move-object v5, v0

    const/4 v6, 0x0

    move-object v12, v5

    move v13, v6

    move v5, v13

    move-object v6, v12

    move v7, v13

    iput v7, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    iput v5, v4, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    .line 2523
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 2524
    move-object v4, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2528
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-wide v1, v4

    .line 2529
    move-wide v4, v1

    move-wide v6, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    move-object v3, v4

    .line 2530
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2531
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 2532
    move-object v4, v0

    move-wide v5, v1

    iput-wide v5, v4, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    .line 2533
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 2526
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 19

    .prologue
    .line 2708
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v12, v1

    instance-of v12, v12, Landroid/view/ViewGroup;

    if-eqz v12, :cond_1

    .line 2709
    move-object v12, v1

    check-cast v12, Landroid/view/ViewGroup;

    move-object v6, v12

    .line 2710
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getScrollX()I

    move-result v12

    move v7, v12

    .line 2711
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getScrollY()I

    move-result v12

    move v8, v12

    .line 2712
    move-object v12, v6

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    move v9, v12

    .line 2714
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v10, v12

    :goto_0
    move v12, v10

    if-ltz v12, :cond_1

    .line 2717
    move-object v12, v6

    move v13, v10

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v11, v12

    .line 2718
    move v12, v4

    move v13, v7

    add-int/2addr v12, v13

    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    if-lt v12, v13, :cond_0

    move v12, v4

    move v13, v7

    add-int/2addr v12, v13

    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v13

    if-ge v12, v13, :cond_0

    move v12, v5

    move v13, v8

    add-int/2addr v12, v13

    move-object v13, v11

    .line 2719
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    if-lt v12, v13, :cond_0

    move v12, v5

    move v13, v8

    add-int/2addr v12, v13

    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    if-ge v12, v13, :cond_0

    move-object v12, v0

    move-object v13, v11

    const/4 v14, 0x1

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v7

    add-int v16, v16, v17

    move-object/from16 v17, v11

    .line 2720
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v17, v5

    move/from16 v18, v8

    add-int v17, v17, v18

    move-object/from16 v18, v11

    .line 2721
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    .line 2720
    invoke-virtual/range {v12 .. v17}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2722
    const/4 v12, 0x1

    move v0, v12

    .line 2727
    :goto_1
    return v0

    .line 2714
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 2727
    :cond_1
    move v12, v2

    if-eqz v12, :cond_2

    move-object v12, v1

    move v13, v3

    neg-int v13, v13

    invoke-static {v12, v13}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    :goto_2
    move v0, v12

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    goto :goto_2
.end method

.method public canScrollHorizontally(I)Z
    .locals 7

    .prologue
    .line 2681
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v4, :cond_0

    .line 2682
    const/4 v4, 0x0

    move v0, v4

    .line 2692
    :goto_0
    return v0

    .line 2685
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v4

    move v2, v4

    .line 2686
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    move v3, v4

    .line 2687
    move v4, v1

    if-gez v4, :cond_2

    .line 2688
    move v4, v3

    move v5, v2

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-le v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 2689
    :cond_2
    move v4, v1

    if-lez v4, :cond_4

    .line 2690
    move v4, v3

    move v5, v2

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-ge v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 2692
    :cond_4
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 3014
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

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

.method public clearOnPageChangeListeners()V
    .locals 2

    .prologue
    .line 746
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 747
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 749
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    .line 1785
    move-object v0, p0

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/view/ViewPager;->mIsScrollStarted:Z

    .line 1786
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1787
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v5

    move v1, v5

    .line 1788
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v5

    move v2, v5

    .line 1789
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    move v3, v5

    .line 1790
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    move v4, v5

    .line 1792
    move v5, v1

    move v6, v3

    if-ne v5, v6, :cond_0

    move v5, v2

    move v6, v4

    if-eq v5, v6, :cond_1

    .line 1793
    :cond_0
    move-object v5, v0

    move v6, v3

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1794
    move-object v5, v0

    move v6, v3

    invoke-direct {v5, v6}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1795
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1796
    move-object v5, v0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1801
    :cond_1
    move-object v5, v0

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1807
    :goto_0
    return-void

    .line 1806
    :cond_2
    move-object v5, v0

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 1807
    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 13

    .prologue
    .line 1019
    move-object v0, p0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v9}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v9

    move v1, v9

    .line 1020
    move-object v9, v0

    move v10, v1

    iput v10, v9, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    .line 1021
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    if-ge v9, v10, :cond_1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 1022
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v1

    if-ge v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_0
    move v2, v9

    .line 1023
    move-object v9, v0

    iget v9, v9, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move v3, v9

    .line 1025
    const/4 v9, 0x0

    move v4, v9

    .line 1026
    const/4 v9, 0x0

    move v5, v9

    :goto_1
    move v9, v5

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 1027
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v6, v9

    .line 1028
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object v10, v6

    iget-object v10, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    move v7, v9

    .line 1030
    move v9, v7

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 1026
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1022
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 1034
    :cond_2
    move v9, v7

    const/4 v10, -0x2

    if-ne v9, v10, :cond_4

    .line 1035
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 1036
    add-int/lit8 v5, v5, -0x1

    .line 1038
    move v9, v4

    if-nez v9, :cond_3

    .line 1039
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object v10, v0

    invoke-virtual {v9, v10}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1040
    const/4 v9, 0x1

    move v4, v9

    .line 1043
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object v10, v0

    move-object v11, v6

    iget v11, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object v12, v6

    iget-object v12, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1044
    const/4 v9, 0x1

    move v2, v9

    .line 1046
    move-object v9, v0

    iget v9, v9, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move-object v10, v6

    iget v10, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v9, v10, :cond_0

    .line 1048
    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move v11, v1

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v3, v9

    .line 1049
    const/4 v9, 0x1

    move v2, v9

    goto :goto_2

    .line 1054
    :cond_4
    move-object v9, v6

    iget v9, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move v10, v7

    if-eq v9, v10, :cond_0

    .line 1055
    move-object v9, v6

    iget v9, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v9, v10, :cond_5

    .line 1057
    move v9, v7

    move v3, v9

    .line 1060
    :cond_5
    move-object v9, v6

    move v10, v7

    iput v10, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1061
    const/4 v9, 0x1

    move v2, v9

    goto :goto_2

    .line 1065
    :cond_6
    move v9, v4

    if-eqz v9, :cond_7

    .line 1066
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object v10, v0

    invoke-virtual {v9, v10}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1069
    :cond_7
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v10, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1071
    move v9, v2

    if-eqz v9, :cond_a

    .line 1073
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    move v5, v9

    .line 1074
    const/4 v9, 0x0

    move v6, v9

    :goto_3
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_9

    .line 1075
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 1076
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object v8, v9

    .line 1077
    move-object v9, v8

    iget-boolean v9, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_8

    .line 1078
    move-object v9, v8

    const/4 v10, 0x0

    iput v10, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    .line 1074
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1082
    :cond_9
    move-object v9, v0

    move v10, v3

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1083
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 1085
    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 2733
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8

    .prologue
    .line 2982
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v6

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_0

    .line 2983
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v6

    move v0, v6

    .line 2999
    :goto_0
    return v0

    .line 2987
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v6

    move v2, v6

    .line 2988
    const/4 v6, 0x0

    move v3, v6

    :goto_1
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 2989
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 2990
    move-object v6, v4

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2991
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v6

    move-object v5, v6

    .line 2992
    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    iget v6, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    move-object v6, v4

    move-object v7, v1

    .line 2993
    invoke-virtual {v6, v7}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2994
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 2988
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2999
    :cond_2
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 6

    .prologue
    .line 923
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    move v1, v2

    .line 924
    move v2, v1

    float-to-double v2, v2

    const-wide v4, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v2, v4

    double-to-float v2, v2

    move v1, v2

    .line 925
    move v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    move v0, v2

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    .line 2415
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2416
    const/4 v7, 0x0

    move v2, v7

    .line 2418
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getOverScrollMode()I

    move-result v7

    move v3, v7

    .line 2419
    move v7, v3

    if-eqz v7, :cond_0

    move v7, v3

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 2421
    invoke-virtual {v7}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    .line 2422
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v7}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2423
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v4, v7

    .line 2424
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 2425
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    move v6, v7

    .line 2427
    move-object v7, v1

    const/high16 v8, 0x43870000    # 270.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2428
    move-object v7, v1

    move v8, v5

    neg-int v8, v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    move v10, v6

    int-to-float v10, v10

    mul-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2429
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move v8, v5

    move v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2430
    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    or-int/2addr v7, v8

    move v2, v7

    .line 2431
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2433
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v7}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2434
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v4, v7

    .line 2435
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    move v5, v7

    .line 2436
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    .line 2438
    move-object v7, v1

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2439
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    neg-float v9, v9

    move v10, v5

    int-to-float v10, v10

    mul-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2440
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move v8, v6

    move v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2441
    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    or-int/2addr v7, v8

    move v2, v7

    .line 2442
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2449
    :cond_2
    :goto_0
    move v7, v2

    if-eqz v7, :cond_3

    .line 2451
    move-object v7, v0

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2453
    :cond_3
    return-void

    .line 2445
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v7}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 2446
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v7}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 911
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 912
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object v1, v2

    .line 913
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 914
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    .line 916
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 16

    .prologue
    .line 2543
    move-object/from16 v0, p0

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    if-nez v10, :cond_0

    .line 2544
    new-instance v10, Ljava/lang/IllegalStateException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string v12, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2547
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v10, :cond_1

    .line 2548
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v1, v10

    .line 2549
    move-object v10, v1

    const/16 v11, 0x3e8

    move-object v12, v0

    iget v12, v12, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2550
    move-object v10, v1

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {v10, v11}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v10

    float-to-int v10, v10

    move v2, v10

    .line 2552
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2553
    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v10

    move v3, v10

    .line 2554
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v10

    move v4, v10

    .line 2555
    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v10

    move-object v5, v10

    .line 2556
    move-object v10, v5

    iget v10, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move v6, v10

    .line 2557
    move v10, v4

    int-to-float v10, v10

    move v11, v3

    int-to-float v11, v11

    div-float/2addr v10, v11

    move-object v11, v5

    iget v11, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v10, v11

    move-object v11, v5

    iget v11, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v10, v11

    move v7, v10

    .line 2558
    move-object v10, v0

    iget v10, v10, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr v10, v11

    float-to-int v10, v10

    move v8, v10

    .line 2559
    move-object v10, v0

    move v11, v6

    move v12, v7

    move v13, v2

    move v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result v10

    move v9, v10

    .line 2561
    move-object v10, v0

    move v11, v9

    const/4 v12, 0x1

    const/4 v13, 0x1

    move v14, v2

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2563
    :cond_1
    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 2565
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    .line 2566
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    .line 2745
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v2, v3

    .line 2746
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 2747
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2767
    :cond_0
    :goto_0
    move v3, v2

    move v0, v3

    return v0

    .line 2749
    :sswitch_0
    move-object v3, v0

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v3

    move v2, v3

    .line 2750
    goto :goto_0

    .line 2752
    :sswitch_1
    move-object v3, v0

    const/16 v4, 0x42

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v3

    move v2, v3

    .line 2753
    goto :goto_0

    .line 2755
    :sswitch_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 2758
    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2759
    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v3

    move v2, v3

    goto :goto_0

    .line 2760
    :cond_1
    move-object v3, v1

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2761
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v3

    move v2, v3

    goto :goto_0

    .line 2747
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 22

    .prologue
    .line 2576
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v13, v1

    iget-boolean v13, v13, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    if-nez v13, :cond_0

    .line 2577
    new-instance v13, Ljava/lang/IllegalStateException;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    const-string v15, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2580
    :cond_0
    move-object v13, v1

    iget-object v13, v13, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v13, :cond_1

    .line 2618
    :goto_0
    return-void

    .line 2584
    :cond_1
    move-object v13, v1

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    iget v14, v14, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move v15, v2

    add-float/2addr v14, v15

    iput v14, v13, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2586
    move-object v13, v1

    invoke-virtual {v13}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v13

    int-to-float v13, v13

    move v3, v13

    .line 2587
    move v13, v3

    move v14, v2

    sub-float/2addr v13, v14

    move v4, v13

    .line 2588
    move-object v13, v1

    invoke-direct {v13}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v13

    move v5, v13

    .line 2590
    move v13, v5

    int-to-float v13, v13

    move-object v14, v1

    iget v14, v14, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    mul-float/2addr v13, v14

    move v6, v13

    .line 2591
    move v13, v5

    int-to-float v13, v13

    move-object v14, v1

    iget v14, v14, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    mul-float/2addr v13, v14

    move v7, v13

    .line 2593
    move-object v13, v1

    iget-object v13, v13, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v8, v13

    .line 2594
    move-object v13, v1

    iget-object v13, v13, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v9, v13

    .line 2595
    move-object v13, v8

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eqz v13, :cond_2

    .line 2596
    move-object v13, v8

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move v14, v5

    int-to-float v14, v14

    mul-float/2addr v13, v14

    move v6, v13

    .line 2598
    :cond_2
    move-object v13, v9

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v14}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    if-eq v13, v14, :cond_3

    .line 2599
    move-object v13, v9

    iget v13, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move v14, v5

    int-to-float v14, v14

    mul-float/2addr v13, v14

    move v7, v13

    .line 2602
    :cond_3
    move v13, v4

    move v14, v6

    cmpg-float v13, v13, v14

    if-gez v13, :cond_5

    .line 2603
    move v13, v6

    move v4, v13

    .line 2608
    :cond_4
    :goto_1
    move-object v13, v1

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    iget v14, v14, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move v15, v4

    move/from16 v16, v4

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    add-float/2addr v14, v15

    iput v14, v13, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2609
    move-object v13, v1

    move v14, v4

    float-to-int v14, v14

    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 2610
    move-object v13, v1

    move v14, v4

    float-to-int v14, v14

    invoke-direct {v13, v14}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    move-result v13

    .line 2613
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-wide v10, v13

    .line 2614
    move-object v13, v1

    iget-wide v13, v13, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    move-wide v15, v10

    const/16 v17, 0x2

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v13

    move-object v12, v13

    .line 2616
    move-object v13, v1

    iget-object v13, v13, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v14, v12

    invoke-virtual {v13, v14}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2617
    move-object v13, v12

    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 2618
    goto/16 :goto_0

    .line 2604
    :cond_5
    move v13, v4

    move v14, v7

    cmpl-float v13, v13, v14

    if-lez v13, :cond_4

    .line 2605
    move v13, v7

    move v4, v13

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 3004
    move-object v0, p0

    new-instance v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .prologue
    .line 3019
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 3009
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 2

    .prologue
    .line 573
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object v0, v1

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 7

    .prologue
    .line 798
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v6, v2

    sub-int/2addr v5, v6

    :goto_0
    move v3, v5

    .line 799
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    move v6, v3

    .line 800
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget v5, v5, Landroid/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    move v4, v5

    .line 801
    move v5, v4

    move v0, v5

    return v0

    .line 798
    :cond_0
    move v5, v2

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 2

    .prologue
    .line 628
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move v0, v1

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 2

    .prologue
    .line 824
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    move v0, v1

    return v0
.end method

.method public getPageMargin()I
    .locals 2

    .prologue
    .line 880
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    move v0, v1

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 6

    .prologue
    .line 1515
    move-object v0, p0

    move-object v1, p1

    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    move-object v4, v0

    if-eq v3, v4, :cond_2

    .line 1516
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    instance-of v3, v3, Landroid/view/View;

    if-nez v3, :cond_1

    .line 1517
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 1521
    :goto_1
    return-object v0

    .line 1519
    :cond_1
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    move-object v1, v3

    goto :goto_0

    .line 1521
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v3

    move-object v0, v3

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 7

    .prologue
    .line 1504
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1505
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v3, v4

    .line 1506
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object v5, v1

    move-object v6, v3

    iget-object v6, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1507
    move-object v4, v3

    move-object v0, v4

    .line 1510
    :goto_1
    return-object v0

    .line 1504
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1510
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 6

    .prologue
    .line 1525
    move-object v0, p0

    move v1, p1

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1526
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v3, v4

    .line 1527
    move-object v4, v3

    iget v4, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 1528
    move-object v4, v3

    move-object v0, v4

    .line 1531
    :goto_1
    return-object v0

    .line 1525
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1531
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method initViewPager()V
    .locals 10

    .prologue
    .line 403
    move-object v0, p0

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 404
    move-object v4, v0

    const/high16 v5, 0x40000

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    .line 405
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 406
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v1, v4

    .line 407
    move-object v4, v0

    new-instance v5, Landroid/widget/Scroller;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    sget-object v8, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v6, v7, v8}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v5, v4, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 408
    move-object v4, v1

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    move-object v2, v4

    .line 409
    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    move v3, v4

    .line 411
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v5

    iput v5, v4, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    .line 412
    move-object v4, v0

    const/high16 v5, 0x43c80000    # 400.0f

    move v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    .line 413
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, v4, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    .line 414
    move-object v4, v0

    new-instance v5, Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 415
    move-object v4, v0

    new-instance v5, Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 417
    move-object v4, v0

    const/high16 v5, 0x41c80000    # 25.0f

    move v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    .line 418
    move-object v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    move v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    .line 419
    move-object v4, v0

    const/high16 v5, 0x41800000    # 16.0f

    move v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

    .line 421
    move-object v4, v0

    new-instance v5, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 423
    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_0

    .line 425
    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 429
    :cond_0
    move-object v4, v0

    new-instance v5, Landroid/support/v4/view/ViewPager$4;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v4/view/ViewPager$4;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 477
    return-void
.end method

.method public isFakeDragging()Z
    .locals 2

    .prologue
    .line 2630
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    move v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1536
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1537
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 1538
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 481
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 483
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 484
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 486
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 487
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    .prologue
    .line 2457
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v15, v1

    move-object/from16 v16, v2

    invoke-super/range {v15 .. v16}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2460
    move-object v15, v1

    iget v15, v15, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    if-lez v15, :cond_2

    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_2

    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_2

    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v15, :cond_2

    .line 2461
    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v15

    move v3, v15

    .line 2462
    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v15

    move v4, v15

    .line 2464
    move-object v15, v1

    iget v15, v15, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v15, v15

    move/from16 v16, v4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move v5, v15

    .line 2465
    const/4 v15, 0x0

    move v6, v15

    .line 2466
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v7, v15

    .line 2467
    move-object v15, v7

    iget v15, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move v8, v15

    .line 2468
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move v9, v15

    .line 2469
    move-object v15, v7

    iget v15, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move v10, v15

    .line 2470
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move/from16 v16, v9

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/v4/view/ViewPager$ItemInfo;

    iget v15, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move v11, v15

    .line 2471
    move v15, v10

    move v12, v15

    :goto_0
    move v15, v12

    move/from16 v16, v11

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 2472
    :goto_1
    move v15, v12

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    move v15, v6

    move/from16 v16, v9

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 2473
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    move/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v7, v15

    goto :goto_1

    .line 2477
    :cond_0
    move v15, v12

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 2478
    move-object v15, v7

    iget v15, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v16, v0

    add-float v15, v15, v16

    move/from16 v16, v4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    move v13, v15

    .line 2479
    move-object v15, v7

    iget v15, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v16, v0

    add-float v15, v15, v16

    move/from16 v16, v5

    add-float v15, v15, v16

    move v8, v15

    .line 2486
    :goto_2
    move v15, v13

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v15, v15, v16

    move/from16 v16, v3

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_1

    .line 2487
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v16, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    move/from16 v17, v0

    move/from16 v18, v13

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    .line 2488
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    move/from16 v19, v0

    .line 2487
    invoke-virtual/range {v15 .. v19}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2489
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2492
    :cond_1
    move v15, v13

    move/from16 v16, v3

    move/from16 v17, v4

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_4

    .line 2497
    :cond_2
    return-void

    .line 2481
    :cond_3
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v15

    move v14, v15

    .line 2482
    move v15, v8

    move/from16 v16, v14

    add-float v15, v15, v16

    move/from16 v16, v4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    move v13, v15

    .line 2483
    move v15, v8

    move/from16 v16, v14

    move/from16 v17, v5

    add-float v16, v16, v17

    add-float v15, v15, v16

    move v8, v15

    goto/16 :goto_2

    .line 2471
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    .prologue
    .line 2023
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    move v2, v10

    .line 2026
    move v10, v2

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    move v10, v2

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 2029
    :cond_0
    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v4/view/ViewPager;->resetTouch()Z

    move-result v10

    .line 2030
    const/4 v10, 0x0

    move v0, v10

    .line 2153
    :goto_0
    return v0

    .line 2035
    :cond_1
    move v10, v2

    if-eqz v10, :cond_3

    .line 2036
    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v10, :cond_2

    .line 2038
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0

    .line 2040
    :cond_2
    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    if-eqz v10, :cond_3

    .line 2042
    const/4 v10, 0x0

    move v0, v10

    goto :goto_0

    .line 2046
    :cond_3
    move v10, v2

    sparse-switch v10, :sswitch_data_0

    .line 2144
    :cond_4
    :goto_1
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_5

    .line 2145
    move-object v10, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, v10, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2147
    :cond_5
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2153
    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    move v0, v10

    goto :goto_0

    .line 2057
    :sswitch_0
    move-object v10, v0

    iget v10, v10, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move v3, v10

    .line 2058
    move v10, v3

    const/4 v11, -0x1

    if-ne v10, v11, :cond_6

    .line 2060
    goto :goto_1

    .line 2063
    :cond_6
    move-object v10, v1

    move v11, v3

    invoke-virtual {v10, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    move v4, v10

    .line 2064
    move-object v10, v1

    move v11, v4

    invoke-virtual {v10, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    move v5, v10

    .line 2065
    move v10, v5

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float/2addr v10, v11

    move v6, v10

    .line 2066
    move v10, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move v7, v10

    .line 2067
    move-object v10, v1

    move v11, v4

    invoke-virtual {v10, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    move v8, v10

    .line 2068
    move v10, v8

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move v9, v10

    .line 2071
    move v10, v6

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_7

    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move v12, v6

    invoke-direct {v10, v11, v12}, Landroid/support/v4/view/ViewPager;->isGutterDrag(FF)Z

    move-result v10

    if-nez v10, :cond_7

    move-object v10, v0

    move-object v11, v0

    const/4 v12, 0x0

    move v13, v6

    float-to-int v13, v13

    move v14, v5

    float-to-int v14, v14

    move v15, v8

    float-to-int v15, v15

    .line 2072
    invoke-virtual/range {v10 .. v15}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2074
    move-object v10, v0

    move v11, v5

    iput v11, v10, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2075
    move-object v10, v0

    move v11, v8

    iput v11, v10, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 2076
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 2077
    const/4 v10, 0x0

    move v0, v10

    goto/16 :goto_0

    .line 2079
    :cond_7
    move v10, v7

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_a

    move v10, v7

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    move v11, v9

    cmpl-float v10, v10, v11

    if-lez v10, :cond_a

    .line 2081
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2082
    move-object v10, v0

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2083
    move-object v10, v0

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 2084
    move-object v10, v0

    move v11, v6

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_9

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move-object v12, v0

    iget v12, v12, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    :goto_2
    iput v11, v10, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2086
    move-object v10, v0

    move v11, v8

    iput v11, v10, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 2087
    move-object v10, v0

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2096
    :cond_8
    :goto_3
    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v10, :cond_4

    .line 2098
    move-object v10, v0

    move v11, v5

    invoke-direct {v10, v11}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2099
    move-object v10, v0

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2084
    :cond_9
    move-object v11, v0

    iget v11, v11, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move-object v12, v0

    iget v12, v12, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    goto :goto_2

    .line 2088
    :cond_a
    move v10, v9

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_8

    .line 2094
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    .line 2110
    :sswitch_1
    move-object v10, v0

    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    iput v13, v12, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iput v11, v10, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2111
    move-object v10, v0

    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    iput v13, v12, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    iput v11, v10, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 2112
    move-object v10, v0

    move-object v11, v1

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, v10, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2113
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 2115
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/support/v4/view/ViewPager;->mIsScrollStarted:Z

    .line 2116
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v10

    .line 2117
    move-object v10, v0

    iget v10, v10, Landroid/support/v4/view/ViewPager;->mScrollState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 2118
    invoke-virtual {v10}, Landroid/widget/Scroller;->getFinalX()I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->getCurrX()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    if-le v10, v11, :cond_b

    .line 2120
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2121
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2122
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 2123
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2124
    move-object v10, v0

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2125
    move-object v10, v0

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 2127
    :cond_b
    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 2128
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2136
    goto/16 :goto_1

    .line 2140
    :sswitch_2
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2046
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 34

    .prologue
    .line 1674
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v27

    move/from16 v8, v27

    .line 1675
    move/from16 v27, v6

    move/from16 v28, v4

    sub-int v27, v27, v28

    move/from16 v9, v27

    .line 1676
    move/from16 v27, v7

    move/from16 v28, v5

    sub-int v27, v27, v28

    move/from16 v10, v27

    .line 1677
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v27

    move/from16 v11, v27

    .line 1678
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v27

    move/from16 v12, v27

    .line 1679
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v27

    move/from16 v13, v27

    .line 1680
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v27

    move/from16 v14, v27

    .line 1681
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v27

    move/from16 v15, v27

    .line 1683
    const/16 v27, 0x0

    move/from16 v16, v27

    .line 1687
    const/16 v27, 0x0

    move/from16 v17, v27

    :goto_0
    move/from16 v27, v17

    move/from16 v28, v8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 1688
    move-object/from16 v27, v2

    move/from16 v28, v17

    invoke-virtual/range {v27 .. v28}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v18, v27

    .line 1689
    move-object/from16 v27, v18

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 1690
    move-object/from16 v27, v18

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object/from16 v19, v27

    .line 1691
    const/16 v27, 0x0

    move/from16 v20, v27

    .line 1692
    const/16 v27, 0x0

    move/from16 v21, v27

    .line 1693
    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    .line 1694
    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v27, v0

    const/16 v28, 0x7

    and-int/lit8 v27, v27, 0x7

    move/from16 v22, v27

    .line 1695
    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v27, v0

    const/16 v28, 0x70

    and-int/lit8 v27, v27, 0x70

    move/from16 v23, v27

    .line 1696
    move/from16 v27, v22

    packed-switch v27, :pswitch_data_0

    .line 1698
    :pswitch_0
    move/from16 v27, v11

    move/from16 v20, v27

    .line 1713
    :goto_1
    move/from16 v27, v23

    sparse-switch v27, :sswitch_data_0

    .line 1715
    move/from16 v27, v12

    move/from16 v21, v27

    .line 1730
    :goto_2
    move/from16 v27, v20

    move/from16 v28, v15

    add-int v27, v27, v28

    move/from16 v20, v27

    .line 1731
    move-object/from16 v27, v18

    move/from16 v28, v20

    move/from16 v29, v21

    move/from16 v30, v20

    move-object/from16 v31, v18

    .line 1732
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v31, v21

    move-object/from16 v32, v18

    .line 1733
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    add-int v31, v31, v32

    .line 1731
    invoke-virtual/range {v27 .. v31}, Landroid/view/View;->layout(IIII)V

    .line 1734
    add-int/lit8 v16, v16, 0x1

    .line 1687
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 1701
    :pswitch_1
    move/from16 v27, v11

    move/from16 v20, v27

    .line 1702
    move/from16 v27, v11

    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v11, v27

    .line 1703
    goto :goto_1

    .line 1705
    :pswitch_2
    move/from16 v27, v9

    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    sub-int v27, v27, v28

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    move/from16 v28, v11

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    move/from16 v20, v27

    .line 1707
    goto :goto_1

    .line 1709
    :pswitch_3
    move/from16 v27, v9

    move/from16 v28, v13

    sub-int v27, v27, v28

    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v20, v27

    .line 1710
    move/from16 v27, v13

    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v13, v27

    goto :goto_1

    .line 1718
    :sswitch_0
    move/from16 v27, v12

    move/from16 v21, v27

    .line 1719
    move/from16 v27, v12

    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v12, v27

    .line 1720
    goto :goto_2

    .line 1722
    :sswitch_1
    move/from16 v27, v10

    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    sub-int v27, v27, v28

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    move/from16 v28, v12

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    move/from16 v21, v27

    .line 1724
    goto/16 :goto_2

    .line 1726
    :sswitch_2
    move/from16 v27, v10

    move/from16 v28, v14

    sub-int v27, v27, v28

    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v21, v27

    .line 1727
    move/from16 v27, v14

    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v14, v27

    goto/16 :goto_2

    .line 1739
    :cond_1
    move/from16 v27, v9

    move/from16 v28, v11

    sub-int v27, v27, v28

    move/from16 v28, v13

    sub-int v27, v27, v28

    move/from16 v17, v27

    .line 1741
    const/16 v27, 0x0

    move/from16 v18, v27

    :goto_3
    move/from16 v27, v18

    move/from16 v28, v8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 1742
    move-object/from16 v27, v2

    move/from16 v28, v18

    invoke-virtual/range {v27 .. v28}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v19, v27

    .line 1743
    move-object/from16 v27, v19

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_3

    .line 1744
    move-object/from16 v27, v19

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object/from16 v20, v27

    .line 1746
    move-object/from16 v27, v20

    move-object/from16 v0, v27

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-nez v27, :cond_3

    move-object/from16 v27, v2

    move-object/from16 v28, v19

    invoke-virtual/range {v27 .. v28}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v27

    move-object/from16 v33, v27

    move-object/from16 v27, v33

    move-object/from16 v28, v33

    move-object/from16 v21, v28

    if-eqz v27, :cond_3

    .line 1747
    move/from16 v27, v17

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v28, v21

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v22, v27

    .line 1748
    move/from16 v27, v11

    move/from16 v28, v22

    add-int v27, v27, v28

    move/from16 v23, v27

    .line 1749
    move/from16 v27, v12

    move/from16 v24, v27

    .line 1750
    move-object/from16 v27, v20

    move-object/from16 v0, v27

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 1753
    move-object/from16 v27, v20

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1754
    move/from16 v27, v17

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v28, v20

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    move/from16 v25, v27

    .line 1757
    move/from16 v27, v10

    move/from16 v28, v12

    sub-int v27, v27, v28

    move/from16 v28, v14

    sub-int v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    move/from16 v26, v27

    .line 1760
    move-object/from16 v27, v19

    move/from16 v28, v25

    move/from16 v29, v26

    invoke-virtual/range {v27 .. v29}, Landroid/view/View;->measure(II)V

    .line 1767
    :cond_2
    move-object/from16 v27, v19

    move/from16 v28, v23

    move/from16 v29, v24

    move/from16 v30, v23

    move-object/from16 v31, v19

    .line 1768
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v31, v24

    move-object/from16 v32, v19

    .line 1769
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    add-int v31, v31, v32

    .line 1767
    invoke-virtual/range {v27 .. v31}, Landroid/view/View;->layout(IIII)V

    .line 1741
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 1773
    :cond_4
    move-object/from16 v27, v2

    move/from16 v28, v12

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    .line 1774
    move-object/from16 v27, v2

    move/from16 v28, v10

    move/from16 v29, v14

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    .line 1775
    move-object/from16 v27, v2

    move/from16 v28, v16

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    .line 1777
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    .line 1778
    move-object/from16 v27, v2

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v27 .. v31}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    .line 1780
    :cond_5
    move-object/from16 v27, v2

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 1781
    return-void

    .line 1696
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1713
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 27

    .prologue
    .line 1547
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v23, v2

    const/16 v24, 0x0

    move/from16 v25, v3

    invoke-static/range {v24 .. v25}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v24

    const/16 v25, 0x0

    move/from16 v26, v4

    .line 1548
    invoke-static/range {v25 .. v26}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v25

    .line 1547
    invoke-virtual/range {v23 .. v25}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 1550
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v23

    move/from16 v5, v23

    .line 1551
    move/from16 v23, v5

    const/16 v24, 0xa

    div-int/lit8 v23, v23, 0xa

    move/from16 v6, v23

    .line 1552
    move-object/from16 v23, v2

    move/from16 v24, v6

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    .line 1555
    move/from16 v23, v5

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v24

    sub-int v23, v23, v24

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v7, v23

    .line 1556
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v24

    sub-int v23, v23, v24

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v8, v23

    .line 1563
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v23

    move/from16 v9, v23

    .line 1564
    const/16 v23, 0x0

    move/from16 v10, v23

    :goto_0
    move/from16 v23, v10

    move/from16 v24, v9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    .line 1565
    move-object/from16 v23, v2

    move/from16 v24, v10

    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v11, v23

    .line 1566
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 1567
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object/from16 v12, v23

    .line 1568
    move-object/from16 v23, v12

    if-eqz v23, :cond_5

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 1569
    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v23, v0

    const/16 v24, 0x7

    and-int/lit8 v23, v23, 0x7

    move/from16 v13, v23

    .line 1570
    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v23, v0

    const/16 v24, 0x70

    and-int/lit8 v23, v23, 0x70

    move/from16 v14, v23

    .line 1571
    const/high16 v23, -0x80000000

    move/from16 v15, v23

    .line 1572
    const/high16 v23, -0x80000000

    move/from16 v16, v23

    .line 1573
    move/from16 v23, v14

    const/16 v24, 0x30

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move/from16 v23, v14

    const/16 v24, 0x50

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    :cond_0
    const/16 v23, 0x1

    :goto_1
    move/from16 v17, v23

    .line 1574
    move/from16 v23, v13

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    move/from16 v23, v13

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    :cond_1
    const/16 v23, 0x1

    :goto_2
    move/from16 v18, v23

    .line 1576
    move/from16 v23, v17

    if-eqz v23, :cond_8

    .line 1577
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v15, v23

    .line 1582
    :cond_2
    :goto_3
    move/from16 v23, v7

    move/from16 v19, v23

    .line 1583
    move/from16 v23, v8

    move/from16 v20, v23

    .line 1584
    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    move/from16 v23, v0

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 1585
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v15, v23

    .line 1586
    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 1587
    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    move/from16 v23, v0

    move/from16 v19, v23

    .line 1590
    :cond_3
    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    move/from16 v23, v0

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 1591
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v16, v23

    .line 1592
    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 1593
    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    move/from16 v23, v0

    move/from16 v20, v23

    .line 1596
    :cond_4
    move/from16 v23, v19

    move/from16 v24, v15

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move/from16 v21, v23

    .line 1597
    move/from16 v23, v20

    move/from16 v24, v16

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move/from16 v22, v23

    .line 1598
    move-object/from16 v23, v11

    move/from16 v24, v21

    move/from16 v25, v22

    invoke-virtual/range {v23 .. v25}, Landroid/view/View;->measure(II)V

    .line 1600
    move/from16 v23, v17

    if-eqz v23, :cond_9

    .line 1601
    move/from16 v23, v8

    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v8, v23

    .line 1564
    :cond_5
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1573
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 1574
    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 1578
    :cond_8
    move/from16 v23, v18

    if-eqz v23, :cond_2

    .line 1579
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v16, v23

    goto/16 :goto_3

    .line 1602
    :cond_9
    move/from16 v23, v18

    if-eqz v23, :cond_5

    .line 1603
    move/from16 v23, v7

    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v7, v23

    goto :goto_4

    .line 1609
    :cond_a
    move-object/from16 v23, v2

    move/from16 v24, v7

    const/high16 v25, 0x40000000    # 2.0f

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    .line 1610
    move-object/from16 v23, v2

    move/from16 v24, v8

    const/high16 v25, 0x40000000    # 2.0f

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    .line 1613
    move-object/from16 v23, v2

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1614
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1615
    move-object/from16 v23, v2

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1618
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v23

    move/from16 v9, v23

    .line 1619
    const/16 v23, 0x0

    move/from16 v10, v23

    :goto_5
    move/from16 v23, v10

    move/from16 v24, v9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_d

    .line 1620
    move-object/from16 v23, v2

    move/from16 v24, v10

    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v11, v23

    .line 1621
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    .line 1626
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object/from16 v12, v23

    .line 1627
    move-object/from16 v23, v12

    if-eqz v23, :cond_b

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v23, v0

    if-nez v23, :cond_c

    .line 1628
    :cond_b
    move/from16 v23, v7

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move/from16 v13, v23

    .line 1630
    move-object/from16 v23, v11

    move/from16 v24, v13

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/view/View;->measure(II)V

    .line 1619
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1634
    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 21
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1857
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    move/from16 v17, v0

    if-lez v17, :cond_2

    .line 1858
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v17

    move/from16 v6, v17

    .line 1859
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v17

    move/from16 v7, v17

    .line 1860
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v17

    move/from16 v8, v17

    .line 1861
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v17

    move/from16 v9, v17

    .line 1862
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v17

    move/from16 v10, v17

    .line 1863
    const/16 v17, 0x0

    move/from16 v11, v17

    :goto_0
    move/from16 v17, v11

    move/from16 v18, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 1864
    move-object/from16 v17, v2

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v12, v17

    .line 1865
    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object/from16 v13, v17

    .line 1866
    move-object/from16 v17, v13

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 1863
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1868
    :cond_1
    move-object/from16 v17, v13

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v17, v0

    const/16 v18, 0x7

    and-int/lit8 v17, v17, 0x7

    move/from16 v14, v17

    .line 1869
    const/16 v17, 0x0

    move/from16 v15, v17

    .line 1870
    move/from16 v17, v14

    packed-switch v17, :pswitch_data_0

    .line 1872
    :pswitch_0
    move/from16 v17, v7

    move/from16 v15, v17

    .line 1887
    :goto_2
    move/from16 v17, v15

    move/from16 v18, v6

    add-int v17, v17, v18

    move/from16 v15, v17

    .line 1889
    move/from16 v17, v15

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v16, v17

    .line 1890
    move/from16 v17, v16

    if-eqz v17, :cond_0

    .line 1891
    move-object/from16 v17, v12

    move/from16 v18, v16

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1875
    :pswitch_1
    move/from16 v17, v7

    move/from16 v15, v17

    .line 1876
    move/from16 v17, v7

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v7, v17

    .line 1877
    goto :goto_2

    .line 1879
    :pswitch_2
    move/from16 v17, v9

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v17, v17, v18

    const/16 v18, 0x2

    div-int/lit8 v17, v17, 0x2

    move/from16 v18, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v15, v17

    .line 1881
    goto :goto_2

    .line 1883
    :pswitch_3
    move/from16 v17, v9

    move/from16 v18, v8

    sub-int v17, v17, v18

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v15, v17

    .line 1884
    move/from16 v17, v8

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v8, v17

    goto :goto_2

    .line 1896
    :cond_2
    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    invoke-direct/range {v17 .. v20}, Landroid/support/v4/view/ViewPager;->dispatchOnPageScrolled(IFI)V

    .line 1898
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1899
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v17

    move/from16 v6, v17

    .line 1900
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v17

    move/from16 v7, v17

    .line 1901
    const/16 v17, 0x0

    move/from16 v8, v17

    :goto_3
    move/from16 v17, v8

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 1902
    move-object/from16 v17, v2

    move/from16 v18, v8

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v9, v17

    .line 1903
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object/from16 v10, v17

    .line 1905
    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 1901
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1906
    :cond_3
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v17

    move/from16 v18, v6

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v11, v17

    .line 1907
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    move/from16 v19, v11

    invoke-interface/range {v17 .. v19}, Landroid/support/v4/view/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_4

    .line 1911
    :cond_4
    move-object/from16 v17, v2

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1912
    return-void

    .line 1870
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 13

    .prologue
    .line 2955
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v10

    move v6, v10

    .line 2956
    move v10, v1

    const/4 v11, 0x2

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_0

    .line 2957
    const/4 v10, 0x0

    move v3, v10

    .line 2958
    const/4 v10, 0x1

    move v4, v10

    .line 2959
    move v10, v6

    move v5, v10

    .line 2965
    :goto_0
    move v10, v3

    move v7, v10

    :goto_1
    move v10, v7

    move v11, v5

    if-eq v10, v11, :cond_2

    .line 2966
    move-object v10, v0

    move v11, v7

    invoke-virtual {v10, v11}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v8, v10

    .line 2967
    move-object v10, v8

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    .line 2968
    move-object v10, v0

    move-object v11, v8

    invoke-virtual {v10, v11}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v10

    move-object v9, v10

    .line 2969
    move-object v10, v9

    if-eqz v10, :cond_1

    move-object v10, v9

    iget v10, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v10, v11, :cond_1

    .line 2970
    move-object v10, v8

    move v11, v1

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2971
    const/4 v10, 0x1

    move v0, v10

    .line 2976
    :goto_2
    return v0

    .line 2961
    :cond_0
    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v3, v10

    .line 2962
    const/4 v10, -0x1

    move v4, v10

    .line 2963
    const/4 v10, -0x1

    move v5, v10

    goto :goto_0

    .line 2965
    :cond_1
    move v10, v7

    move v11, v4

    add-int/2addr v10, v11

    move v7, v10

    goto :goto_1

    .line 2976
    :cond_2
    const/4 v10, 0x0

    move v0, v10

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .prologue
    .line 1444
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v3, :cond_0

    .line 1445
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1460
    :goto_0
    return-void

    .line 1449
    :cond_0
    move-object v3, v1

    check-cast v3, Landroid/support/v4/view/ViewPager$SavedState;

    move-object v2, v3

    .line 1450
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1452
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_1

    .line 1453
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1454
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1460
    :goto_1
    goto :goto_0

    .line 1456
    :cond_1
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    iput v4, v3, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 1457
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v4, v3, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1458
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v4, v3, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 1433
    move-object v0, p0

    move-object v3, v0

    invoke-super {v3}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 1434
    new-instance v3, Landroid/support/v4/view/ViewPager$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 1435
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iput v4, v3, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    .line 1436
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_0

    .line 1437
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1439
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    .prologue
    .line 1638
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

    .line 1641
    move v5, v1

    move v6, v3

    if-eq v5, v6, :cond_0

    .line 1642
    move-object v5, v0

    move v6, v1

    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1644
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25

    .prologue
    .line 2158
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 2162
    const/16 v18, 0x1

    move/from16 v2, v18

    .line 2282
    :goto_0
    return v2

    .line 2165
    :cond_0
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    if-eqz v18, :cond_1

    .line 2168
    const/16 v18, 0x0

    move/from16 v2, v18

    goto :goto_0

    .line 2171
    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v18

    if-nez v18, :cond_3

    .line 2173
    :cond_2
    const/16 v18, 0x0

    move/from16 v2, v18

    goto :goto_0

    .line 2176
    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 2177
    move-object/from16 v18, v2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2179
    :cond_4
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2181
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    move/from16 v4, v18

    .line 2182
    const/16 v18, 0x0

    move/from16 v5, v18

    .line 2184
    move/from16 v18, v4

    const/16 v19, 0xff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 2279
    :cond_5
    :goto_1
    :pswitch_0
    move/from16 v18, v5

    if-eqz v18, :cond_6

    .line 2280
    move-object/from16 v18, v2

    invoke-static/range {v18 .. v18}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2282
    :cond_6
    const/16 v18, 0x1

    move/from16 v2, v18

    goto :goto_0

    .line 2186
    :pswitch_1
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2187
    move-object/from16 v18, v2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2188
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 2191
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move-object/from16 v23, v19

    move/from16 v24, v20

    move/from16 v19, v24

    move-object/from16 v20, v23

    move/from16 v21, v24

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2192
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move-object/from16 v23, v19

    move/from16 v24, v20

    move/from16 v19, v24

    move-object/from16 v20, v23

    move/from16 v21, v24

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 2193
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2194
    goto :goto_1

    .line 2197
    :pswitch_2
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 2198
    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    move/from16 v6, v18

    .line 2199
    move/from16 v18, v6

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 2202
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Landroid/support/v4/view/ViewPager;->resetTouch()Z

    move-result v18

    move/from16 v5, v18

    .line 2203
    goto/16 :goto_1

    .line 2205
    :cond_7
    move-object/from16 v18, v3

    move/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    move/from16 v7, v18

    .line 2206
    move/from16 v18, v7

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move/from16 v8, v18

    .line 2207
    move-object/from16 v18, v3

    move/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    move/from16 v9, v18

    .line 2208
    move/from16 v18, v9

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move/from16 v10, v18

    .line 2212
    move/from16 v18, v8

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_8

    move/from16 v18, v8

    move/from16 v19, v10

    cmpl-float v18, v18, v19

    if-lez v18, :cond_8

    .line 2214
    move-object/from16 v18, v2

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2215
    move-object/from16 v18, v2

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2216
    move-object/from16 v18, v2

    move/from16 v19, v7

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_9

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    :goto_2
    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2218
    move-object/from16 v18, v2

    move/from16 v19, v9

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 2219
    move-object/from16 v18, v2

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 2220
    move-object/from16 v18, v2

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2223
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    move-object/from16 v11, v18

    .line 2224
    move-object/from16 v18, v11

    if-eqz v18, :cond_8

    .line 2225
    move-object/from16 v18, v11

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2230
    :cond_8
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 2232
    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    move/from16 v6, v18

    .line 2233
    move-object/from16 v18, v3

    move/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    move/from16 v7, v18

    .line 2234
    move/from16 v18, v5

    move-object/from16 v19, v2

    move/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    move-result v19

    or-int v18, v18, v19

    move/from16 v5, v18

    .line 2235
    goto/16 :goto_1

    .line 2216
    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    goto :goto_2

    .line 2238
    :pswitch_3
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 2239
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v6, v18

    .line 2240
    move-object/from16 v18, v6

    const/16 v19, 0x3e8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2241
    move-object/from16 v18, v6

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v7, v18

    .line 2243
    move-object/from16 v18, v2

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2244
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v18

    move/from16 v8, v18

    .line 2245
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v18

    move/from16 v9, v18

    .line 2246
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v18

    move-object/from16 v10, v18

    .line 2247
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v8

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v11, v18

    .line 2248
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v18, v0

    move/from16 v12, v18

    .line 2249
    move/from16 v18, v9

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v8

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v19, v0

    move/from16 v20, v11

    add-float v19, v19, v20

    div-float v18, v18, v19

    move/from16 v13, v18

    .line 2251
    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    move/from16 v14, v18

    .line 2252
    move-object/from16 v18, v3

    move/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    move/from16 v15, v18

    .line 2253
    move/from16 v18, v15

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v16, v18

    .line 2254
    move-object/from16 v18, v2

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v21, v7

    move/from16 v22, v16

    invoke-direct/range {v18 .. v22}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result v18

    move/from16 v17, v18

    .line 2256
    move-object/from16 v18, v2

    move/from16 v19, v17

    const/16 v20, 0x1

    const/16 v21, 0x1

    move/from16 v22, v7

    invoke-virtual/range {v18 .. v22}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2258
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Landroid/support/v4/view/ViewPager;->resetTouch()Z

    move-result v18

    move/from16 v5, v18

    .line 2259
    goto/16 :goto_1

    .line 2262
    :pswitch_4
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 2263
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    .line 2264
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Landroid/support/v4/view/ViewPager;->resetTouch()Z

    move-result v18

    move/from16 v5, v18

    goto/16 :goto_1

    .line 2268
    :pswitch_5
    move-object/from16 v18, v3

    invoke-static/range {v18 .. v18}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v18

    move/from16 v6, v18

    .line 2269
    move-object/from16 v18, v3

    move/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    move/from16 v7, v18

    .line 2270
    move-object/from16 v18, v2

    move/from16 v19, v7

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2271
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2272
    goto/16 :goto_1

    .line 2275
    :pswitch_6
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v18 .. v19}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2276
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 2184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 4

    .prologue
    .line 2870
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 2871
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/view/ViewPager;->mCurItem:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2872
    const/4 v1, 0x1

    move v0, v1

    .line 2874
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method pageRight()Z
    .locals 4

    .prologue
    .line 2878
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2879
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/view/ViewPager;->mCurItem:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2880
    const/4 v1, 0x1

    move v0, v1

    .line 2882
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method populate()V
    .locals 3

    .prologue
    .line 1088
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->populate(I)V

    .line 1089
    return-void
.end method

.method populate(I)V
    .locals 24

    .prologue
    .line 1092
    move-object/from16 v2, p0

    move/from16 v3, p1

    const/16 v19, 0x0

    move-object/from16 v4, v19

    .line 1093
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v19, v0

    move/from16 v20, v3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 1094
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v19

    move-object/from16 v4, v19

    .line 1095
    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 1098
    :cond_0
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 1099
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    .line 1275
    :goto_0
    return-void

    .line 1107
    :cond_1
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 1109
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    .line 1110
    goto :goto_0

    .line 1116
    :cond_2
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v19

    if-nez v19, :cond_3

    .line 1117
    goto :goto_0

    .line 1120
    :cond_3
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1122
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    move/from16 v19, v0

    move/from16 v5, v19

    .line 1123
    const/16 v19, 0x0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v20, v0

    move/from16 v21, v5

    sub-int v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v6, v19

    .line 1124
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v19

    move/from16 v7, v19

    .line 1125
    move/from16 v19, v7

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v20, v0

    move/from16 v21, v5

    add-int v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v8, v19

    .line 1127
    move/from16 v19, v7

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 1130
    move-object/from16 v19, v2

    :try_start_0
    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    move-object/from16 v9, v19

    .line 1134
    :goto_1
    new-instance v19, Ljava/lang/IllegalStateException;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v23, v21

    move-object/from16 v21, v23

    move-object/from16 v22, v23

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", found: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move/from16 v22, v7

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Pager id: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Pager class: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v2

    .line 1138
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Problematic adapter: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v22, v0

    .line 1139
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1131
    :catch_0
    move-exception v19

    move-object/from16 v10, v19

    .line 1132
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v9, v19

    goto :goto_1

    .line 1143
    :cond_4
    const/16 v19, -0x1

    move/from16 v9, v19

    .line 1144
    const/16 v19, 0x0

    move-object/from16 v10, v19

    .line 1145
    const/16 v19, 0x0

    move/from16 v9, v19

    :goto_2
    move/from16 v19, v9

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 1146
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v11, v19

    .line 1147
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_b

    .line 1148
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    move-object/from16 v19, v11

    move-object/from16 v10, v19

    .line 1153
    :cond_5
    move-object/from16 v19, v10

    if-nez v19, :cond_6

    move/from16 v19, v7

    if-lez v19, :cond_6

    .line 1154
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v20, v0

    move/from16 v21, v9

    invoke-virtual/range {v19 .. v21}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v19

    move-object/from16 v10, v19

    .line 1160
    :cond_6
    move-object/from16 v19, v10

    if-eqz v19, :cond_9

    .line 1161
    const/16 v19, 0x0

    move/from16 v11, v19

    .line 1162
    move/from16 v19, v9

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v12, v19

    .line 1163
    move/from16 v19, v12

    if-ltz v19, :cond_c

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/support/v4/view/ViewPager$ItemInfo;

    :goto_3
    move-object/from16 v13, v19

    .line 1164
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v19

    move/from16 v14, v19

    .line 1165
    move/from16 v19, v14

    if-gtz v19, :cond_d

    const/16 v19, 0x0

    .line 1166
    :goto_4
    move/from16 v15, v19

    .line 1167
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v16, v19

    :goto_5
    move/from16 v19, v16

    if-ltz v19, :cond_7

    .line 1168
    move/from16 v19, v11

    move/from16 v20, v15

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_11

    move/from16 v19, v16

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_11

    .line 1169
    move-object/from16 v19, v13

    if-nez v19, :cond_e

    .line 1195
    :cond_7
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v19, v0

    move/from16 v16, v19

    .line 1196
    move/from16 v19, v9

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v12, v19

    .line 1197
    move/from16 v19, v16

    const/high16 v20, 0x40000000    # 2.0f

    cmpg-float v19, v19, v20

    if-gez v19, :cond_8

    .line 1198
    move/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/support/v4/view/ViewPager$ItemInfo;

    :goto_6
    move-object/from16 v13, v19

    .line 1199
    move/from16 v19, v14

    if-gtz v19, :cond_16

    const/16 v19, 0x0

    .line 1200
    :goto_7
    move/from16 v17, v19

    .line 1201
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v18, v19

    :goto_8
    move/from16 v19, v18

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 1202
    move/from16 v19, v16

    move/from16 v20, v17

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_1a

    move/from16 v19, v18

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1a

    .line 1203
    move-object/from16 v19, v13

    if-nez v19, :cond_17

    .line 1228
    :cond_8
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    move/from16 v21, v9

    move-object/from16 v22, v4

    invoke-direct/range {v19 .. v22}, Landroid/support/v4/view/ViewPager;->calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V

    .line 1238
    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v21, v0

    move-object/from16 v22, v10

    if-eqz v22, :cond_1e

    move-object/from16 v22, v10

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v22, v0

    :goto_9
    invoke-virtual/range {v19 .. v22}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1240
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1244
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v19

    move/from16 v11, v19

    .line 1245
    const/16 v19, 0x0

    move/from16 v12, v19

    :goto_a
    move/from16 v19, v12

    move/from16 v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1f

    .line 1246
    move-object/from16 v19, v2

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v13, v19

    .line 1247
    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object/from16 v14, v19

    .line 1248
    move-object/from16 v19, v14

    move/from16 v20, v12

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    .line 1249
    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-nez v19, :cond_a

    .line 1251
    move-object/from16 v19, v2

    move-object/from16 v20, v13

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v19

    move-object/from16 v15, v19

    .line 1252
    move-object/from16 v19, v15

    if-eqz v19, :cond_a

    .line 1253
    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    .line 1254
    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->position:I

    .line 1245
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 1145
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1163
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1165
    :cond_d
    const/high16 v19, 0x40000000    # 2.0f

    move-object/from16 v20, v10

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move-object/from16 v20, v2

    .line 1166
    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    add-float v19, v19, v20

    goto/16 :goto_4

    .line 1172
    :cond_e
    move/from16 v19, v16

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v19, v0

    if-nez v19, :cond_f

    .line 1173
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    .line 1174
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move/from16 v21, v16

    move-object/from16 v22, v13

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1179
    add-int/lit8 v12, v12, -0x1

    .line 1180
    add-int/lit8 v9, v9, -0x1

    .line 1181
    move/from16 v19, v12

    if-ltz v19, :cond_10

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/support/v4/view/ViewPager$ItemInfo;

    :goto_b
    move-object/from16 v13, v19

    .line 1167
    :cond_f
    :goto_c
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_5

    .line 1181
    :cond_10
    const/16 v19, 0x0

    goto :goto_b

    .line 1183
    :cond_11
    move-object/from16 v19, v13

    if-eqz v19, :cond_13

    move/from16 v19, v16

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 1184
    move/from16 v19, v11

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v11, v19

    .line 1185
    add-int/lit8 v12, v12, -0x1

    .line 1186
    move/from16 v19, v12

    if-ltz v19, :cond_12

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/support/v4/view/ViewPager$ItemInfo;

    :goto_d
    move-object/from16 v13, v19

    goto :goto_c

    :cond_12
    const/16 v19, 0x0

    goto :goto_d

    .line 1188
    :cond_13
    move-object/from16 v19, v2

    move/from16 v20, v16

    move/from16 v21, v12

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v19

    move-object/from16 v13, v19

    .line 1189
    move/from16 v19, v11

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v11, v19

    .line 1190
    add-int/lit8 v9, v9, 0x1

    .line 1191
    move/from16 v19, v12

    if-ltz v19, :cond_14

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/support/v4/view/ViewPager$ItemInfo;

    :goto_e
    move-object/from16 v13, v19

    goto :goto_c

    :cond_14
    const/16 v19, 0x0

    goto :goto_e

    .line 1198
    :cond_15
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 1199
    :cond_16
    move-object/from16 v19, v2

    .line 1200
    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v14

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    add-float v19, v19, v20

    goto/16 :goto_7

    .line 1206
    :cond_17
    move/from16 v19, v18

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v19, v0

    if-nez v19, :cond_18

    .line 1207
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    .line 1208
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move/from16 v21, v18

    move-object/from16 v22, v13

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1213
    move/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/support/v4/view/ViewPager$ItemInfo;

    :goto_f
    move-object/from16 v13, v19

    .line 1201
    :cond_18
    :goto_10
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_8

    .line 1213
    :cond_19
    const/16 v19, 0x0

    goto :goto_f

    .line 1215
    :cond_1a
    move-object/from16 v19, v13

    if-eqz v19, :cond_1c

    move/from16 v19, v18

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1c

    .line 1216
    move/from16 v19, v16

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v16, v19

    .line 1217
    add-int/lit8 v12, v12, 0x1

    .line 1218
    move/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1b

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/support/v4/view/ViewPager$ItemInfo;

    :goto_11
    move-object/from16 v13, v19

    goto :goto_10

    :cond_1b
    const/16 v19, 0x0

    goto :goto_11

    .line 1220
    :cond_1c
    move-object/from16 v19, v2

    move/from16 v20, v18

    move/from16 v21, v12

    invoke-virtual/range {v19 .. v21}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v19

    move-object/from16 v13, v19

    .line 1221
    add-int/lit8 v12, v12, 0x1

    .line 1222
    move/from16 v19, v16

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v16, v19

    .line 1223
    move/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1d

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/support/v4/view/ViewPager$ItemInfo;

    :goto_12
    move-object/from16 v13, v19

    goto/16 :goto_10

    :cond_1d
    const/16 v19, 0x0

    goto :goto_12

    .line 1238
    :cond_1e
    const/16 v22, 0x0

    goto/16 :goto_9

    .line 1258
    :cond_1f
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    .line 1260
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v19

    if-eqz v19, :cond_21

    .line 1261
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v19

    move-object/from16 v12, v19

    .line 1262
    move-object/from16 v19, v12

    if-eqz v19, :cond_22

    move-object/from16 v19, v2

    move-object/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/view/ViewPager;->infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v19

    :goto_13
    move-object/from16 v13, v19

    .line 1263
    move-object/from16 v19, v13

    if-eqz v19, :cond_20

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_21

    .line 1264
    :cond_20
    const/16 v19, 0x0

    move/from16 v14, v19

    :goto_14
    move/from16 v19, v14

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_21

    .line 1265
    move-object/from16 v19, v2

    move/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v15, v19

    .line 1266
    move-object/from16 v19, v2

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v19

    move-object/from16 v13, v19

    .line 1267
    move-object/from16 v19, v13

    if-eqz v19, :cond_23

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_23

    .line 1268
    move-object/from16 v19, v15

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->requestFocus(I)Z

    move-result v19

    if-eqz v19, :cond_23

    .line 1275
    :cond_21
    goto/16 :goto_0

    .line 1262
    :cond_22
    const/16 v19, 0x0

    goto :goto_13

    .line 1264
    :cond_23
    add-int/lit8 v14, v14, 0x1

    goto :goto_14
.end method

.method public removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V
    .locals 4
    .param p1    # Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 595
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 596
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 598
    :cond_0
    return-void
.end method

.method public removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 4

    .prologue
    .line 737
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 738
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 740
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1496
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v2, :cond_0

    .line 1497
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1501
    :goto_0
    return-void

    .line 1499
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 11

    .prologue
    .line 508
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v5, :cond_1

    .line 509
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/view/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 510
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 511
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 512
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v3, v5

    .line 513
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object v6, v0

    move-object v7, v3

    iget v7, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 511
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 515
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 516
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 517
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v4/view/ViewPager;->removeNonDecorViews()V

    .line 518
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 519
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 522
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object v2, v5

    .line 523
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 524
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    .line 526
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v5, :cond_3

    .line 527
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    if-nez v5, :cond_2

    .line 528
    move-object v5, v0

    new-instance v6, Landroid/support/v4/view/ViewPager$PagerObserver;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/support/v4/view/ViewPager$PagerObserver;-><init>(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager$1;)V

    iput-object v6, v5, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    .line 530
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 531
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 532
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    move v3, v5

    .line 533
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 534
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    iput v6, v5, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    .line 535
    move-object v5, v0

    iget v5, v5, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_4

    .line 536
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 537
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 538
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 539
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 540
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 549
    :cond_3
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 550
    const/4 v5, 0x0

    move v3, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v4, v5

    :goto_2
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_6

    .line 551
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    invoke-interface {v5, v6, v7, v8}, Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 550
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 541
    :cond_4
    move v5, v3

    if-nez v5, :cond_5

    .line 542
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->populate()V

    goto :goto_1

    .line 544
    :cond_5
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_1

    .line 554
    :cond_6
    return-void
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 11

    .prologue
    .line 779
    move-object v0, p0

    move v1, p1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-lt v3, v4, :cond_1

    .line 780
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 782
    move-object v3, v0

    :try_start_0
    const-class v4, Landroid/view/ViewGroup;

    const-string v5, "setChildrenDrawingOrderEnabled"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :cond_0
    :goto_0
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 794
    :cond_1
    :goto_1
    return-void

    .line 784
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 785
    const-string v3, "ViewPager"

    const-string v4, "Can\'t find setChildrenDrawingOrderEnabled"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0

    .line 790
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 791
    const-string v3, "ViewPager"

    const-string v4, "Error changing children drawing order"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 6

    .prologue
    .line 612
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 613
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 614
    return-void

    .line 613
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 7

    .prologue
    .line 623
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 624
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 625
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 9

    .prologue
    .line 632
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 633
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 12

    .prologue
    .line 636
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v7}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 637
    :cond_0
    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 673
    :goto_0
    return-void

    .line 640
    :cond_1
    move v7, v3

    if-nez v7, :cond_2

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move v8, v1

    if-ne v7, v8, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 641
    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 642
    goto :goto_0

    .line 645
    :cond_2
    move v7, v1

    if-gez v7, :cond_5

    .line 646
    const/4 v7, 0x0

    move v1, v7

    .line 650
    :cond_3
    :goto_1
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    move v5, v7

    .line 651
    move v7, v1

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move v9, v5

    add-int/2addr v8, v9

    if-gt v7, v8, :cond_4

    move v7, v1

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move v9, v5

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_6

    .line 655
    :cond_4
    const/4 v7, 0x0

    move v6, v7

    :goto_2
    move v7, v6

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 656
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager$ItemInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    .line 655
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 647
    :cond_5
    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 648
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v7}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v1, v7

    goto :goto_1

    .line 659
    :cond_6
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move v8, v1

    if-eq v7, v8, :cond_8

    const/4 v7, 0x1

    :goto_3
    move v6, v7

    .line 661
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-eqz v7, :cond_9

    .line 664
    move-object v7, v0

    move v8, v1

    iput v8, v7, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 665
    move v7, v6

    if-eqz v7, :cond_7

    .line 666
    move-object v7, v0

    move v8, v1

    invoke-direct {v7, v8}, Landroid/support/v4/view/ViewPager;->dispatchOnPageSelected(I)V

    .line 668
    :cond_7
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 673
    :goto_4
    goto/16 :goto_0

    .line 659
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 670
    :cond_9
    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->populate(I)V

    .line 671
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v4

    move v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_4
.end method

.method setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 5

    .prologue
    .line 811
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-object v2, v3

    .line 812
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 813
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 6

    .prologue
    .line 845
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 846
    const-string v2, "ViewPager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested offscreen page limit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " too small; defaulting to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 848
    const/4 v2, 0x1

    move v1, v2

    .line 850
    :cond_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    if-eq v2, v3, :cond_1

    .line 851
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 852
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 854
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 710
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 711
    return-void
.end method

.method public setPageMargin(I)V
    .locals 9

    .prologue
    .line 865
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    move v2, v4

    .line 866
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    .line 868
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v4

    move v3, v4

    .line 869
    move-object v4, v0

    move v5, v3

    move v6, v3

    move v7, v1

    move v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 871
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 872
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 901
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 902
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 889
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 890
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    .line 891
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 892
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 893
    return-void

    .line 891
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V
    .locals 7

    .prologue
    .line 764
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 765
    move-object v5, v2

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 766
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    if-eq v5, v6, :cond_3

    const/4 v5, 0x1

    :goto_2
    move v4, v5

    .line 767
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    .line 768
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    .line 769
    move v5, v3

    if-eqz v5, :cond_5

    .line 770
    move-object v5, v0

    move v6, v1

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    :goto_3
    iput v6, v5, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    .line 774
    :goto_4
    move v5, v4

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 776
    :cond_0
    return-void

    .line 765
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 766
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 770
    :cond_4
    const/4 v6, 0x1

    goto :goto_3

    .line 772
    :cond_5
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    goto :goto_4
.end method

.method smoothScrollTo(II)V
    .locals 7

    .prologue
    .line 935
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    .line 936
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 24

    .prologue
    .line 946
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v18

    if-nez v18, :cond_0

    .line 948
    move-object/from16 v18, v2

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1001
    :goto_0
    return-void

    .line 953
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->isFinished()Z

    move-result v18

    if-nez v18, :cond_1

    const/16 v18, 0x1

    :goto_1
    move/from16 v7, v18

    .line 954
    move/from16 v18, v7

    if-eqz v18, :cond_3

    .line 959
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsScrollStarted:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->getCurrX()I

    move-result v18

    :goto_2
    move/from16 v6, v18

    .line 961
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->abortAnimation()V

    .line 962
    move-object/from16 v18, v2

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 966
    :goto_3
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v18

    move/from16 v8, v18

    .line 967
    move/from16 v18, v3

    move/from16 v19, v6

    sub-int v18, v18, v19

    move/from16 v9, v18

    .line 968
    move/from16 v18, v4

    move/from16 v19, v8

    sub-int v18, v18, v19

    move/from16 v10, v18

    .line 969
    move/from16 v18, v9

    if-nez v18, :cond_4

    move/from16 v18, v10

    if-nez v18, :cond_4

    .line 970
    move-object/from16 v18, v2

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 971
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 972
    move-object/from16 v18, v2

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 973
    goto :goto_0

    .line 953
    :cond_1
    const/16 v18, 0x0

    goto :goto_1

    .line 959
    :cond_2
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->getStartX()I

    move-result v18

    goto :goto_2

    .line 964
    :cond_3
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v18

    move/from16 v6, v18

    goto :goto_3

    .line 976
    :cond_4
    move-object/from16 v18, v2

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 977
    move-object/from16 v18, v2

    const/16 v19, 0x2

    invoke-direct/range {v18 .. v19}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 979
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v18

    move/from16 v11, v18

    .line 980
    move/from16 v18, v11

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    move/from16 v12, v18

    .line 981
    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v20, v9

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v20, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move/from16 v13, v18

    .line 982
    move/from16 v18, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v12

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v2

    move/from16 v21, v13

    .line 983
    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/view/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v20

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v14, v18

    .line 986
    move/from16 v18, v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v5, v18

    .line 987
    move/from16 v18, v5

    if-lez v18, :cond_5

    .line 988
    const/16 v18, 0x4

    const/high16 v19, 0x447a0000    # 1000.0f

    move/from16 v20, v14

    move/from16 v21, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    mul-int v18, v18, v19

    move/from16 v15, v18

    .line 994
    :goto_4
    move/from16 v18, v15

    const/16 v19, 0x258

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v15, v18

    .line 998
    move-object/from16 v18, v2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mIsScrollStarted:Z

    .line 999
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    move/from16 v19, v6

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v15

    invoke-virtual/range {v18 .. v23}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1000
    move-object/from16 v18, v2

    invoke-static/range {v18 .. v18}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1001
    goto/16 :goto_0

    .line 990
    :cond_5
    move/from16 v18, v11

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v19

    mul-float v18, v18, v19

    move/from16 v16, v18

    .line 991
    move/from16 v18, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v16

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    div-float v18, v18, v19

    move/from16 v17, v18

    .line 992
    move/from16 v18, v17

    const/high16 v19, 0x3f800000    # 1.0f

    add-float v18, v18, v19

    const/high16 v19, 0x42c80000    # 100.0f

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v15, v18

    goto :goto_4
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    .prologue
    .line 906
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
