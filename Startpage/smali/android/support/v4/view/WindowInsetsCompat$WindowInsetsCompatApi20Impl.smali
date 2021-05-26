.class Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;
.super Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowInsetsCompatApi20Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;-><init>(Landroid/support/v4/view/WindowInsetsCompat$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/WindowInsetsCompat$1;)V
    .locals 3

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeSystemWindowInsets(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 7

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v4/view/WindowInsetsCompat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    .line 148
    invoke-static {v4}, Landroid/support/v4/view/WindowInsetsCompatApi20;->consumeSystemWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;Landroid/support/v4/view/WindowInsetsCompat$1;)V

    move-object v0, v2

    return-object v0
.end method

.method public getSourceWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSourceWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getSystemWindowInsetBottom(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSystemWindowInsetBottom(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getSystemWindowInsetLeft(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSystemWindowInsetLeft(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getSystemWindowInsetRight(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSystemWindowInsetRight(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getSystemWindowInsetTop(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSystemWindowInsetTop(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public hasInsets(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/WindowInsetsCompatApi20;->hasInsets(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public hasSystemWindowInsets(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/WindowInsetsCompatApi20;->hasSystemWindowInsets(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isRound(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/WindowInsetsCompatApi20;->isRound(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public replaceSystemWindowInsets(Ljava/lang/Object;IIII)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 14

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    new-instance v6, Landroid/support/v4/view/WindowInsetsCompat;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-static {v8, v9, v10, v11, v12}, Landroid/support/v4/view/WindowInsetsCompatApi20;->replaceSystemWindowInsets(Ljava/lang/Object;IIII)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;Landroid/support/v4/view/WindowInsetsCompat$1;)V

    move-object v0, v6

    return-object v0
.end method
