.class Landroid/support/design/widget/FloatingActionButtonIcs;
.super Landroid/support/design/widget/FloatingActionButtonGingerbread;
.source "FloatingActionButtonIcs.java"


# instance fields
.field private mRotation:F


# direct methods
.method constructor <init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;Landroid/support/design/widget/ValueAnimatorCompat$Creator;)V
    .locals 8

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/widget/FloatingActionButtonGingerbread;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;Landroid/support/design/widget/ValueAnimatorCompat$Creator;)V

    .line 33
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v5}, Landroid/support/design/widget/VisibilityAwareImageButton;->getRotation()F

    move-result v5

    iput v5, v4, Landroid/support/design/widget/FloatingActionButtonIcs;->mRotation:F

    .line 34
    return-void
.end method

.method private shouldAnimateVisibilityChange()Z
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateFromViewRotation()V
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    .line 161
    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/FloatingActionButtonIcs;->mRotation:F

    const/high16 v2, 0x42b40000    # 90.0f

    rem-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 162
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->getLayerType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 163
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/design/widget/VisibilityAwareImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 173
    :cond_0
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonIcs;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    if-eqz v1, :cond_1

    .line 174
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonIcs;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/FloatingActionButtonIcs;->mRotation:F

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/ShadowDrawableWrapper;->setRotation(F)V

    .line 176
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonIcs;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    if-eqz v1, :cond_2

    .line 177
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonIcs;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/FloatingActionButtonIcs;->mRotation:F

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CircularBorderDrawable;->setRotation(F)V

    .line 179
    :cond_2
    return-void

    .line 166
    :cond_3
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->getLayerType()I

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/design/widget/VisibilityAwareImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 10
    .param p1    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButtonIcs;->isOrWillBeHidden()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    :goto_0
    return-void

    .line 57
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v3}, Landroid/support/design/widget/VisibilityAwareImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 59
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/FloatingActionButtonIcs;->shouldAnimateVisibilityChange()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroid/support/design/widget/FloatingActionButtonIcs;->mAnimState:I

    .line 62
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v3}, Landroid/support/design/widget/VisibilityAwareImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    .line 63
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    .line 64
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    .line 65
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    .line 66
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 67
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/support/design/widget/FloatingActionButtonIcs$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v2

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Landroid/support/design/widget/FloatingActionButtonIcs$1;-><init>(Landroid/support/design/widget/FloatingActionButtonIcs;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    .line 68
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 101
    :cond_1
    :goto_1
    goto :goto_0

    .line 96
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/16 v4, 0x8

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 97
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 98
    move-object v3, v1

    invoke-interface {v3}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    goto :goto_1
.end method

.method onPreDraw()V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->getRotation()F

    move-result v2

    move v1, v2

    .line 44
    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/FloatingActionButtonIcs;->mRotation:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 45
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/FloatingActionButtonIcs;->mRotation:F

    .line 46
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/FloatingActionButtonIcs;->updateFromViewRotation()V

    .line 48
    :cond_0
    return-void
.end method

.method requirePreDrawListener()Z
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 10
    .param p1    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButtonIcs;->isOrWillBeShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    :goto_0
    return-void

    .line 110
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v3}, Landroid/support/design/widget/VisibilityAwareImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 112
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/FloatingActionButtonIcs;->shouldAnimateVisibilityChange()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Landroid/support/design/widget/FloatingActionButtonIcs;->mAnimState:I

    .line 115
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v3}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/design/widget/VisibilityAwareImageButton;->setAlpha(F)V

    .line 118
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleY(F)V

    .line 119
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleX(F)V

    .line 122
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v3}, Landroid/support/design/widget/VisibilityAwareImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 123
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 124
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 125
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    .line 126
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Landroid/support/design/widget/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 127
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/support/design/widget/FloatingActionButtonIcs$2;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v2

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Landroid/support/design/widget/FloatingActionButtonIcs$2;-><init>(Landroid/support/design/widget/FloatingActionButtonIcs;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    .line 128
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 151
    :cond_2
    :goto_1
    goto :goto_0

    .line 143
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v4, 0x0

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 144
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/support/design/widget/VisibilityAwareImageButton;->setAlpha(F)V

    .line 145
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleY(F)V

    .line 146
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleX(F)V

    .line 147
    move-object v3, v1

    if-eqz v3, :cond_2

    .line 148
    move-object v3, v1

    invoke-interface {v3}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onShown()V

    goto :goto_1
.end method
