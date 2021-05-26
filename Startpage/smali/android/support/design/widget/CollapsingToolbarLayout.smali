.class public Landroid/support/design/widget/CollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;,
        Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCRIM_ANIMATION_DURATION:I = 0x258


# instance fields
.field private final mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

.field private mCollapsingTitleEnabled:Z

.field private mContentScrim:Landroid/graphics/drawable/Drawable;

.field private mCurrentOffset:I

.field private mDrawCollapsingTitle:Z

.field private mDummyView:Landroid/view/View;

.field private mExpandedMarginBottom:I

.field private mExpandedMarginEnd:I

.field private mExpandedMarginStart:I

.field private mExpandedMarginTop:I

.field private mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

.field private mRefreshToolbar:Z

.field private mScrimAlpha:I

.field private mScrimAnimationDuration:J

.field private mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private mScrimVisibleHeightTrigger:I

.field private mScrimsAreShown:Z

.field private mStatusBarScrim:Landroid/graphics/drawable/Drawable;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mToolbarDirectChild:Landroid/view/View;

.field private mToolbarDrawIndex:I

.field private mToolbarId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 14

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    .line 116
    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 127
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    .line 146
    move-object v5, v1

    invoke-static {v5}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 148
    move-object v5, v0

    new-instance v6, Landroid/support/design/widget/CollapsingTextHelper;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    .line 149
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object v6, Landroid/support/design/widget/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 151
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroid/support/design/R$styleable;->CollapsingToolbarLayout:[I

    move v8, v3

    sget v9, Landroid/support/design/R$style;->Widget_Design_CollapsingToolbar:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 155
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v6, v4

    sget v7, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleGravity:I

    const v8, 0x800053

    .line 156
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 155
    invoke-virtual {v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 158
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v6, v4

    sget v7, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_collapsedTitleGravity:I

    const v8, 0x800013

    .line 159
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 158
    invoke-virtual {v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 162
    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMargin:I

    const/4 v11, 0x0

    .line 163
    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    iput v10, v9, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    move-object v12, v7

    move v13, v8

    move v7, v13

    move-object v8, v12

    move v9, v13

    iput v9, v8, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    move-object v12, v6

    move v13, v7

    move v6, v13

    move-object v7, v12

    move v8, v13

    iput v8, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    iput v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 165
    move-object v5, v4

    sget v6, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 166
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 169
    :cond_0
    move-object v5, v4

    sget v6, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 170
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    .line 173
    :cond_1
    move-object v5, v4

    sget v6, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 174
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    .line 177
    :cond_2
    move-object v5, v4

    sget v6, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 178
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    .line 182
    :cond_3
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_titleEnabled:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    .line 184
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_title:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v6, Landroid/support/design/R$style;->TextAppearance_Design_CollapsingToolbar_Expanded:I

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 189
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v6, Landroid/support/v7/appcompat/R$style;->TextAppearance_AppCompat_Widget_ActionBar_Title:I

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 193
    move-object v5, v4

    sget v6, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 194
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v6, v4

    sget v7, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    const/4 v8, 0x0

    .line 195
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 194
    invoke-virtual {v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 198
    :cond_4
    move-object v5, v4

    sget v6, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 199
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v6, v4

    sget v7, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    const/4 v8, 0x0

    .line 200
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 199
    invoke-virtual {v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 204
    :cond_5
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_scrimVisibleHeightTrigger:I

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    .line 207
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_scrimAnimationDuration:I

    const/16 v8, 0x258

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimationDuration:J

    .line 211
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_contentScrim:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 212
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_statusBarScrim:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 214
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_toolbarId:I

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    .line 216
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->setWillNotDraw(Z)V

    .line 220
    move-object v5, v0

    new-instance v6, Landroid/support/design/widget/CollapsingToolbarLayout$1;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/design/widget/CollapsingToolbarLayout$1;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 228
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/design/widget/CollapsingToolbarLayout;I)V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    return-void
.end method

.method static synthetic access$302(Landroid/support/design/widget/CollapsingToolbarLayout;I)I
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    move v0, v2

    return v0
.end method

.method static synthetic access$400(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/design/widget/CollapsingTextHelper;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v0, v1

    return-object v0
.end method

.method private animateScrim(I)V
    .locals 7

    .prologue
    .line 590
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 591
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-nez v2, :cond_2

    .line 592
    move-object v2, v0

    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v3

    iput-object v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 593
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    move-object v3, v0

    iget-wide v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimationDuration:J

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(J)V

    .line 594
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-le v3, v4, :cond_1

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 598
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    new-instance v3, Landroid/support/design/widget/CollapsingToolbarLayout$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/design/widget/CollapsingToolbarLayout$2;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 608
    :cond_0
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/ValueAnimatorCompat;->setIntValues(II)V

    .line 609
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 610
    return-void

    .line 594
    :cond_1
    sget-object v3, Landroid/support/design/widget/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 604
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    goto :goto_1
.end method

.method private ensureToolbar()V
    .locals 8

    .prologue
    .line 332
    move-object v0, p0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    if-nez v5, :cond_0

    .line 364
    :goto_0
    return-void

    .line 337
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 338
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    .line 340
    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 342
    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    invoke-virtual {v6, v7}, Landroid/support/design/widget/CollapsingToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/Toolbar;

    iput-object v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 343
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v5, :cond_1

    .line 344
    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-direct {v6, v7}, Landroid/support/design/widget/CollapsingToolbarLayout;->findDirectChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    .line 348
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v5, :cond_3

    .line 351
    const/4 v5, 0x0

    move-object v1, v5

    .line 352
    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v5

    move v3, v5

    :goto_1
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_2

    .line 353
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 354
    move-object v5, v4

    instance-of v5, v5, Landroid/support/v7/widget/Toolbar;

    if-eqz v5, :cond_4

    .line 355
    move-object v5, v4

    check-cast v5, Landroid/support/v7/widget/Toolbar;

    move-object v1, v5

    .line 359
    :cond_2
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 362
    :cond_3
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateDummyView()V

    .line 363
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    .line 364
    goto :goto_0

    .line 352
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private findDirectChild(Landroid/view/View;)Landroid/view/View;
    .locals 6

    .prologue
    .line 375
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    move-object v2, v4

    .line 376
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v3, v4

    :goto_0
    move-object v4, v3

    move-object v5, v0

    if-eq v4, v5, :cond_1

    move-object v4, v3

    if-eqz v4, :cond_1

    .line 377
    move-object v4, v3

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 378
    move-object v4, v3

    check-cast v4, Landroid/view/View;

    move-object v2, v4

    .line 376
    :cond_0
    move-object v4, v3

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 381
    :cond_1
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method

.method private static getHeightWithMargins(Landroid/view/View;)I
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 485
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v1, v3

    .line 486
    move-object v3, v1

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_0

    .line 487
    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v3

    .line 488
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    move v0, v3

    .line 490
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method private static getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;
    .locals 6

    .prologue
    .line 494
    move-object v0, p0

    move-object v2, v0

    sget v3, Landroid/support/design/R$id;->view_offset_helper:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/ViewOffsetHelper;

    move-object v1, v2

    .line 495
    move-object v2, v1

    if-nez v2, :cond_0

    .line 496
    new-instance v2, Landroid/support/design/widget/ViewOffsetHelper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/design/widget/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    move-object v1, v2

    .line 497
    move-object v2, v0

    sget v3, Landroid/support/design/R$id;->view_offset_helper:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 499
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private isToolbarChildDrawnNext(Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 367
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDrawIndex:I

    if-ltz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDrawIndex:I

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 5

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move-object v2, v3

    .line 264
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    move-object v3, v1

    move-object v2, v3

    .line 270
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/design/widget/ViewUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 271
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 272
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 275
    :cond_1
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method private setScrimAlpha(I)V
    .locals 5

    .prologue
    .line 613
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-eq v3, v4, :cond_1

    .line 614
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    move-object v2, v3

    .line 615
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v3, :cond_0

    .line 616
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 618
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    .line 619
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 621
    :cond_1
    return-void
.end method

.method private updateDummyView()V
    .locals 7

    .prologue
    .line 385
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 387
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    .line 388
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 389
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 392
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v2, :cond_2

    .line 393
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 394
    move-object v2, v0

    new-instance v3, Landroid/view/View;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    .line 396
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 397
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;II)V

    .line 400
    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .prologue
    .line 1095
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move v0, v2

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 280
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 284
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 285
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v3, :cond_0

    .line 286
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 287
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 291
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    if-eqz v3, :cond_1

    .line 292
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 296
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v3, :cond_2

    .line 297
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    :goto_0
    move v2, v3

    .line 298
    move v3, v2

    if-lez v3, :cond_2

    .line 299
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    neg-int v5, v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v6

    move v7, v2

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 301
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 302
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 305
    :cond_2
    return-void

    .line 297
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-wide v9, v3

    invoke-super {v6, v7, v8, v9, v10}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    move v5, v6

    .line 314
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v6, :cond_0

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v6, v7}, Landroid/support/design/widget/CollapsingToolbarLayout;->isToolbarChildDrawnNext(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 315
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 316
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 317
    const/4 v6, 0x1

    move v5, v6

    .line 320
    :cond_0
    move v6, v5

    move v0, v6

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 7

    .prologue
    .line 716
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 718
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v4

    move-object v1, v4

    .line 719
    const/4 v4, 0x0

    move v2, v4

    .line 721
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v4

    .line 722
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 723
    move v4, v2

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    or-int/2addr v4, v5

    move v2, v4

    .line 725
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v4

    .line 726
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 727
    move v4, v2

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    or-int/2addr v4, v5

    move v2, v4

    .line 729
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    if-eqz v4, :cond_2

    .line 730
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->setState([I)Z

    move-result v5

    or-int/2addr v4, v5

    move v2, v4

    .line 733
    :cond_2
    move v4, v2

    if-eqz v4, :cond_3

    .line 734
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->invalidate()V

    .line 736
    :cond_3
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .locals 6

    .prologue
    .line 1100
    move-object v0, p0

    new-instance v1, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 7

    .prologue
    .line 1105
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 6

    .prologue
    .line 1110
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .locals 2

    .prologue
    .line 838
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextGravity()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 903
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 680
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public getExpandedTitleGravity()I
    .locals 2

    .prologue
    .line 886
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingTextHelper;->getExpandedTextGravity()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getExpandedTitleMarginBottom()I
    .locals 2

    .prologue
    .line 1015
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    move v0, v1

    return v0
.end method

.method public getExpandedTitleMarginEnd()I
    .locals 2

    .prologue
    .line 994
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    move v0, v1

    return v0
.end method

.method public getExpandedTitleMarginStart()I
    .locals 2

    .prologue
    .line 952
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    move v0, v1

    return v0
.end method

.method public getExpandedTitleMarginTop()I
    .locals 2

    .prologue
    .line 973
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    move v0, v1

    return v0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 920
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingTextHelper;->getExpandedTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method final getMaxOffsetForPinChild(Landroid/view/View;)I
    .locals 6

    .prologue
    .line 1235
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-static {v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v4

    move-object v2, v4

    .line 1236
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-object v3, v4

    .line 1237
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v4

    move-object v5, v2

    .line 1238
    invoke-virtual {v5}, Landroid/support/design/widget/ViewOffsetHelper;->getLayoutTop()I

    move-result v5

    sub-int/2addr v4, v5

    move-object v5, v1

    .line 1239
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    move-object v5, v3

    iget v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    move v0, v4

    return v0
.end method

.method public getScrimAnimationDuration()J
    .locals 3

    .prologue
    .line 1090
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimationDuration:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 5

    .prologue
    .line 1056
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    if-ltz v3, :cond_0

    .line 1058
    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    move v0, v3

    .line 1072
    :goto_0
    return v0

    .line 1062
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    :goto_1
    move v1, v3

    .line 1064
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    move v2, v3

    .line 1065
    move v3, v2

    if-lez v3, :cond_2

    .line 1067
    move v3, v2

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    move v4, v1

    add-int/2addr v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 1062
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1072
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v3

    const/4 v4, 0x3

    div-int/lit8 v3, v3, 0x3

    move v0, v3

    goto :goto_0
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 790
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 522
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTitleEnabled()Z
    .locals 2

    .prologue
    .line 551
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    move v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    .line 232
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 235
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    .line 236
    move-object v2, v1

    instance-of v2, v2, Landroid/support/design/widget/AppBarLayout;

    if-eqz v2, :cond_1

    .line 238
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 240
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-nez v2, :cond_0

    .line 241
    move-object v2, v0

    new-instance v3, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/design/widget/CollapsingToolbarLayout$1;)V

    iput-object v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 243
    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 246
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 248
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 253
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    .line 254
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroid/support/design/widget/AppBarLayout;

    if-eqz v2, :cond_0

    .line 255
    move-object v2, v1

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 258
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 259
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    .prologue
    .line 410
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    invoke-super/range {v10 .. v15}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 413
    const/4 v10, 0x0

    move v6, v10

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v10

    move v7, v10

    :goto_0
    move v10, v6

    move v11, v7

    if-ge v10, v11, :cond_1

    .line 414
    move-object v10, v0

    move v11, v6

    invoke-virtual {v10, v11}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v8, v10

    .line 416
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v10, :cond_0

    move-object v10, v8

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 417
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v10}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v10

    move v9, v10

    .line 418
    move-object v10, v8

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    move v11, v9

    if-ge v10, v11, :cond_0

    .line 421
    move-object v10, v8

    move v11, v9

    invoke-static {v10, v11}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 425
    :cond_0
    move-object v10, v8

    invoke-static {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/design/widget/ViewOffsetHelper;->onViewLayout()V

    .line 413
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 429
    :cond_1
    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-eqz v10, :cond_2

    .line 432
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-static {v11}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    .line 433
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    .line 435
    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    if-eqz v10, :cond_2

    .line 436
    move-object v10, v0

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    const/4 v10, 0x1

    :goto_2
    move v6, v10

    .line 440
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-eqz v11, :cond_7

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    :goto_3
    invoke-virtual {v10, v11}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v10

    move v7, v10

    .line 442
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {v10, v11, v12}, Landroid/support/design/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 443
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    move v12, v6

    if-eqz v12, :cond_8

    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 445
    invoke-virtual {v12}, Landroid/support/v7/widget/Toolbar;->getTitleMarginEnd()I

    move-result v12

    .line 446
    :goto_4
    add-int/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    move v13, v7

    add-int/2addr v12, v13

    move-object v13, v0

    iget-object v13, v13, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 447
    invoke-virtual {v13}, Landroid/support/v7/widget/Toolbar;->getTitleMarginTop()I

    move-result v13

    add-int/2addr v12, v13

    move-object v13, v0

    iget-object v13, v13, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move v14, v6

    if-eqz v14, :cond_9

    move-object v14, v0

    iget-object v14, v14, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 449
    invoke-virtual {v14}, Landroid/support/v7/widget/Toolbar;->getTitleMarginStart()I

    move-result v14

    .line 450
    :goto_5
    add-int/2addr v13, v14

    move-object v14, v0

    iget-object v14, v14, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    move v15, v7

    add-int/2addr v14, v15

    move-object v15, v0

    iget-object v15, v15, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 451
    invoke-virtual {v15}, Landroid/support/v7/widget/Toolbar;->getTitleMarginBottom()I

    move-result v15

    sub-int/2addr v14, v15

    .line 443
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 454
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move v11, v6

    if-eqz v11, :cond_a

    move-object v11, v0

    iget v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    :goto_6
    move-object v12, v0

    iget v12, v12, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    move v13, v4

    move v14, v2

    sub-int/2addr v13, v14

    move v14, v6

    if-eqz v14, :cond_b

    move-object v14, v0

    iget v14, v14, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    :goto_7
    sub-int/2addr v13, v14

    move v14, v5

    move v15, v3

    sub-int/2addr v14, v15

    move-object v15, v0

    iget v15, v15, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    sub-int/2addr v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 460
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v10}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 465
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v10, :cond_d

    .line 466
    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v10, :cond_3

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v10}, Landroid/support/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 468
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v11}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 470
    :cond_3
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-eqz v10, :cond_4

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    move-object v11, v0

    if-ne v10, v11, :cond_c

    .line 471
    :cond_4
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v11}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/design/widget/CollapsingToolbarLayout;->setMinimumHeight(I)V

    .line 472
    move-object v10, v0

    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v11, v12}, Landroid/support/design/widget/CollapsingToolbarLayout;->indexOfChild(Landroid/view/View;)I

    move-result v11

    iput v11, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDrawIndex:I

    .line 481
    :goto_8
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 482
    return-void

    .line 433
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 436
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 440
    :cond_7
    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    goto/16 :goto_3

    .line 445
    :cond_8
    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 446
    invoke-virtual {v12}, Landroid/support/v7/widget/Toolbar;->getTitleMarginStart()I

    move-result v12

    goto/16 :goto_4

    .line 449
    :cond_9
    move-object v14, v0

    iget-object v14, v14, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 450
    invoke-virtual {v14}, Landroid/support/v7/widget/Toolbar;->getTitleMarginEnd()I

    move-result v14

    goto/16 :goto_5

    .line 454
    :cond_a
    move-object v11, v0

    iget v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    goto/16 :goto_6

    :cond_b
    move-object v14, v0

    iget v14, v14, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    goto :goto_7

    .line 474
    :cond_c
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    invoke-static {v11}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/design/widget/CollapsingToolbarLayout;->setMinimumHeight(I)V

    .line 475
    move-object v10, v0

    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroid/support/design/widget/CollapsingToolbarLayout;->indexOfChild(Landroid/view/View;)I

    move-result v11

    iput v11, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDrawIndex:I

    goto :goto_8

    .line 478
    :cond_d
    move-object v10, v0

    const/4 v11, -0x1

    iput v11, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDrawIndex:I

    goto :goto_8
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 404
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 405
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 406
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    .prologue
    .line 325
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

    invoke-super {v5, v6, v7, v8, v9}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 326
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 327
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v1

    move v9, v2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 329
    :cond_0
    return-void
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 4

    .prologue
    .line 829
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 830
    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 800
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 801
    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 809
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 810
    return-void
.end method

.method public setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 818
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 819
    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 4
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 895
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTypeface(Landroid/graphics/Typeface;)V

    .line 896
    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 633
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    if-eq v2, v3, :cond_2

    .line 634
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 635
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 637
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_3

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    .line 638
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 639
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 640
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 641
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 643
    :cond_1
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 645
    :cond_2
    return-void

    .line 637
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setContentScrimColor(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 656
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 657
    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 668
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 670
    return-void
.end method

.method public setExpandedTitleColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 857
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 858
    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 4

    .prologue
    .line 877
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 878
    return-void
.end method

.method public setExpandedTitleMargin(IIII)V
    .locals 7

    .prologue
    .line 938
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 939
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    .line 940
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    .line 941
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    .line 942
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 943
    return-void
.end method

.method public setExpandedTitleMarginBottom(I)V
    .locals 4

    .prologue
    .line 1026
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    .line 1027
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 1028
    return-void
.end method

.method public setExpandedTitleMarginEnd(I)V
    .locals 4

    .prologue
    .line 1005
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    .line 1006
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 1007
    return-void
.end method

.method public setExpandedTitleMarginStart(I)V
    .locals 4

    .prologue
    .line 963
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 964
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 965
    return-void
.end method

.method public setExpandedTitleMarginTop(I)V
    .locals 4

    .prologue
    .line 984
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    .line 985
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 986
    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 848
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 849
    return-void
.end method

.method public setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 866
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 867
    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 4
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 912
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTypeface(Landroid/graphics/Typeface;)V

    .line 913
    return-void
.end method

.method public setScrimAnimationDuration(J)V
    .locals 6
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 1083
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimationDuration:J

    .line 1084
    return-void
.end method

.method public setScrimVisibleHeightTrigger(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 1042
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 1043
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    .line 1045
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1047
    :cond_0
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 5

    .prologue
    .line 565
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimsShown(ZZ)V

    .line 566
    return-void

    .line 565
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setScrimsShown(ZZ)V
    .locals 5

    .prologue
    .line 579
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimsAreShown:Z

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 580
    move v3, v2

    if-eqz v3, :cond_2

    .line 581
    move-object v3, v0

    move v4, v1

    if-eqz v4, :cond_1

    const/16 v4, 0xff

    :goto_0
    invoke-direct {v3, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->animateScrim(I)V

    .line 585
    :goto_1
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimsAreShown:Z

    .line 587
    :cond_0
    return-void

    .line 581
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 583
    :cond_2
    move-object v3, v0

    move v4, v1

    if-eqz v4, :cond_3

    const/16 v4, 0xff

    :goto_2
    invoke-direct {v3, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 695
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    if-eq v2, v3, :cond_3

    .line 696
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 697
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 699
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_4

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 700
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 701
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 702
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    .line 704
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    .line 705
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 704
    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    .line 706
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v2

    .line 707
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 708
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 710
    :cond_2
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 712
    :cond_3
    return-void

    .line 699
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 706
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setStatusBarScrimColor(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 767
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 768
    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 779
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 780
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 511
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 512
    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 4

    .prologue
    .line 536
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eq v2, v3, :cond_0

    .line 537
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    .line 538
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateDummyView()V

    .line 539
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 541
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 6

    .prologue
    .line 745
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 747
    move v3, v1

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 748
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v3

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 749
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    move v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    .line 751
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v3

    move v4, v2

    if-eq v3, v4, :cond_1

    .line 752
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    move v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    .line 754
    :cond_1
    return-void

    .line 747
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method final updateScrimVisibility()V
    .locals 4

    .prologue
    .line 1229
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1230
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    add-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimsShown(Z)V

    .line 1232
    :cond_1
    return-void

    .line 1230
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    .prologue
    .line 740
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

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
