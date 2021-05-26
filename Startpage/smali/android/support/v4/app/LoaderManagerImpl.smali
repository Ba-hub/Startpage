.class Landroid/support/v4/app/LoaderManagerImpl;
.super Landroid/support/v4/app/LoaderManager;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "LoaderManager"


# instance fields
.field mCreatingLoader:Z

.field private mHost:Landroid/support/v4/app/FragmentHostCallback;

.field final mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLoaders:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRetaining:Z

.field mRetainingStarted:Z

.field mStarted:Z

.field final mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/support/v4/app/FragmentHostCallback;Z)V
    .locals 8

    .prologue
    .line 529
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v4/app/LoaderManager;-><init>()V

    .line 197
    move-object v4, v0

    new-instance v5, Landroid/support/v4/util/SparseArrayCompat;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v5, v4, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    .line 203
    move-object v4, v0

    new-instance v5, Landroid/support/v4/util/SparseArrayCompat;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v5, v4, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    .line 530
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v4/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    .line 531
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 532
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 533
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;
    .locals 2

    .prologue
    .line 190
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v0, v1

    return-object v0
.end method

.method private createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    .prologue
    .line 550
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v0

    const/4 v8, 0x1

    :try_start_0
    iput-boolean v8, v7, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    .line 551
    move-object v7, v0

    move v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v4/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v7

    move-object v4, v7

    .line 552
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v4/app/LoaderManagerImpl;->installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    move-object v7, v4

    move-object v5, v7

    .line 555
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    move-object v7, v5

    move-object v0, v7

    return-object v0

    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    move-object v7, v6

    throw v7
.end method

.method private createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    .prologue
    .line 541
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    new-instance v6, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;-><init>(Landroid/support/v4/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    move-object v4, v6

    .line 542
    move-object v6, v3

    move v7, v1

    move-object v8, v2

    invoke-interface {v6, v7, v8}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v6

    move-object v5, v6

    .line 543
    move-object v6, v4

    move-object v7, v5

    iput-object v7, v6, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    .line 544
    move-object v6, v4

    move-object v0, v6

    return-object v0
.end method


# virtual methods
.method public destroyLoader(I)V
    .locals 8

    .prologue
    .line 716
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v4, :cond_0

    .line 717
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Called while creating a loader"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 720
    :cond_0
    sget-boolean v4, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "LoaderManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "destroyLoader in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 721
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result v4

    move v2, v4

    .line 722
    move v4, v2

    if-ltz v4, :cond_2

    .line 723
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-object v3, v4

    .line 724
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 725
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 727
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result v4

    move v2, v4

    .line 728
    move v4, v2

    if-ltz v4, :cond_3

    .line 729
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-object v3, v4

    .line 730
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 731
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 733
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v4, :cond_4

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v4

    if-nez v4, :cond_4

    .line 734
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v4, v4, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 736
    :cond_4
    return-void
.end method

.method doDestroy()V
    .locals 6

    .prologue
    .line 832
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v2, :cond_2

    .line 833
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destroying Active in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 834
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    :goto_0
    move v2, v1

    if-ltz v2, :cond_1

    .line 835
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 834
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 837
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 840
    :cond_2
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destroying Inactive in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 841
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    :goto_1
    move v2, v1

    if-ltz v2, :cond_4

    .line 842
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 841
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 844
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 845
    return-void
.end method

.method doReportNextStart()V
    .locals 4

    .prologue
    .line 820
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    :goto_0
    move v2, v1

    if-ltz v2, :cond_0

    .line 821
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 820
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 823
    :cond_0
    return-void
.end method

.method doReportStart()V
    .locals 4

    .prologue
    .line 826
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    :goto_0
    move v2, v1

    if-ltz v2, :cond_0

    .line 827
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->reportStart()V

    .line 826
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 829
    :cond_0
    return-void
.end method

.method doRetain()V
    .locals 6

    .prologue
    .line 793
    move-object v0, p0

    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retaining in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 794
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v2, :cond_1

    .line 795
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 796
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    .line 797
    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called doRetain when not started: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 806
    :goto_0
    return-void

    .line 801
    :cond_1
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    .line 802
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 803
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    :goto_1
    move v2, v1

    if-ltz v2, :cond_2

    .line 804
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->retain()V

    .line 803
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 806
    :cond_2
    goto :goto_0
.end method

.method doStart()V
    .locals 6

    .prologue
    .line 760
    move-object v0, p0

    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 761
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v2, :cond_1

    .line 762
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 763
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    .line 764
    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called doStart when already started: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 775
    :goto_0
    return-void

    .line 768
    :cond_1
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 772
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    :goto_1
    move v2, v1

    if-ltz v2, :cond_2

    .line 773
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->start()V

    .line 772
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 775
    :cond_2
    goto :goto_0
.end method

.method doStop()V
    .locals 6

    .prologue
    .line 778
    move-object v0, p0

    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 779
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v2, :cond_1

    .line 780
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 781
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    .line 782
    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called doStop when not started: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 790
    :goto_0
    return-void

    .line 786
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    :goto_1
    move v2, v1

    if-ltz v2, :cond_2

    .line 787
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->stop()V

    .line 786
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 789
    :cond_2
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 790
    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 860
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v8}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 861
    move-object v8, v3

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v8, v3

    const-string v9, "Active Loaders:"

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 863
    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v9}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 864
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-object v7, v8

    .line 865
    move-object v8, v3

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v8, v3

    const-string v9, "  #"

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 866
    move-object v8, v3

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v8, v3

    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    move-object v8, v7

    move-object v9, v5

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 863
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 870
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v8}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 871
    move-object v8, v3

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v8, v3

    const-string v9, "Inactive Loaders:"

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 872
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 873
    const/4 v8, 0x0

    move v6, v8

    :goto_1
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v9}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 874
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-object v7, v8

    .line 875
    move-object v8, v3

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v8, v3

    const-string v9, "  #"

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 876
    move-object v8, v3

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v8, v3

    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 877
    move-object v8, v7

    move-object v9, v5

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 873
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 880
    :cond_1
    return-void
.end method

.method finishRetain()V
    .locals 6

    .prologue
    .line 809
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v2, :cond_1

    .line 810
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finished Retaining in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 812
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    .line 813
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    :goto_0
    move v2, v1

    if-ltz v2, :cond_1

    .line 814
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->finishRetain()V

    .line 813
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 817
    :cond_1
    return-void
.end method

.method public getLoader(I)Landroid/support/v4/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/support/v4/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 745
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v3, :cond_0

    .line 746
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Called while creating a loader"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 749
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-object v2, v3

    .line 750
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 751
    move-object v3, v2

    iget-object v3, v3, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v3, :cond_1

    .line 752
    move-object v3, v2

    iget-object v3, v3, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    iget-object v3, v3, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    move-object v0, v3

    .line 756
    :goto_0
    return-object v0

    .line 754
    :cond_1
    move-object v3, v2

    iget-object v3, v3, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    move-object v0, v3

    goto :goto_0

    .line 756
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public hasRunningLoaders()Z
    .locals 7

    .prologue
    .line 884
    move-object v0, p0

    const/4 v5, 0x0

    move v1, v5

    .line 885
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v5}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v5

    move v2, v5

    .line 886
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 887
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-object v4, v5

    .line 888
    move v5, v1

    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v6, :cond_0

    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    or-int/2addr v5, v6

    move v1, v5

    .line 886
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 888
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 890
    :cond_1
    move v5, v1

    move v0, v5

    return v0
.end method

.method public initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/support/v4/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 596
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v5, :cond_0

    .line 597
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "Called while creating a loader"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 600
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-object v4, v5

    .line 602
    sget-boolean v5, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "LoaderManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initLoader in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": args="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 604
    :cond_1
    move-object v5, v4

    if-nez v5, :cond_4

    .line 606
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v5

    move-object v4, v5

    .line 607
    sget-boolean v5, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "LoaderManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Created new loader "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 613
    :cond_2
    :goto_0
    move-object v5, v4

    iget-boolean v5, v5, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v5, :cond_3

    .line 615
    move-object v5, v4

    move-object v6, v4

    iget-object v6, v6, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 618
    :cond_3
    move-object v5, v4

    iget-object v5, v5, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    move-object v0, v5

    return-object v0

    .line 609
    :cond_4
    sget-boolean v5, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "LoaderManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Re-using existing loader "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 610
    :cond_5
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    goto :goto_0
.end method

.method installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
    .locals 5

    .prologue
    .line 560
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 561
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v2, :cond_0

    .line 565
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->start()V

    .line 567
    :cond_0
    return-void
.end method

.method public restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/support/v4/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 647
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v6, :cond_0

    .line 648
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "Called while creating a loader"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 651
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-object v4, v6

    .line 652
    sget-boolean v6, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "LoaderManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restartLoader in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": args="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 653
    :cond_1
    move-object v6, v4

    if-eqz v6, :cond_3

    .line 654
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-object v5, v6

    .line 655
    move-object v6, v5

    if-eqz v6, :cond_b

    .line 656
    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v6, :cond_4

    .line 661
    sget-boolean v6, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "LoaderManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Removing last inactive loader: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 662
    :cond_2
    move-object v6, v5

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 663
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 664
    move-object v6, v4

    iget-object v6, v6, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v6}, Landroid/support/v4/content/Loader;->abandon()V

    .line 665
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v7, v1

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 703
    :cond_3
    :goto_0
    move-object v6, v0

    move v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v4/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v6

    move-object v4, v6

    .line 704
    move-object v6, v4

    iget-object v6, v6, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    move-object v0, v6

    :goto_1
    return-object v0

    .line 670
    :cond_4
    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->cancel()Z

    move-result v6

    if-nez v6, :cond_6

    .line 674
    sget-boolean v6, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "LoaderManager"

    const-string v7, "  Current loader is stopped; replacing"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 675
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v7, v1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 676
    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    goto :goto_0

    .line 681
    :cond_6
    sget-boolean v6, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "LoaderManager"

    const-string v7, "  Current loader is running; configuring pending loader"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 683
    :cond_7
    move-object v6, v4

    iget-object v6, v6, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v6, :cond_9

    .line 684
    sget-boolean v6, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "LoaderManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Removing pending loader: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    iget-object v8, v8, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 685
    :cond_8
    move-object v6, v4

    iget-object v6, v6, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v6}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 686
    move-object v6, v4

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 688
    :cond_9
    sget-boolean v6, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_a

    const-string v6, "LoaderManager"

    const-string v7, "  Enqueuing as new pending loader"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 689
    :cond_a
    move-object v6, v4

    move-object v7, v0

    move v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v4/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 691
    move-object v6, v4

    iget-object v6, v6, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    iget-object v6, v6, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    move-object v0, v6

    goto :goto_1

    .line 697
    :cond_b
    sget-boolean v6, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_c

    const-string v6, "LoaderManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Making last loader inactive: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 698
    :cond_c
    move-object v6, v4

    iget-object v6, v6, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v6}, Landroid/support/v4/content/Loader;->abandon()V

    .line 699
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    move v7, v1

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 849
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 850
    move-object v2, v1

    const-string v3, "LoaderManager{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 851
    move-object v2, v1

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 852
    move-object v2, v1

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 853
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 854
    move-object v2, v1

    const-string v3, "}}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 855
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method updateHostController(Landroid/support/v4/app/FragmentHostCallback;)V
    .locals 4

    .prologue
    .line 536
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 537
    return-void
.end method
