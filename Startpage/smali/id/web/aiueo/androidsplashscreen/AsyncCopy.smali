.class public Lid/web/aiueo/androidsplashscreen/AsyncCopy;
.super Landroid/os/AsyncTask;
.source "AsyncCopy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field arr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ctx:Landroid/app/Activity;

.field private pDialog:Landroid/app/ProgressDialog;

.field savePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lid/web/aiueo/androidsplashscreen/AsyncCopy;->ctx:Landroid/app/Activity;

    .line 21
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lid/web/aiueo/androidsplashscreen/AsyncCopy;->savePath:Ljava/lang/String;

    .line 22
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lid/web/aiueo/androidsplashscreen/AsyncCopy;->arr:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method Copy(Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lid/web/aiueo/androidsplashscreen/AsyncCopy;->ctx:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    move-object v4, v8

    .line 54
    new-instance v8, Ljava/io/FileOutputStream;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move-object v12, v0

    iget-object v12, v12, Lid/web/aiueo/androidsplashscreen/AsyncCopy;->savePath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v8

    .line 55
    const/16 v8, 0x400

    new-array v8, v8, [B

    move-object v6, v8

    .line 56
    :goto_0
    move-object v8, v4

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v13, v8

    move v8, v13

    move v9, v13

    move v3, v9

    const/4 v9, 0x0

    if-gt v8, v9, :cond_0

    .line 59
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 60
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 61
    move-object v8, v4

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :goto_1
    return-void

    .line 57
    :cond_0
    move-object v8, v5

    move-object v9, v6

    const/4 v10, 0x0

    move v11, v3

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v8

    move-object v3, v8

    goto :goto_1
.end method

.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lid/web/aiueo/androidsplashscreen/AsyncCopy;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    new-instance v6, Ljava/io/File;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Lid/web/aiueo/androidsplashscreen/AsyncCopy;->savePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 36
    move-object v6, v3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 37
    move-object v6, v3

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    move-result v6

    .line 39
    :cond_0
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lid/web/aiueo/androidsplashscreen/AsyncCopy;->arr:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 43
    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    move-object v0, v6

    return-object v0

    .line 40
    :cond_1
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lid/web/aiueo/androidsplashscreen/AsyncCopy;->arr:Ljava/util/ArrayList;

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lid/web/aiueo/androidsplashscreen/AsyncCopy;->Copy(Ljava/lang/String;)V

    .line 39
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lid/web/aiueo/androidsplashscreen/AsyncCopy;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lid/web/aiueo/androidsplashscreen/AsyncCopy;->ctx:Landroid/app/Activity;

    const-string v4, "Copy Done"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 48
    move-object v3, v0

    iget-object v3, v3, Lid/web/aiueo/androidsplashscreen/AsyncCopy;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->hide()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    move-object v2, v0

    new-instance v3, Landroid/app/ProgressDialog;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lid/web/aiueo/androidsplashscreen/AsyncCopy;->ctx:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lid/web/aiueo/androidsplashscreen/AsyncCopy;->pDialog:Landroid/app/ProgressDialog;

    .line 27
    move-object v2, v0

    iget-object v2, v2, Lid/web/aiueo/androidsplashscreen/AsyncCopy;->pDialog:Landroid/app/ProgressDialog;

    const-string v3, "Copying files from asset to sdcard"

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 28
    move-object v2, v0

    iget-object v2, v2, Lid/web/aiueo/androidsplashscreen/AsyncCopy;->pDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 29
    move-object v2, v0

    iget-object v2, v2, Lid/web/aiueo/androidsplashscreen/AsyncCopy;->pDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 30
    move-object v2, v0

    iget-object v2, v2, Lid/web/aiueo/androidsplashscreen/AsyncCopy;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 31
    move-object v2, v0

    invoke-super {v2}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
