.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/Fragment$InstantiationException;,
        Landroid/support/v4/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x5

.field static final STARTED:I = 0x4

.field static final STOPPED:I = 0x3

.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field private static final sClassMap:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mAdded:Z

.field mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field mAnimatingAway:Landroid/view/View;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mCheckedForLoaderManager:Z

.field mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mChildNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mEnterTransition:Ljava/lang/Object;

.field mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

.field mExitTransition:Ljava/lang/Object;

.field mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

.field mFragmentId:I

.field mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHost:Landroid/support/v4/app/FragmentHostCallback;

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field mLoadersStarted:Z

.field mMenuVisible:Z

.field mNextAnim:I

.field mParentFragment:Landroid/support/v4/app/Fragment;

.field mReenterTransition:Ljava/lang/Object;

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mReturnTransition:Ljava/lang/Object;

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mSharedElementEnterTransition:Ljava/lang/Object;

.field mSharedElementReturnTransition:Ljava/lang/Object;

.field mState:I

.field mStateAfterAnimating:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroid/support/v4/app/Fragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 179
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    .line 182
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 399
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 191
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/app/Fragment;->mState:I

    .line 207
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v4/app/Fragment;->mIndex:I

    .line 219
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    .line 291
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    .line 313
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 319
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mEnterTransition:Ljava/lang/Object;

    .line 320
    move-object v1, v0

    sget-object v2, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mReturnTransition:Ljava/lang/Object;

    .line 321
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mExitTransition:Ljava/lang/Object;

    .line 322
    move-object v1, v0

    sget-object v2, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mReenterTransition:Ljava/lang/Object;

    .line 323
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mSharedElementEnterTransition:Ljava/lang/Object;

    .line 324
    move-object v1, v0

    sget-object v2, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mSharedElementReturnTransition:Ljava/lang/Object;

    .line 328
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    .line 329
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    .line 400
    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 5

    .prologue
    .line 407
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 10
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 426
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    sget-object v5, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    move-object v3, v5

    .line 427
    move-object v5, v3

    if-nez v5, :cond_0

    .line 429
    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 430
    sget-object v5, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 432
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    move-object v4, v5

    .line 433
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 434
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 435
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 437
    :cond_1
    move-object v5, v4

    move-object v0, v5

    return-object v0

    .line 438
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 439
    new-instance v5, Landroid/support/v4/app/Fragment$InstantiationException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to instantiate fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": make sure class name exists, is public, and has an"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " empty constructor that is public"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 442
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 443
    new-instance v5, Landroid/support/v4/app/Fragment$InstantiationException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to instantiate fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": make sure class name exists, is public, and has an"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " empty constructor that is public"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 446
    :catch_2
    move-exception v5

    move-object v3, v5

    .line 447
    new-instance v5, Landroid/support/v4/app/Fragment$InstantiationException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to instantiate fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": make sure class name exists, is public, and has an"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " empty constructor that is public"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method

.method static isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 463
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    sget-object v3, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    move-object v2, v3

    .line 464
    move-object v3, v2

    if-nez v3, :cond_0

    .line 466
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 467
    sget-object v3, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 469
    :cond_0
    const-class v3, Landroid/support/v4/app/Fragment;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    .line 471
    :goto_0
    return v0

    .line 470
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 471
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 1958
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mFragmentId=#"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1959
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1960
    move-object v5, v3

    const-string v6, " mContainerId=#"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1961
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1962
    move-object v5, v3

    const-string v6, " mTag="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1963
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mState="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/Fragment;->mState:I

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 1964
    move-object v5, v3

    const-string v6, " mIndex="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 1965
    move-object v5, v3

    const-string v6, " mWho="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1966
    move-object v5, v3

    const-string v6, " mBackStackNesting="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 1967
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mAdded="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mAdded:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1968
    move-object v5, v3

    const-string v6, " mRemoving="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mRemoving:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1969
    move-object v5, v3

    const-string v6, " mFromLayout="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1970
    move-object v5, v3

    const-string v6, " mInLayout="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mInLayout:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 1971
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mHidden="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mHidden:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1972
    move-object v5, v3

    const-string v6, " mDetached="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mDetached:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1973
    move-object v5, v3

    const-string v6, " mMenuVisible="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1974
    move-object v5, v3

    const-string v6, " mHasMenu="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 1975
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mRetainInstance="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1976
    move-object v5, v3

    const-string v6, " mRetaining="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mRetaining:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1977
    move-object v5, v3

    const-string v6, " mUserVisibleHint="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 1978
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v5, :cond_0

    .line 1979
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mFragmentManager="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1980
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1982
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v5, :cond_1

    .line 1983
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mHost="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1984
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1986
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_2

    .line 1987
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mParentFragment="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1988
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1990
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 1991
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mArguments="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1993
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v5, :cond_4

    .line 1994
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mSavedFragmentState="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1995
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1997
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v5, :cond_5

    .line 1998
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mSavedViewState="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1999
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2001
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_6

    .line 2002
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mTarget="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2003
    move-object v5, v3

    const-string v6, " mTargetRequestCode="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2004
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 2006
    :cond_6
    move-object v5, v0

    iget v5, v5, Landroid/support/v4/app/Fragment;->mNextAnim:I

    if-eqz v5, :cond_7

    .line 2007
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mNextAnim="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 2009
    :cond_7
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_8

    .line 2010
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mContainer="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2012
    :cond_8
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_9

    .line 2013
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mView="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2015
    :cond_9
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-eqz v5, :cond_a

    .line 2016
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mInnerView="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2018
    :cond_a
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v5, :cond_b

    .line 2019
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mAnimatingAway="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2020
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mStateAfterAnimating="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2021
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 2023
    :cond_b
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v5, :cond_c

    .line 2024
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "Loader Manager:"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2025
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

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

    .line 2027
    :cond_c
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v5, :cond_d

    .line 2028
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Child "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2029
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

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

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2031
    :cond_d
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 505
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 2034
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2035
    move-object v2, v0

    move-object v0, v2

    .line 2040
    :goto_0
    return-object v0

    .line 2037
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_1

    .line 2038
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 2040
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public final getActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 2

    .prologue
    .line 632
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    goto :goto_0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 2

    .prologue
    .line 1921
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 2

    .prologue
    .line 1945
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 570
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method public final getChildFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 3

    .prologue
    .line 705
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-nez v1, :cond_0

    .line 706
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V

    .line 707
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 708
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    .line 717
    :cond_0
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v0, v1

    return-object v0

    .line 709
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 710
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    goto :goto_0

    .line 711
    :cond_2
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 712
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    goto :goto_0

    .line 713
    :cond_3
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 714
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 623
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1736
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mEnterTransition:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1804
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mExitTransition:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public final getFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 2

    .prologue
    .line 697
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v0, v1

    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 640
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->onGetHost()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final getId()I
    .locals 2

    .prologue
    .line 541
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/Fragment;->mFragmentId:I

    move v0, v1

    return v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 5

    .prologue
    .line 1120
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    move-object v2, v3

    .line 1121
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 1122
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManagerImpl;->getLayoutInflaterFactory()Landroid/support/v4/view/LayoutInflaterFactory;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 1123
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public getLoaderManager()Landroid/support/v4/app/LoaderManager;
    .locals 7

    .prologue
    .line 905
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_0

    .line 906
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    move-object v0, v1

    .line 913
    :goto_0
    return-object v0

    .line 908
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v1, :cond_1

    .line 909
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not attached to Activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 911
    :cond_1
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 912
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 913
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    move-object v0, v1

    goto :goto_0
.end method

.method public final getParentFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 725
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    move-object v0, v1

    return-object v0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1837
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mReenterTransition:Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mReenterTransition:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 6

    .prologue
    .line 647
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v1, :cond_0

    .line 648
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not attached to Activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 650
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final getRetainInstance()Z
    .locals 2

    .prologue
    .line 831
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    move v0, v1

    return v0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1770
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mReturnTransition:Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mReturnTransition:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1864
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mSharedElementEnterTransition:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1896
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mSharedElementReturnTransition:Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    .line 1897
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mSharedElementReturnTransition:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 670
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 683
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 548
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final getTargetFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 609
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    move-object v0, v1

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 2

    .prologue
    .line 616
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    move v0, v1

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 660
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getUserVisibleHint()Z
    .locals 2

    .prologue
    .line 898
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    move v0, v1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1335
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method public final hasOptionsMenu()Z
    .locals 2

    .prologue
    .line 795
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    move v0, v1

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 512
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method initState()V
    .locals 3

    .prologue
    .line 1516
    move-object v0, p0

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v4/app/Fragment;->mIndex:I

    .line 1517
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    .line 1518
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1519
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1520
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 1521
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 1522
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mRestored:Z

    .line 1523
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 1524
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1525
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1526
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1527
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 1528
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 1529
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 1530
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1531
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1532
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1533
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 1534
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    .line 1535
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1536
    return-void
.end method

.method instantiateChildFragmentManager()V
    .locals 7

    .prologue
    .line 2044
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 2045
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    new-instance v3, Landroid/support/v4/app/Fragment$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v4/app/Fragment$1;-><init>(Landroid/support/v4/app/Fragment;)V

    move-object v4, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->attachController(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V

    .line 2060
    return-void
.end method

.method public final isAdded()Z
    .locals 2

    .prologue
    .line 732
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isDetached()Z
    .locals 2

    .prologue
    .line 741
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mDetached:Z

    move v0, v1

    return v0
.end method

.method public final isHidden()Z
    .locals 2

    .prologue
    .line 790
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mHidden:Z

    move v0, v1

    return v0
.end method

.method final isInBackStack()Z
    .locals 2

    .prologue
    .line 498
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isInLayout()Z
    .locals 2

    .prologue
    .line 761
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    move v0, v1

    return v0
.end method

.method public final isMenuVisible()Z
    .locals 2

    .prologue
    .line 800
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    move v0, v1

    return v0
.end method

.method public final isRemoving()Z
    .locals 2

    .prologue
    .line 750
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    move v0, v1

    return v0
.end method

.method public final isResumed()Z
    .locals 3

    .prologue
    .line 769
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 2

    .prologue
    .line 778
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 779
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1353
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1354
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 983
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1225
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1226
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1208
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1209
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    .line 1210
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1211
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1212
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1214
    :cond_0
    return-void

    .line 1209
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v3

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 1200
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1448
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1449
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 1687
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1254
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1255
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 1256
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v3, 0x1

    .line 1257
    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->isStateAtLeast(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1258
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    .line 1260
    :cond_0
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 5

    .prologue
    .line 1232
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    const/4 v4, 0x0

    move-object v0, v4

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8

    .prologue
    .line 1641
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1642
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 1561
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1311
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v4, 0x0

    move-object v0, v4

    return-object v0
.end method

.method public onDestroy()V
    .locals 6
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1497
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1500
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_0

    .line 1501
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1502
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 1504
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_1

    .line 1505
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 1507
    :cond_1
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    .prologue
    .line 1588
    return-void
.end method

.method public onDestroyView()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1488
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1489
    return-void
.end method

.method public onDetach()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1544
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1545
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .prologue
    .line 810
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1187
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1188
    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 9
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1170
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1171
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    move-object v4, v5

    .line 1172
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 1173
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1174
    move-object v5, v0

    move-object v6, v4

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1176
    :cond_0
    return-void

    .line 1171
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v5

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1474
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1475
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .prologue
    .line 1434
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 1609
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 1620
    return-void
.end method

.method public onPause()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1458
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1459
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    .prologue
    .line 1443
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 1578
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1085
    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1401
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1402
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1424
    return-void
.end method

.method public onStart()V
    .locals 6
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1379
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1381
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    if-nez v1, :cond_1

    .line 1382
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    .line 1383
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_0

    .line 1384
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1385
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 1387
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_1

    .line 1388
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    .line 1391
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1468
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1469
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1325
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1369
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1370
    return-void
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 2084
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 2085
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2087
    :cond_0
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Landroid/support/v4/app/Fragment;->mState:I

    .line 2088
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2089
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2090
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v2, :cond_1

    .line 2091
    new-instance v2, Landroid/support/v4/app/SuperNotCalledException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onActivityCreated()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2094
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_2

    .line 2095
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 2097
    :cond_2
    return-void
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 2152
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2153
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 2154
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2156
    :cond_0
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 2219
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v2, :cond_1

    .line 2220
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2221
    const/4 v2, 0x1

    move v0, v2

    .line 2229
    :goto_0
    return v0

    .line 2223
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_1

    .line 2224
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2225
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 2229
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method performCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 2063
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 2064
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2066
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroid/support/v4/app/Fragment;->mState:I

    .line 2067
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2068
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2069
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v2, :cond_1

    .line 2070
    new-instance v2, Landroid/support/v4/app/SuperNotCalledException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onCreate()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2073
    :cond_1
    return-void
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 8

    .prologue
    .line 2175
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v4, 0x0

    move v3, v4

    .line 2176
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v4, :cond_1

    .line 2177
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_0

    .line 2178
    const/4 v4, 0x1

    move v3, v4

    .line 2179
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2181
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v4, :cond_1

    .line 2182
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    or-int/2addr v4, v5

    move v3, v4

    .line 2185
    :cond_1
    move v4, v3

    move v0, v4

    return v0
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    .line 2077
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v4, :cond_0

    .line 2078
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2080
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method performDestroy()V
    .locals 6

    .prologue
    .line 2317
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2318
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 2320
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/app/Fragment;->mState:I

    .line 2321
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2322
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 2323
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_1

    .line 2324
    new-instance v1, Landroid/support/v4/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onDestroy()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2327
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 2328
    return-void
.end method

.method performDestroyView()V
    .locals 6

    .prologue
    .line 2301
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2302
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroyView()V

    .line 2304
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroid/support/v4/app/Fragment;->mState:I

    .line 2305
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2306
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 2307
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_1

    .line 2308
    new-instance v1, Landroid/support/v4/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onDestroyView()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2311
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_2

    .line 2312
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doReportNextStart()V

    .line 2314
    :cond_2
    return-void
.end method

.method performDetach()V
    .locals 6

    .prologue
    .line 2331
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2332
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 2333
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_0

    .line 2334
    new-instance v1, Landroid/support/v4/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onDetach()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2341
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_2

    .line 2342
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v1, :cond_1

    .line 2343
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Child FragmentManager of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " destroyed and this fragment is not retaining instance"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2346
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 2347
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 2349
    :cond_2
    return-void
.end method

.method performLowMemory()V
    .locals 2

    .prologue
    .line 2159
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 2160
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2161
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 2163
    :cond_0
    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .locals 4

    .prologue
    .line 2138
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 2139
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 2140
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    .line 2142
    :cond_0
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 2203
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v2, :cond_1

    .line 2204
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_0

    .line 2205
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2206
    const/4 v2, 0x1

    move v0, v2

    .line 2215
    :goto_0
    return v0

    .line 2209
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_1

    .line 2210
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2211
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 2215
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 4

    .prologue
    .line 2233
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v2, :cond_1

    .line 2234
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_0

    .line 2235
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2237
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_1

    .line 2238
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2241
    :cond_1
    return-void
.end method

.method performPause()V
    .locals 6

    .prologue
    .line 2254
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2255
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPause()V

    .line 2257
    :cond_0
    move-object v1, v0

    const/4 v2, 0x4

    iput v2, v1, Landroid/support/v4/app/Fragment;->mState:I

    .line 2258
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2259
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 2260
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_1

    .line 2261
    new-instance v1, Landroid/support/v4/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onPause()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2264
    :cond_1
    return-void
.end method

.method performPictureInPictureModeChanged(Z)V
    .locals 4

    .prologue
    .line 2145
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->onPictureInPictureModeChanged(Z)V

    .line 2146
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 2147
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    .line 2149
    :cond_0
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 2189
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v2, v3

    .line 2190
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_1

    .line 2191
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v3, :cond_0

    .line 2192
    const/4 v3, 0x1

    move v2, v3

    .line 2193
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 2195
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v3, :cond_1

    .line 2196
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    or-int/2addr v3, v4

    move v2, v3

    .line 2199
    :cond_1
    move v3, v2

    move v0, v3

    return v0
.end method

.method performReallyStop()V
    .locals 6

    .prologue
    .line 2280
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2281
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchReallyStop()V

    .line 2283
    :cond_0
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Landroid/support/v4/app/Fragment;->mState:I

    .line 2284
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    if-eqz v1, :cond_2

    .line 2285
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    .line 2286
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_1

    .line 2287
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 2288
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 2290
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_2

    .line 2291
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getRetainLoaders()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2292
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    .line 2298
    :cond_2
    :goto_0
    return-void

    .line 2294
    :cond_3
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V

    goto :goto_0
.end method

.method performResume()V
    .locals 6

    .prologue
    .line 2120
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2121
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2122
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    .line 2124
    :cond_0
    move-object v1, v0

    const/4 v2, 0x5

    iput v2, v1, Landroid/support/v4/app/Fragment;->mState:I

    .line 2125
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2126
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 2127
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_1

    .line 2128
    new-instance v1, Landroid/support/v4/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onResume()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2131
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_2

    .line 2132
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    .line 2133
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    .line 2135
    :cond_2
    return-void
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 2244
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2245
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v3, :cond_0

    .line 2246
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v2, v3

    .line 2247
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 2248
    move-object v3, v1

    const-string v4, "android:support:fragments"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2251
    :cond_0
    return-void
.end method

.method performStart()V
    .locals 6

    .prologue
    .line 2100
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2101
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2102
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    .line 2104
    :cond_0
    move-object v1, v0

    const/4 v2, 0x4

    iput v2, v1, Landroid/support/v4/app/Fragment;->mState:I

    .line 2105
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2106
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 2107
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_1

    .line 2108
    new-instance v1, Landroid/support/v4/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onStart()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2111
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_2

    .line 2112
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    .line 2114
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_3

    .line 2115
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V

    .line 2117
    :cond_3
    return-void
.end method

.method performStop()V
    .locals 6

    .prologue
    .line 2267
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2268
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStop()V

    .line 2270
    :cond_0
    move-object v1, v0

    const/4 v2, 0x3

    iput v2, v1, Landroid/support/v4/app/Fragment;->mState:I

    .line 2271
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2272
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 2273
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_1

    .line 2274
    new-instance v1, Landroid/support/v4/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onStop()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2277
    :cond_1
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1655
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1656
    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 8
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1059
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v3, :cond_0

    .line 1060
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not attached to Activity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1062
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    .line 1063
    return-void
.end method

.method restoreChildFragmentState(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1275
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-eqz v3, :cond_1

    .line 1276
    move-object v3, v1

    const-string v4, "android:support:fragments"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v2, v3

    .line 1278
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 1279
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-nez v3, :cond_0

    .line 1280
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V

    .line 1282
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mChildNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroid/support/v4/app/FragmentManagerNonConfig;)V

    .line 1283
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v4/app/Fragment;->mChildNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 1284
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    .line 1287
    :cond_1
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 476
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    .line 477
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 478
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 480
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 481
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 482
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v2, :cond_1

    .line 483
    new-instance v2, Landroid/support/v4/app/SuperNotCalledException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 486
    :cond_1
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 4

    .prologue
    .line 1909
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 1910
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 4

    .prologue
    .line 1933
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 1934
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 559
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v2, :cond_0

    .line 560
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Fragment already active"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 562
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 563
    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .locals 4

    .prologue
    .line 1698
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    .line 1699
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1723
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mEnterTransition:Ljava/lang/Object;

    .line 1724
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .locals 4

    .prologue
    .line 1709
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    .line 1710
    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1788
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mExitTransition:Ljava/lang/Object;

    .line 1789
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 4

    .prologue
    .line 842
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 843
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    .line 844
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 845
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 848
    :cond_0
    return-void
.end method

.method final setIndex(ILandroid/support/v4/app/Fragment;)V
    .locals 7

    .prologue
    .line 489
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    .line 490
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 491
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    .line 495
    :goto_0
    return-void

    .line 493
    :cond_0
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android:fragment:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_0
.end method

.method public setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V
    .locals 6

    .prologue
    .line 582
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v2, :cond_0

    .line 583
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Fragment already active"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 585
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    :goto_0
    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 587
    return-void

    .line 585
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setMenuVisibility(Z)V
    .locals 4

    .prologue
    .line 860
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 861
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    .line 862
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 863
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 866
    :cond_0
    return-void
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1821
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mReenterTransition:Ljava/lang/Object;

    .line 1822
    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 4

    .prologue
    .line 827
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    .line 828
    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1754
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mReturnTransition:Ljava/lang/Object;

    .line 1755
    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1851
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mSharedElementEnterTransition:Ljava/lang/Object;

    .line 1852
    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1880
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mSharedElementReturnTransition:Ljava/lang/Object;

    .line 1881
    return-void
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;I)V
    .locals 5

    .prologue
    .line 601
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 602
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 603
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 5

    .prologue
    .line 885
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v2, :cond_0

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 886
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 887
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V

    .line 889
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 890
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    move v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 891
    return-void

    .line 890
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1108
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v2, :cond_0

    .line 1109
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentHostCallback;->onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .line 1111
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 921
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 922
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 9
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 929
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v3, :cond_0

    .line 930
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not attached to Activity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 932
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v4, v0

    move-object v5, v1

    const/4 v6, -0x1

    move-object v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 933
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 7

    .prologue
    .line 940
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 941
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 10
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 948
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v4, :cond_0

    .line 949
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not attached to Activity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 951
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v4/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 952
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 18
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 961
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v8, :cond_0

    .line 962
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fragment "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not attached to Activity"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 964
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move-object v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move-object/from16 v16, v7

    invoke-virtual/range {v8 .. v16}, Landroid/support/v4/app/FragmentHostCallback;->onStartIntentSenderFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 966
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 517
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 518
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 519
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v2, :cond_0

    .line 520
    move-object v2, v1

    const-string v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 521
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 523
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v2, :cond_1

    .line 524
    move-object v2, v1

    const-string v3, " id=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 525
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 527
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 528
    move-object v2, v1

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 529
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 531
    :cond_2
    move-object v2, v1

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 532
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1666
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1667
    return-void
.end method
