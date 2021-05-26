.class abstract Landroid/support/graphics/drawable/VectorDrawableCommon;
.super Landroid/graphics/drawable/Drawable;
.source "VectorDrawableCommon.java"

# interfaces
.implements Landroid/support/v4/graphics/drawable/TintAwareDrawable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field mDelegateDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 9

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    if-nez v4, :cond_0

    .line 44
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v0, v4

    .line 46
    :goto_0
    return-object v0

    :cond_0
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 142
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 145
    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public clearColorFilter()V
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 158
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 162
    goto :goto_0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 64
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object v1

    move-object v0, v1

    .line 66
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
    .line 166
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 167
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 169
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getLayoutDirection()I
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 150
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 152
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getMinimumHeight()I
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 183
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    move v0, v1

    .line 185
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 175
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    move v0, v1

    .line 177
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .prologue
    .line 190
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 191
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    move v0, v2

    .line 193
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public getState()[I
    .locals 2

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 199
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    move-object v0, v1

    .line 201
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 208
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    move-object v0, v1

    .line 210
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public isAutoMirrored()Z
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 133
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    .line 135
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 114
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 80
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 84
    goto :goto_0
.end method

.method protected onLevelChange(I)Z
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 72
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v2

    move v0, v2

    .line 74
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public setAutoMirrored(Z)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 123
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 127
    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public setChangingConfigurations(I)V
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 216
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 220
    goto :goto_0
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 55
    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 59
    goto :goto_0
.end method

.method public setFilterBitmap(Z)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 106
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 109
    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public setHotspot(FF)V
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 90
    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 92
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 10

    .prologue
    .line 97
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 98
    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 101
    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public setState([I)Z
    .locals 4

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 225
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    move v0, v2

    .line 227
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method
