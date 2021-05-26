.class Landroid/support/design/widget/FloatingActionButtonGingerbread;
.super Landroid/support/design/widget/FloatingActionButtonImpl;
.source "FloatingActionButtonGingerbread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButtonGingerbread$DisabledElevationAnimation;,
        Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;,
        Landroid/support/design/widget/FloatingActionButtonGingerbread$ResetElevationAnimation;,
        Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;
    }
.end annotation


# instance fields
.field mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

.field private final mStateListAnimator:Landroid/support/design/widget/StateListAnimator;


# direct methods
.method constructor <init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;Landroid/support/design/widget/ValueAnimatorCompat$Creator;)V
    .locals 12

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/widget/FloatingActionButtonImpl;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;Landroid/support/design/widget/ValueAnimatorCompat$Creator;)V

    .line 44
    move-object v4, v0

    new-instance v5, Landroid/support/design/widget/StateListAnimator;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Landroid/support/design/widget/StateListAnimator;-><init>()V

    iput-object v5, v4, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    .line 47
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v5, Landroid/support/design/widget/FloatingActionButtonGingerbread;->PRESSED_ENABLED_STATE_SET:[I

    move-object v6, v0

    new-instance v7, Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;Landroid/support/design/widget/FloatingActionButtonGingerbread$1;)V

    .line 48
    invoke-direct {v6, v7}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createAnimator(Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;)Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v6

    .line 47
    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/support/design/widget/ValueAnimatorCompat;)V

    .line 49
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v5, Landroid/support/design/widget/FloatingActionButtonGingerbread;->FOCUSED_ENABLED_STATE_SET:[I

    move-object v6, v0

    new-instance v7, Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;Landroid/support/design/widget/FloatingActionButtonGingerbread$1;)V

    .line 50
    invoke-direct {v6, v7}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createAnimator(Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;)Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v6

    .line 49
    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/support/design/widget/ValueAnimatorCompat;)V

    .line 52
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v5, Landroid/support/design/widget/FloatingActionButtonGingerbread;->ENABLED_STATE_SET:[I

    move-object v6, v0

    new-instance v7, Landroid/support/design/widget/FloatingActionButtonGingerbread$ResetElevationAnimation;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/support/design/widget/FloatingActionButtonGingerbread$ResetElevationAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;Landroid/support/design/widget/FloatingActionButtonGingerbread$1;)V

    .line 53
    invoke-direct {v6, v7}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createAnimator(Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;)Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v6

    .line 52
    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/support/design/widget/ValueAnimatorCompat;)V

    .line 55
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v5, Landroid/support/design/widget/FloatingActionButtonGingerbread;->EMPTY_STATE_SET:[I

    move-object v6, v0

    new-instance v7, Landroid/support/design/widget/FloatingActionButtonGingerbread$DisabledElevationAnimation;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/support/design/widget/FloatingActionButtonGingerbread$DisabledElevationAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;Landroid/support/design/widget/FloatingActionButtonGingerbread$1;)V

    .line 56
    invoke-direct {v6, v7}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createAnimator(Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;)Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v6

    .line 55
    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/support/design/widget/ValueAnimatorCompat;)V

    .line 57
    return-void
.end method

.method private createAnimator(Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;)Landroid/support/design/widget/ValueAnimatorCompat;
    .locals 6
    .param p1    # Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mAnimatorCreator:Landroid/support/design/widget/ValueAnimatorCompat$Creator;

    invoke-interface {v3}, Landroid/support/design/widget/ValueAnimatorCompat$Creator;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v3

    move-object v2, v3

    .line 210
    move-object v3, v2

    sget-object v4, Landroid/support/design/widget/FloatingActionButtonGingerbread;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 211
    move-object v3, v2

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(J)V

    .line 212
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/ValueAnimatorCompat;->addListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V

    .line 213
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/ValueAnimatorCompat;->addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 214
    move-object v3, v2

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/ValueAnimatorCompat;->setFloatValues(FF)V

    .line 215
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method private static createColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 9

    .prologue
    .line 270
    move v0, p0

    const/4 v4, 0x3

    new-array v4, v4, [[I

    move-object v1, v4

    .line 271
    const/4 v4, 0x3

    new-array v4, v4, [I

    move-object v2, v4

    .line 272
    const/4 v4, 0x0

    move v3, v4

    .line 274
    move-object v4, v1

    move v5, v3

    sget-object v6, Landroid/support/design/widget/FloatingActionButtonGingerbread;->FOCUSED_ENABLED_STATE_SET:[I

    aput-object v6, v4, v5

    .line 275
    move-object v4, v2

    move v5, v3

    move v6, v0

    aput v6, v4, v5

    .line 276
    add-int/lit8 v3, v3, 0x1

    .line 278
    move-object v4, v1

    move v5, v3

    sget-object v6, Landroid/support/design/widget/FloatingActionButtonGingerbread;->PRESSED_ENABLED_STATE_SET:[I

    aput-object v6, v4, v5

    .line 279
    move-object v4, v2

    move v5, v3

    move v6, v0

    aput v6, v4, v5

    .line 280
    add-int/lit8 v3, v3, 0x1

    .line 283
    move-object v4, v1

    move v5, v3

    const/4 v6, 0x0

    new-array v6, v6, [I

    aput-object v6, v4, v5

    .line 284
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 285
    add-int/lit8 v3, v3, 0x1

    .line 287
    new-instance v4, Landroid/content/res/ColorStateList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method getElevation()F
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mElevation:F

    move v0, v1

    return v0
.end method

.method getPadding(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 205
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ShadowDrawableWrapper;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    .line 206
    return-void
.end method

.method hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 11
    .param p1    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->isOrWillBeHidden()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    :goto_0
    return-void

    .line 153
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mAnimState:I

    .line 155
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 156
    invoke-virtual {v4}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/R$anim;->design_fab_out:I

    .line 155
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    move-object v3, v4

    .line 157
    move-object v4, v3

    sget-object v5, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 158
    move-object v4, v3

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 159
    move-object v4, v3

    new-instance v5, Landroid/support/design/widget/FloatingActionButtonGingerbread$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move v8, v2

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Landroid/support/design/widget/FloatingActionButtonGingerbread$1;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 169
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/design/widget/VisibilityAwareImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 170
    goto :goto_0
.end method

.method jumpDrawableToCurrentState()V
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    invoke-virtual {v1}, Landroid/support/design/widget/StateListAnimator;->jumpToCurrentState()V

    .line 144
    return-void
.end method

.method onCompatShadowChanged()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method onDrawableStateChanged([I)V
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/StateListAnimator;->setState([I)V

    .line 139
    return-void
.end method

.method onElevationsChanged(FF)V
    .locals 7

    .prologue
    .line 130
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    if-eqz v3, :cond_0

    .line 131
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    move v4, v1

    move v5, v1

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mPressedTranslationZ:F

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 132
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->updatePadding()V

    .line 134
    :cond_0
    return-void
.end method

.method setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 17

    .prologue
    .line 64
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v8, v1

    invoke-static {v7, v8}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 66
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 67
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v8, v2

    invoke-static {v7, v8}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 71
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    move-object v5, v7

    .line 75
    move-object v7, v0

    move-object v8, v5

    invoke-static {v8}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    move v8, v3

    invoke-static {v8}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 79
    move v7, v4

    if-lez v7, :cond_1

    .line 80
    move-object v7, v0

    move-object v8, v0

    move v9, v4

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/CircularBorderDrawable;

    move-result-object v8

    iput-object v8, v7, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 81
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    aput-object v10, v8, v9

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v10, v8, v9

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v10, v8, v9

    move-object v6, v7

    .line 87
    :goto_0
    move-object v7, v0

    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v6

    invoke-direct {v9, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v8, v7, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mContentBackground:Landroid/graphics/drawable/Drawable;

    .line 89
    move-object v7, v0

    new-instance v8, Landroid/support/design/widget/ShadowDrawableWrapper;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 90
    invoke-virtual {v10}, Landroid/support/design/widget/VisibilityAwareImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mContentBackground:Landroid/graphics/drawable/Drawable;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    .line 92
    invoke-interface {v12}, Landroid/support/design/widget/ShadowViewDelegate;->getRadius()F

    move-result v12

    move-object v13, v0

    iget v13, v13, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mElevation:F

    move-object v14, v0

    iget v14, v14, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mElevation:F

    move-object v15, v0

    iget v15, v15, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mPressedTranslationZ:F

    add-float/2addr v14, v15

    invoke-direct/range {v9 .. v14}, Landroid/support/design/widget/ShadowDrawableWrapper;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;FFF)V

    iput-object v8, v7, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    .line 95
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/design/widget/ShadowDrawableWrapper;->setAddPaddingForCorners(Z)V

    .line 96
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-interface {v7, v8}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    return-void

    .line 83
    :cond_1
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 84
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v10, v8, v9

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v10, v8, v9

    move-object v6, v7

    goto :goto_0
.end method

.method setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 102
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 104
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    if-eqz v2, :cond_1

    .line 105
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CircularBorderDrawable;->setBorderTint(Landroid/content/res/ColorStateList;)V

    .line 107
    :cond_1
    return-void
.end method

.method setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 112
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 114
    :cond_0
    return-void
.end method

.method setRippleColor(I)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 119
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-static {v3}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 121
    :cond_0
    return-void
.end method

.method show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 10
    .param p1    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->isOrWillBeShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    :goto_0
    return-void

    .line 179
    :cond_0
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mAnimState:I

    .line 181
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v5, 0x0

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 182
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 183
    invoke-virtual {v4}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/R$anim;->design_fab_in:I

    .line 182
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    move-object v3, v4

    .line 184
    move-object v4, v3

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 185
    move-object v4, v3

    sget-object v5, Landroid/support/design/widget/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 186
    move-object v4, v3

    new-instance v5, Landroid/support/design/widget/FloatingActionButtonGingerbread$2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Landroid/support/design/widget/FloatingActionButtonGingerbread$2;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 195
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/design/widget/VisibilityAwareImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    goto :goto_0
.end method
