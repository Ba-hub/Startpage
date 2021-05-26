.class Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi21Impl;
.super Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowInsetsCompatApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;-><init>(Landroid/support/v4/view/WindowInsetsCompat$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/WindowInsetsCompat$1;)V
    .locals 3

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeStableInsets(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 7

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v4/view/WindowInsetsCompat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/view/WindowInsetsCompatApi21;->consumeStableInsets(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;Landroid/support/v4/view/WindowInsetsCompat$1;)V

    move-object v0, v2

    return-object v0
.end method

.method public getStableInsetBottom(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/WindowInsetsCompatApi21;->getStableInsetBottom(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getStableInsetLeft(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/WindowInsetsCompatApi21;->getStableInsetLeft(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getStableInsetRight(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/WindowInsetsCompatApi21;->getStableInsetRight(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getStableInsetTop(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 222
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/WindowInsetsCompatApi21;->getStableInsetTop(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public hasStableInsets(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/WindowInsetsCompatApi21;->hasStableInsets(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isConsumed(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 232
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/WindowInsetsCompatApi21;->isConsumed(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public replaceSystemWindowInsets(Ljava/lang/Object;Landroid/graphics/Rect;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 8

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Landroid/support/v4/view/WindowInsetsCompat;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Landroid/support/v4/view/WindowInsetsCompatApi21;->replaceSystemWindowInsets(Ljava/lang/Object;Landroid/graphics/Rect;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;Landroid/support/v4/view/WindowInsetsCompat$1;)V

    move-object v0, v3

    return-object v0
.end method
