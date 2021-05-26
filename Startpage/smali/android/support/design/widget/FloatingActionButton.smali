.class public Landroid/support/design/widget/FloatingActionButton;
.super Landroid/support/design/widget/VisibilityAwareImageButton;
.source "FloatingActionButton.java"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Landroid/support/design/widget/FloatingActionButton$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;,
        Landroid/support/design/widget/FloatingActionButton$Behavior;,
        Landroid/support/design/widget/FloatingActionButton$Size;,
        Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
    }
.end annotation


# static fields
.field private static final AUTO_MINI_LARGEST_SCREEN_WIDTH:I = 0x1d6

.field private static final LOG_TAG:Ljava/lang/String; = "FloatingActionButton"

.field public static final SIZE_AUTO:I = -0x1

.field public static final SIZE_MINI:I = 0x1

.field public static final SIZE_NORMAL:I


# instance fields
.field private mBackgroundTint:Landroid/content/res/ColorStateList;

.field private mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mBorderWidth:I

.field private mCompatPadding:Z

.field private mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

.field private mImagePadding:I

.field private mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

.field private mMaxImageSize:I

.field private mRippleColor:I

.field private final mShadowPadding:Landroid/graphics/Rect;

.field private mSize:I

.field private final mTouchArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 13

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroid/support/design/widget/VisibilityAwareImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    move-object v7, v0

    new-instance v8, Landroid/graphics/Rect;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v7, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    .line 137
    move-object v7, v0

    new-instance v8, Landroid/graphics/Rect;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v7, Landroid/support/design/widget/FloatingActionButton;->mTouchArea:Landroid/graphics/Rect;

    .line 154
    move-object v7, v1

    invoke-static {v7}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 156
    move-object v7, v1

    move-object v8, v2

    sget-object v9, Landroid/support/design/R$styleable;->FloatingActionButton:[I

    move v10, v3

    sget v11, Landroid/support/design/R$style;->Widget_Design_FloatingActionButton:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v4, v7

    .line 159
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->FloatingActionButton_backgroundTint:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v7, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    .line 160
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->FloatingActionButton_backgroundTintMode:I

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/support/design/widget/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    iput-object v8, v7, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 162
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->FloatingActionButton_rippleColor:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    .line 163
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->FloatingActionButton_fabSize:I

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/FloatingActionButton;->mSize:I

    .line 164
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->FloatingActionButton_borderWidth:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/FloatingActionButton;->mBorderWidth:I

    .line 165
    move-object v7, v4

    sget v8, Landroid/support/design/R$styleable;->FloatingActionButton_elevation:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move v5, v7

    .line 166
    move-object v7, v4

    sget v8, Landroid/support/design/R$styleable;->FloatingActionButton_pressedTranslationZ:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move v6, v7

    .line 168
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->FloatingActionButton_useCompatPadding:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v7, Landroid/support/design/widget/FloatingActionButton;->mCompatPadding:Z

    .line 169
    move-object v7, v4

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    move-object v7, v0

    new-instance v8, Landroid/support/v7/widget/AppCompatImageHelper;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/v7/widget/AppCompatImageHelper;-><init>(Landroid/widget/ImageView;)V

    iput-object v8, v7, Landroid/support/design/widget/FloatingActionButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    .line 172
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    move-object v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/AppCompatImageHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 174
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Landroid/support/design/R$dimen;->design_fab_image_size:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Landroid/support/design/widget/FloatingActionButton;->mMaxImageSize:I

    .line 176
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    move-object v11, v0

    iget v11, v11, Landroid/support/design/widget/FloatingActionButton;->mBorderWidth:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/support/design/widget/FloatingActionButtonImpl;->setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    .line 178
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v7

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/design/widget/FloatingActionButtonImpl;->setElevation(F)V

    .line 179
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v7

    move v8, v6

    invoke-virtual {v7, v8}, Landroid/support/design/widget/FloatingActionButtonImpl;->setPressedTranslationZ(F)V

    .line 180
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V
    .locals 6

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/FloatingActionButton;->hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V
    .locals 6

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/FloatingActionButton;->show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/design/widget/FloatingActionButton;)Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/design/widget/FloatingActionButton;)I
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$500(Landroid/support/design/widget/FloatingActionButton;)I
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/FloatingActionButton;->mImagePadding:I

    move v0, v1

    return v0
.end method

.method static synthetic access$601(Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/design/widget/VisibilityAwareImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/FloatingActionButton;->mCompatPadding:Z

    move v0, v1

    return v0
.end method

.method private createImpl()Landroid/support/design/widget/FloatingActionButtonImpl;
    .locals 10

    .prologue
    .line 775
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    move v1, v2

    .line 776
    move v2, v1

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 777
    new-instance v2, Landroid/support/design/widget/FloatingActionButtonLollipop;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    new-instance v5, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;-><init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$1;)V

    sget-object v6, Landroid/support/design/widget/ViewUtils;->DEFAULT_ANIMATOR_CREATOR:Landroid/support/design/widget/ValueAnimatorCompat$Creator;

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/FloatingActionButtonLollipop;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;Landroid/support/design/widget/ValueAnimatorCompat$Creator;)V

    move-object v0, v2

    .line 783
    :goto_0
    return-object v0

    .line 779
    :cond_0
    move v2, v1

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 780
    new-instance v2, Landroid/support/design/widget/FloatingActionButtonIcs;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    new-instance v5, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;-><init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$1;)V

    sget-object v6, Landroid/support/design/widget/ViewUtils;->DEFAULT_ANIMATOR_CREATOR:Landroid/support/design/widget/ValueAnimatorCompat$Creator;

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/FloatingActionButtonIcs;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;Landroid/support/design/widget/ValueAnimatorCompat$Creator;)V

    move-object v0, v2

    goto :goto_0

    .line 783
    :cond_1
    new-instance v2, Landroid/support/design/widget/FloatingActionButtonGingerbread;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    new-instance v5, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;-><init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$1;)V

    sget-object v6, Landroid/support/design/widget/ViewUtils;->DEFAULT_ANIMATOR_CREATOR:Landroid/support/design/widget/ValueAnimatorCompat$Creator;

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/FloatingActionButtonGingerbread;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;Landroid/support/design/widget/ValueAnimatorCompat$Creator;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;
    .locals 3

    .prologue
    .line 768
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    if-nez v1, :cond_0

    .line 769
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/FloatingActionButton;->createImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v2

    iput-object v2, v1, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    .line 771
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    move-object v0, v1

    return-object v0
.end method

.method private getSizeDimension()I
    .locals 3

    .prologue
    .line 417
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/FloatingActionButton;->mSize:I

    invoke-direct {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension(I)I

    move-result v1

    move v0, v1

    return v0
.end method

.method private getSizeDimension(I)I
    .locals 7

    .prologue
    .line 421
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v2, v5

    .line 422
    move v5, v1

    packed-switch v5, :pswitch_data_0

    .line 434
    :pswitch_0
    move-object v5, v2

    sget v6, Landroid/support/design/R$dimen;->design_fab_size_normal:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move v0, v5

    :goto_0
    return v0

    .line 425
    :pswitch_1
    move-object v5, v2

    invoke-static {v5}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v5

    move v3, v5

    .line 426
    move-object v5, v2

    invoke-static {v5}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v5

    move v4, v5

    .line 427
    move v5, v3

    move v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v6, 0x1d6

    if-ge v5, v6, :cond_0

    move-object v5, v0

    const/4 v6, 0x1

    .line 428
    invoke-direct {v5, v6}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension(I)I

    move-result v5

    .line 429
    :goto_1
    move v0, v5

    goto :goto_0

    .line 428
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    .line 429
    invoke-direct {v5, v6}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension(I)I

    move-result v5

    goto :goto_1

    .line 431
    :pswitch_2
    move-object v5, v2

    sget v6, Landroid/support/design/R$dimen;->design_fab_size_mini:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V
    .locals 6
    .param p1    # Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 334
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/design/widget/FloatingActionButton;->wrapOnVisibilityChangedListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/FloatingActionButtonImpl;->hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V

    .line 335
    return-void
.end method

.method private static resolveAdjustedSize(II)I
    .locals 7

    .prologue
    .line 491
    move v0, p0

    move v1, p1

    move v5, v0

    move v2, v5

    .line 492
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    move v3, v5

    .line 493
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    move v4, v5

    .line 494
    move v5, v3

    sparse-switch v5, :sswitch_data_0

    .line 511
    :goto_0
    move v5, v2

    move v0, v5

    return v0

    .line 498
    :sswitch_0
    move v5, v0

    move v2, v5

    .line 499
    goto :goto_0

    .line 504
    :sswitch_1
    move v5, v0

    move v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v5

    .line 505
    goto :goto_0

    .line 508
    :sswitch_2
    move v5, v4

    move v2, v5

    goto :goto_0

    .line 494
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V
    .locals 6

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/design/widget/FloatingActionButton;->wrapOnVisibilityChangedListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/FloatingActionButtonImpl;->show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V

    .line 313
    return-void
.end method

.method private wrapOnVisibilityChangedListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    .locals 7
    .param p1    # Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 399
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 400
    const/4 v2, 0x0

    move-object v0, v2

    .line 403
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/support/design/widget/FloatingActionButton$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/FloatingActionButton$1;-><init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 452
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->drawableStateChanged()V

    .line 453
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButtonImpl;->onDrawableStateChanged([I)V

    .line 454
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    move-object v0, v1

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v1

    return-object v0
.end method

.method public getCompatElevation()F
    .locals 2

    .prologue
    .line 752
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->getElevation()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 487
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->getContentBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getContentRect(Landroid/graphics/Rect;)Z
    .locals 8
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 470
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 472
    move-object v2, v1

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 473
    move-object v2, v1

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 474
    move-object v2, v1

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 475
    move-object v2, v1

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 476
    const/4 v2, 0x1

    move v0, v2

    .line 478
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 393
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/FloatingActionButton;->mSize:I

    move v0, v1

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 2

    .prologue
    .line 364
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/FloatingActionButton;->mCompatPadding:Z

    move v0, v1

    return v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 320
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V

    .line 321
    return-void
.end method

.method public hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 5
    .param p1    # Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 330
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/FloatingActionButton;->hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    .line 331
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 459
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->jumpDrawablesToCurrentState()V

    .line 460
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->jumpDrawableToCurrentState()V

    .line 461
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 440
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->onAttachedToWindow()V

    .line 441
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->onAttachedToWindow()V

    .line 442
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 446
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->onDetachedFromWindow()V

    .line 447
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->onDetachedFromWindow()V

    .line 448
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .prologue
    .line 184
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v7, v0

    invoke-direct {v7}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v7

    move v3, v7

    .line 186
    move-object v7, v0

    move v8, v3

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/FloatingActionButton;->mMaxImageSize:I

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    iput v8, v7, Landroid/support/design/widget/FloatingActionButton;->mImagePadding:I

    .line 187
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/design/widget/FloatingActionButtonImpl;->updatePadding()V

    .line 189
    move v7, v3

    move v8, v1

    invoke-static {v7, v8}, Landroid/support/design/widget/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result v7

    move v4, v7

    .line 190
    move v7, v3

    move v8, v2

    invoke-static {v7, v8}, Landroid/support/design/widget/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result v7

    move v5, v7

    .line 194
    move v7, v4

    move v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v6, v7

    .line 197
    move-object v7, v0

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/support/design/widget/FloatingActionButton;->setMeasuredDimension(II)V

    .line 200
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 516
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButton;->mTouchArea:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButton;->mTouchArea:Landroid/graphics/Rect;

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 517
    const/4 v2, 0x0

    move v0, v2

    .line 520
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/design/widget/VisibilityAwareImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 4

    .prologue
    .line 284
    move-object v0, p0

    move v1, p1

    const-string v2, "FloatingActionButton"

    const-string v3, "Setting a custom background is not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 285
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 274
    move-object v0, p0

    move-object v1, p1

    const-string v2, "FloatingActionButton"

    const-string v3, "Setting a custom background is not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 275
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 4

    .prologue
    .line 279
    move-object v0, p0

    move v1, p1

    const-string v2, "FloatingActionButton"

    const-string v3, "Setting a custom background is not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 280
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 238
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    .line 239
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/FloatingActionButtonImpl;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 241
    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 266
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 267
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 268
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/FloatingActionButtonImpl;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 270
    :cond_0
    return-void
.end method

.method public setCompatElevation(F)V
    .locals 4

    .prologue
    .line 764
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/FloatingActionButtonImpl;->setElevation(F)V

    .line 765
    return-void
.end method

.method public setImageResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 290
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatImageHelper;->setImageResource(I)V

    .line 291
    return-void
.end method

.method public setRippleColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 212
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 213
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    .line 214
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/FloatingActionButtonImpl;->setRippleColor(I)V

    .line 216
    :cond_0
    return-void
.end method

.method public setSize(I)V
    .locals 4

    .prologue
    .line 379
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/FloatingActionButton;->mSize:I

    if-eq v2, v3, :cond_0

    .line 380
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/FloatingActionButton;->mSize:I

    .line 381
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->requestLayout()V

    .line 383
    :cond_0
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 4

    .prologue
    .line 348
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/FloatingActionButton;->mCompatPadding:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 349
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/FloatingActionButton;->mCompatPadding:Z

    .line 350
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButtonImpl;->onCompatShadowChanged()V

    .line 352
    :cond_0
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/design/widget/VisibilityAwareImageButton;->setVisibility(I)V

    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V

    .line 299
    return-void
.end method

.method public show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 5
    .param p1    # Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 308
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/FloatingActionButton;->show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    .line 309
    return-void
.end method
