.class public Landroid/support/v4/os/UserManagerCompat;
.super Ljava/lang/Object;
.source "UserManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static isUserRunningAndLocked(Landroid/content/Context;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUserRunningAndUnlocked(Landroid/content/Context;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isUserUnlocked(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/os/UserManagerCompatApi24;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    move v0, v1

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method
