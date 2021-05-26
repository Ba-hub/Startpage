.class abstract Landroid/support/design/widget/FloatingActionButtonImpl;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    }
.end annotation


# static fields
.field static final ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final ANIM_STATE_HIDING:I = 0x1

.field static final ANIM_STATE_NONE:I = 0x0

.field static final ANIM_STATE_SHOWING:I = 0x2

.field static final EMPTY_STATE_SET:[I

.field static final ENABLED_STATE_SET:[I

.field static final FOCUSED_ENABLED_STATE_SET:[I

.field static final PRESSED_ANIM_DELAY:J = 0x64L

.field static final PRESSED_ANIM_DURATION:J = 0x64L

.field static final PRESSED_ENABLED_STATE_SET:[I

.field static final SHOW_HIDE_ANIM_DURATION:I = 0xc8


# instance fields
.field mAnimState:I

.field final mAnimatorCreator:Landroid/support/design/widget/ValueAnimatorCompat$Creator;

.field mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

.field mContentBackground:Landroid/graphics/drawable/Drawable;

.field mElevation:F

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mPressedTranslationZ:F

.field mRippleDrawable:Landroid/graphics/drawable/Drawable;

.field final mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

.field mShapeDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTmpRect:Landroid/graphics/Rect;

.field final mView:Landroid/support/design/widget/VisibilityAwareImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 34
    sget-object v0, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x101009e

    aput v3, v1, v2

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->ENABLED_STATE_SET:[I

    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    return-void

    .line 59
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 61
    :array_1
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method constructor <init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;Landroid/support/design/widget/ValueAnimatorCompat$Creator;)V
    .locals 8

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    .line 70
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Landroid/support/design/widget/FloatingActionButtonImpl;->mTmpRect:Landroid/graphics/Rect;

    .line 75
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 76
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/design/widget/FloatingActionButtonImpl;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    .line 77
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimatorCreator:Landroid/support/design/widget/ValueAnimatorCompat$Creator;

    .line 78
    return-void
.end method

.method private ensurePreDrawListener()V
    .locals 6

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v1, :cond_0

    .line 172
    move-object v1, v0

    new-instance v2, Landroid/support/design/widget/FloatingActionButtonImpl$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/design/widget/FloatingActionButtonImpl$1;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    iput-object v2, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/CircularBorderDrawable;
    .locals 11

    .prologue
    .line 151
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v5}, Landroid/support/design/widget/VisibilityAwareImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v3, v5

    .line 152
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/FloatingActionButtonImpl;->newCircularDrawable()Landroid/support/design/widget/CircularBorderDrawable;

    move-result-object v5

    move-object v4, v5

    .line 153
    move-object v5, v4

    move-object v6, v3

    sget v7, Landroid/support/design/R$color;->design_fab_stroke_top_outer_color:I

    .line 154
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v7, v3

    sget v8, Landroid/support/design/R$color;->design_fab_stroke_top_inner_color:I

    .line 155
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    move-object v8, v3

    sget v9, Landroid/support/design/R$color;->design_fab_stroke_end_inner_color:I

    .line 156
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    move-object v9, v3

    sget v10, Landroid/support/design/R$color;->design_fab_stroke_end_outer_color:I

    .line 157
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 153
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/design/widget/CircularBorderDrawable;->setGradientColors(IIII)V

    .line 158
    move-object v5, v4

    move v6, v1

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CircularBorderDrawable;->setBorderWidth(F)V

    .line 159
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CircularBorderDrawable;->setBorderTint(Landroid/content/res/ColorStateList;)V

    .line 160
    move-object v5, v4

    move-object v0, v5

    return-object v0
.end method

.method createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 5

    .prologue
    .line 183
    move-object v0, p0

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v1, v2

    .line 184
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 185
    move-object v2, v1

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 186
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method final getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->mContentBackground:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method abstract getElevation()F
.end method

.method abstract getPadding(Landroid/graphics/Rect;)V
.end method

.method abstract hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .param p1    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method isOrWillBeHidden()Z
    .locals 3

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 202
    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .line 205
    :goto_1
    return v0

    .line 202
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 205
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method isOrWillBeShown()Z
    .locals 3

    .prologue
    .line 190
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .line 195
    :goto_1
    return v0

    .line 192
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 195
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method abstract jumpDrawableToCurrentState()V
.end method

.method newCircularDrawable()Landroid/support/design/widget/CircularBorderDrawable;
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    new-instance v1, Landroid/support/design/widget/CircularBorderDrawable;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/design/widget/CircularBorderDrawable;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method onAttachedToWindow()V
    .locals 3

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->requirePreDrawListener()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->ensurePreDrawListener()V

    .line 135
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 137
    :cond_0
    return-void
.end method

.method abstract onCompatShadowChanged()V
.end method

.method onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v1, :cond_0

    .line 141
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 142
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 144
    :cond_0
    return-void
.end method

.method abstract onDrawableStateChanged([I)V
.end method

.method abstract onElevationsChanged(FF)V
.end method

.method onPaddingUpdated(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method onPreDraw()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method requirePreDrawListener()Z
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method abstract setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
.end method

.method abstract setBackgroundTintList(Landroid/content/res/ColorStateList;)V
.end method

.method abstract setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
.end method

.method final setElevation(F)V
    .locals 5

    .prologue
    .line 90
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/FloatingActionButtonImpl;->mElevation:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 91
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/FloatingActionButtonImpl;->mElevation:F

    .line 92
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/FloatingActionButtonImpl;->mPressedTranslationZ:F

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/FloatingActionButtonImpl;->onElevationsChanged(FF)V

    .line 94
    :cond_0
    return-void
.end method

.method final setPressedTranslationZ(F)V
    .locals 5

    .prologue
    .line 99
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/FloatingActionButtonImpl;->mPressedTranslationZ:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 100
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/FloatingActionButtonImpl;->mPressedTranslationZ:F

    .line 101
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/FloatingActionButtonImpl;->mElevation:F

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/FloatingActionButtonImpl;->onElevationsChanged(FF)V

    .line 103
    :cond_0
    return-void
.end method

.method abstract setRippleColor(I)V
.end method

.method abstract show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .param p1    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method final updatePadding()V
    .locals 7

    .prologue
    .line 122
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonImpl;->mTmpRect:Landroid/graphics/Rect;

    move-object v1, v2

    .line 123
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/FloatingActionButtonImpl;->getPadding(Landroid/graphics/Rect;)V

    .line 124
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/FloatingActionButtonImpl;->onPaddingUpdated(Landroid/graphics/Rect;)V

    .line 125
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonImpl;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    move-object v3, v1

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/support/design/widget/ShadowViewDelegate;->setShadowPadding(IIII)V

    .line 126
    return-void
.end method
