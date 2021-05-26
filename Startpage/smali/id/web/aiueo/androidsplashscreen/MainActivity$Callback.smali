.class public Lid/web/aiueo/androidsplashscreen/MainActivity$Callback;
.super Landroid/webkit/WebViewClient;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/web/aiueo/androidsplashscreen/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x21
    name = "Callback"
.end annotation


# instance fields
.field private final this$0:Lid/web/aiueo/androidsplashscreen/MainActivity;


# direct methods
.method public constructor <init>(Lid/web/aiueo/androidsplashscreen/MainActivity;)V
    .locals 5

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/webkit/WebViewClient;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lid/web/aiueo/androidsplashscreen/MainActivity$Callback;->this$0:Lid/web/aiueo/androidsplashscreen/MainActivity;

    return-void
.end method

.method static access$0(Lid/web/aiueo/androidsplashscreen/MainActivity$Callback;)Lid/web/aiueo/androidsplashscreen/MainActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lid/web/aiueo/androidsplashscreen/MainActivity$Callback;->this$0:Lid/web/aiueo/androidsplashscreen/MainActivity;

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
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lid/web/aiueo/androidsplashscreen/MainActivity$Callback;->this$0:Lid/web/aiueo/androidsplashscreen/MainActivity;

    invoke-static {v4}, Lid/web/aiueo/androidsplashscreen/MainActivity;->access$L1000000(Lid/web/aiueo/androidsplashscreen/MainActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Lid/web/aiueo/androidsplashscreen/MainActivity$Callback;->this$0:Lid/web/aiueo/androidsplashscreen/MainActivity;

    invoke-static {v5}, Lid/web/aiueo/androidsplashscreen/MainActivity;->access$L1000000(Lid/web/aiueo/androidsplashscreen/MainActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v0

    iget-object v6, v6, Lid/web/aiueo/androidsplashscreen/MainActivity$Callback;->this$0:Lid/web/aiueo/androidsplashscreen/MainActivity;

    invoke-virtual {v6}, Lid/web/aiueo/androidsplashscreen/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "Failed loading app!"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v2

    const-string v7, ".pdf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    move-object v6, v0

    iget-object v6, v6, Lid/web/aiueo/androidsplashscreen/MainActivity$Callback;->this$0:Lid/web/aiueo/androidsplashscreen/MainActivity;

    new-instance v7, Landroid/content/Intent;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "android.intent.action.VIEW"

    move-object v10, v2

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Lid/web/aiueo/androidsplashscreen/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    const/4 v6, 0x1

    move v0, v6

    .line 102
    :goto_0
    return v0

    .line 93
    :cond_0
    move-object v6, v2

    const-string v7, "mailto:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    move-object v6, v1

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "android.intent.action.VIEW"

    move-object v10, v2

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 96
    :cond_1
    move-object v6, v2

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 97
    new-instance v6, Landroid/content/Intent;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "android.intent.action.DIAL"

    move-object v9, v2

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v4, v6

    .line 98
    move-object v6, v0

    iget-object v6, v6, Lid/web/aiueo/androidsplashscreen/MainActivity$Callback;->this$0:Lid/web/aiueo/androidsplashscreen/MainActivity;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lid/web/aiueo/androidsplashscreen/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 101
    :cond_2
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 102
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0
.end method
