.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayoutImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$LayoutParams;,
        Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;,
        Landroid/support/v4/widget/DrawerLayout$SavedState;,
        Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;,
        Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;,
        Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;,
        Landroid/support/v4/widget/DrawerLayout$SimpleDrawerListener;,
        Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    }
.end annotation


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field private static final CAN_HIDE_DESCENDANTS:Z

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final DRAWER_ELEVATION:I = 0xa

.field static final IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

.field private static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNDEFINED:I = 0x3

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f


# instance fields
.field private final mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/widget/DrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockModeEnd:I

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mLockModeStart:I

.field private mMinDrawerMargin:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 176
    const/4 v1, 0x1

    new-array v1, v1, [I

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    const v4, 0x10100b3

    aput v4, v2, v3

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    .line 181
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    .line 184
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    sput-boolean v1, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    .line 357
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v1

    .line 358
    move v1, v0

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 359
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;-><init>()V

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    .line 363
    :goto_2
    return-void

    .line 181
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 184
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 361
    :cond_2
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;-><init>()V

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 368
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 369
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 372
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 373
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    .line 376
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 187
    move-object v6, v0

    new-instance v7, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    .line 193
    move-object v6, v0

    const/high16 v7, -0x67000000

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 195
    move-object v6, v0

    new-instance v7, Landroid/graphics/Paint;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 203
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 205
    move-object v6, v0

    const/4 v7, 0x3

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 206
    move-object v6, v0

    const/4 v7, 0x3

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    .line 207
    move-object v6, v0

    const/4 v7, 0x3

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    .line 208
    move-object v6, v0

    const/4 v7, 0x3

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    .line 230
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 231
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 232
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 233
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 377
    move-object v6, v0

    const/high16 v7, 0x40000

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->setDescendantFocusability(I)V

    .line 378
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    move v4, v6

    .line 379
    move-object v6, v0

    const/high16 v7, 0x42800000    # 64.0f

    move v8, v4

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    .line 380
    const/high16 v6, 0x43c80000    # 400.0f

    move v7, v4

    mul-float/2addr v6, v7

    move v5, v6

    .line 382
    move-object v6, v0

    new-instance v7, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    const/4 v10, 0x3

    invoke-direct {v8, v9, v10}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 383
    move-object v6, v0

    new-instance v7, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 385
    move-object v6, v0

    move-object v7, v0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 386
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 387
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 388
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 390
    move-object v6, v0

    move-object v7, v0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 391
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 392
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 393
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 396
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 398
    move-object v6, v0

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 401
    move-object v6, v0

    new-instance v7, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 402
    move-object v6, v0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewGroupCompat;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    .line 403
    move-object v6, v0

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 404
    sget-object v6, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    move-object v7, v0

    invoke-interface {v6, v7}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->configureApplyInsets(Landroid/view/View;)V

    .line 405
    move-object v6, v0

    sget-object v7, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    move-object v8, v1

    invoke-interface {v7, v8}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 408
    :cond_0
    move-object v6, v0

    const/high16 v7, 0x41200000    # 10.0f

    move v8, v4

    mul-float/2addr v7, v8

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    .line 410
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    .line 411
    return-void
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 96
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    return v0
.end method

.method static synthetic access$600(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$700(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/widget/DrawerLayout;->includeChildForAccessibility(Landroid/view/View;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method private findVisibleDrawer()Landroid/view/View;
    .locals 6

    .prologue
    .line 1868
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v1, v4

    .line 1869
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 1870
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1871
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1872
    move-object v4, v3

    move-object v0, v4

    .line 1875
    :goto_1
    return-object v0

    .line 1869
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1875
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 999
    move v0, p0

    move v1, v0

    const/4 v2, 0x3

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1000
    const-string v1, "LEFT"

    move-object v0, v1

    .line 1005
    :goto_0
    return-object v0

    .line 1002
    :cond_0
    move v1, v0

    const/4 v2, 0x5

    and-int/lit8 v1, v1, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1003
    const-string v1, "RIGHT"

    move-object v0, v1

    goto :goto_0

    .line 1005
    :cond_1
    move v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 1290
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 1291
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 1292
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 1294
    :goto_1
    return v0

    .line 1292
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1294
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method private hasPeekingDrawer()Z
    .locals 6

    .prologue
    .line 1794
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v1, v4

    .line 1795
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 1796
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v3, v4

    .line 1797
    move-object v4, v3

    invoke-static {v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$200(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1798
    const/4 v4, 0x1

    move v0, v4

    .line 1801
    :goto_1
    return v0

    .line 1795
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1801
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private hasVisibleDrawer()Z
    .locals 2

    .prologue
    .line 1864
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static includeChildForAccessibility(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 2004
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    move-object v1, v0

    .line 2006
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)Z
    .locals 5

    .prologue
    .line 1174
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1175
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 1179
    :goto_0
    return v0

    .line 1178
    :cond_1
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v3

    .line 1179
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 1132
    move-object v0, p0

    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    move v1, v2

    .line 1134
    move v2, v1

    if-nez v2, :cond_0

    .line 1135
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1137
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    .line 1138
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    .line 1147
    :goto_0
    return-object v0

    .line 1141
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1143
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    .line 1144
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    goto :goto_0

    .line 1147
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    goto :goto_0
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 1151
    move-object v0, p0

    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    move v1, v2

    .line 1152
    move v2, v1

    if-nez v2, :cond_0

    .line 1153
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1155
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    .line 1156
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    .line 1165
    :goto_0
    return-object v0

    .line 1159
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1161
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    .line 1162
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    goto :goto_0

    .line 1165
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    goto :goto_0
.end method

.method private resolveShadowDrawables()V
    .locals 3

    .prologue
    .line 1124
    move-object v0, p0

    sget-boolean v1, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v1, :cond_0

    .line 1129
    :goto_0
    return-void

    .line 1127
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/DrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 1128
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/DrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    .line 1129
    goto :goto_0
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .locals 8

    .prologue
    .line 893
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v6

    move v3, v6

    .line 894
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_3

    .line 895
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 896
    move v6, v2

    if-nez v6, :cond_0

    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v6, v2

    if-eqz v6, :cond_2

    move-object v6, v5

    move-object v7, v1

    if-ne v6, v7, :cond_2

    .line 900
    :cond_1
    move-object v6, v5

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 894
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 903
    :cond_2
    move-object v6, v5

    const/4 v7, 0x4

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    .line 907
    :cond_3
    return-void
.end method


# virtual methods
.method public addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 6
    .param p1    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 555
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 562
    :goto_0
    return-void

    .line 558
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v2, :cond_1

    .line 559
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    .line 561
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 562
    goto :goto_0
.end method

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
    .line 1830
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v9

    const/high16 v10, 0x60000

    if-ne v9, v10, :cond_0

    .line 1861
    :goto_0
    return-void

    .line 1836
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v9

    move v4, v9

    .line 1837
    const/4 v9, 0x0

    move v5, v9

    .line 1838
    const/4 v9, 0x0

    move v6, v9

    :goto_1
    move v9, v6

    move v10, v4

    if-ge v9, v10, :cond_3

    .line 1839
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 1840
    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1841
    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1842
    const/4 v9, 0x1

    move v5, v9

    .line 1843
    move-object v9, v7

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1838
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1846
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_2

    .line 1850
    :cond_3
    move v9, v5

    if-nez v9, :cond_5

    .line 1851
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v9

    .line 1852
    const/4 v9, 0x0

    move v7, v9

    :goto_3
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_5

    .line 1853
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v8, v9

    .line 1854
    move-object v9, v8

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_4

    .line 1855
    move-object v9, v8

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1852
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1860
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1861
    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 9

    .prologue
    .line 1976
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1978
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 1979
    move-object v5, v4

    if-nez v5, :cond_0

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1982
    :cond_0
    move-object v5, v1

    const/4 v6, 0x4

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1993
    :goto_0
    sget-boolean v5, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-nez v5, :cond_1

    .line 1994
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 1996
    :cond_1
    return-void

    .line 1987
    :cond_2
    move-object v5, v1

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_0
.end method

.method cancelChildViewTouch()V
    .locals 14

    .prologue
    .line 1880
    move-object v0, p0

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v6, :cond_1

    .line 1881
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-wide v1, v6

    .line 1882
    move-wide v6, v1

    move-wide v8, v1

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    move-object v3, v6

    .line 1884
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v6

    move v4, v6

    .line 1885
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 1886
    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 1885
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1888
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 1889
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1891
    :cond_1
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 944
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v4

    move v3, v4

    .line 945
    move v4, v3

    move v5, v2

    and-int/2addr v4, v5

    move v5, v2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 1820
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

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

.method public closeDrawer(I)V
    .locals 5

    .prologue
    .line 1708
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(IZ)V

    .line 1709
    return-void
.end method

.method public closeDrawer(IZ)V
    .locals 9

    .prologue
    .line 1719
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1720
    move-object v4, v3

    if-nez v4, :cond_0

    .line 1721
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No drawer view found with gravity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    .line 1722
    invoke-static {v7}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1724
    :cond_0
    move-object v4, v0

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 1725
    return-void
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1666
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 1667
    return-void
.end method

.method public closeDrawer(Landroid/view/View;Z)V
    .locals 9

    .prologue
    .line 1676
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1677
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a sliding drawer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1680
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v3, v4

    .line 1681
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v4, :cond_1

    .line 1682
    move-object v4, v3

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$002(Landroid/support/v4/widget/DrawerLayout$LayoutParams;F)F

    move-result v4

    .line 1683
    move-object v4, v3

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$102(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    move-result v4

    .line 1698
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1699
    return-void

    .line 1684
    :cond_1
    move v4, v2

    if-eqz v4, :cond_3

    .line 1685
    move-object v4, v3

    move-object v5, v3

    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v5

    const/4 v6, 0x4

    or-int/lit8 v5, v5, 0x4

    invoke-static {v4, v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$102(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    move-result v4

    .line 1687
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1688
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    neg-int v6, v6

    move-object v7, v1

    .line 1689
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1688
    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    goto :goto_0

    .line 1691
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    goto :goto_0

    .line 1694
    :cond_3
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1695
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1696
    move-object v4, v1

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public closeDrawers()V
    .locals 3

    .prologue
    .line 1556
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1557
    return-void
.end method

.method closeDrawers(Z)V
    .locals 13

    .prologue
    .line 1560
    move-object v0, p0

    move v1, p1

    const/4 v8, 0x0

    move v2, v8

    .line 1561
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v8

    move v3, v8

    .line 1562
    const/4 v8, 0x0

    move v4, v8

    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 1563
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 1564
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v6, v8

    .line 1566
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v1

    if-eqz v8, :cond_1

    move-object v8, v6

    invoke-static {v8}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$200(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1562
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1570
    :cond_1
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    move v7, v8

    .line 1572
    move-object v8, v0

    move-object v9, v5

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1573
    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v10, v5

    move v11, v7

    neg-int v11, v11

    move-object v12, v5

    .line 1574
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1573
    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v9

    or-int/2addr v8, v9

    move v2, v8

    .line 1580
    :goto_2
    move-object v8, v6

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$202(Landroid/support/v4/widget/DrawerLayout$LayoutParams;Z)Z

    move-result v8

    goto :goto_1

    .line 1576
    :cond_2
    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v10, v5

    move-object v11, v0

    .line 1577
    invoke-virtual {v11}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v11

    move-object v12, v5

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1576
    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v9

    or-int/2addr v8, v9

    move v2, v8

    goto :goto_2

    .line 1583
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1584
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1586
    move v8, v2

    if-eqz v8, :cond_4

    .line 1587
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1589
    :cond_4
    return-void
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    .line 1275
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v5

    move v1, v5

    .line 1276
    const/4 v5, 0x0

    move v2, v5

    .line 1277
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 1278
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v5

    move v4, v5

    .line 1279
    move v5, v2

    move v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v2, v5

    .line 1277
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1281
    :cond_0
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    .line 1284
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v6

    or-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 1285
    move-object v5, v0

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1287
    :cond_1
    return-void
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 841
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v2, v5

    .line 842
    move-object v5, v2

    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v5

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 843
    move-object v5, v2

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$102(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    move-result v5

    .line 845
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 848
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .line 849
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_0
    move v5, v4

    if-ltz v5, :cond_0

    .line 850
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 849
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 854
    :cond_0
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 859
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 860
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 861
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 862
    move-object v5, v3

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 866
    :cond_1
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 869
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v2, v5

    .line 870
    move-object v5, v2

    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v5

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    .line 871
    move-object v5, v2

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$102(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    move-result v5

    .line 872
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 875
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .line 876
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_0
    move v5, v4

    if-ltz v5, :cond_0

    .line 877
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 876
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 881
    :cond_0
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 884
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 885
    move-object v5, v0

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 888
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    move-result v5

    .line 890
    :cond_2
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 8

    .prologue
    .line 910
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 913
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .line 914
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_0
    move v5, v4

    if-ltz v5, :cond_0

    .line 915
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    move-object v6, v1

    move v7, v2

    invoke-interface {v5, v6, v7}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 914
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 918
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 24

    .prologue
    .line 1358
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v18

    move/from16 v7, v18

    .line 1359
    move-object/from16 v18, v2

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v18

    move/from16 v8, v18

    .line 1360
    const/16 v18, 0x0

    move/from16 v9, v18

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v18

    move/from16 v10, v18

    .line 1362
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Canvas;->save()I

    move-result v18

    move/from16 v11, v18

    .line 1363
    move/from16 v18, v8

    if-eqz v18, :cond_5

    .line 1364
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v18

    move/from16 v12, v18

    .line 1365
    const/16 v18, 0x0

    move/from16 v13, v18

    :goto_0
    move/from16 v18, v13

    move/from16 v19, v12

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 1366
    move-object/from16 v18, v2

    move/from16 v19, v13

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v14, v18

    .line 1367
    move-object/from16 v18, v14

    move-object/from16 v19, v4

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v18, v14

    .line 1368
    invoke-static/range {v18 .. v18}, Landroid/support/v4/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v2

    move-object/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v14

    .line 1369
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 1365
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1373
    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v19, v14

    const/16 v20, 0x3

    invoke-virtual/range {v18 .. v20}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1374
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v18

    move/from16 v15, v18

    .line 1375
    move/from16 v18, v15

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    move/from16 v18, v15

    move/from16 v9, v18

    .line 1376
    :cond_2
    goto :goto_1

    .line 1377
    :cond_3
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v15, v18

    .line 1378
    move/from16 v18, v15

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    move/from16 v18, v15

    move/from16 v10, v18

    goto :goto_1

    .line 1381
    :cond_4
    move-object/from16 v18, v3

    move/from16 v19, v9

    const/16 v20, 0x0

    move/from16 v21, v10

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v22

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-result v18

    .line 1383
    :cond_5
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-wide/from16 v21, v5

    invoke-super/range {v18 .. v22}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v18

    move/from16 v12, v18

    .line 1384
    move-object/from16 v18, v3

    move/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1386
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_7

    move/from16 v18, v8

    if-eqz v18, :cond_7

    .line 1387
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    move/from16 v18, v0

    const/high16 v19, -0x1000000

    and-int v18, v18, v19

    const/16 v19, 0x18

    ushr-int/lit8 v18, v18, 0x18

    move/from16 v13, v18

    .line 1388
    move/from16 v18, v13

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v14, v18

    .line 1389
    move/from16 v18, v14

    const/16 v19, 0x18

    shl-int/lit8 v18, v18, 0x18

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    move/from16 v19, v0

    const v20, 0xffffff

    and-int v19, v19, v20

    or-int v18, v18, v19

    move/from16 v15, v18

    .line 1390
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move/from16 v19, v15

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 1392
    move-object/from16 v18, v3

    move/from16 v19, v9

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v21, v10

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1417
    :cond_6
    :goto_2
    move/from16 v18, v12

    move/from16 v2, v18

    return v2

    .line 1393
    :cond_7
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    const/16 v20, 0x3

    .line 1394
    invoke-virtual/range {v18 .. v20}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1395
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    move/from16 v13, v18

    .line 1396
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v18

    move/from16 v14, v18

    .line 1397
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v18

    move/from16 v15, v18

    .line 1398
    const/16 v18, 0x0

    move/from16 v19, v14

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v15

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    .line 1399
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v16, v18

    .line 1400
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move/from16 v19, v14

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v21, v14

    move/from16 v22, v13

    add-int v21, v21, v22

    move-object/from16 v22, v4

    .line 1401
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v22

    .line 1400
    invoke-virtual/range {v18 .. v22}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1402
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/high16 v19, 0x437f0000    # 255.0f

    move/from16 v20, v16

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1403
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1404
    goto/16 :goto_2

    :cond_8
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    const/16 v20, 0x5

    .line 1405
    invoke-virtual/range {v18 .. v20}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1406
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    move/from16 v13, v18

    .line 1407
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v14, v18

    .line 1408
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v18

    move/from16 v19, v14

    sub-int v18, v18, v19

    move/from16 v15, v18

    .line 1409
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v18

    move/from16 v16, v18

    .line 1410
    const/16 v18, 0x0

    move/from16 v19, v15

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v16

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    .line 1411
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v17, v18

    .line 1412
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move/from16 v19, v14

    move/from16 v20, v13

    sub-int v19, v19, v20

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v21, v14

    move-object/from16 v22, v4

    .line 1413
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v22

    .line 1412
    invoke-virtual/range {v18 .. v22}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1414
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/high16 v19, 0x437f0000    # 255.0f

    move/from16 v20, v17

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1415
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 9

    .prologue
    .line 979
    move-object v0, p0

    move v1, p1

    move v7, v1

    move-object v8, v0

    .line 980
    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v8

    .line 979
    invoke-static {v7, v8}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v7

    const/4 v8, 0x7

    and-int/lit8 v7, v7, 0x7

    move v2, v7

    .line 981
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    move v3, v7

    .line 982
    const/4 v7, 0x0

    move v4, v7

    :goto_0
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 983
    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v5, v7

    .line 984
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v7

    move v6, v7

    .line 985
    move v7, v6

    const/4 v8, 0x7

    and-int/lit8 v7, v7, 0x7

    move v8, v2

    if-ne v7, v8, :cond_0

    .line 986
    move-object v7, v5

    move-object v0, v7

    .line 989
    :goto_1
    return-object v0

    .line 982
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 989
    :cond_1
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_1
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 7

    .prologue
    .line 949
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v5

    move v1, v5

    .line 950
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 951
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 952
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v4, v5

    .line 953
    move-object v5, v4

    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v5

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 954
    move-object v5, v3

    move-object v0, v5

    .line 957
    :goto_1
    return-object v0

    .line 950
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 957
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 1806
    move-object v0, p0

    new-instance v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .prologue
    .line 1825
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 1811
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDrawerElevation()F
    .locals 2

    .prologue
    .line 437
    move-object v0, p0

    sget-boolean v1, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v1, :cond_0

    .line 438
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    move v0, v1

    .line 440
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getDrawerLockMode(I)I
    .locals 9

    .prologue
    .line 696
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    move v2, v7

    .line 698
    move v7, v1

    sparse-switch v7, :sswitch_data_0

    .line 741
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    :goto_0
    return v0

    .line 700
    :sswitch_0
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    .line 701
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    move v0, v7

    goto :goto_0

    .line 703
    :cond_1
    move v7, v2

    if-nez v7, :cond_2

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    :goto_1
    move v3, v7

    .line 705
    move v7, v3

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 706
    move v7, v3

    move v0, v7

    goto :goto_0

    .line 703
    :cond_2
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_1

    .line 710
    :sswitch_1
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 711
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    move v0, v7

    goto :goto_0

    .line 713
    :cond_3
    move v7, v2

    if-nez v7, :cond_4

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    :goto_2
    move v4, v7

    .line 715
    move v7, v4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 716
    move v7, v4

    move v0, v7

    goto :goto_0

    .line 713
    :cond_4
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_2

    .line 720
    :sswitch_2
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5

    .line 721
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    move v0, v7

    goto :goto_0

    .line 723
    :cond_5
    move v7, v2

    if-nez v7, :cond_6

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    :goto_3
    move v5, v7

    .line 725
    move v7, v5

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 726
    move v7, v5

    move v0, v7

    goto :goto_0

    .line 723
    :cond_6
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_3

    .line 730
    :sswitch_3
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_7

    .line 731
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    move v0, v7

    goto :goto_0

    .line 733
    :cond_7
    move v7, v2

    if-nez v7, :cond_8

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    :goto_4
    move v6, v7

    .line 735
    move v7, v6

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 736
    move v7, v6

    move v0, v7

    goto :goto_0

    .line 733
    :cond_8
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_4

    .line 698
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x800003 -> :sswitch_2
        0x800005 -> :sswitch_3
    .end sparse-switch
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 8

    .prologue
    .line 753
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 754
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

    const-string v6, " is not a drawer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 756
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v3, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move v2, v3

    .line 757
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 790
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    .line 791
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 790
    invoke-static {v3, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    move v2, v3

    .line 792
    move v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 793
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    move-object v0, v3

    .line 797
    :goto_0
    return-object v0

    .line 794
    :cond_0
    move v3, v2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 795
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    move-object v0, v3

    goto :goto_0

    .line 797
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 939
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v3, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move v2, v3

    .line 940
    move v3, v2

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 931
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-static {v2}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1314
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1421
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v2, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDrawerOpen(I)Z
    .locals 5

    .prologue
    .line 1755
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1756
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1757
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v3

    move v0, v3

    .line 1759
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 8

    .prologue
    .line 1738
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1739
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

    const-string v6, " is not a drawer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1741
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v2, v3

    .line 1742
    move-object v3, v2

    invoke-static {v3}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v3

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 6

    .prologue
    .line 1425
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v4, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move v2, v4

    .line 1426
    move v4, v2

    move-object v5, v1

    .line 1427
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    .line 1426
    invoke-static {v4, v5}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    move v3, v4

    .line 1428
    move v4, v3

    const/4 v5, 0x3

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_0

    .line 1430
    const/4 v4, 0x1

    move v0, v4

    .line 1436
    :goto_0
    return v0

    .line 1432
    :cond_0
    move v4, v3

    const/4 v5, 0x5

    and-int/lit8 v4, v4, 0x5

    if-eqz v4, :cond_1

    .line 1434
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 1436
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public isDrawerVisible(I)Z
    .locals 5

    .prologue
    .line 1786
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1787
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1788
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    move v0, v3

    .line 1790
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 7

    .prologue
    .line 1771
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1772
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a drawer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1774
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-static {v2}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .locals 12

    .prologue
    .line 961
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v8

    move v3, v8

    .line 962
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    move v4, v8

    .line 963
    move v8, v4

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v5, v8

    .line 964
    move v8, v4

    int-to-float v8, v8

    move v9, v2

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v6, v8

    .line 965
    move v8, v6

    move v9, v5

    sub-int/2addr v8, v9

    move v7, v8

    .line 967
    move-object v8, v1

    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x3

    .line 968
    invoke-virtual {v9, v10, v11}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v7

    .line 967
    :goto_0
    invoke-virtual {v8, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 969
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 970
    return-void

    .line 968
    :cond_0
    move v9, v7

    neg-int v9, v9

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1016
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1017
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1018
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 1010
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1011
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1012
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 1346
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1347
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 1348
    sget-object v3, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    invoke-interface {v3, v4}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->getTopInset(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 1349
    move v3, v2

    if-lez v3, :cond_0

    .line 1350
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v6

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1351
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1354
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 1441
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    invoke-static {v8}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v8

    move v2, v8

    .line 1444
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v10, v1

    .line 1445
    invoke-virtual {v9, v10}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    or-int/2addr v8, v9

    move v3, v8

    .line 1447
    const/4 v8, 0x0

    move v4, v8

    .line 1449
    move v8, v2

    packed-switch v8, :pswitch_data_0

    .line 1483
    :cond_0
    :goto_0
    move v8, v3

    if-nez v8, :cond_1

    move v8, v4

    if-nez v8, :cond_1

    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v4/widget/DrawerLayout;->hasPeekingDrawer()Z

    move-result v8

    if-nez v8, :cond_1

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v8, :cond_3

    :cond_1
    const/4 v8, 0x1

    :goto_1
    move v0, v8

    return v0

    .line 1451
    :pswitch_0
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    move v5, v8

    .line 1452
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    move v6, v8

    .line 1453
    move-object v8, v0

    move v9, v5

    iput v9, v8, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 1454
    move-object v8, v0

    move v9, v6

    iput v9, v8, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 1455
    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 1456
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move v9, v5

    float-to-int v9, v9

    move v10, v6

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    move-object v7, v8

    .line 1457
    move-object v8, v7

    if-eqz v8, :cond_2

    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1458
    const/4 v8, 0x1

    move v4, v8

    .line 1461
    :cond_2
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1462
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1463
    goto :goto_0

    .line 1468
    :pswitch_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1469
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1470
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_0

    .line 1477
    :pswitch_2
    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1478
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1479
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 1483
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 1449
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 1895
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/widget/DrawerLayout;->hasVisibleDrawer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1896
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/KeyEvent;->startTracking()V

    .line 1897
    const/4 v3, 0x1

    move v0, v3

    .line 1899
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 1904
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 1905
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1906
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1907
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 1909
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 1911
    :goto_1
    return v0

    .line 1909
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1911
    :cond_2
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 27

    .prologue
    .line 1184
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v21, v2

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 1185
    move/from16 v21, v6

    move/from16 v22, v4

    sub-int v21, v21, v22

    move/from16 v8, v21

    .line 1186
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v21

    move/from16 v9, v21

    .line 1187
    const/16 v21, 0x0

    move/from16 v10, v21

    :goto_0
    move/from16 v21, v10

    move/from16 v22, v9

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 1188
    move-object/from16 v21, v2

    move/from16 v22, v10

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v11, v21

    .line 1190
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 1187
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1194
    :cond_1
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object/from16 v12, v21

    .line 1196
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1197
    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v23, v0

    move-object/from16 v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v24, v0

    move-object/from16 v25, v11

    .line 1198
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    add-int v24, v24, v25

    move-object/from16 v25, v12

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v25, v0

    move-object/from16 v26, v11

    .line 1199
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v25, v25, v26

    .line 1197
    invoke-virtual/range {v21 .. v25}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1201
    :cond_2
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    move/from16 v13, v21

    .line 1202
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    move/from16 v14, v21

    .line 1206
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    const/16 v23, 0x3

    invoke-virtual/range {v21 .. v23}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1207
    move/from16 v21, v13

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v22, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v12

    invoke-static/range {v23 .. v23}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v23

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v15, v21

    .line 1208
    move/from16 v21, v13

    move/from16 v22, v15

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v16, v21

    .line 1214
    :goto_2
    move/from16 v21, v16

    move-object/from16 v22, v12

    invoke-static/range {v22 .. v22}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v22

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_5

    const/16 v21, 0x1

    :goto_3
    move/from16 v17, v21

    .line 1216
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v21, v0

    const/16 v22, 0x70

    and-int/lit8 v21, v21, 0x70

    move/from16 v18, v21

    .line 1218
    move/from16 v21, v18

    sparse-switch v21, :sswitch_data_0

    .line 1221
    move-object/from16 v21, v11

    move/from16 v22, v15

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v23, v0

    move/from16 v24, v15

    move/from16 v25, v13

    add-int v24, v24, v25

    move-object/from16 v25, v12

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v25, v0

    move/from16 v26, v14

    add-int v25, v25, v26

    invoke-virtual/range {v21 .. v25}, Landroid/view/View;->layout(IIII)V

    .line 1252
    :goto_4
    move/from16 v21, v17

    if-eqz v21, :cond_3

    .line 1253
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move/from16 v23, v16

    invoke-virtual/range {v21 .. v23}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 1256
    :cond_3
    move-object/from16 v21, v12

    invoke-static/range {v21 .. v21}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_8

    const/16 v21, 0x0

    :goto_5
    move/from16 v19, v21

    .line 1257
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    move/from16 v22, v19

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 1258
    move-object/from16 v21, v11

    move/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1210
    :cond_4
    move/from16 v21, v8

    move/from16 v22, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v12

    invoke-static/range {v23 .. v23}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v23

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v15, v21

    .line 1211
    move/from16 v21, v8

    move/from16 v22, v15

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v16, v21

    goto/16 :goto_2

    .line 1214
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 1227
    :sswitch_0
    move/from16 v21, v7

    move/from16 v22, v5

    sub-int v21, v21, v22

    move/from16 v19, v21

    .line 1228
    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v19

    move-object/from16 v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v24, v11

    .line 1229
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v24, v15

    move/from16 v25, v13

    add-int v24, v24, v25

    move/from16 v25, v19

    move-object/from16 v26, v12

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    .line 1228
    invoke-virtual/range {v21 .. v25}, Landroid/view/View;->layout(IIII)V

    .line 1232
    goto/16 :goto_4

    .line 1236
    :sswitch_1
    move/from16 v21, v7

    move/from16 v22, v5

    sub-int v21, v21, v22

    move/from16 v19, v21

    .line 1237
    move/from16 v21, v19

    move/from16 v22, v14

    sub-int v21, v21, v22

    const/16 v22, 0x2

    div-int/lit8 v21, v21, 0x2

    move/from16 v20, v21

    .line 1241
    move/from16 v21, v20

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 1242
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    move/from16 v20, v21

    .line 1246
    :cond_6
    :goto_6
    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v20

    move/from16 v24, v15

    move/from16 v25, v13

    add-int v24, v24, v25

    move/from16 v25, v20

    move/from16 v26, v14

    add-int v25, v25, v26

    invoke-virtual/range {v21 .. v25}, Landroid/view/View;->layout(IIII)V

    .line 1248
    goto/16 :goto_4

    .line 1243
    :cond_7
    move/from16 v21, v20

    move/from16 v22, v14

    add-int v21, v21, v22

    move/from16 v22, v19

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    .line 1244
    move/from16 v21, v19

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v22, v14

    sub-int v21, v21, v22

    move/from16 v20, v21

    goto :goto_6

    .line 1256
    :cond_8
    const/16 v21, 0x4

    goto/16 :goto_5

    .line 1262
    :cond_9
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 1263
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1264
    return-void

    .line 1218
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 26

    .prologue
    .line 1022
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v21, v3

    invoke-static/range {v21 .. v21}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    move/from16 v5, v21

    .line 1023
    move/from16 v21, v4

    invoke-static/range {v21 .. v21}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    move/from16 v6, v21

    .line 1024
    move/from16 v21, v3

    invoke-static/range {v21 .. v21}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    move/from16 v7, v21

    .line 1025
    move/from16 v21, v4

    invoke-static/range {v21 .. v21}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    move/from16 v8, v21

    .line 1027
    move/from16 v21, v5

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    move/from16 v21, v6

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 1028
    :cond_0
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1033
    move/from16 v21, v5

    const/high16 v22, -0x80000000

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 1034
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v5, v21

    .line 1039
    :cond_1
    :goto_0
    move/from16 v21, v6

    const/high16 v22, -0x80000000

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 1040
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v6, v21

    .line 1051
    :cond_2
    :goto_1
    move-object/from16 v21, v2

    move/from16 v22, v7

    move/from16 v23, v8

    invoke-virtual/range {v21 .. v23}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 1053
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v21, v2

    invoke-static/range {v21 .. v21}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_6

    const/16 v21, 0x1

    :goto_2
    move/from16 v9, v21

    .line 1054
    move-object/from16 v21, v2

    invoke-static/range {v21 .. v21}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v21

    move/from16 v10, v21

    .line 1058
    const/16 v21, 0x0

    move/from16 v11, v21

    .line 1059
    const/16 v21, 0x0

    move/from16 v12, v21

    .line 1060
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v21

    move/from16 v13, v21

    .line 1061
    const/16 v21, 0x0

    move/from16 v14, v21

    :goto_3
    move/from16 v21, v14

    move/from16 v22, v13

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_12

    .line 1062
    move-object/from16 v21, v2

    move/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v15, v21

    .line 1064
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 1061
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1035
    :cond_3
    move/from16 v21, v5

    if-nez v21, :cond_1

    .line 1036
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v5, v21

    .line 1037
    const/16 v21, 0x12c

    move/from16 v7, v21

    goto :goto_0

    .line 1041
    :cond_4
    move/from16 v21, v6

    if-nez v21, :cond_2

    .line 1042
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v6, v21

    .line 1043
    const/16 v21, 0x12c

    move/from16 v8, v21

    goto :goto_1

    .line 1046
    :cond_5
    new-instance v21, Ljava/lang/IllegalArgumentException;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    const-string v23, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1053
    :cond_6
    const/16 v21, 0x0

    goto :goto_2

    .line 1068
    :cond_7
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object/from16 v16, v21

    .line 1070
    move/from16 v21, v9

    if-eqz v21, :cond_8

    .line 1071
    move-object/from16 v21, v16

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v21, v0

    move/from16 v22, v10

    invoke-static/range {v21 .. v22}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v21

    move/from16 v17, v21

    .line 1072
    move-object/from16 v21, v15

    invoke-static/range {v21 .. v21}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1073
    sget-object v21, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    move-object/from16 v22, v15

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v23, v0

    move/from16 v24, v17

    invoke-interface/range {v21 .. v24}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V

    .line 1079
    :cond_8
    :goto_5
    move-object/from16 v21, v2

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 1081
    move/from16 v21, v7

    move-object/from16 v22, v16

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v22, v16

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v17, v21

    .line 1083
    move/from16 v21, v8

    move-object/from16 v22, v16

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v22, v16

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v18, v21

    .line 1085
    move-object/from16 v21, v15

    move/from16 v22, v17

    move/from16 v23, v18

    invoke-virtual/range {v21 .. v23}, Landroid/view/View;->measure(II)V

    .line 1086
    goto/16 :goto_4

    .line 1075
    :cond_9
    sget-object v21, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    move-object/from16 v22, v16

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v23, v0

    move/from16 v24, v17

    invoke-interface/range {v21 .. v24}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    goto :goto_5

    .line 1086
    :cond_a
    move-object/from16 v21, v2

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 1087
    sget-boolean v21, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v21, :cond_b

    .line 1088
    move-object/from16 v21, v15

    invoke-static/range {v21 .. v21}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v21

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_b

    .line 1089
    move-object/from16 v21, v15

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 1092
    :cond_b
    move-object/from16 v21, v2

    move-object/from16 v22, v15

    .line 1093
    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v21

    const/16 v22, 0x7

    and-int/lit8 v21, v21, 0x7

    move/from16 v17, v21

    .line 1096
    move/from16 v21, v17

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    const/16 v21, 0x1

    :goto_6
    move/from16 v18, v21

    .line 1097
    move/from16 v21, v18

    if-eqz v21, :cond_c

    move/from16 v21, v11

    if-nez v21, :cond_d

    :cond_c
    move/from16 v21, v18

    if-nez v21, :cond_f

    move/from16 v21, v12

    if-eqz v21, :cond_f

    .line 1099
    :cond_d
    new-instance v21, Ljava/lang/IllegalStateException;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v25, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v25

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Child drawer has absolute gravity "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v17

    .line 1100
    invoke-static/range {v24 .. v24}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " but this "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "DrawerLayout"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " already has a "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "drawer view along that edge"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1096
    :cond_e
    const/16 v21, 0x0

    goto :goto_6

    .line 1103
    :cond_f
    move/from16 v21, v18

    if-eqz v21, :cond_10

    .line 1104
    const/16 v21, 0x1

    move/from16 v11, v21

    .line 1108
    :goto_7
    move/from16 v21, v3

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    move/from16 v22, v0

    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    move/from16 v23, v0

    invoke-static/range {v21 .. v23}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v21

    move/from16 v19, v21

    .line 1111
    move/from16 v21, v4

    move-object/from16 v22, v16

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->height:I

    move/from16 v23, v0

    invoke-static/range {v21 .. v23}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v21

    move/from16 v20, v21

    .line 1114
    move-object/from16 v21, v15

    move/from16 v22, v19

    move/from16 v23, v20

    invoke-virtual/range {v21 .. v23}, Landroid/view/View;->measure(II)V

    .line 1115
    goto/16 :goto_4

    .line 1106
    :cond_10
    const/16 v21, 0x1

    move/from16 v12, v21

    goto :goto_7

    .line 1116
    :cond_11
    new-instance v21, Ljava/lang/IllegalStateException;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v25, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v25

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Child "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v15

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " at index "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1121
    :cond_12
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .prologue
    .line 1916
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    instance-of v4, v4, Landroid/support/v4/widget/DrawerLayout$SavedState;

    if-nez v4, :cond_0

    .line 1917
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1943
    :goto_0
    return-void

    .line 1921
    :cond_0
    move-object v4, v1

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$SavedState;

    move-object v2, v4

    .line 1922
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v5

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1924
    move-object v4, v2

    iget v4, v4, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v4, :cond_1

    .line 1925
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1926
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 1927
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1931
    :cond_1
    move-object v4, v2

    iget v4, v4, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 1932
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1934
    :cond_2
    move-object v4, v2

    iget v4, v4, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 1935
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1937
    :cond_3
    move-object v4, v2

    iget v4, v4, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    .line 1938
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    const v6, 0x800003

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1940
    :cond_4
    move-object v4, v2

    iget v4, v4, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    .line 1941
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    const v6, 0x800005

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1943
    :cond_5
    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    .prologue
    .line 1341
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 1342
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    .line 1947
    move-object v0, p0

    move-object v9, v0

    invoke-super {v9}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    move-object v1, v9

    .line 1948
    new-instance v9, Landroid/support/v4/widget/DrawerLayout$SavedState;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v1

    invoke-direct {v10, v11}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v9

    .line 1950
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v9

    move v3, v9

    .line 1951
    const/4 v9, 0x0

    move v4, v9

    :goto_0
    move v9, v4

    move v10, v3

    if-ge v9, v10, :cond_1

    .line 1952
    move-object v9, v0

    move v10, v4

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v5, v9

    .line 1953
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v6, v9

    .line 1955
    move-object v9, v6

    invoke-static {v9}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_1
    move v7, v9

    .line 1957
    move-object v9, v6

    invoke-static {v9}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_2
    move v8, v9

    .line 1958
    move v9, v7

    if-nez v9, :cond_0

    move v9, v8

    if-eqz v9, :cond_4

    .line 1961
    :cond_0
    move-object v9, v2

    move-object v10, v6

    iget v10, v10, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v10, v9, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1966
    :cond_1
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    iput v10, v9, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1967
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    iput v10, v9, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 1968
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    iput v10, v9, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    .line 1969
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    iput v10, v9, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    .line 1971
    move-object v9, v2

    move-object v0, v9

    return-object v0

    .line 1955
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1957
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 1951
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    .prologue
    .line 1488
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1489
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1491
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    move v2, v12

    .line 1492
    const/4 v12, 0x1

    move v3, v12

    .line 1494
    move v12, v2

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    packed-switch v12, :pswitch_data_0

    .line 1535
    :goto_0
    :pswitch_0
    move v12, v3

    move v0, v12

    return v0

    .line 1496
    :pswitch_1
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move v4, v12

    .line 1497
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move v5, v12

    .line 1498
    move-object v12, v0

    move v13, v4

    iput v13, v12, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 1499
    move-object v12, v0

    move v13, v5

    iput v13, v12, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 1500
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1501
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1502
    goto :goto_0

    .line 1506
    :pswitch_2
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move v4, v12

    .line 1507
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move v5, v12

    .line 1508
    const/4 v12, 0x1

    move v6, v12

    .line 1509
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move v13, v4

    float-to-int v13, v13

    move v14, v5

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v12

    move-object v7, v12

    .line 1510
    move-object v12, v7

    if-eqz v12, :cond_0

    move-object v12, v0

    move-object v13, v7

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1511
    move v12, v4

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    sub-float/2addr v12, v13

    move v8, v12

    .line 1512
    move v12, v5

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    sub-float/2addr v12, v13

    move v9, v12

    .line 1513
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v12}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v12

    move v10, v12

    .line 1514
    move v12, v8

    move v13, v8

    mul-float/2addr v12, v13

    move v13, v9

    move v14, v9

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v13, v10

    move v14, v10

    mul-int/2addr v13, v14

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_0

    .line 1516
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v12

    move-object v11, v12

    .line 1517
    move-object v12, v11

    if-eqz v12, :cond_0

    .line 1518
    move-object v12, v0

    move-object v13, v11

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    const/4 v12, 0x1

    :goto_1
    move v6, v12

    .line 1522
    :cond_0
    move-object v12, v0

    move v13, v6

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1523
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1524
    goto/16 :goto_0

    .line 1518
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 1528
    :pswitch_3
    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1529
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1530
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto/16 :goto_0

    .line 1494
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public openDrawer(I)V
    .locals 5

    .prologue
    .line 1641
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(IZ)V

    .line 1642
    return-void
.end method

.method public openDrawer(IZ)V
    .locals 9

    .prologue
    .line 1652
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1653
    move-object v4, v3

    if-nez v4, :cond_0

    .line 1654
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No drawer view found with gravity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    .line 1655
    invoke-static {v7}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1657
    :cond_0
    move-object v4, v0

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1658
    return-void
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1597
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1598
    return-void
.end method

.method public openDrawer(Landroid/view/View;Z)V
    .locals 9

    .prologue
    .line 1607
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1608
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a sliding drawer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1611
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v3, v4

    .line 1612
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v4, :cond_1

    .line 1613
    move-object v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$002(Landroid/support/v4/widget/DrawerLayout$LayoutParams;F)F

    move-result v4

    .line 1614
    move-object v4, v3

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$102(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    move-result v4

    .line 1616
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 1631
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1632
    return-void

    .line 1617
    :cond_1
    move v4, v2

    if-eqz v4, :cond_3

    .line 1618
    move-object v4, v3

    move-object v5, v3

    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v5

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$102(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    move-result v4

    .line 1620
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1621
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    goto :goto_0

    .line 1623
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v1

    .line 1624
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1623
    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    goto :goto_0

    .line 1627
    :cond_3
    move-object v4, v0

    move-object v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1628
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1629
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public removeDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 4
    .param p1    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 572
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 580
    :goto_0
    return-void

    .line 575
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v2, :cond_1

    .line 577
    goto :goto_0

    .line 579
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 580
    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    .prologue
    .line 1544
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1546
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1547
    move v2, v1

    if-eqz v2, :cond_0

    .line 1548
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1550
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 1268
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    if-nez v1, :cond_0

    .line 1269
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1271
    :cond_0
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    .line 449
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    .line 450
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    .line 451
    move-object v3, v0

    move v4, v2

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->setWillNotDraw(Z)V

    .line 452
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->requestLayout()V

    .line 453
    return-void

    .line 451
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setDrawerElevation(F)V
    .locals 6

    .prologue
    .line 420
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    .line 421
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 422
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 423
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 424
    move-object v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 421
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    :cond_1
    return-void
.end method

.method public setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 537
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v2, :cond_0

    .line 538
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->removeDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 540
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 541
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 545
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    .line 546
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 5

    .prologue
    .line 596
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 597
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 598
    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 8

    .prologue
    .line 620
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, v2

    move-object v7, v0

    .line 621
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    .line 620
    invoke-static {v6, v7}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v6

    move v3, v6

    .line 623
    move v6, v2

    sparse-switch v6, :sswitch_data_0

    .line 638
    :goto_0
    move v6, v1

    if-eqz v6, :cond_0

    .line 640
    move v6, v3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    :goto_1
    move-object v4, v6

    .line 641
    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 643
    :cond_0
    move v6, v1

    packed-switch v6, :pswitch_data_0

    .line 658
    :cond_1
    :goto_2
    return-void

    .line 625
    :sswitch_0
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 626
    goto :goto_0

    .line 628
    :sswitch_1
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    .line 629
    goto :goto_0

    .line 631
    :sswitch_2
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    .line 632
    goto :goto_0

    .line 634
    :sswitch_3
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_0

    .line 640
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    goto :goto_1

    .line 645
    :pswitch_0
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 646
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 647
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 651
    :pswitch_1
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 652
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 653
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 623
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x800003 -> :sswitch_2
        0x800005 -> :sswitch_3
    .end sparse-switch

    .line 643
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 9

    .prologue
    .line 679
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 680
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "drawer with appropriate layout_gravity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 683
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v4, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move v3, v4

    .line 684
    move-object v4, v0

    move v5, v1

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 685
    return-void
.end method

.method public setDrawerShadow(II)V
    .locals 6
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 509
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    .line 510
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    .prologue
    .line 475
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-boolean v3, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v3, :cond_0

    .line 492
    :goto_0
    return-void

    .line 479
    :cond_0
    move v3, v2

    const v4, 0x800003

    and-int/2addr v3, v4

    const v4, 0x800003

    if-ne v3, v4, :cond_1

    .line 480
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 490
    :goto_1
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 491
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 492
    goto :goto_0

    .line 481
    :cond_1
    move v3, v2

    const v4, 0x800005

    and-int/2addr v3, v4

    const v4, 0x800005

    if-ne v3, v4, :cond_2

    .line 482
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 483
    :cond_2
    move v3, v2

    const/4 v4, 0x3

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 484
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 485
    :cond_3
    move v3, v2

    const/4 v4, 0x5

    and-int/lit8 v3, v3, 0x5

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 486
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 488
    :cond_4
    goto :goto_0
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 6

    .prologue
    .line 771
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    move-object v5, v0

    .line 772
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    .line 771
    invoke-static {v4, v5}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    move v3, v4

    .line 773
    move v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 774
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    move v4, v3

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 776
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 7

    .prologue
    .line 921
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v3, v4

    .line 922
    move v4, v2

    move-object v5, v3

    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 928
    :goto_0
    return-void

    .line 926
    :cond_0
    move-object v4, v3

    move v5, v2

    invoke-static {v4, v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$002(Landroid/support/v4/widget/DrawerLayout$LayoutParams;F)F

    move-result v4

    .line 927
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    .line 928
    goto :goto_0
.end method

.method public setScrimColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 518
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 519
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 520
    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 5

    .prologue
    .line 1324
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1325
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1326
    return-void

    .line 1324
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 1304
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1305
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1306
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1336
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v3, v2, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1337
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1338
    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 11

    .prologue
    .line 805
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v9

    move v4, v9

    .line 806
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v9

    move v5, v9

    .line 809
    move v9, v4

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    move v9, v5

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 810
    :cond_0
    const/4 v9, 0x1

    move v6, v9

    .line 817
    :goto_0
    move-object v9, v3

    if-eqz v9, :cond_1

    move v9, v2

    if-nez v9, :cond_1

    .line 818
    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v7, v9

    .line 819
    move-object v9, v7

    invoke-static {v9}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_5

    .line 820
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    .line 826
    :cond_1
    :goto_1
    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    if-eq v9, v10, :cond_6

    .line 827
    move-object v9, v0

    move v10, v6

    iput v10, v9, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    .line 829
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v9, :cond_6

    .line 832
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v7, v9

    .line 833
    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v8, v9

    :goto_2
    move v9, v8

    if-ltz v9, :cond_6

    .line 834
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    move v10, v8

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    move v10, v6

    invoke-interface {v9, v10}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 833
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 811
    :cond_2
    move v9, v4

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    move v9, v5

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 812
    :cond_3
    const/4 v9, 0x2

    move v6, v9

    goto :goto_0

    .line 814
    :cond_4
    const/4 v9, 0x0

    move v6, v9

    goto :goto_0

    .line 821
    :cond_5
    move-object v9, v7

    invoke-static {v9}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1

    .line 822
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    goto :goto_1

    .line 838
    :cond_6
    return-void
.end method
