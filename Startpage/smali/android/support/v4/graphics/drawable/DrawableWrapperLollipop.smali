.class Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;
.super Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;
.source "DrawableWrapperLollipop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop$DrawableWrapperStateLollipop;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 36
    return-void
.end method

.method constructor <init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 6

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 55
    return-void
.end method

.method protected isCompatTintEnabled()Z
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_2

    .line 103
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v1, v2

    .line 104
    move-object v2, v1

    instance-of v2, v2, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroid/graphics/drawable/DrawableContainer;

    if-nez v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 107
    :goto_1
    return v0

    .line 104
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 107
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method mutateConstantState()Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    new-instance v1, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop$DrawableWrapperStateLollipop;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop$DrawableWrapperStateLollipop;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    move-object v0, v1

    return-object v0
.end method

.method public setHotspot(FF)V
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 45
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 10

    .prologue
    .line 49
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 50
    return-void
.end method

.method public setState([I)Z
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->invalidateSelf()V

    .line 95
    const/4 v2, 0x1

    move v0, v2

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public setTint(I)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->isCompatTintEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;->setTint(I)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->isCompatTintEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->isCompatTintEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
