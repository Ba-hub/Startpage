.class Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"

# interfaces
.implements Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowInsetsCompatBaseImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/WindowInsetsCompat$1;)V
    .locals 3

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeStableInsets(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 3

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public consumeSystemWindowInsets(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 3

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getSourceWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getStableInsetBottom(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getStableInsetLeft(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getStableInsetRight(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getStableInsetTop(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getSystemWindowInsetBottom(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getSystemWindowInsetLeft(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getSystemWindowInsetRight(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getSystemWindowInsetTop(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public hasInsets(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public hasStableInsets(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public hasSystemWindowInsets(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isConsumed(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isRound(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public replaceSystemWindowInsets(Ljava/lang/Object;IIII)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    const/4 v6, 0x0

    move-object v0, v6

    return-object v0
.end method

.method public replaceSystemWindowInsets(Ljava/lang/Object;Landroid/graphics/Rect;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method
