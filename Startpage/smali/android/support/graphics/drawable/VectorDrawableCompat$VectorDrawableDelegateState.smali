.class Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VectorDrawableDelegateState"
.end annotation


# instance fields
.field private final mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 4

    .prologue
    .line 730
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 731
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 732
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 2

    .prologue
    .line 758
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 763
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 736
    move-object v0, p0

    new-instance v2, Landroid/support/graphics/drawable/VectorDrawableCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$1;)V

    move-object v1, v2

    .line 737
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/VectorDrawable;

    iput-object v3, v2, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 738
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 743
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/support/graphics/drawable/VectorDrawableCompat;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$1;)V

    move-object v2, v3

    .line 744
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/VectorDrawable;

    iput-object v4, v3, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 745
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    .line 750
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Landroid/support/graphics/drawable/VectorDrawableCompat;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$1;)V

    move-object v3, v4

    .line 751
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v6, v1

    move-object v7, v2

    .line 752
    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/VectorDrawable;

    iput-object v5, v4, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 753
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method
