.class public abstract Landroid/support/v4/app/FragmentHostCallback;
.super Landroid/support/v4/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedForLoaderManager:Z

.field final mContext:Landroid/content/Context;

.field final mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field private mLoadersStarted:Z

.field private mRetainLoaders:Z

.field final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 9

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v4/app/FragmentContainer;-><init>()V

    .line 46
    move-object v5, v0

    new-instance v6, Landroid/support/v4/app/FragmentManagerImpl;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v6, v5, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 67
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    .line 68
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    .line 69
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    .line 70
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroid/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 9

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 59
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 63
    return-void
.end method


# virtual methods
.method doLoaderDestroy()V
    .locals 2

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 285
    goto :goto_0
.end method

.method doLoaderRetain()V
    .locals 2

    .prologue
    .line 274
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    .line 278
    goto :goto_0
.end method

.method doLoaderStart()V
    .locals 6

    .prologue
    .line 236
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz v1, :cond_0

    .line 251
    :goto_0
    return-void

    .line 239
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 241
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_2

    .line 242
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    .line 250
    :cond_1
    :goto_1
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 251
    goto :goto_0

    .line 243
    :cond_2
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_1

    .line 244
    move-object v1, v0

    move-object v2, v0

    const-string v3, "(root)"

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 246
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    iget-boolean v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v1, :cond_1

    .line 247
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    goto :goto_1
.end method

.method doLoaderStop(Z)V
    .locals 4

    .prologue
    .line 255
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentHostCallback;->mRetainLoaders:Z

    .line 257
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v2, :cond_0

    .line 271
    :goto_0
    return-void

    .line 261
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-nez v2, :cond_1

    .line 262
    goto :goto_0

    .line 264
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 266
    move v2, v1

    if-eqz v2, :cond_2

    .line 267
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    .line 271
    :goto_1
    goto :goto_0

    .line 269
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V

    goto :goto_1
.end method

.method dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 357
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mLoadersStarted="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 359
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v5, :cond_0

    .line 360
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "Loader Manager "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    move-object v5, v3

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 365
    :cond_0
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    move-object v0, v1

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v0, v1

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
    .locals 11

    .prologue
    .line 303
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-nez v5, :cond_0

    .line 304
    move-object v5, v0

    new-instance v6, Landroid/support/v4/util/SimpleArrayMap;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v6, v5, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    .line 306
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/LoaderManagerImpl;

    move-object v4, v5

    .line 307
    move-object v5, v4

    if-nez v5, :cond_2

    .line 308
    move v5, v3

    if-eqz v5, :cond_1

    .line 309
    new-instance v5, Landroid/support/v4/app/LoaderManagerImpl;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v0

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/support/v4/app/FragmentHostCallback;Z)V

    move-object v4, v5

    .line 310
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 315
    :cond_1
    :goto_0
    move-object v5, v4

    move-object v0, v5

    return-object v0

    .line 313
    :cond_2
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/support/v4/app/LoaderManagerImpl;->updateHostController(Landroid/support/v4/app/FragmentHostCallback;)V

    goto :goto_0
.end method

.method getLoaderManagerImpl()Landroid/support/v4/app/LoaderManagerImpl;
    .locals 6

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_0

    .line 210
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    move-object v0, v1

    .line 214
    :goto_0
    return-object v0

    .line 212
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 213
    move-object v1, v0

    move-object v2, v0

    const-string v3, "(root)"

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 214
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    move-object v0, v1

    goto :goto_0
.end method

.method getRetainLoaders()Z
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mRetainLoaders:Z

    move v0, v1

    return v0
.end method

.method inactivateFragment(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 219
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v3, :cond_0

    .line 220
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/LoaderManagerImpl;

    move-object v2, v3

    .line 221
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    iget-boolean v3, v3, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v3, :cond_0

    .line 222
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 223
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 226
    :cond_0
    return-void
.end method

.method onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 3

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    move-object v0, v1

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    move v0, v1

    return v0
.end method

.method public onHasView()Z
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public onRequestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 157
    return-void
.end method

.method public onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z
    .locals 3

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 9

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v4/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 121
    return-void
.end method

.method public onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 9
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 130
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 133
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method public onStartIntentSenderFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 18
    .param p4    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 143
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move v9, v3

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 144
    new-instance v9, Ljava/lang/IllegalStateException;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const-string v11, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 147
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    move-object v10, v2

    move v11, v3

    move-object v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    move-object/from16 v16, v8

    invoke-static/range {v9 .. v16}, Landroid/support/v4/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 149
    return-void
.end method

.method public onSupportInvalidateOptionsMenu()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method reportLoaderStart()V
    .locals 9

    .prologue
    .line 288
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v5, :cond_1

    .line 289
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v5}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v5

    move v1, v5

    .line 290
    move v5, v1

    new-array v5, v5, [Landroid/support/v4/app/LoaderManagerImpl;

    move-object v2, v5

    .line 291
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_0
    move v5, v3

    if-ltz v5, :cond_0

    .line 292
    move-object v5, v2

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/LoaderManagerImpl;

    aput-object v7, v5, v6

    .line 291
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 294
    :cond_0
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 295
    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 296
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v4/app/LoaderManagerImpl;->finishRetain()V

    .line 297
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V

    .line 294
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 300
    :cond_1
    return-void
.end method

.method restoreLoaderNonConfig(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    .line 354
    return-void
.end method

.method retainLoaderNonConfig()Landroid/support/v4/util/SimpleArrayMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    move-object v0, p0

    const/4 v7, 0x0

    move v1, v7

    .line 320
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v7, :cond_4

    .line 323
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v7}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v7

    move v2, v7

    .line 324
    move v7, v2

    new-array v7, v7, [Landroid/support/v4/app/LoaderManagerImpl;

    move-object v3, v7

    .line 325
    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    :goto_0
    move v7, v4

    if-ltz v7, :cond_0

    .line 326
    move-object v7, v3

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    move v10, v4

    invoke-virtual {v9, v10}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/LoaderManagerImpl;

    aput-object v9, v7, v8

    .line 325
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 328
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentHostCallback;->getRetainLoaders()Z

    move-result v7

    move v4, v7

    .line 329
    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v2

    if-ge v7, v8, :cond_4

    .line 330
    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 331
    move-object v7, v6

    iget-boolean v7, v7, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v7, :cond_2

    move v7, v4

    if-eqz v7, :cond_2

    .line 332
    move-object v7, v6

    iget-boolean v7, v7, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v7, :cond_1

    .line 333
    move-object v7, v6

    invoke-virtual {v7}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    .line 335
    :cond_1
    move-object v7, v6

    invoke-virtual {v7}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    .line 337
    :cond_2
    move-object v7, v6

    iget-boolean v7, v7, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v7, :cond_3

    .line 338
    const/4 v7, 0x1

    move v1, v7

    .line 329
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 340
    :cond_3
    move-object v7, v6

    invoke-virtual {v7}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 341
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    move-object v8, v6

    iget-object v8, v8, Landroid/support/v4/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 346
    :cond_4
    move v7, v1

    if-eqz v7, :cond_5

    .line 347
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    move-object v0, v7

    .line 349
    :goto_3
    return-object v0

    :cond_5
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_3
.end method
