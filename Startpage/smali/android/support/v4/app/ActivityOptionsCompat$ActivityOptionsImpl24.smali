.class Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;
.super Landroid/support/v4/app/ActivityOptionsCompat;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsImpl24"
.end annotation


# instance fields
.field private final mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V
    .locals 4

    .prologue
    .line 382
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    .line 383
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    .line 384
    return-void
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 407
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v1}, Landroid/support/v4/app/ActivityOptionsCompat24;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 412
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/ActivityOptionsCompat24;->requestUsageTimeReport(Landroid/app/PendingIntent;)V

    .line 413
    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 7
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 402
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/ActivityOptionsCompat24;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    move-object v0, v2

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 388
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v1}, Landroid/support/v4/app/ActivityOptionsCompat24;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
    .locals 5

    .prologue
    .line 393
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    if-eqz v3, :cond_0

    .line 395
    move-object v3, v1

    check-cast v3, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    move-object v2, v3

    .line 396
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/ActivityOptionsCompat24;->update(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    .line 398
    :cond_0
    return-void
.end method
