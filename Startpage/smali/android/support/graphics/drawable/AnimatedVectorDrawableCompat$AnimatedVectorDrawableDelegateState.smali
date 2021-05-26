.class Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AnimatedVectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatedVectorDrawableDelegateState"
.end annotation


# instance fields
.field private final mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 4

    .prologue
    .line 430
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 431
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 432
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 2

    .prologue
    .line 463
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 468
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 436
    move-object v0, p0

    new-instance v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;)V

    move-object v1, v2

    .line 438
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 439
    move-object v2, v1

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v3}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->access$100(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;)Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 440
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 445
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;)V

    move-object v2, v3

    .line 447
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 448
    move-object v3, v2

    iget-object v3, v3, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v4, v2

    invoke-static {v4}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->access$100(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;)Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 449
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    .line 454
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;)V

    move-object v3, v4

    .line 456
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 457
    move-object v4, v3

    iget-object v4, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v3

    invoke-static {v5}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->access$100(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;)Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 458
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method
