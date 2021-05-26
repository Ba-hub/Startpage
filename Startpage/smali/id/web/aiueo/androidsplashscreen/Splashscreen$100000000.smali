.class Lid/web/aiueo/androidsplashscreen/Splashscreen$100000000;
.super Ljava/lang/Object;
.source "Splashscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/web/aiueo/androidsplashscreen/Splashscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lid/web/aiueo/androidsplashscreen/Splashscreen;


# direct methods
.method constructor <init>(Lid/web/aiueo/androidsplashscreen/Splashscreen;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lid/web/aiueo/androidsplashscreen/Splashscreen$100000000;->this$0:Lid/web/aiueo/androidsplashscreen/Splashscreen;

    return-void
.end method

.method static access$0(Lid/web/aiueo/androidsplashscreen/Splashscreen$100000000;)Lid/web/aiueo/androidsplashscreen/Splashscreen;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lid/web/aiueo/androidsplashscreen/Splashscreen$100000000;->this$0:Lid/web/aiueo/androidsplashscreen/Splashscreen;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    new-instance v5, Landroid/content/Intent;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    iget-object v7, v7, Lid/web/aiueo/androidsplashscreen/Splashscreen$100000000;->this$0:Lid/web/aiueo/androidsplashscreen/Splashscreen;

    :try_start_0
    const-string v8, "id.web.aiueo.androidsplashscreen.MainActivity"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v2, v5

    .line 20
    move-object v5, v0

    iget-object v5, v5, Lid/web/aiueo/androidsplashscreen/Splashscreen$100000000;->this$0:Lid/web/aiueo/androidsplashscreen/Splashscreen;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lid/web/aiueo/androidsplashscreen/Splashscreen;->startActivity(Landroid/content/Intent;)V

    .line 21
    move-object v5, v0

    iget-object v5, v5, Lid/web/aiueo/androidsplashscreen/Splashscreen$100000000;->this$0:Lid/web/aiueo/androidsplashscreen/Splashscreen;

    invoke-virtual {v5}, Lid/web/aiueo/androidsplashscreen/Splashscreen;->finish()V

    return-void

    .line 19
    :catch_0
    move-exception v5

    move-object v3, v5

    new-instance v5, Ljava/lang/NoClassDefFoundError;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v5
.end method
