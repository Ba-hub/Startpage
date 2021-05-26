.class public Landroid/support/design/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation runtime Landroid/support/v4/view/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TabLayout$AdapterChangeListener;,
        Landroid/support/design/widget/TabLayout$PagerAdapterObserver;,
        Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;,
        Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;,
        Landroid/support/design/widget/TabLayout$SlidingTabStrip;,
        Landroid/support/design/widget/TabLayout$TabView;,
        Landroid/support/design/widget/TabLayout$Tab;,
        Landroid/support/design/widget/TabLayout$OnTabSelectedListener;,
        Landroid/support/design/widget/TabLayout$TabGravity;,
        Landroid/support/design/widget/TabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final DEFAULT_GAP_TEXT_ICON:I = 0x8

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48

.field private static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field private static final INVALID_WIDTH:I = -0x1

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field private static final MOTION_NON_ADJACENT_OFFSET:I = 0x18

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38

.field private static final sTabPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/design/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

.field private mContentInsetStart:I

.field private mCurrentVpSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

.field private mMode:I

.field private mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

.field private mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mPagerAdapterObserver:Landroid/database/DataSetObserver;

.field private final mRequestedTabMaxWidth:I

.field private final mRequestedTabMinWidth:I

.field private mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private final mScrollableTabMinWidth:I

.field private mSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

.field private final mSelectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$OnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

.field private mSetupViewPagerImplicitly:Z

.field private final mTabBackgroundResId:I

.field private mTabGravity:I

.field private mTabMaxWidth:I

.field private mTabPaddingBottom:I

.field private mTabPaddingEnd:I

.field private mTabPaddingStart:I

.field private mTabPaddingTop:I

.field private final mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

.field private mTabTextAppearance:I

.field private mTabTextColors:Landroid/content/res/ColorStateList;

.field private mTabTextMultiLineSize:F

.field private mTabTextSize:F

.field private final mTabViewPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/design/widget/TabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 156
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 282
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 285
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 286
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    .prologue
    .line 289
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 237
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    .line 254
    move-object v7, v0

    const v8, 0x7fffffff

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    .line 265
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    .line 278
    move-object v7, v0

    new-instance v8, Landroid/support/v4/util/Pools$SimplePool;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/16 v10, 0xc

    invoke-direct {v9, v10}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v8, v7, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    .line 291
    move-object v7, v1

    invoke-static {v7}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 294
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 297
    move-object v7, v0

    new-instance v8, Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    move-object v11, v1

    invoke-direct {v9, v10, v11}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    iput-object v8, v7, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    .line 298
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const/4 v9, 0x0

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, -0x2

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {v7, v8, v9, v10}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 301
    move-object v7, v1

    move-object v8, v2

    sget-object v9, Landroid/support/design/R$styleable;->TabLayout:[I

    move v10, v3

    sget v11, Landroid/support/design/R$style;->Widget_Design_TabLayout:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v4, v7

    .line 304
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorHeight:I

    const/4 v10, 0x0

    .line 305
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 304
    invoke-virtual {v7, v8}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 306
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorColor:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 308
    move-object v7, v0

    move-object v8, v0

    move-object v9, v0

    move-object v10, v0

    move-object v11, v4

    sget v12, Landroid/support/design/R$styleable;->TabLayout_tabPadding:I

    const/4 v13, 0x0

    .line 309
    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object v14, v10

    move v15, v11

    move v10, v15

    move-object v11, v14

    move v12, v15

    iput v12, v11, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    move-object v14, v9

    move v15, v10

    move v9, v15

    move-object v10, v14

    move v11, v15

    iput v11, v10, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    move-object v14, v8

    move v15, v9

    move v8, v15

    move-object v9, v14

    move v10, v15

    iput v10, v9, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    .line 310
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabPaddingStart:I

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    .line 312
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabPaddingTop:I

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    .line 314
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabPaddingEnd:I

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    .line 316
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabPaddingBottom:I

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    .line 319
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabTextAppearance:I

    sget v10, Landroid/support/design/R$style;->TextAppearance_Design_Tab:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    .line 323
    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    sget-object v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v5, v7

    .line 326
    move-object v7, v0

    move-object v8, v5

    :try_start_0
    sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    int-to-float v8, v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabTextSize:F

    .line 328
    move-object v7, v0

    move-object v8, v5

    sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v7, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    move-object v7, v5

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 334
    move-object v7, v4

    sget v8, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 336
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v7, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 339
    :cond_0
    move-object v7, v4

    sget v8, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 343
    move-object v7, v4

    sget v8, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    move v6, v7

    .line 344
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    move v9, v6

    invoke-static {v8, v9}, Landroid/support/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v7, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 347
    :cond_1
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabMinWidth:I

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mRequestedTabMinWidth:I

    .line 349
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabMaxWidth:I

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    .line 351
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabBackground:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    .line 352
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabContentStart:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mContentInsetStart:I

    .line 353
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabMode:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mMode:I

    .line 354
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabGravity:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    .line 355
    move-object v7, v4

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 358
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v6, v7

    .line 359
    move-object v7, v0

    move-object v8, v6

    sget v9, Landroid/support/design/R$dimen;->design_tab_text_size_2line:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabTextMultiLineSize:F

    .line 360
    move-object v7, v0

    move-object v8, v6

    sget v9, Landroid/support/design/R$dimen;->design_tab_scrollable_min_width:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mScrollableTabMinWidth:I

    .line 363
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 364
    return-void

    .line 331
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    move-object v7, v6

    throw v7
.end method

.method static synthetic access$1000(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1100(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1200(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1300(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1400(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1500(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/TabLayout;->getTabMaxWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$1600(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1700(Landroid/support/design/widget/TabLayout;)F
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabTextSize:F

    move v0, v1

    return v0
.end method

.method static synthetic access$1800(Landroid/support/design/widget/TabLayout;)F
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabTextMultiLineSize:F

    move v0, v1

    return v0
.end method

.method static synthetic access$1900(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mMode:I

    move v0, v1

    return v0
.end method

.method static synthetic access$2000(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    move v0, v1

    return v0
.end method

.method static synthetic access$2100(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$2200(Landroid/support/design/widget/TabLayout;I)I
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic access$2300(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    move v0, v1

    return v0
.end method

.method static synthetic access$2302(Landroid/support/design/widget/TabLayout;I)I
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    move v0, v2

    return v0
.end method

.method static synthetic access$2400(Landroid/support/design/widget/TabLayout;Z)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/TabLayout;->updateTabViews(Z)V

    return-void
.end method

.method static synthetic access$2800(Landroid/support/design/widget/TabLayout;IFZZ)V
    .locals 10

    .prologue
    .line 144
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

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZZ)V

    return-void
.end method

.method static synthetic access$2900(Landroid/support/design/widget/TabLayout;)V
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method static synthetic access$3000(Landroid/support/design/widget/TabLayout;)Landroid/support/v4/view/ViewPager;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$3100(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/PagerAdapter;Z)V
    .locals 6

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    return-void
.end method

.method private addTabFromItemView(Landroid/support/design/widget/TabItem;)V
    .locals 5
    .param p1    # Landroid/support/design/widget/TabItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 481
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    move-object v2, v3

    .line 482
    move-object v3, v1

    iget-object v3, v3, Landroid/support/design/widget/TabItem;->mText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 483
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Landroid/support/design/widget/TabItem;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    .line 485
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Landroid/support/design/widget/TabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 486
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Landroid/support/design/widget/TabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    .line 488
    :cond_1
    move-object v3, v1

    iget v3, v3, Landroid/support/design/widget/TabItem;->mCustomLayout:I

    if-eqz v3, :cond_2

    .line 489
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Landroid/support/design/widget/TabItem;->mCustomLayout:I

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    .line 491
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/design/widget/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 492
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/design/widget/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    .line 494
    :cond_3
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 495
    return-void
.end method

.method private addTabView(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 7

    .prologue
    .line 944
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/support/design/widget/TabLayout$Tab;->access$200(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v3

    move-object v2, v3

    .line 945
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v5

    move-object v6, v0

    invoke-direct {v6}, Landroid/support/design/widget/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 946
    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 969
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/design/widget/TabItem;

    if-eqz v2, :cond_0

    .line 970
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/support/design/widget/TabItem;

    invoke-direct {v2, v3}, Landroid/support/design/widget/TabLayout;->addTabFromItemView(Landroid/support/design/widget/TabItem;)V

    .line 974
    return-void

    .line 972
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Only TabItem instances can be added to TabLayout"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private animateToTab(I)V
    .locals 9

    .prologue
    .line 1065
    move-object v0, p0

    move v1, p1

    move v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 1099
    :goto_0
    return-void

    .line 1069
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    .line 1070
    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->childrenNeedLayout()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1073
    :cond_1
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 1074
    goto :goto_0

    .line 1077
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->getScrollX()I

    move-result v4

    move v2, v4

    .line 1078
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result v4

    move v3, v4

    .line 1080
    move v4, v2

    move v5, v3

    if-eq v4, v5, :cond_4

    .line 1081
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-nez v4, :cond_3

    .line 1082
    move-object v4, v0

    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v5

    iput-object v5, v4, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 1083
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    sget-object v5, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1084
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(J)V

    .line 1085
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    new-instance v5, Landroid/support/design/widget/TabLayout$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/design/widget/TabLayout$1;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v4, v5}, Landroid/support/design/widget/ValueAnimatorCompat;->addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 1093
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/ValueAnimatorCompat;->setIntValues(II)V

    .line 1094
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v4}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 1098
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v5, v1

    const/16 v6, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    .line 1099
    goto :goto_0
.end method

.method private applyModeAndGravity()V
    .locals 7

    .prologue
    .line 1183
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    .line 1184
    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v2, :cond_0

    .line 1186
    const/4 v2, 0x0

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/TabLayout;->mContentInsetStart:I

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 1188
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1190
    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 1199
    :goto_0
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/support/design/widget/TabLayout;->updateTabViews(Z)V

    .line 1200
    return-void

    .line 1192
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setGravity(I)V

    .line 1193
    goto :goto_0

    .line 1195
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setGravity(I)V

    goto :goto_0

    .line 1190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateScrollXForTab(IF)I
    .locals 10

    .prologue
    .line 1166
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v7, :cond_3

    .line 1167
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v8, v1

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 1168
    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v8}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 1169
    invoke-virtual {v7, v8}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    :goto_0
    move-object v4, v7

    .line 1171
    move-object v7, v3

    if-eqz v7, :cond_1

    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    :goto_1
    move v5, v7

    .line 1172
    move-object v7, v4

    if-eqz v7, :cond_2

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    :goto_2
    move v6, v7

    .line 1174
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move v8, v5

    move v9, v6

    add-int/2addr v8, v9

    int-to-float v8, v8

    move v9, v2

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    move-object v8, v3

    .line 1176
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    move-object v8, v0

    .line 1177
    invoke-virtual {v8}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v8

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    move v0, v7

    .line 1179
    :goto_3
    return v0

    .line 1169
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1171
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1172
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 1179
    :cond_3
    const/4 v7, 0x0

    move v0, v7

    goto :goto_3
.end method

.method private configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V
    .locals 8

    .prologue
    .line 934
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 935
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    move v6, v2

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 937
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 938
    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 939
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/TabLayout$Tab;

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 938
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 941
    :cond_0
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 10

    .prologue
    .line 2041
    move v0, p0

    move v1, p1

    const/4 v5, 0x2

    new-array v5, v5, [[I

    move-object v2, v5

    .line 2042
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v3, v5

    .line 2043
    const/4 v5, 0x0

    move v4, v5

    .line 2045
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/design/widget/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 2046
    move-object v5, v3

    move v6, v4

    move v7, v1

    aput v7, v5, v6

    .line 2047
    add-int/lit8 v4, v4, 0x1

    .line 2050
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/design/widget/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v7, v5, v6

    .line 2051
    move-object v5, v3

    move v6, v4

    move v7, v0

    aput v7, v5, v6

    .line 2052
    add-int/lit8 v4, v4, 0x1

    .line 2054
    new-instance v5, Landroid/content/res/ColorStateList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v5

    return-object v0
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 7

    .prologue
    .line 977
    move-object v0, p0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v1, v2

    .line 979
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 980
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;
    .locals 8
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 923
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v3}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout$TabView;

    :goto_0
    move-object v2, v3

    .line 924
    move-object v3, v2

    if-nez v3, :cond_0

    .line 925
    new-instance v3, Landroid/support/design/widget/TabLayout$TabView;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/TabLayout$TabView;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    move-object v2, v3

    .line 927
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Landroid/support/design/widget/TabLayout$TabView;->access$800(Landroid/support/design/widget/TabLayout$TabView;Landroid/support/design/widget/TabLayout$Tab;)V

    .line 928
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$TabView;->setFocusable(Z)V

    .line 929
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$TabView;->setMinimumWidth(I)V

    .line 930
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 923
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private dispatchTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 5
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1160
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 1161
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1160
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1163
    :cond_0
    return-void
.end method

.method private dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 5
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1148
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 1149
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1148
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1151
    :cond_0
    return-void
.end method

.method private dispatchTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 5
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1154
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 1155
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1154
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1157
    :cond_0
    return-void
.end method

.method private dpToPx(I)I
    .locals 4

    .prologue
    .line 994
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    move v3, v1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v0, v2

    return v0
.end method

.method private getDefaultHeight()I
    .locals 7

    .prologue
    .line 2058
    move-object v0, p0

    const/4 v5, 0x0

    move v1, v5

    .line 2059
    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 2060
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/TabLayout$Tab;

    move-object v4, v5

    .line 2061
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2062
    const/4 v5, 0x1

    move v1, v5

    .line 2066
    :cond_0
    move v5, v1

    if-eqz v5, :cond_2

    const/16 v5, 0x48

    :goto_1
    move v0, v5

    return v0

    .line 2059
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2066
    :cond_2
    const/16 v5, 0x30

    goto :goto_1
.end method

.method private getScrollPosition()F
    .locals 2

    .prologue
    .line 427
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getIndicatorPosition()F

    move-result v1

    move v0, v1

    return v0
.end method

.method private getTabMaxWidth()I
    .locals 2

    .prologue
    .line 2088
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    move v0, v1

    return v0
.end method

.method private getTabMinWidth()I
    .locals 3

    .prologue
    .line 2070
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mRequestedTabMinWidth:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2072
    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mRequestedTabMinWidth:I

    move v0, v1

    .line 2075
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v1, :cond_1

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mScrollableTabMinWidth:I

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getTabScrollRange()I
    .locals 4

    .prologue
    .line 873
    move-object v0, p0

    const/4 v1, 0x0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    .line 874
    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 873
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    return v0
.end method

.method private populateFromPagerAdapter()V
    .locals 7

    .prologue
    .line 898
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    .line 900
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_1

    .line 901
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    move v1, v3

    .line 902
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 903
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 902
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 907
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_1

    move v3, v1

    if-lez v3, :cond_1

    .line 908
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    move v2, v3

    .line 909
    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v4

    if-eq v3, v4, :cond_1

    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 910
    move-object v3, v0

    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 914
    :cond_1
    return-void
.end method

.method private removeTabViewAt(I)V
    .locals 5

    .prologue
    .line 1055
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout$TabView;

    move-object v2, v3

    .line 1056
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->removeViewAt(I)V

    .line 1057
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1058
    move-object v3, v2

    invoke-static {v3}, Landroid/support/design/widget/TabLayout$TabView;->access$900(Landroid/support/design/widget/TabLayout$TabView;)V

    .line 1059
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    move-object v4, v2

    invoke-interface {v3, v4}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v3

    .line 1061
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->requestLayout()V

    .line 1062
    return-void
.end method

.method private setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V
    .locals 9
    .param p1    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 878
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-eqz v3, :cond_0

    .line 880
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 883
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 885
    move v3, v2

    if-eqz v3, :cond_2

    move-object v3, v1

    if-eqz v3, :cond_2

    .line 887
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez v3, :cond_1

    .line 888
    move-object v3, v0

    new-instance v4, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;-><init>(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/TabLayout$1;)V

    iput-object v4, v3, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 890
    :cond_1
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 894
    :cond_2
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/TabLayout;->populateFromPagerAdapter()V

    .line 895
    return-void
.end method

.method private setScrollPosition(IFZZ)V
    .locals 10

    .prologue
    .line 404
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v1

    int-to-float v6, v6

    move v7, v2

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    move v5, v6

    .line 405
    move v6, v5

    if-ltz v6, :cond_0

    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v7}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    move v6, v4

    if-eqz v6, :cond_2

    .line 411
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    .line 415
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v6}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 416
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v6}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 418
    :cond_3
    move-object v6, v0

    move-object v7, v0

    move v8, v1

    move v9, v2

    invoke-direct {v7, v8, v9}, Landroid/support/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V

    .line 421
    move v6, v3

    if-eqz v6, :cond_4

    .line 422
    move-object v6, v0

    move v7, v5

    invoke-direct {v6, v7}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    .line 424
    :cond_4
    goto :goto_0
.end method

.method private setSelectedTabView(I)V
    .locals 8

    .prologue
    .line 1102
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v5

    move v2, v5

    .line 1103
    move v5, v1

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 1104
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 1105
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 1106
    move-object v5, v4

    move v6, v3

    move v7, v1

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 1104
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1106
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 1109
    :cond_1
    return-void
.end method

.method private setupWithViewPager(Landroid/support/v4/view/ViewPager;ZZ)V
    .locals 11
    .param p1    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 773
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v5, :cond_1

    .line 775
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    if-eqz v5, :cond_0

    .line 776
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 778
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    if-eqz v5, :cond_1

    .line 779
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 783
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mCurrentVpSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v5, :cond_2

    .line 785
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mCurrentVpSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout;->removeOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 786
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/design/widget/TabLayout;->mCurrentVpSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    .line 789
    :cond_2
    move-object v5, v1

    if-eqz v5, :cond_6

    .line 790
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 793
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    if-nez v5, :cond_3

    .line 794
    move-object v5, v0

    new-instance v6, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v6, v5, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    .line 796
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-static {v5}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->access$400(Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;)V

    .line 797
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 800
    move-object v5, v0

    new-instance v6, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    invoke-direct {v7, v8}, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v6, v5, Landroid/support/design/widget/TabLayout;->mCurrentVpSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    .line 801
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mCurrentVpSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 803
    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v5

    move-object v4, v5

    .line 804
    move-object v5, v4

    if-eqz v5, :cond_4

    .line 807
    move-object v5, v0

    move-object v6, v4

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    .line 811
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    if-nez v5, :cond_5

    .line 812
    move-object v5, v0

    new-instance v6, Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/support/design/widget/TabLayout$AdapterChangeListener;-><init>(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/TabLayout$1;)V

    iput-object v6, v5, Landroid/support/design/widget/TabLayout;->mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    .line 814
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    .line 815
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mAdapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 818
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 826
    :goto_0
    move-object v5, v0

    move v6, v3

    iput-boolean v6, v5, Landroid/support/design/widget/TabLayout;->mSetupViewPagerImplicitly:Z

    .line 827
    return-void

    .line 822
    :cond_6
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 823
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    goto :goto_0
.end method

.method private updateAllTabs()V
    .locals 5

    .prologue
    .line 917
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v3

    :goto_0
    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_0

    .line 918
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout$Tab;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout$Tab;->access$700(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 917
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 920
    :cond_0
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 4

    .prologue
    .line 984
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    if-nez v2, :cond_0

    .line 985
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 986
    move-object v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 991
    :goto_0
    return-void

    .line 988
    :cond_0
    move-object v2, v1

    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 989
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method

.method private updateTabViews(Z)V
    .locals 6

    .prologue
    .line 1203
    move-object v0, p0

    move v1, p1

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1204
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1205
    move-object v4, v3

    move-object v5, v0

    invoke-direct {v5}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1206
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5}, Landroid/support/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1207
    move v4, v1

    if-eqz v4, :cond_0

    .line 1208
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 1203
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1211
    :cond_1
    return-void
.end method


# virtual methods
.method public addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V
    .locals 4
    .param p1    # Landroid/support/design/widget/TabLayout$OnTabSelectedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 526
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 527
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 529
    :cond_0
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 5
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 437
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 438
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;I)V
    .locals 7
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 448
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    .line 449
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V
    .locals 8
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 469
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    invoke-static {v4}, Landroid/support/design/widget/TabLayout$Tab;->access$000(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout;

    move-result-object v4

    move-object v5, v0

    if-eq v4, v5, :cond_0

    .line 470
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Tab belongs to a different TabLayout."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 472
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/TabLayout;->configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V

    .line 473
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/design/widget/TabLayout;->addTabView(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 475
    move v4, v3

    if-eqz v4, :cond_1

    .line 476
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 478
    :cond_1
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .locals 7
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 458
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    .line 459
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 950
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 951
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 955
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 956
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    .prologue
    .line 965
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 966
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .prologue
    .line 960
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 961
    return-void
.end method

.method public clearOnTabSelectedListeners()V
    .locals 2

    .prologue
    .line 545
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 546
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .prologue
    .line 2084
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getSelectedTabPosition()I
    .locals 2

    .prologue
    .line 589
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 580
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 2

    .prologue
    .line 572
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getTabGravity()I
    .locals 2

    .prologue
    .line 704
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    move v0, v1

    return v0
.end method

.method public getTabMode()I
    .locals 2

    .prologue
    .line 680
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mMode:I

    move v0, v1

    return v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 724
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    move-object v0, v1

    return-object v0
.end method

.method public newTab()Landroid/support/design/widget/TabLayout$Tab;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 557
    move-object v0, p0

    sget-object v2, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v2}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    move-object v1, v2

    .line 558
    move-object v2, v1

    if-nez v2, :cond_0

    .line 559
    new-instance v2, Landroid/support/design/widget/TabLayout$Tab;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;-><init>(Landroid/support/design/widget/TabLayout$1;)V

    move-object v1, v2

    .line 561
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->access$002(Landroid/support/design/widget/TabLayout$Tab;Landroid/support/design/widget/TabLayout;)Landroid/support/design/widget/TabLayout;

    move-result-object v2

    .line 562
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/TabLayout;->createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->access$202(Landroid/support/design/widget/TabLayout$Tab;Landroid/support/design/widget/TabLayout$TabView;)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v2

    .line 563
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 847
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 849
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v2, :cond_0

    .line 852
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    .line 853
    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    .line 856
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;ZZ)V

    .line 859
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 863
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 865
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TabLayout;->mSetupViewPagerImplicitly:Z

    if-eqz v1, :cond_0

    .line 867
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 868
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/design/widget/TabLayout;->mSetupViewPagerImplicitly:Z

    .line 870
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 1001
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v9, v0

    move-object v10, v0

    invoke-direct {v10}, Landroid/support/design/widget/TabLayout;->getDefaultHeight()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    move v3, v9

    .line 1002
    move v9, v2

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 1013
    :goto_0
    move v9, v1

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    move v4, v9

    .line 1014
    move v9, v1

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    if-eqz v9, :cond_0

    .line 1017
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    if-lez v10, :cond_2

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    .line 1019
    :goto_1
    iput v10, v9, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    .line 1023
    :cond_0
    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-super {v9, v10, v11}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 1025
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/TabLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 1028
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v5, v9

    .line 1029
    const/4 v9, 0x0

    move v6, v9

    .line 1031
    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/TabLayout;->mMode:I

    packed-switch v9, :pswitch_data_0

    .line 1043
    :goto_2
    move v9, v6

    if-eqz v9, :cond_1

    .line 1045
    move v9, v2

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v10

    move-object v11, v0

    .line 1046
    invoke-virtual {v11}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    move-object v11, v5

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1045
    invoke-static {v9, v10, v11}, Landroid/support/design/widget/TabLayout;->getChildMeasureSpec(III)I

    move-result v9

    move v7, v9

    .line 1047
    move-object v9, v0

    .line 1048
    invoke-virtual {v9}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    .line 1047
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move v8, v9

    .line 1049
    move-object v9, v5

    move v10, v8

    move v11, v7

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    .line 1052
    :cond_1
    return-void

    .line 1004
    :sswitch_0
    move v9, v3

    move v10, v2

    .line 1005
    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    .line 1004
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move v2, v9

    .line 1007
    goto :goto_0

    .line 1009
    :sswitch_1
    move v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move v2, v9

    goto :goto_0

    .line 1017
    :cond_2
    move v10, v4

    move-object v11, v0

    const/16 v12, 0x38

    .line 1019
    invoke-direct {v11, v12}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v11

    sub-int/2addr v10, v11

    goto :goto_1

    .line 1035
    :pswitch_0
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v10

    if-ge v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_3
    move v6, v9

    .line 1036
    goto :goto_2

    .line 1035
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 1039
    :pswitch_1
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v10

    if-eq v9, v10, :cond_4

    const/4 v9, 0x1

    :goto_4
    move v6, v9

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 1002
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch

    .line 1031
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeAllTabs()V
    .locals 5

    .prologue
    .line 637
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    :goto_0
    move v3, v1

    if-ltz v3, :cond_0

    .line 638
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/TabLayout;->removeTabViewAt(I)V

    .line 637
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 641
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 642
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout$Tab;

    move-object v2, v3

    .line 643
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 644
    move-object v3, v2

    invoke-static {v3}, Landroid/support/design/widget/TabLayout$Tab;->access$300(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 645
    sget-object v3, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    move-object v4, v2

    invoke-interface {v3, v4}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v3

    .line 646
    goto :goto_1

    .line 648
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 649
    return-void
.end method

.method public removeOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V
    .locals 4
    .param p1    # Landroid/support/design/widget/TabLayout$OnTabSelectedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 538
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 539
    return-void
.end method

.method public removeTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 6

    .prologue
    .line 599
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/design/widget/TabLayout$Tab;->access$000(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout;

    move-result-object v2

    move-object v3, v0

    if-eq v2, v3, :cond_0

    .line 600
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Tab does not belong to this TabLayout."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 603
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->removeTabAt(I)V

    .line 604
    return-void
.end method

.method public removeTabAt(I)V
    .locals 11

    .prologue
    .line 613
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v6

    :goto_0
    move v2, v6

    .line 614
    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Landroid/support/design/widget/TabLayout;->removeTabViewAt(I)V

    .line 616
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/TabLayout$Tab;

    move-object v3, v6

    .line 617
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 618
    move-object v6, v3

    invoke-static {v6}, Landroid/support/design/widget/TabLayout$Tab;->access$300(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 619
    sget-object v6, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    move-object v7, v3

    invoke-interface {v6, v7}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v6

    .line 622
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .line 623
    move v6, v1

    move v5, v6

    :goto_1
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_2

    .line 624
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/TabLayout$Tab;

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 623
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 613
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 627
    :cond_2
    move v6, v2

    move v7, v1

    if-ne v6, v7, :cond_3

    .line 628
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6, v7}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 630
    :cond_3
    return-void

    .line 628
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/TabLayout$Tab;

    goto :goto_2
.end method

.method selectTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 5

    .prologue
    .line 1112
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 1113
    return-void
.end method

.method selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .locals 9

    .prologue
    .line 1116
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    move-object v3, v5

    .line 1118
    move-object v5, v3

    move-object v6, v1

    if-ne v5, v6, :cond_1

    .line 1119
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 1120
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/support/design/widget/TabLayout;->dispatchTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1121
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/support/design/widget/TabLayout;->animateToTab(I)V

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1124
    :cond_1
    move-object v5, v1

    if-eqz v5, :cond_5

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v5

    :goto_1
    move v4, v5

    .line 1125
    move v5, v2

    if-eqz v5, :cond_3

    .line 1126
    move-object v5, v3

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    :cond_2
    move v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 1129
    move-object v5, v0

    move v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 1133
    :goto_2
    move v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 1134
    move-object v5, v0

    move v6, v4

    invoke-direct {v5, v6}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    .line 1137
    :cond_3
    move-object v5, v3

    if-eqz v5, :cond_4

    .line 1138
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Landroid/support/design/widget/TabLayout;->dispatchTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1140
    :cond_4
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 1141
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 1142
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/support/design/widget/TabLayout;->dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_0

    .line 1124
    :cond_5
    const/4 v5, -0x1

    goto :goto_1

    .line 1131
    :cond_6
    move-object v5, v0

    move v6, v4

    invoke-direct {v5, v6}, Landroid/support/design/widget/TabLayout;->animateToTab(I)V

    goto :goto_2
.end method

.method public setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V
    .locals 4
    .param p1    # Landroid/support/design/widget/TabLayout$OnTabSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 505
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v2, :cond_0

    .line 506
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->removeOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 510
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TabLayout;->mSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    .line 511
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 512
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 514
    :cond_1
    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 9

    .prologue
    .line 399
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZZ)V

    .line 400
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 374
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 375
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 4

    .prologue
    .line 385
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 386
    return-void
.end method

.method public setTabGravity(I)V
    .locals 4

    .prologue
    .line 691
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 692
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    .line 693
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 695
    :cond_0
    return-void
.end method

.method public setTabMode(I)V
    .locals 4

    .prologue
    .line 667
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/TabLayout;->mMode:I

    if-eq v2, v3, :cond_0

    .line 668
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/TabLayout;->mMode:I

    .line 669
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 671
    :cond_0
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 6

    .prologue
    .line 734
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v4, v5}, Landroid/support/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 735
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 713
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 714
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 715
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/TabLayout;->updateAllTabs()V

    .line 717
    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 5
    .param p1    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 836
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    .line 837
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 5
    .param p1    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 746
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;Z)V

    .line 747
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;Z)V
    .locals 7
    .param p1    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 768
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;ZZ)V

    .line 769
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 2

    .prologue
    .line 842
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/TabLayout;->getTabScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
