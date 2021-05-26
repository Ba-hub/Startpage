.class Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableWrapperGingerbread.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/support/v4/graphics/drawable/DrawableWrapper;
.implements Landroid/support/v4/graphics/drawable/TintAwareDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperStateBase;,
        Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
    }
.end annotation


# static fields
.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private mColorFilterSet:Z

.field private mCurrentColor:I

.field private mCurrentMode:Landroid/graphics/PorterDuff$Mode;

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z

.field mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 61
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mutateConstantState()Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    .line 63
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    return-void
.end method

.method constructor <init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 5
    .param p1    # Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 51
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    .line 52
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->updateLocalState(Landroid/content/res/Resources;)V

    .line 53
    return-void
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 6
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    iget-object v3, v3, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v3, :cond_0

    .line 73
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    iget-object v4, v4, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->newDrawableFromState(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 74
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :cond_0
    return-void
.end method

.method private updateTint([I)Z
    .locals 8

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->isCompatTintEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 279
    const/4 v5, 0x0

    move v0, v5

    .line 298
    :goto_0
    return v0

    .line 282
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    iget-object v5, v5, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    move-object v2, v5

    .line 283
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    iget-object v5, v5, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v3, v5

    .line 285
    move-object v5, v2

    if-eqz v5, :cond_3

    move-object v5, v3

    if-eqz v5, :cond_3

    .line 286
    move-object v5, v2

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    move v4, v5

    .line 287
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mColorFilterSet:Z

    if-eqz v5, :cond_1

    move v5, v4

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mCurrentColor:I

    if-ne v5, v6, :cond_1

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mCurrentMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v5, v6, :cond_2

    .line 288
    :cond_1
    move-object v5, v0

    move v6, v4

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 289
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mCurrentColor:I

    .line 290
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mCurrentMode:Landroid/graphics/PorterDuff$Mode;

    .line 291
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mColorFilterSet:Z

    .line 292
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 298
    :cond_2
    :goto_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 295
    :cond_3
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mColorFilterSet:Z

    .line 296
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->clearColorFilter()V

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    .line 106
    invoke-virtual {v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->getChangingConfigurations()I

    move-result v2

    :goto_0
    or-int/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    move v0, v1

    return v0

    .line 106
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    invoke-virtual {v1}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->canConstantState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->getChangingConfigurations()I

    move-result v2

    iput v2, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mChangingConfigurations:I

    .line 200
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    move-object v0, v1

    .line 202
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMinimumHeight()I
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMinimumWidth()I
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public getState()[I
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final getWrappedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 305
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->invalidateSelf()V

    .line 238
    return-void
.end method

.method protected isCompatTintEnabled()Z
    .locals 2

    .prologue
    .line 335
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public isStateful()Z
    .locals 3

    .prologue
    .line 132
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->isCompatTintEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    :goto_0
    move-object v1, v2

    .line 135
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    return v0

    .line 132
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 135
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mMutated:Z

    if-nez v1, :cond_2

    move-object v1, v0

    invoke-super {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v0

    if-ne v1, v2, :cond_2

    .line 208
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mutateConstantState()Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    .line 209
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 210
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 212
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    if-eqz v1, :cond_1

    .line 213
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 215
    :cond_1
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mMutated:Z

    .line 217
    :cond_2
    move-object v1, v0

    move-object v0, v1

    return-object v0

    .line 213
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method mutateConstantState()Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    new-instance v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperStateBase;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperStateBase;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    move-object v0, v1

    return-object v0
.end method

.method protected newDrawableFromState(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable$ConstantState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 94
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 96
    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 4

    .prologue
    .line 256
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 9

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, v0

    move-object v6, v2

    move-wide v7, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 245
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 123
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 101
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 128
    return-void
.end method

.method public setDither(Z)V
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 113
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 118
    return-void
.end method

.method public setState([I)Z
    .locals 5

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    move v2, v3

    .line 141
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->updateTint([I)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v2

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 142
    move v3, v2

    move v0, v3

    return v0

    .line 141
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setTint(I)V
    .locals 4

    .prologue
    .line 261
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 262
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 266
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    .line 267
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->getState()[I

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->updateTint([I)Z

    move-result v2

    .line 268
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4

    .prologue
    .line 272
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 273
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->getState()[I

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->updateTint([I)Z

    move-result v2

    .line 274
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 6

    .prologue
    .line 157
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 313
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 316
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 318
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 319
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 321
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->setVisible(ZZ)Z

    move-result v2

    .line 322
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->setState([I)Z

    move-result v2

    .line 323
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->setLevel(I)Z

    move-result v2

    .line 324
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->setBounds(Landroid/graphics/Rect;)V

    .line 325
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    if-eqz v2, :cond_1

    .line 326
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 330
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->invalidateSelf()V

    .line 331
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method
