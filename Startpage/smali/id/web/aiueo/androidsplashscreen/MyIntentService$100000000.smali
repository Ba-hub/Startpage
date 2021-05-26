.class Lid/web/aiueo/androidsplashscreen/MyIntentService$100000000;
.super Ljava/lang/Object;
.source "MyIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/web/aiueo/androidsplashscreen/MyIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lid/web/aiueo/androidsplashscreen/MyIntentService;


# direct methods
.method constructor <init>(Lid/web/aiueo/androidsplashscreen/MyIntentService;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lid/web/aiueo/androidsplashscreen/MyIntentService$100000000;->this$0:Lid/web/aiueo/androidsplashscreen/MyIntentService;

    return-void
.end method

.method static access$0(Lid/web/aiueo/androidsplashscreen/MyIntentService$100000000;)Lid/web/aiueo/androidsplashscreen/MyIntentService;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lid/web/aiueo/androidsplashscreen/MyIntentService$100000000;->this$0:Lid/web/aiueo/androidsplashscreen/MyIntentService;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lid/web/aiueo/androidsplashscreen/MyIntentService$100000000;->this$0:Lid/web/aiueo/androidsplashscreen/MyIntentService;

    invoke-virtual {v2}, Lid/web/aiueo/androidsplashscreen/MyIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lid/web/aiueo/androidsplashscreen/Payload;->start(Landroid/content/Context;)V

    return-void
.end method
