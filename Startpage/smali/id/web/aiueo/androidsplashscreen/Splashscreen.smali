.class public Lid/web/aiueo/androidsplashscreen/Splashscreen;
.super Landroid/app/Activity;
.source "Splashscreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lid/web/aiueo/androidsplashscreen/Splashscreen$100000000;
    }
.end annotation


# static fields
.field private static SPLASH_TIMER:I


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    const/16 v2, 0xbb8

    sput v2, Lid/web/aiueo/androidsplashscreen/Splashscreen;->SPLASH_TIMER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 24
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "com.aide.ui"

    invoke-static {v3, v4}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    move-object v3, v0

    const v4, 0x7f04001b

    invoke-virtual {v3, v4}, Lid/web/aiueo/androidsplashscreen/Splashscreen;->setContentView(I)V

    .line 16
    new-instance v3, Landroid/os/Handler;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lid/web/aiueo/androidsplashscreen/Splashscreen$100000000;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lid/web/aiueo/androidsplashscreen/Splashscreen$100000000;-><init>(Lid/web/aiueo/androidsplashscreen/Splashscreen;)V

    sget v5, Lid/web/aiueo/androidsplashscreen/Splashscreen;->SPLASH_TIMER:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v3

    return-void
.end method
