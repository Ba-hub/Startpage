.class Landroid/support/design/widget/ValueAnimatorCompat;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/ValueAnimatorCompat$Impl;,
        Landroid/support/design/widget/ValueAnimatorCompat$Creator;,
        Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListenerAdapter;,
        Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;,
        Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;
    }
.end annotation


# instance fields
.field private final mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ValueAnimatorCompat$Impl;)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 115
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    .line 116
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V
    .locals 8

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 145
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    new-instance v3, Landroid/support/design/widget/ValueAnimatorCompat$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/ValueAnimatorCompat$2;-><init>(Landroid/support/design/widget/ValueAnimatorCompat;Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->addListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->addListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;)V

    goto :goto_0
.end method

.method public addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V
    .locals 8

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 132
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    new-instance v3, Landroid/support/design/widget/ValueAnimatorCompat$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/ValueAnimatorCompat$1;-><init>(Landroid/support/design/widget/ValueAnimatorCompat;Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->cancel()V

    .line 188
    return-void
.end method

.method public end()V
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->end()V

    .line 196
    return-void
.end method

.method public getAnimatedFloatValue()F
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->getAnimatedFloatValue()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getAnimatedFraction()F
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->getAnimatedFraction()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getAnimatedIntValue()I
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->getAnimatedIntValue()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getDuration()J
    .locals 3

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->getDuration()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->isRunning()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public setDuration(J)V
    .locals 6

    .prologue
    .line 183
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->setDuration(J)V

    .line 184
    return-void
.end method

.method public setFloatValues(FF)V
    .locals 6

    .prologue
    .line 175
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->setFloatValues(FF)V

    .line 176
    return-void
.end method

.method public setIntValues(II)V
    .locals 6

    .prologue
    .line 167
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->setIntValues(II)V

    .line 168
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 128
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->start()V

    .line 120
    return-void
.end method
