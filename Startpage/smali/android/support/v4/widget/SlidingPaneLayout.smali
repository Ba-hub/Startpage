.class public Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;,
        Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;,
        Landroid/support/v4/widget/SlidingPaneLayout$SavedState;,
        Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;,
        Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;,
        Landroid/support/v4/widget/SlidingPaneLayout$SimplePanelSlideListener;,
        Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_COLOR:I = -0x33333334

.field private static final DEFAULT_OVERHANG_SIZE:I = 0x20

.field static final IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SlidingPaneLayout"


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private final mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field private final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPreservedOpenState:Z

.field private mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 202
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v1

    .line 203
    move v1, v0

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 204
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    .line 210
    :goto_0
    return-void

    .line 205
    :cond_0
    move v1, v0

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 206
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_0

    .line 208
    :cond_1
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 14

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    move-object v6, v0

    const v7, -0x33333334

    iput v7, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 192
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 194
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 196
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 264
    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    move v4, v6

    .line 265
    move-object v6, v0

    const/high16 v7, 0x42000000    # 32.0f

    move v8, v4

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    .line 267
    move-object v6, v1

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    move-object v5, v6

    .line 269
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    .line 271
    move-object v6, v0

    new-instance v7, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 272
    move-object v6, v0

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 274
    move-object v6, v0

    move-object v7, v0

    const/high16 v8, 0x3f000000    # 0.5f

    new-instance v9, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/support/v4/widget/SlidingPaneLayout$1;)V

    invoke-static {v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 275
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/high16 v7, 0x43c80000    # 400.0f

    move v8, v4

    mul-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 276
    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/SlidingPaneLayout;)Z
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$1000(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/v4/widget/SlidingPaneLayout;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/SlidingPaneLayout;)F
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move v0, v1

    return v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$502(Landroid/support/v4/widget/SlidingPaneLayout;Z)Z
    .locals 7

    .prologue
    .line 93
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$600(Landroid/support/v4/widget/SlidingPaneLayout;I)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->onPanelDragged(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v4/widget/SlidingPaneLayout;)Z
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$800(Landroid/support/v4/widget/SlidingPaneLayout;)I
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    move v0, v1

    return v0
.end method

.method private closePane(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 868
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v3, :cond_0

    move-object v3, v0

    const/4 v4, 0x0

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 869
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 870
    const/4 v3, 0x1

    move v0, v3

    .line 872
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .locals 14

    .prologue
    .line 977
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v4, v8

    .line 979
    move v8, v2

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    move v8, v3

    if-eqz v8, :cond_3

    .line 980
    move v8, v3

    const/high16 v9, -0x1000000

    and-int/2addr v8, v9

    const/16 v9, 0x18

    ushr-int/lit8 v8, v8, 0x18

    move v5, v8

    .line 981
    move v8, v5

    int-to-float v8, v8

    move v9, v2

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v6, v8

    .line 982
    move v8, v6

    const/16 v9, 0x18

    shl-int/lit8 v8, v8, 0x18

    move v9, v3

    const v10, 0xffffff

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    move v7, v8

    .line 983
    move-object v8, v4

    iget-object v8, v8, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-nez v8, :cond_0

    .line 984
    move-object v8, v4

    new-instance v9, Landroid/graphics/Paint;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, v8, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 986
    :cond_0
    move-object v8, v4

    iget-object v8, v8, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move v11, v7

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v8

    .line 987
    move-object v8, v1

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 988
    move-object v8, v1

    const/4 v9, 0x2

    move-object v10, v4

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9, v10}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 990
    :cond_1
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    .line 999
    :cond_2
    :goto_0
    return-void

    .line 991
    :cond_3
    move-object v8, v1

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v8

    if-eqz v8, :cond_2

    .line 992
    move-object v8, v4

    iget-object v8, v8, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-eqz v8, :cond_4

    .line 993
    move-object v8, v4

    iget-object v8, v8, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v8

    .line 995
    :cond_4
    new-instance v8, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move-object v11, v1

    invoke-direct {v9, v10, v11}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    move-object v5, v8

    .line 996
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 997
    move-object v8, v0

    move-object v9, v5

    invoke-static {v8, v9}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private invalidateChildRegion(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1047
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;->invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 1048
    return-void
.end method

.method private isLayoutRtlSupport()Z
    .locals 3

    .prologue
    .line 1662
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onPanelDragged(I)V
    .locals 13

    .prologue
    .line 949
    move-object v0, p0

    move v1, p1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-nez v9, :cond_0

    .line 951
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 974
    :goto_0
    return-void

    .line 954
    :cond_0
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v9

    move v2, v9

    .line 955
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v3, v9

    .line 957
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    move v4, v9

    .line 958
    move v9, v2

    if-eqz v9, :cond_3

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v9

    move v10, v1

    sub-int/2addr v9, v10

    move v10, v4

    sub-int/2addr v9, v10

    :goto_1
    move v5, v9

    .line 960
    move v9, v2

    if-eqz v9, :cond_4

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v9

    :goto_2
    move v6, v9

    .line 961
    move v9, v2

    if-eqz v9, :cond_5

    move-object v9, v3

    iget v9, v9, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    :goto_3
    move v7, v9

    .line 962
    move v9, v6

    move v10, v7

    add-int/2addr v9, v10

    move v8, v9

    .line 964
    move-object v9, v0

    move v10, v5

    move v11, v8

    sub-int/2addr v10, v11

    int-to-float v10, v10

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 966
    move-object v9, v0

    iget v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v9, :cond_1

    .line 967
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {v9, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 970
    :cond_1
    move-object v9, v3

    iget-boolean v9, v9, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v9, :cond_2

    .line 971
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move-object v12, v0

    iget v12, v12, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {v9, v10, v11, v12}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 973
    :cond_2
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    .line 974
    goto :goto_0

    .line 958
    :cond_3
    move v9, v1

    goto :goto_1

    .line 960
    :cond_4
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v9

    goto :goto_2

    .line 961
    :cond_5
    move-object v9, v3

    iget v9, v9, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    goto :goto_3
.end method

.method private openPane(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 876
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v3, :cond_0

    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 877
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 878
    const/4 v3, 0x1

    move v0, v3

    .line 880
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private parallaxOtherViews(F)V
    .locals 15

    .prologue
    .line 1198
    move-object v0, p0

    move/from16 v1, p1

    move-object v11, v0

    invoke-direct {v11}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v11

    move v2, v11

    .line 1199
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v3, v11

    .line 1200
    move-object v11, v3

    iget-boolean v11, v11, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v11, :cond_2

    move v11, v2

    if-eqz v11, :cond_1

    move-object v11, v3

    iget v11, v11, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    :goto_0
    if-gtz v11, :cond_2

    const/4 v11, 0x1

    :goto_1
    move v4, v11

    .line 1202
    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v11

    move v5, v11

    .line 1203
    const/4 v11, 0x0

    move v6, v11

    :goto_2
    move v11, v6

    move v12, v5

    if-ge v11, v12, :cond_6

    .line 1204
    move-object v11, v0

    move v12, v6

    invoke-virtual {v11, v12}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v7, v11

    .line 1205
    move-object v11, v7

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne v11, v12, :cond_3

    .line 1203
    :cond_0
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1200
    :cond_1
    move-object v11, v3

    iget v11, v11, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 1207
    :cond_3
    const/high16 v11, 0x3f800000    # 1.0f

    move-object v12, v0

    iget v12, v12, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float/2addr v11, v12

    move-object v12, v0

    iget v12, v12, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    move v8, v11

    .line 1208
    move-object v11, v0

    move v12, v1

    iput v12, v11, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    .line 1209
    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v1

    sub-float/2addr v11, v12

    move-object v12, v0

    iget v12, v12, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    move v9, v11

    .line 1210
    move v11, v8

    move v12, v9

    sub-int/2addr v11, v12

    move v10, v11

    .line 1212
    move-object v11, v7

    move v12, v2

    if-eqz v12, :cond_4

    move v12, v10

    neg-int v12, v12

    :goto_4
    invoke-virtual {v11, v12}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1214
    move v11, v4

    if-eqz v11, :cond_0

    .line 1215
    move-object v11, v0

    move-object v12, v7

    move v13, v2

    if-eqz v13, :cond_5

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v13, v14

    :goto_5
    move-object v14, v0

    iget v14, v14, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    goto :goto_3

    .line 1212
    :cond_4
    move v12, v10

    goto :goto_4

    .line 1215
    :cond_5
    const/high16 v13, 0x3f800000    # 1.0f

    move-object v14, v0

    iget v14, v14, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float/2addr v13, v14

    goto :goto_5

    .line 1219
    :cond_6
    return-void
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 414
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->isOpaque()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    const/4 v2, 0x1

    move v0, v2

    .line 429
    :goto_0
    return v0

    .line 421
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_1

    .line 422
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 425
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 426
    move-object v2, v1

    if-eqz v2, :cond_3

    .line 427
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 429
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 19

    .prologue
    .line 1233
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v12, v1

    instance-of v12, v12, Landroid/view/ViewGroup;

    if-eqz v12, :cond_1

    .line 1234
    move-object v12, v1

    check-cast v12, Landroid/view/ViewGroup;

    move-object v6, v12

    .line 1235
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getScrollX()I

    move-result v12

    move v7, v12

    .line 1236
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getScrollY()I

    move-result v12

    move v8, v12

    .line 1237
    move-object v12, v6

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    move v9, v12

    .line 1239
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v10, v12

    :goto_0
    move v12, v10

    if-ltz v12, :cond_1

    .line 1242
    move-object v12, v6

    move v13, v10

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v11, v12

    .line 1243
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

    .line 1244
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

    .line 1245
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v17, v5

    move/from16 v18, v8

    add-int v17, v17, v18

    move-object/from16 v18, v11

    .line 1246
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    .line 1245
    invoke-virtual/range {v12 .. v17}, Landroid/support/v4/widget/SlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1247
    const/4 v12, 0x1

    move v0, v12

    .line 1252
    :goto_1
    return v0

    .line 1239
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 1252
    :cond_1
    move v12, v2

    if-eqz v12, :cond_3

    move-object v12, v1

    move-object v13, v0

    invoke-direct {v13}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v13

    if-eqz v13, :cond_2

    move v13, v3

    :goto_2
    invoke-static {v12, v13}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_3
    move v0, v12

    goto :goto_1

    :cond_2
    move v13, v3

    neg-int v13, v13

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public canSlide()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 935
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move v0, v1

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 1277
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

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

.method public closePane()Z
    .locals 4

    .prologue
    .line 916
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 1085
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1086
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v1, :cond_0

    .line 1087
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 1093
    :goto_0
    return-void

    .line 1091
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1093
    :cond_1
    goto :goto_0
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v2, :cond_0

    .line 353
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    .line 355
    :cond_0
    move-object v2, v0

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 356
    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 345
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v2, :cond_0

    .line 346
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    .line 348
    :cond_0
    move-object v2, v0

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 349
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 339
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v2, :cond_0

    .line 340
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-interface {v2, v3, v4}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    .line 342
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 15

    .prologue
    .line 1164
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v10, v0

    move-object v11, v1

    invoke-super {v10, v11}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1165
    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v10

    move v2, v10

    .line 1167
    move v10, v2

    if-eqz v10, :cond_1

    .line 1168
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object v3, v10

    .line 1173
    :goto_0
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    move-object v10, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    :goto_1
    move-object v4, v10

    .line 1174
    move-object v10, v4

    if-eqz v10, :cond_0

    move-object v10, v3

    if-nez v10, :cond_3

    .line 1195
    :cond_0
    :goto_2
    return-void

    .line 1170
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object v3, v10

    goto :goto_0

    .line 1173
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 1179
    :cond_3
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    move v5, v10

    .line 1180
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    move v6, v10

    .line 1182
    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    move v7, v10

    .line 1185
    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1186
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    move v8, v10

    .line 1187
    move v10, v8

    move v11, v7

    add-int/2addr v10, v11

    move v9, v10

    .line 1193
    :goto_3
    move-object v10, v3

    move v11, v8

    move v12, v5

    move v13, v9

    move v14, v6

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1194
    move-object v10, v3

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1195
    goto :goto_2

    .line 1189
    :cond_4
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    move v9, v10

    .line 1190
    move v10, v9

    move v11, v7

    sub-int/2addr v10, v11

    move v8, v10

    goto :goto_3
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 15

    .prologue
    .line 1003
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v5, v9

    .line 1005
    move-object v9, v1

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->save(I)I

    move-result v9

    move v7, v9

    .line 1007
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v9, :cond_0

    move-object v9, v5

    iget-boolean v9, v9, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 1009
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v9

    .line 1010
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1011
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 1015
    :goto_0
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-result v9

    .line 1018
    :cond_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_2

    .line 1019
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-wide v12, v3

    invoke-super {v9, v10, v11, v12, v13}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    move v6, v9

    .line 1041
    :goto_1
    move-object v9, v1

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1043
    move v9, v6

    move v0, v9

    return v0

    .line 1013
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, v9, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1021
    :cond_2
    move-object v9, v5

    iget-boolean v9, v9, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v9, :cond_5

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_5

    .line 1022
    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1023
    move-object v9, v2

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1025
    :cond_3
    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v8, v9

    .line 1026
    move-object v9, v8

    if-eqz v9, :cond_4

    .line 1027
    move-object v9, v1

    move-object v10, v8

    move-object v11, v2

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    int-to-float v11, v11

    move-object v12, v2

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    int-to-float v12, v12

    move-object v13, v5

    iget-object v13, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1028
    const/4 v9, 0x0

    move v6, v9

    .line 1033
    :goto_2
    goto :goto_1

    .line 1030
    :cond_4
    const-string v9, "SlidingPaneLayout"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "drawChild: child view "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " returned null drawing cache"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1031
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-wide v12, v3

    invoke-super {v9, v10, v11, v12, v13}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    move v6, v9

    goto :goto_2

    .line 1034
    :cond_5
    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1035
    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1037
    :cond_6
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-wide v12, v3

    invoke-super {v9, v10, v11, v12, v13}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    move v6, v9

    goto/16 :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 1265
    move-object v0, p0

    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .prologue
    .line 1282
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 1270
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getCoveredFadeColor()I
    .locals 2
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 331
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    move v0, v1

    return v0
.end method

.method public getParallaxDistance()I
    .locals 2

    .prologue
    .line 296
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move v0, v1

    return v0
.end method

.method public getSliderFadeColor()I
    .locals 2
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move v0, v1

    return v0
.end method

.method isDimmed(Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 1256
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    .line 1257
    const/4 v3, 0x0

    move v0, v3

    .line 1260
    :goto_0
    return v0

    .line 1259
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v2, v3

    .line 1260
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-boolean v3, v3, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isOpen()Z
    .locals 3

    .prologue
    .line 926
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSlideable()Z
    .locals 2

    .prologue
    .line 945
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 434
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 435
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 436
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .prologue
    .line 440
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 441
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 443
    const/4 v4, 0x0

    move v1, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 444
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    move-object v3, v4

    .line 445
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 448
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .prologue
    .line 768
    move-object v0, p0

    move-object v1, p1

    move-object v9, v1

    invoke-static {v9}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v9

    move v2, v9

    .line 771
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v9, :cond_0

    move v9, v2

    if-nez v9, :cond_0

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 773
    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v3, v9

    .line 774
    move-object v9, v3

    if-eqz v9, :cond_0

    .line 775
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v11, v3

    move-object v12, v1

    .line 776
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    move-object v13, v1

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    .line 775
    invoke-virtual {v10, v11, v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 780
    :cond_0
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v9, :cond_3

    move v9, v2

    if-eqz v9, :cond_3

    .line 781
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 782
    move-object v9, v0

    move-object v10, v1

    invoke-super {v9, v10}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    move v0, v9

    .line 823
    :goto_1
    return v0

    .line 775
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 785
    :cond_3
    move v9, v2

    const/4 v10, 0x3

    if-eq v9, v10, :cond_4

    move v9, v2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 786
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 787
    const/4 v9, 0x0

    move v0, v9

    goto :goto_1

    .line 790
    :cond_5
    const/4 v9, 0x0

    move v3, v9

    .line 792
    move v9, v2

    packed-switch v9, :pswitch_data_0

    .line 821
    :cond_6
    :goto_2
    :pswitch_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    move v4, v9

    .line 823
    move v9, v4

    if-nez v9, :cond_7

    move v9, v3

    if-eqz v9, :cond_8

    :cond_7
    const/4 v9, 0x1

    :goto_3
    move v0, v9

    goto :goto_1

    .line 794
    :pswitch_1
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 795
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    move v4, v9

    .line 796
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move v5, v9

    .line 797
    move-object v9, v0

    move v10, v4

    iput v10, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 798
    move-object v9, v0

    move v10, v5

    iput v10, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 800
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move v11, v4

    float-to-int v11, v11

    move v12, v5

    float-to-int v12, v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 801
    invoke-virtual {v9, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 802
    const/4 v9, 0x1

    move v3, v9

    goto :goto_2

    .line 808
    :pswitch_2
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    move v4, v9

    .line 809
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move v5, v9

    .line 810
    move v9, v4

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move v6, v9

    .line 811
    move v9, v5

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move v7, v9

    .line 812
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v9

    move v8, v9

    .line 813
    move v9, v6

    move v10, v8

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    move v9, v7

    move v10, v6

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 814
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 815
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 816
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_1

    .line 823
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 792
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 30

    .prologue
    .line 664
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v25}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v25

    move/from16 v8, v25

    .line 665
    move/from16 v25, v8

    if-eqz v25, :cond_1

    .line 666
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 670
    :goto_0
    move/from16 v25, v6

    move/from16 v26, v4

    sub-int v25, v25, v26

    move/from16 v9, v25

    .line 671
    move/from16 v25, v8

    if-eqz v25, :cond_2

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v25

    :goto_1
    move/from16 v10, v25

    .line 672
    move/from16 v25, v8

    if-eqz v25, :cond_3

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v25

    :goto_2
    move/from16 v11, v25

    .line 673
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v25

    move/from16 v12, v25

    .line 675
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v25

    move/from16 v13, v25

    .line 676
    move/from16 v25, v10

    move/from16 v14, v25

    .line 677
    move/from16 v25, v14

    move/from16 v15, v25

    .line 679
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 680
    move-object/from16 v25, v2

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    const/high16 v26, 0x3f800000    # 1.0f

    :goto_3
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 683
    :cond_0
    const/16 v25, 0x0

    move/from16 v16, v25

    :goto_4
    move/from16 v25, v16

    move/from16 v26, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_b

    .line 684
    move-object/from16 v25, v2

    move/from16 v26, v16

    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v17, v25

    .line 686
    move-object/from16 v25, v17

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 683
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 668
    :cond_1
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    goto/16 :goto_0

    .line 671
    :cond_2
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v25

    goto/16 :goto_1

    .line 672
    :cond_3
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v25

    goto/16 :goto_2

    .line 680
    :cond_4
    const/16 v26, 0x0

    goto :goto_3

    .line 690
    :cond_5
    move-object/from16 v25, v17

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v18, v25

    .line 692
    move-object/from16 v25, v17

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    move/from16 v19, v25

    .line 693
    const/16 v25, 0x0

    move/from16 v20, v25

    .line 695
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 696
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v21, v25

    .line 697
    move/from16 v25, v15

    move/from16 v26, v9

    move/from16 v27, v11

    sub-int v26, v26, v27

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v25

    move/from16 v26, v14

    sub-int v25, v25, v26

    move/from16 v26, v21

    sub-int v25, v25, v26

    move/from16 v22, v25

    .line 699
    move-object/from16 v25, v2

    move/from16 v26, v22

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    .line 700
    move/from16 v25, v8

    if-eqz v25, :cond_6

    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v25, v0

    :goto_6
    move/from16 v23, v25

    .line 701
    move-object/from16 v25, v18

    move/from16 v26, v14

    move/from16 v27, v23

    add-int v26, v26, v27

    move/from16 v27, v22

    add-int v26, v26, v27

    move/from16 v27, v19

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    add-int v26, v26, v27

    move/from16 v27, v9

    move/from16 v28, v11

    sub-int v27, v27, v28

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_7

    const/16 v26, 0x1

    :goto_7
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 702
    move/from16 v25, v22

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v24, v25

    .line 703
    move/from16 v25, v14

    move/from16 v26, v24

    move/from16 v27, v23

    add-int v26, v26, v27

    add-int v25, v25, v26

    move/from16 v14, v25

    .line 704
    move-object/from16 v25, v2

    move/from16 v26, v24

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 714
    :goto_8
    move/from16 v25, v8

    if-eqz v25, :cond_a

    .line 715
    move/from16 v25, v9

    move/from16 v26, v14

    sub-int v25, v25, v26

    move/from16 v26, v20

    add-int v25, v25, v26

    move/from16 v21, v25

    .line 716
    move/from16 v25, v21

    move/from16 v26, v19

    sub-int v25, v25, v26

    move/from16 v22, v25

    .line 722
    :goto_9
    move/from16 v25, v12

    move/from16 v23, v25

    .line 723
    move/from16 v25, v23

    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v24, v25

    .line 724
    move-object/from16 v25, v17

    move/from16 v26, v22

    move/from16 v27, v12

    move/from16 v28, v21

    move/from16 v29, v24

    invoke-virtual/range {v25 .. v29}, Landroid/view/View;->layout(IIII)V

    .line 726
    move/from16 v25, v15

    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getWidth()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v15, v25

    goto/16 :goto_5

    .line 700
    :cond_6
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    goto/16 :goto_6

    .line 701
    :cond_7
    const/16 v26, 0x0

    goto/16 :goto_7

    .line 705
    :cond_8
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 706
    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v20, v25

    .line 707
    move/from16 v25, v15

    move/from16 v14, v25

    goto/16 :goto_8

    .line 709
    :cond_9
    move/from16 v25, v15

    move/from16 v14, v25

    goto/16 :goto_8

    .line 718
    :cond_a
    move/from16 v25, v14

    move/from16 v26, v20

    sub-int v25, v25, v26

    move/from16 v22, v25

    .line 719
    move/from16 v25, v22

    move/from16 v26, v19

    add-int v25, v25, v26

    move/from16 v21, v25

    goto/16 :goto_9

    .line 729
    :cond_b
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    move/from16 v25, v0

    if-eqz v25, :cond_e

    .line 730
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 731
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v25, v0

    if-eqz v25, :cond_c

    .line 732
    move-object/from16 v25, v2

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 734
    :cond_c
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    .line 735
    move-object/from16 v25, v2

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v27, v0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move/from16 v28, v0

    invoke-direct/range {v25 .. v28}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 743
    :cond_d
    move-object/from16 v25, v2

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    .line 746
    :cond_e
    move-object/from16 v25, v2

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 747
    return-void

    .line 739
    :cond_f
    const/16 v25, 0x0

    move/from16 v16, v25

    :goto_a
    move/from16 v25, v16

    move/from16 v26, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 740
    move-object/from16 v25, v2

    move-object/from16 v26, v2

    move/from16 v27, v16

    invoke-virtual/range {v26 .. v27}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move/from16 v28, v0

    invoke-direct/range {v25 .. v28}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 739
    add-int/lit8 v16, v16, 0x1

    goto :goto_a
.end method

.method protected onMeasure(II)V
    .locals 32

    .prologue
    .line 452
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v26, v3

    invoke-static/range {v26 .. v26}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v26

    move/from16 v5, v26

    .line 453
    move/from16 v26, v3

    invoke-static/range {v26 .. v26}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    move/from16 v6, v26

    .line 454
    move/from16 v26, v4

    invoke-static/range {v26 .. v26}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v26

    move/from16 v7, v26

    .line 455
    move/from16 v26, v4

    invoke-static/range {v26 .. v26}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    move/from16 v8, v26

    .line 457
    move/from16 v26, v5

    const/high16 v27, 0x40000000    # 2.0f

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    .line 458
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 463
    move/from16 v26, v5

    const/high16 v27, -0x80000000

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 464
    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v5, v26

    .line 486
    :cond_0
    :goto_0
    const/16 v26, 0x0

    move/from16 v9, v26

    .line 487
    const/16 v26, -0x1

    move/from16 v10, v26

    .line 488
    move/from16 v26, v7

    sparse-switch v26, :sswitch_data_0

    .line 497
    :goto_1
    const/16 v26, 0x0

    move/from16 v11, v26

    .line 498
    const/16 v26, 0x0

    move/from16 v12, v26

    .line 499
    move/from16 v26, v6

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v27

    sub-int v26, v26, v27

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v13, v26

    .line 500
    move/from16 v26, v13

    move/from16 v14, v26

    .line 501
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v26

    move/from16 v15, v26

    .line 503
    move/from16 v26, v15

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1

    .line 504
    const-string v26, "SlidingPaneLayout"

    const-string v27, "onMeasure: More than two child views are not supported."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    .line 508
    :cond_1
    move-object/from16 v26, v2

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 512
    const/16 v26, 0x0

    move/from16 v16, v26

    :goto_2
    move/from16 v26, v16

    move/from16 v27, v15

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    .line 513
    move-object/from16 v26, v2

    move/from16 v27, v16

    invoke-virtual/range {v26 .. v27}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v17, v26

    .line 514
    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v18, v26

    .line 516
    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 517
    move-object/from16 v26, v18

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 512
    :cond_2
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 465
    :cond_3
    move/from16 v26, v5

    if-nez v26, :cond_0

    .line 466
    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v5, v26

    .line 467
    const/16 v26, 0x12c

    move/from16 v6, v26

    goto/16 :goto_0

    .line 470
    :cond_4
    new-instance v26, Ljava/lang/IllegalStateException;

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    const-string v28, "Width must have an exact value or MATCH_PARENT"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 472
    :cond_5
    move/from16 v26, v7

    if-nez v26, :cond_0

    .line 473
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 477
    move/from16 v26, v7

    if-nez v26, :cond_0

    .line 478
    const/high16 v26, -0x80000000

    move/from16 v7, v26

    .line 479
    const/16 v26, 0x12c

    move/from16 v8, v26

    goto/16 :goto_0

    .line 482
    :cond_6
    new-instance v26, Ljava/lang/IllegalStateException;

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    const-string v28, "Height must not be UNSPECIFIED"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 490
    :sswitch_0
    move/from16 v26, v8

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v27

    sub-int v26, v26, v27

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v30, v26

    move/from16 v26, v30

    move/from16 v27, v30

    move/from16 v10, v27

    move/from16 v9, v26

    .line 491
    goto/16 :goto_1

    .line 493
    :sswitch_1
    move/from16 v26, v8

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v27

    sub-int v26, v26, v27

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v10, v26

    goto/16 :goto_1

    .line 521
    :cond_7
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_8

    .line 522
    move/from16 v26, v11

    move-object/from16 v27, v18

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v11, v26

    .line 526
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    if-nez v26, :cond_8

    goto/16 :goto_3

    .line 530
    :cond_8
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    move-object/from16 v27, v18

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v20, v26

    .line 531
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 532
    move/from16 v26, v13

    move/from16 v27, v20

    sub-int v26, v26, v27

    const/high16 v27, -0x80000000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v19, v26

    .line 542
    :goto_4
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 543
    move/from16 v26, v10

    const/high16 v27, -0x80000000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v21, v26

    .line 550
    :goto_5
    move-object/from16 v26, v17

    move/from16 v27, v19

    move/from16 v28, v21

    invoke-virtual/range {v26 .. v28}, Landroid/view/View;->measure(II)V

    .line 551
    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move/from16 v22, v26

    .line 552
    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    move/from16 v23, v26

    .line 554
    move/from16 v26, v7

    const/high16 v27, -0x80000000

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    move/from16 v26, v23

    move/from16 v27, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_9

    .line 555
    move/from16 v26, v23

    move/from16 v27, v10

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v26

    move/from16 v9, v26

    .line 558
    :cond_9
    move/from16 v26, v14

    move/from16 v27, v22

    sub-int v26, v26, v27

    move/from16 v14, v26

    .line 559
    move/from16 v26, v12

    move-object/from16 v27, v18

    move/from16 v28, v14

    if-gez v28, :cond_e

    const/16 v28, 0x1

    :goto_6
    move-object/from16 v30, v27

    move/from16 v31, v28

    move/from16 v27, v31

    move-object/from16 v28, v30

    move/from16 v29, v31

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    or-int v26, v26, v27

    move/from16 v12, v26

    .line 560
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 561
    move-object/from16 v26, v2

    move-object/from16 v27, v17

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    goto/16 :goto_3

    .line 534
    :cond_a
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 535
    move/from16 v26, v13

    move/from16 v27, v20

    sub-int v26, v26, v27

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v19, v26

    goto/16 :goto_4

    .line 538
    :cond_b
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v19, v26

    goto/16 :goto_4

    .line 544
    :cond_c
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 545
    move/from16 v26, v10

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v21, v26

    goto/16 :goto_5

    .line 547
    :cond_d
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v21, v26

    goto/16 :goto_5

    .line 559
    :cond_e
    const/16 v28, 0x0

    goto/16 :goto_6

    .line 566
    :cond_f
    move/from16 v26, v12

    if-nez v26, :cond_10

    move/from16 v26, v11

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_20

    .line 567
    :cond_10
    move/from16 v26, v13

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v16, v26

    .line 569
    const/16 v26, 0x0

    move/from16 v17, v26

    :goto_7
    move/from16 v26, v17

    move/from16 v27, v15

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_20

    .line 570
    move-object/from16 v26, v2

    move/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v18, v26

    .line 572
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    .line 569
    :cond_11
    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 576
    :cond_12
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v19, v26

    .line 578
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_13

    .line 579
    goto :goto_8

    .line 582
    :cond_13
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    if-nez v26, :cond_15

    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_15

    const/16 v26, 0x1

    :goto_9
    move/from16 v20, v26

    .line 583
    move/from16 v26, v20

    if-eqz v26, :cond_16

    const/16 v26, 0x0

    :goto_a
    move/from16 v21, v26

    .line 584
    move/from16 v26, v12

    if-eqz v26, :cond_1a

    move-object/from16 v26, v18

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_1a

    .line 585
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    if-gez v26, :cond_11

    move/from16 v26, v21

    move/from16 v27, v16

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_14

    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_11

    .line 589
    :cond_14
    move/from16 v26, v20

    if-eqz v26, :cond_19

    .line 592
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    .line 593
    move/from16 v26, v10

    const/high16 v27, -0x80000000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v22, v26

    .line 606
    :goto_b
    move/from16 v26, v16

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v23, v26

    .line 608
    move-object/from16 v26, v18

    move/from16 v27, v23

    move/from16 v28, v22

    invoke-virtual/range {v26 .. v28}, Landroid/view/View;->measure(II)V

    .line 609
    goto/16 :goto_8

    .line 582
    :cond_15
    const/16 v26, 0x0

    goto :goto_9

    .line 583
    :cond_16
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    goto :goto_a

    .line 595
    :cond_17
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    .line 596
    move/from16 v26, v10

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v22, v26

    goto :goto_b

    .line 599
    :cond_18
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v22, v26

    goto :goto_b

    .line 603
    :cond_19
    move-object/from16 v26, v18

    .line 604
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    const/high16 v27, 0x40000000    # 2.0f

    .line 603
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v22, v26

    goto :goto_b

    .line 610
    :cond_1a
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_11

    .line 612
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    if-nez v26, :cond_1e

    .line 614
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1c

    .line 615
    move/from16 v26, v10

    const/high16 v27, -0x80000000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v22, v26

    .line 629
    :goto_c
    move/from16 v26, v12

    if-eqz v26, :cond_1f

    .line 631
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v23, v26

    .line 632
    move/from16 v26, v13

    move/from16 v27, v23

    sub-int v26, v26, v27

    move/from16 v24, v26

    .line 633
    move/from16 v26, v24

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v25, v26

    .line 635
    move/from16 v26, v21

    move/from16 v27, v24

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1b

    .line 636
    move-object/from16 v26, v18

    move/from16 v27, v25

    move/from16 v28, v22

    invoke-virtual/range {v26 .. v28}, Landroid/view/View;->measure(II)V

    .line 638
    :cond_1b
    goto/16 :goto_8

    .line 617
    :cond_1c
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    .line 618
    move/from16 v26, v10

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v22, v26

    goto :goto_c

    .line 621
    :cond_1d
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v22, v26

    goto :goto_c

    .line 625
    :cond_1e
    move-object/from16 v26, v18

    .line 626
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    const/high16 v27, 0x40000000    # 2.0f

    .line 625
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v22, v26

    goto :goto_c

    .line 640
    :cond_1f
    const/16 v26, 0x0

    move/from16 v27, v14

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v26

    move/from16 v23, v26

    .line 641
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    move/from16 v27, v23

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v27, v11

    div-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v24, v26

    .line 642
    move/from16 v26, v21

    move/from16 v27, v24

    add-int v26, v26, v27

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v25, v26

    .line 644
    move-object/from16 v26, v18

    move/from16 v27, v25

    move/from16 v28, v22

    invoke-virtual/range {v26 .. v28}, Landroid/view/View;->measure(II)V

    goto/16 :goto_8

    .line 650
    :cond_20
    move/from16 v26, v6

    move/from16 v16, v26

    .line 651
    move/from16 v26, v9

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v27

    add-int v26, v26, v27

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v17, v26

    .line 653
    move-object/from16 v26, v2

    move/from16 v27, v16

    move/from16 v28, v17

    invoke-virtual/range {v26 .. v28}, Landroid/support/v4/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    .line 654
    move-object/from16 v26, v2

    move/from16 v27, v12

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 656
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v26

    if-eqz v26, :cond_21

    move/from16 v26, v12

    if-nez v26, :cond_21

    .line 658
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 660
    :cond_21
    return-void

    .line 488
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 1297
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    if-nez v3, :cond_0

    .line 1298
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1311
    :goto_0
    return-void

    .line 1302
    :cond_0
    move-object v3, v1

    check-cast v3, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    move-object v2, v3

    .line 1303
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1305
    move-object v3, v2

    iget-boolean v3, v3, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v3, :cond_1

    .line 1306
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    move-result v3

    .line 1310
    :goto_1
    move-object v3, v0

    move-object v4, v2

    iget-boolean v4, v4, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean v4, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 1311
    goto :goto_0

    .line 1308
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    move-result v3

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 1287
    move-object v0, p0

    move-object v3, v0

    invoke-super {v3}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 1289
    new-instance v3, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 1290
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->isOpen()Z

    move-result v4

    :goto_0
    iput-boolean v4, v3, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    .line 1292
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 1290
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    .prologue
    .line 751
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

    .line 753
    move v5, v1

    move v6, v3

    if-eq v5, v6, :cond_0

    .line 754
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 756
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    .line 828
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v9, :cond_0

    .line 829
    move-object v9, v0

    move-object v10, v1

    invoke-super {v9, v10}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    move v0, v9

    .line 864
    :goto_0
    return v0

    .line 832
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 834
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    move v2, v9

    .line 835
    const/4 v9, 0x1

    move v3, v9

    .line 837
    move v9, v2

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    packed-switch v9, :pswitch_data_0

    .line 864
    :cond_1
    :goto_1
    move v9, v3

    move v0, v9

    goto :goto_0

    .line 839
    :pswitch_0
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    move v4, v9

    .line 840
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move v5, v9

    .line 841
    move-object v9, v0

    move v10, v4

    iput v10, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 842
    move-object v9, v0

    move v10, v5

    iput v10, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 843
    goto :goto_1

    .line 847
    :pswitch_1
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 848
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    move v4, v9

    .line 849
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move v5, v9

    .line 850
    move v9, v4

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float/2addr v9, v10

    move v6, v9

    .line 851
    move v9, v5

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float/2addr v9, v10

    move v7, v9

    .line 852
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v9

    move v8, v9

    .line 853
    move v9, v6

    move v10, v6

    mul-float/2addr v9, v10

    move v10, v7

    move v11, v7

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v10, v8

    move v11, v8

    mul-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move v11, v4

    float-to-int v11, v11

    move v12, v5

    float-to-int v12, v12

    .line 854
    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 856
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v9

    .line 857
    goto :goto_1

    .line 837
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public openPane()Z
    .locals 4

    .prologue
    .line 898
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane(Landroid/view/View;I)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 760
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 761
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v3, :cond_0

    .line 762
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 764
    :cond_0
    return-void

    .line 762
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method setAllChildrenVisible()V
    .locals 6

    .prologue
    .line 405
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v4

    move v2, v4

    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 406
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 407
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 408
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 405
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    :cond_1
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 323
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    .line 324
    return-void
.end method

.method public setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 4

    .prologue
    .line 335
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    .line 336
    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 4

    .prologue
    .line 286
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    .line 287
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/widget/SlidingPaneLayout;->requestLayout()V

    .line 288
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1104
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1105
    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 1114
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1115
    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 1124
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1125
    return-void
.end method

.method public setShadowResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1138
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1139
    return-void
.end method

.method public setShadowResourceLeft(I)V
    .locals 5

    .prologue
    .line 1148
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1149
    return-void
.end method

.method public setShadowResourceRight(I)V
    .locals 5

    .prologue
    .line 1158
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    .line 1159
    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 305
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 306
    return-void
.end method

.method public smoothSlideClosed()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 906
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    move-result v1

    .line 907
    return-void
.end method

.method public smoothSlideOpen()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 888
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    move-result v1

    .line 889
    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 12

    .prologue
    .line 1057
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v8, :cond_0

    .line 1059
    const/4 v8, 0x0

    move v0, v8

    .line 1080
    :goto_0
    return v0

    .line 1062
    :cond_0
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v8

    move v3, v8

    .line 1063
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v4, v8

    .line 1066
    move v8, v3

    if-eqz v8, :cond_1

    .line 1067
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v8

    move-object v9, v4

    iget v9, v9, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    move v6, v8

    .line 1068
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    move v7, v8

    .line 1069
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v8

    int-to-float v8, v8

    move v9, v6

    int-to-float v9, v9

    move v10, v1

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v10, v7

    int-to-float v10, v10

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v8, v8

    move v5, v8

    .line 1075
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move v10, v5

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1076
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    .line 1077
    move-object v8, v0

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1078
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 1071
    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v8

    move-object v9, v4

    iget v9, v9, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    move v6, v8

    .line 1072
    move v8, v6

    int-to-float v8, v8

    move v9, v1

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    move v5, v8

    goto :goto_1

    .line 1080
    :cond_2
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 24

    .prologue
    .line 359
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v21}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v21

    move/from16 v4, v21

    .line 360
    move/from16 v21, v4

    if-eqz v21, :cond_1

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v21

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v22

    sub-int v21, v21, v22

    :goto_0
    move/from16 v5, v21

    .line 361
    move/from16 v21, v4

    if-eqz v21, :cond_2

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v21

    :goto_1
    move/from16 v6, v21

    .line 362
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v21

    move/from16 v7, v21

    .line 363
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/widget/SlidingPaneLayout;->getHeight()I

    move-result v21

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v8, v21

    .line 368
    move-object/from16 v21, v3

    if-eqz v21, :cond_3

    move-object/from16 v21, v3

    invoke-static/range {v21 .. v21}, Landroid/support/v4/widget/SlidingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 369
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v21

    move/from16 v9, v21

    .line 370
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getRight()I

    move-result v21

    move/from16 v10, v21

    .line 371
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v21

    move/from16 v11, v21

    .line 372
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getBottom()I

    move-result v21

    move/from16 v12, v21

    .line 377
    :goto_2
    const/16 v21, 0x0

    move/from16 v13, v21

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v21

    move/from16 v14, v21

    :goto_3
    move/from16 v21, v13

    move/from16 v22, v14

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 378
    move-object/from16 v21, v2

    move/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v15, v21

    .line 380
    move-object/from16 v21, v15

    move-object/from16 v22, v3

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 402
    :cond_0
    return-void

    .line 360
    :cond_1
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v21

    goto/16 :goto_0

    .line 361
    :cond_2
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v21

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v22

    sub-int v21, v21, v22

    goto/16 :goto_1

    .line 374
    :cond_3
    const/16 v21, 0x0

    move/from16 v23, v21

    move/from16 v21, v23

    move/from16 v22, v23

    move/from16 v12, v22

    move/from16 v23, v21

    move/from16 v21, v23

    move/from16 v22, v23

    move/from16 v11, v22

    move/from16 v23, v21

    move/from16 v21, v23

    move/from16 v22, v23

    move/from16 v10, v22

    move/from16 v9, v21

    goto :goto_2

    .line 383
    :cond_4
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 377
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 387
    :cond_5
    move/from16 v21, v4

    if-eqz v21, :cond_6

    move/from16 v21, v6

    :goto_5
    move-object/from16 v22, v15

    .line 388
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v22

    .line 387
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v16, v21

    .line 389
    move/from16 v21, v7

    move-object/from16 v22, v15

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v17, v21

    .line 390
    move/from16 v21, v4

    if-eqz v21, :cond_7

    move/from16 v21, v5

    :goto_6
    move-object/from16 v22, v15

    .line 391
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRight()I

    move-result v22

    .line 390
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v18, v21

    .line 392
    move/from16 v21, v8

    move-object/from16 v22, v15

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v19, v21

    .line 394
    move/from16 v21, v16

    move/from16 v22, v9

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_8

    move/from16 v21, v17

    move/from16 v22, v11

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_8

    move/from16 v21, v18

    move/from16 v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_8

    move/from16 v21, v19

    move/from16 v22, v12

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_8

    .line 396
    const/16 v21, 0x4

    move/from16 v20, v21

    .line 400
    :goto_7
    move-object/from16 v21, v15

    move/from16 v22, v20

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 387
    :cond_6
    move/from16 v21, v5

    goto :goto_5

    .line 390
    :cond_7
    move/from16 v21, v6

    goto :goto_6

    .line 398
    :cond_8
    const/16 v21, 0x0

    move/from16 v20, v21

    goto :goto_7
.end method
