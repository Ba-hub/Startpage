.class public Landroid/support/v4/view/WindowInsetsCompat;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi21Impl;,
        Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;,
        Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;,
        Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;


# instance fields
.field private final mInsets:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 245
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v1

    .line 246
    move v1, v0

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 247
    new-instance v1, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi21Impl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi21Impl;-><init>(Landroid/support/v4/view/WindowInsetsCompat$1;)V

    sput-object v1, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    .line 253
    :goto_0
    return-void

    .line 248
    :cond_0
    move v1, v0

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    .line 249
    new-instance v1, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;-><init>(Landroid/support/v4/view/WindowInsetsCompat$1;)V

    sput-object v1, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    goto :goto_0

    .line 251
    :cond_1
    new-instance v1, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;-><init>(Landroid/support/v4/view/WindowInsetsCompat$1;)V

    sput-object v1, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/view/WindowInsetsCompat;)V
    .locals 5

    .prologue
    .line 266
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 267
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    iput-object v3, v2, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    .line 268
    return-void

    .line 267
    :cond_0
    sget-object v3, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v3, v4}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getSourceWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 257
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 258
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    .line 259
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Landroid/support/v4/view/WindowInsetsCompat$1;)V
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static unwrap(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 518
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    goto :goto_0
.end method

.method static wrap(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 5

    .prologue
    .line 514
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    new-instance v1, Landroid/support/v4/view/WindowInsetsCompat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public consumeStableInsets()Landroid/support/v4/view/WindowInsetsCompat;
    .locals 3

    .prologue
    .line 493
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->consumeStableInsets(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;
    .locals 3

    .prologue
    .line 381
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->consumeSystemWindowInsets(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 498
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 499
    const/4 v3, 0x1

    move v0, v3

    .line 505
    :goto_0
    return v0

    .line 501
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 502
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 504
    :cond_2
    move-object v3, v1

    check-cast v3, Landroid/support/v4/view/WindowInsetsCompat;

    move-object v2, v3

    .line 505
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    if-nez v3, :cond_4

    move-object v3, v2

    iget-object v3, v3, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1
.end method

.method public getStableInsetBottom()I
    .locals 3

    .prologue
    .line 469
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getStableInsetBottom(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getStableInsetLeft()I
    .locals 3

    .prologue
    .line 438
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getStableInsetLeft(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getStableInsetRight()I
    .locals 3

    .prologue
    .line 453
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getStableInsetRight(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getStableInsetTop()I
    .locals 3

    .prologue
    .line 422
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getStableInsetTop(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getSystemWindowInsetBottom()I
    .locals 3

    .prologue
    .line 319
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getSystemWindowInsetBottom(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getSystemWindowInsetLeft()I
    .locals 3

    .prologue
    .line 280
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getSystemWindowInsetLeft(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getSystemWindowInsetRight()I
    .locals 3

    .prologue
    .line 306
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getSystemWindowInsetRight(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getSystemWindowInsetTop()I
    .locals 3

    .prologue
    .line 293
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getSystemWindowInsetTop(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public hasInsets()Z
    .locals 3

    .prologue
    .line 341
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->hasInsets(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public hasStableInsets()Z
    .locals 3

    .prologue
    .line 484
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->hasStableInsets(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public hasSystemWindowInsets()Z
    .locals 3

    .prologue
    .line 332
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->hasSystemWindowInsets(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 510
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public isConsumed()Z
    .locals 3

    .prologue
    .line 358
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->isConsumed(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isRound()Z
    .locals 3

    .prologue
    .line 372
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->isRound(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public replaceSystemWindowInsets(IIII)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 11

    .prologue
    .line 395
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    sget-object v5, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-interface/range {v5 .. v10}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->replaceSystemWindowInsets(Ljava/lang/Object;IIII)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 5

    .prologue
    .line 407
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->replaceSystemWindowInsets(Ljava/lang/Object;Landroid/graphics/Rect;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
