.class Lid/web/aiueo/androidsplashscreen/MainActivity$100000000;
.super Landroid/webkit/WebViewClient;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/web/aiueo/androidsplashscreen/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lid/web/aiueo/androidsplashscreen/MainActivity;


# direct methods
.method constructor <init>(Lid/web/aiueo/androidsplashscreen/MainActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/webkit/WebViewClient;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lid/web/aiueo/androidsplashscreen/MainActivity$100000000;->this$0:Lid/web/aiueo/androidsplashscreen/MainActivity;

    return-void
.end method

.method static access$0(Lid/web/aiueo/androidsplashscreen/MainActivity$100000000;)Lid/web/aiueo/androidsplashscreen/MainActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lid/web/aiueo/androidsplashscreen/MainActivity$100000000;->this$0:Lid/web/aiueo/androidsplashscreen/MainActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lid/web/aiueo/androidsplashscreen/MainActivity$100000000;->this$0:Lid/web/aiueo/androidsplashscreen/MainActivity;

    invoke-static {v4}, Lid/web/aiueo/androidsplashscreen/MainActivity;->access$L1000000(Lid/web/aiueo/androidsplashscreen/MainActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 58
    move-object v5, v0

    iget-object v5, v5, Lid/web/aiueo/androidsplashscreen/MainActivity$100000000;->this$0:Lid/web/aiueo/androidsplashscreen/MainActivity;

    invoke-static {v5}, Lid/web/aiueo/androidsplashscreen/MainActivity;->access$L1000000(Lid/web/aiueo/androidsplashscreen/MainActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
