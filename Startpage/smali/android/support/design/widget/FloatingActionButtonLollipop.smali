.class Landroid/support/design/widget/FloatingActionButtonLollipop;
.super Landroid/support/design/widget/FloatingActionButtonIcs;
.source "FloatingActionButtonLollipop.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private mInsetDrawable:Landroid/graphics/drawable/InsetDrawable;


# direct methods
.method constructor <init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;Landroid/support/design/widget/ValueAnimatorCompat$Creator;)V
    .locals 8

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/widget/FloatingActionButtonIcs;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;Landroid/support/design/widget/ValueAnimatorCompat$Creator;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getElevation()F
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->getElevation()F

    move-result v1

    move v0, v1

    return v0
.end method

.method getPadding(Landroid/graphics/Rect;)V
    .locals 11

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v6}, Landroid/support/design/widget/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 174
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v6}, Landroid/support/design/widget/ShadowViewDelegate;->getRadius()F

    move-result v6

    move v2, v6

    .line 175
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/FloatingActionButtonLollipop;->getElevation()F

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->mPressedTranslationZ:F

    add-float/2addr v6, v7

    move v3, v6

    .line 176
    move v6, v3

    move v7, v2

    const/4 v8, 0x0

    .line 177
    invoke-static {v6, v7, v8}, Landroid/support/design/widget/ShadowDrawableWrapper;->calculateHorizontalPadding(FFZ)F

    move-result v6

    float-to-double v6, v6

    .line 176
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v4, v6

    .line 178
    move v6, v3

    move v7, v2

    const/4 v8, 0x0

    .line 179
    invoke-static {v6, v7, v8}, Landroid/support/design/widget/ShadowDrawableWrapper;->calculateVerticalPadding(FFZ)F

    move-result v6

    float-to-double v6, v6

    .line 178
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v5, v6

    .line 180
    move-object v6, v1

    move v7, v4

    move v8, v5

    move v9, v4

    move v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    move-object v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method jumpDrawableToCurrentState()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method newCircularDrawable()Landroid/support/design/widget/CircularBorderDrawable;
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    new-instance v1, Landroid/support/design/widget/CircularBorderDrawableLollipop;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/design/widget/CircularBorderDrawableLollipop;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method onCompatShadowChanged()V
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButtonLollipop;->updatePadding()V

    .line 138
    return-void
.end method

.method onDrawableStateChanged([I)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method onElevationsChanged(FF)V
    .locals 14

    .prologue
    .line 85
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    new-instance v6, Landroid/animation/StateListAnimator;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Landroid/animation/StateListAnimator;-><init>()V

    move-object v3, v6

    .line 88
    new-instance v6, Landroid/animation/AnimatorSet;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v4, v6

    .line 89
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const-string v8, "elevation"

    const/4 v9, 0x1

    new-array v9, v9, [F

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move v12, v1

    aput v12, v10, v11

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v8, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move v12, v2

    aput v12, v10, v11

    .line 90
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x64

    .line 91
    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 90
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    .line 92
    move-object v6, v4

    sget-object v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    move-object v6, v3

    sget-object v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->PRESSED_ENABLED_STATE_SET:[I

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 96
    new-instance v6, Landroid/animation/AnimatorSet;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v4, v6

    .line 97
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const-string v8, "elevation"

    const/4 v9, 0x1

    new-array v9, v9, [F

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move v12, v1

    aput v12, v10, v11

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v8, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move v12, v2

    aput v12, v10, v11

    .line 98
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x64

    .line 99
    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 98
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    .line 100
    move-object v6, v4

    sget-object v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    move-object v6, v3

    sget-object v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->FOCUSED_ENABLED_STATE_SET:[I

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 104
    new-instance v6, Landroid/animation/AnimatorSet;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v4, v6

    .line 107
    new-instance v6, Landroid/animation/AnimatorSet;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v5, v6

    .line 108
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v8, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x64

    .line 109
    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 108
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    const-wide/16 v7, 0x64

    .line 110
    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    .line 111
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const-string v8, "elevation"

    const/4 v9, 0x1

    new-array v9, v9, [F

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move v12, v1

    aput v12, v10, v11

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    move-object v7, v5

    .line 112
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    .line 113
    move-object v6, v4

    sget-object v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    move-object v6, v3

    sget-object v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->ENABLED_STATE_SET:[I

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 117
    new-instance v6, Landroid/animation/AnimatorSet;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v4, v6

    .line 118
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const-string v8, "elevation"

    const/4 v9, 0x1

    new-array v9, v9, [F

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v8, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 119
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    .line 120
    move-object v6, v4

    sget-object v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 121
    move-object v6, v3

    sget-object v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->EMPTY_STATE_SET:[I

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 123
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/support/design/widget/VisibilityAwareImageButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 125
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v6}, Landroid/support/design/widget/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/FloatingActionButtonLollipop;->updatePadding()V

    .line 128
    :cond_0
    return-void
.end method

.method onPaddingUpdated(Landroid/graphics/Rect;)V
    .locals 11

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v2}, Landroid/support/design/widget/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    move-object v2, v0

    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object v7, v1

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object v8, v1

    iget v8, v8, Landroid/graphics/Rect;->right:I

    move-object v9, v1

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v3, v2, Landroid/support/design/widget/FloatingActionButtonLollipop;->mInsetDrawable:Landroid/graphics/drawable/InsetDrawable;

    .line 145
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonLollipop;->mInsetDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-interface {v2, v3}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2, v3}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method requirePreDrawListener()Z
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 13

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/FloatingActionButtonLollipop;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 52
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v7, v1

    invoke-static {v6, v7}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 53
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 54
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v7, v2

    invoke-static {v6, v7}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 58
    :cond_0
    move v6, v4

    if-lez v6, :cond_1

    .line 59
    move-object v6, v0

    move-object v7, v0

    move v8, v4

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/support/design/widget/FloatingActionButtonLollipop;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/CircularBorderDrawable;

    move-result-object v7

    iput-object v7, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 60
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/FloatingActionButtonLollipop;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v11, v9, v10

    invoke-direct {v7, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v5, v6

    .line 66
    :goto_0
    move-object v6, v0

    new-instance v7, Landroid/graphics/drawable/RippleDrawable;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move v9, v3

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    move-object v10, v5

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v7, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v7, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mContentBackground:Landroid/graphics/drawable/Drawable;

    .line 71
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v6, v7}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    return-void

    .line 62
    :cond_1
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 63
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v6

    goto :goto_0
.end method

.method setRippleColor(I)V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_0

    .line 77
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    move v3, v1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/design/widget/FloatingActionButtonIcs;->setRippleColor(I)V

    goto :goto_0
.end method
