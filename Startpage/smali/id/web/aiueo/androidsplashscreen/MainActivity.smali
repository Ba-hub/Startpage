.class public Lid/web/aiueo/androidsplashscreen/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lid/web/aiueo/androidsplashscreen/MainActivity$100000000;,
        Lid/web/aiueo/androidsplashscreen/MainActivity$Callback;
    }
.end annotation


# instance fields
.field private coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

.field private mWebView:Landroid/webkit/WebView;

.field private swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 135
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$L1000000(Lid/web/aiueo/androidsplashscreen/MainActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lid/web/aiueo/androidsplashscreen/MainActivity;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000000(Lid/web/aiueo/androidsplashscreen/MainActivity;Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lid/web/aiueo/androidsplashscreen/MainActivity;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-void
.end method

.method private loadWebsite()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Lid/web/aiueo/androidsplashscreen/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    move-object v2, v6

    .line 75
    move-object v6, v2

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    move-object v3, v6

    .line 76
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 77
    move-object v6, v0

    iget-object v6, v6, Lid/web/aiueo/androidsplashscreen/MainActivity;->mWebView:Landroid/webkit/WebView;

    const-string v7, "https://startpage.com"

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lid/web/aiueo/androidsplashscreen/MainActivity;->coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    const-string v7, "Please check your internet connection."

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v6

    move-object v4, v6

    .line 80
    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/design/widget/Snackbar;->show()V

    .line 81
    move-object v6, v0

    iget-object v6, v6, Lid/web/aiueo/androidsplashscreen/MainActivity;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
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
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v0

    const-string v10, "com.aide.ui"

    invoke-static {v9, v10}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    move-object v9, v0

    move-object v10, v1

    invoke-super {v9, v10}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    :try_start_0
    const-string v12, "id.web.aiueo.androidsplashscreen.MyIntentService"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v3, v9

    .line 39
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v9, v10}, Lid/web/aiueo/androidsplashscreen/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v9

    .line 40
    move-object v9, v0

    const v10, 0x7f04001a

    invoke-virtual {v9, v10}, Lid/web/aiueo/androidsplashscreen/MainActivity;->setContentView(I)V

    .line 41
    move-object v9, v0

    invoke-virtual {v9}, Lid/web/aiueo/androidsplashscreen/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    move-object v5, v9

    .line 42
    move-object v9, v5

    if-eqz v9, :cond_0

    .line 44
    move-object v9, v5

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 45
    move-object v9, v0

    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Path = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 47
    move-object v9, v0

    const v10, 0x7f080071

    invoke-virtual {v9, v10}, Lid/web/aiueo/androidsplashscreen/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/webkit/WebView;

    move-object v7, v9

    .line 48
    move-object v9, v7

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 50
    :cond_0
    move-object v9, v0

    move-object v10, v0

    const v11, 0x7f080071

    invoke-virtual {v10, v11}, Lid/web/aiueo/androidsplashscreen/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/webkit/WebView;

    iput-object v10, v9, Lid/web/aiueo/androidsplashscreen/MainActivity;->mWebView:Landroid/webkit/WebView;

    .line 51
    move-object v9, v0

    move-object v10, v0

    const v11, 0x7f080070

    invoke-virtual {v10, v11}, Lid/web/aiueo/androidsplashscreen/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v10, v9, Lid/web/aiueo/androidsplashscreen/MainActivity;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 52
    move-object v9, v0

    iget-object v9, v9, Lid/web/aiueo/androidsplashscreen/MainActivity;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    move-object v10, v0

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 53
    move-object v9, v0

    move-object v10, v0

    const v11, 0x7f08006f

    invoke-virtual {v10, v11}, Lid/web/aiueo/androidsplashscreen/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v10, v9, Lid/web/aiueo/androidsplashscreen/MainActivity;->coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    .line 54
    move-object v9, v0

    iget-object v9, v9, Lid/web/aiueo/androidsplashscreen/MainActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v10, Lid/web/aiueo/androidsplashscreen/MainActivity$100000000;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    invoke-direct {v11, v12}, Lid/web/aiueo/androidsplashscreen/MainActivity$100000000;-><init>(Lid/web/aiueo/androidsplashscreen/MainActivity;)V

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 66
    move-object v9, v0

    iget-object v9, v9, Lid/web/aiueo/androidsplashscreen/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    move-object v6, v9

    .line 67
    move-object v9, v6

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 68
    move-object v9, v6

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 69
    move-object v9, v6

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 70
    move-object v9, v0

    iget-object v9, v9, Lid/web/aiueo/androidsplashscreen/MainActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v10, Lid/web/aiueo/androidsplashscreen/MainActivity$Callback;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    invoke-direct {v11, v12}, Lid/web/aiueo/androidsplashscreen/MainActivity$Callback;-><init>(Lid/web/aiueo/androidsplashscreen/MainActivity;)V

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 71
    move-object v9, v0

    invoke-direct {v9}, Lid/web/aiueo/androidsplashscreen/MainActivity;->loadWebsite()V

    return-void

    .line 38
    :catch_0
    move-exception v9

    move-object v4, v9

    new-instance v9, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v4

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v5, :cond_0

    .line 124
    move v4, v1

    packed-switch v4, :pswitch_data_0

    .line 134
    :cond_0
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    :goto_0
    return v0

    .line 126
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Lid/web/aiueo/androidsplashscreen/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    move-object v4, v0

    iget-object v4, v4, Lid/web/aiueo/androidsplashscreen/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->goBack()V

    .line 131
    :goto_1
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 129
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lid/web/aiueo/androidsplashscreen/MainActivity;->finish()V

    goto :goto_1

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onRefresh()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lid/web/aiueo/androidsplashscreen/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->reload()V

    return-void
.end method
