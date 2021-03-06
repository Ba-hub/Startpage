.class public Landroid/support/v4/app/FragmentActivity;
.super Landroid/support/v4/app/BaseFragmentActivityJB;
.source "FragmentActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentActivity$HostCallbacks;,
        Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    }
.end annotation


# static fields
.field static final ALLOCATED_REQUEST_INDICIES_TAG:Ljava/lang/String; = "android:support:request_indicies"

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field private static final HONEYCOMB:I = 0xb

.field static final MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS:I = 0xfffe

.field static final MSG_REALLY_STOPPED:I = 0x1

.field static final MSG_RESUME_PENDING:I = 0x2

.field static final NEXT_CANDIDATE_REQUEST_INDEX_TAG:Ljava/lang/String; = "android:support:next_request_index"

.field static final REQUEST_FRAGMENT_WHO_TAG:Ljava/lang/String; = "android:support:request_fragment_who"

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mCreated:Z

.field final mFragments:Landroid/support/v4/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

.field mNextCandidateRequestIndex:I

.field mOptionsMenuInvalidated:Z

.field mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReallyStopped:Z

.field mRequestedPermissionsFromFragment:Z

.field mResumed:Z

.field mRetaining:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/app/BaseFragmentActivityJB;-><init>()V

    .line 92
    move-object v1, v0

    new-instance v2, Landroid/support/v4/app/FragmentActivity$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/app/FragmentActivity$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v2, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    .line 111
    move-object v1, v0

    new-instance v2, Landroid/support/v4/app/FragmentActivity$HostCallbacks;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/app/FragmentActivity$HostCallbacks;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v2}, Landroid/support/v4/app/FragmentController;->createController(Landroid/support/v4/app/FragmentHostCallback;)Landroid/support/v4/app/FragmentController;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    .line 1005
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method

.method private allocateRequestIndex(Landroid/support/v4/app/Fragment;)I
    .locals 7

    .prologue
    .line 967
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v3

    const v4, 0xfffe

    if-lt v3, v4, :cond_0

    .line 968
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Too many pending Fragment activity results."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 972
    :cond_0
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {v3, v4}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_1

    .line 973
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    const v5, 0xfffe

    rem-int/2addr v4, v5

    iput v4, v3, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    goto :goto_0

    .line 977
    :cond_1
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    move v2, v3

    .line 978
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    move v4, v2

    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 979
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    const v5, 0xfffe

    rem-int/2addr v4, v5

    iput v4, v3, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 982
    move v3, v2

    move v0, v3

    return v0
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 13

    .prologue
    .line 767
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 768
    move-object v7, v3

    if-nez v7, :cond_0

    .line 769
    move-object v7, v2

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 785
    :goto_0
    return-void

    .line 772
    :cond_0
    move-object v7, v2

    move-object v8, v3

    invoke-static {v8}, Landroid/support/v4/app/FragmentActivity;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 773
    move-object v7, v3

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-nez v7, :cond_1

    .line 774
    goto :goto_0

    .line 776
    :cond_1
    move-object v7, v3

    check-cast v7, Landroid/view/ViewGroup;

    move-object v4, v7

    .line 777
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v5, v7

    .line 778
    move v7, v5

    if-gtz v7, :cond_2

    .line 779
    goto :goto_0

    .line 781
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 782
    const/4 v7, 0x0

    move v6, v7

    :goto_1
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_3

    .line 783
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move v11, v6

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 782
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 785
    :cond_3
    goto :goto_0
.end method

.method private requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 11

    .prologue
    .line 990
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, v3

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 991
    move-object v6, v0

    move-object v7, v2

    move v8, v3

    invoke-static {v6, v7, v8}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1003
    :goto_0
    return-void

    .line 994
    :cond_0
    move v6, v3

    invoke-static {v6}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 996
    move-object v6, v0

    const/4 v7, 0x1

    :try_start_0
    iput-boolean v7, v6, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 997
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroid/support/v4/app/Fragment;)I

    move-result v6

    move v4, v6

    .line 998
    move-object v6, v0

    move-object v7, v2

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x10

    shl-int/lit8 v8, v8, 0x10

    move v9, v3

    const v10, 0xffff

    and-int/2addr v9, v10

    add-int/2addr v8, v9

    invoke-static {v6, v7, v8}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 1003
    goto :goto_0

    .line 1001
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    move-object v6, v5

    throw v6
.end method

.method private static viewToString(Landroid/view/View;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 701
    move-object v0, p0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const/16 v9, 0x80

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v7

    .line 702
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 703
    move-object v7, v1

    const/16 v8, 0x7b

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 704
    move-object v7, v1

    move-object v8, v0

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 705
    move-object v7, v1

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 706
    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 710
    move-object v7, v1

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 712
    :goto_0
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isFocusable()Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x46

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 713
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x45

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 714
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->willNotDraw()Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x2e

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 715
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x48

    :goto_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 716
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x56

    :goto_5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 717
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isClickable()Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x43

    :goto_6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 718
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isLongClickable()Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x4c

    :goto_7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 719
    move-object v7, v1

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 720
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x46

    :goto_8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 721
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0x53

    :goto_9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 722
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isPressed()Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x50

    :goto_a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 723
    move-object v7, v1

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 724
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 725
    move-object v7, v1

    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 726
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 727
    move-object v7, v1

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 728
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 729
    move-object v7, v1

    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 730
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 731
    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    move v2, v7

    .line 732
    move v7, v2

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 733
    move-object v7, v1

    const-string v8, " #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 734
    move-object v7, v1

    move v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 735
    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v3, v7

    .line 736
    move v7, v2

    if-eqz v7, :cond_0

    move-object v7, v3

    if-eqz v7, :cond_0

    .line 739
    move v7, v2

    const/high16 v8, -0x1000000

    and-int/2addr v7, v8

    sparse-switch v7, :sswitch_data_1

    .line 747
    move-object v7, v3

    move v8, v2

    :try_start_0
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 750
    :goto_b
    move-object v7, v3

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 751
    move-object v7, v3

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 752
    move-object v7, v1

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 753
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 754
    move-object v7, v1

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 755
    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 756
    move-object v7, v1

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 757
    move-object v7, v1

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 762
    :cond_0
    :goto_c
    move-object v7, v1

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 763
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    return-object v0

    .line 707
    :sswitch_0
    move-object v7, v1

    const/16 v8, 0x56

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    goto/16 :goto_0

    .line 708
    :sswitch_1
    move-object v7, v1

    const/16 v8, 0x49

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    goto/16 :goto_0

    .line 709
    :sswitch_2
    move-object v7, v1

    const/16 v8, 0x47

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    goto/16 :goto_0

    .line 712
    :cond_1
    const/16 v8, 0x2e

    goto/16 :goto_1

    .line 713
    :cond_2
    const/16 v8, 0x2e

    goto/16 :goto_2

    .line 714
    :cond_3
    const/16 v8, 0x44

    goto/16 :goto_3

    .line 715
    :cond_4
    const/16 v8, 0x2e

    goto/16 :goto_4

    .line 716
    :cond_5
    const/16 v8, 0x2e

    goto/16 :goto_5

    .line 717
    :cond_6
    const/16 v8, 0x2e

    goto/16 :goto_6

    .line 718
    :cond_7
    const/16 v8, 0x2e

    goto/16 :goto_7

    .line 720
    :cond_8
    const/16 v8, 0x2e

    goto/16 :goto_8

    .line 721
    :cond_9
    const/16 v8, 0x2e

    goto/16 :goto_9

    .line 722
    :cond_a
    const/16 v8, 0x2e

    goto/16 :goto_a

    .line 741
    :sswitch_3
    :try_start_1
    const-string v7, "app"

    move-object v4, v7

    .line 742
    goto/16 :goto_b

    .line 744
    :sswitch_4
    const-string v7, "android"
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v7

    .line 745
    goto/16 :goto_b

    .line 758
    :catch_0
    move-exception v7

    move-object v4, v7

    goto :goto_c

    .line 706
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    .line 739
    :sswitch_data_1
    .sparse-switch
        0x1000000 -> :sswitch_4
        0x7f000000 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .prologue
    .line 376
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method doReallyStop(Z)V
    .locals 4

    .prologue
    .line 788
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    if-nez v2, :cond_1

    .line 789
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 790
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    .line 791
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 792
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->onReallyStop()V

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    move v2, v1

    if-eqz v2, :cond_0

    .line 798
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentController;->doLoaderStart()V

    .line 799
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentController;->doLoaderStop(Z)V

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 681
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_0

    .line 685
    :cond_0
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v3

    const-string v7, "Local FragmentActivity "

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 686
    move-object v6, v3

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 687
    move-object v6, v3

    const-string v7, " State:"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 689
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v3

    const-string v7, "mCreated="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 690
    move-object v6, v3

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Z)V

    move-object v6, v3

    const-string v7, "mResumed="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 691
    move-object v6, v3

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Z)V

    move-object v6, v3

    const-string v7, " mStopped="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 692
    move-object v6, v3

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Z)V

    move-object v6, v3

    const-string v7, " mReallyStopped="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 693
    move-object v6, v3

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 694
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v7, v5

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v4/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 695
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v4/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 696
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v3

    const-string v7, "View Hierarchy:"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 698
    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 645
    move-object v0, p0

    move-object v2, v0

    .line 646
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    move-object v1, v2

    .line 647
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 2

    .prologue
    .line 836
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
    .locals 2

    .prologue
    .line 840
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final getSupportMediaController()Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    move-object v0, v1

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    .prologue
    .line 150
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 151
    move v7, v1

    const/16 v8, 0x10

    shr-int/lit8 v7, v7, 0x10

    move v4, v7

    .line 152
    move v7, v4

    if-eqz v7, :cond_2

    .line 153
    add-int/lit8 v4, v4, -0x1

    .line 155
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v5, v7

    .line 156
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 157
    move-object v7, v5

    if-nez v7, :cond_0

    .line 158
    const-string v7, "FragmentActivity"

    const-string v8, "Activity result delivered for unknown Fragment."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 171
    :goto_0
    return-void

    .line 161
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    move-object v6, v7

    .line 162
    move-object v7, v6

    if-nez v7, :cond_1

    .line 163
    const-string v7, "FragmentActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activity result no fragment exists for who: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 167
    :goto_1
    goto :goto_0

    .line 165
    :cond_1
    move-object v7, v6

    move v8, v1

    const v9, 0xffff

    and-int/2addr v8, v9

    move v9, v2

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 170
    :cond_2
    move-object v7, v0

    move v8, v1

    move v9, v2

    move-object v10, v3

    invoke-super {v7, v8, v9, v10}, Landroid/support/v4/app/BaseFragmentActivityJB;->onActivityResult(IILandroid/content/Intent;)V

    .line 171
    goto :goto_0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 829
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onBackPressed()V

    .line 182
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 305
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/app/BaseFragmentActivityJB;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 306
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 307
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 315
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentController;->attachHost(Landroid/support/v4/app/Fragment;)V

    .line 317
    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreate(Landroid/os/Bundle;)V

    .line 319
    move-object v7, v0

    .line 320
    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    move-object v2, v7

    .line 321
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 322
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v8, v2

    iget-object v8, v8, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentController;->restoreLoaderNonConfig(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 324
    :cond_0
    move-object v7, v1

    if-eqz v7, :cond_2

    .line 325
    move-object v7, v1

    const-string v8, "android:support:fragments"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    move-object v3, v7

    .line 326
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v8, v3

    move-object v9, v2

    if-eqz v9, :cond_4

    move-object v9, v2

    iget-object v9, v9, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Landroid/support/v4/app/FragmentManagerNonConfig;

    :goto_0
    invoke-virtual {v7, v8, v9}, Landroid/support/v4/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Landroid/support/v4/app/FragmentManagerNonConfig;)V

    .line 329
    move-object v7, v1

    const-string v8, "android:support:next_request_index"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 330
    move-object v7, v0

    move-object v8, v1

    const-string v9, "android:support:next_request_index"

    .line 331
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 332
    move-object v7, v1

    const-string v8, "android:support:request_indicies"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    move-object v4, v7

    .line 333
    move-object v7, v1

    const-string v8, "android:support:request_fragment_who"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 334
    move-object v7, v4

    if-eqz v7, :cond_1

    move-object v7, v5

    if-eqz v7, :cond_1

    move-object v7, v4

    array-length v7, v7

    move-object v8, v5

    array-length v8, v8

    if-eq v7, v8, :cond_5

    .line 336
    :cond_1
    const-string v7, "FragmentActivity"

    const-string v8, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 346
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v7, :cond_3

    .line 347
    move-object v7, v0

    new-instance v8, Landroid/support/v4/util/SparseArrayCompat;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v8, v7, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    .line 348
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 351
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentController;->dispatchCreate()V

    .line 352
    return-void

    .line 326
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 338
    :cond_5
    move-object v7, v0

    new-instance v8, Landroid/support/v4/util/SparseArrayCompat;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v4

    array-length v10, v10

    invoke-direct {v9, v10}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    iput-object v8, v7, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    .line 339
    const/4 v7, 0x0

    move v6, v7

    :goto_1
    move v7, v6

    move-object v8, v4

    array-length v8, v8

    if-ge v7, v8, :cond_2

    .line 340
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    move-object v8, v4

    move v9, v6

    aget v8, v8, v9

    move-object v9, v5

    move v10, v6

    aget-object v9, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 339
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 8

    .prologue
    .line 359
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    if-nez v4, :cond_1

    .line 360
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    move v3, v4

    .line 361
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    or-int/2addr v4, v5

    move v3, v4

    .line 362
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 363
    move v4, v3

    move v0, v4

    .line 370
    :goto_0
    return v0

    .line 368
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 370
    :cond_1
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 8

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 384
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onDestroy()V

    .line 386
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 388
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->dispatchDestroy()V

    .line 389
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->doLoaderDestroy()V

    .line 390
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 397
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onLowMemory()V

    .line 398
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->dispatchLowMemory()V

    .line 399
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 406
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v4/app/BaseFragmentActivityJB;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    const/4 v3, 0x1

    move v0, v3

    .line 418
    :goto_0
    return v0

    .line 410
    :cond_0
    move v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 418
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 412
    :sswitch_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 415
    :sswitch_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 410
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentController;->dispatchMultiWindowModeChanged(Z)V

    .line 284
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 461
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/app/BaseFragmentActivityJB;->onNewIntent(Landroid/content/Intent;)V

    .line 462
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 463
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 6

    .prologue
    .line 427
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 432
    :goto_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPanelClosed(ILandroid/view/Menu;)V

    .line 433
    return-void

    .line 429
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 440
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPause()V

    .line 441
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 442
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 446
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->dispatchPause()V

    .line 447
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentController;->dispatchPictureInPictureModeChanged(Z)V

    .line 298
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    .line 494
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPostResume()V

    .line 495
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 496
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 497
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z

    move-result v1

    .line 498
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 7

    .prologue
    .line 532
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v3, v4, v5, v6}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 9

    .prologue
    .line 515
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v1

    if-nez v5, :cond_1

    move-object v5, v3

    if-eqz v5, :cond_1

    .line 516
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    if-eqz v5, :cond_0

    .line 517
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    .line 518
    move-object v5, v3

    invoke-interface {v5}, Landroid/view/Menu;->clear()V

    .line 519
    move-object v5, v0

    move v6, v1

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v5

    .line 521
    :cond_0
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v5

    move v4, v5

    .line 522
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v6

    or-int/2addr v5, v6

    move v4, v5

    .line 523
    move v5, v4

    move v0, v5

    .line 525
    :goto_0
    return v0

    :cond_1
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method onReallyStop()V
    .locals 3

    .prologue
    .line 811
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentController;->doLoaderStop(Z)V

    .line 813
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->dispatchReallyStop()V

    .line 814
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 12
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 894
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v7, v1

    const/16 v8, 0x10

    shr-int/lit8 v7, v7, 0x10

    const v8, 0xffff

    and-int/2addr v7, v8

    move v4, v7

    .line 895
    move v7, v4

    if-eqz v7, :cond_1

    .line 896
    add-int/lit8 v4, v4, -0x1

    .line 898
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v5, v7

    .line 899
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 900
    move-object v7, v5

    if-nez v7, :cond_0

    .line 901
    const-string v7, "FragmentActivity"

    const-string v8, "Activity result delivered for unknown Fragment."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 911
    :goto_0
    return-void

    .line 904
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    move-object v6, v7

    .line 905
    move-object v7, v6

    if-nez v7, :cond_2

    .line 906
    const-string v7, "FragmentActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activity result no fragment exists for who: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 911
    :cond_1
    :goto_1
    goto :goto_0

    .line 908
    :cond_2
    move-object v7, v6

    move v8, v1

    const v9, 0xffff

    and-int/2addr v8, v9

    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 483
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onResume()V

    .line 484
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v1

    .line 485
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 486
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z

    move-result v1

    .line 487
    return-void
.end method

.method protected onResumeFragments()V
    .locals 2

    .prologue
    .line 507
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->dispatchResume()V

    .line 508
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 636
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 542
    move-object v0, p0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    if-eqz v5, :cond_0

    .line 543
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 546
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 548
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentController;->retainNestedNonConfig()Landroid/support/v4/app/FragmentManagerNonConfig;

    move-result-object v5

    move-object v2, v5

    .line 549
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentController;->retainLoaderNonConfig()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v5

    move-object v3, v5

    .line 551
    move-object v5, v2

    if-nez v5, :cond_1

    move-object v5, v3

    if-nez v5, :cond_1

    move-object v5, v1

    if-nez v5, :cond_1

    .line 552
    const/4 v5, 0x0

    move-object v0, v5

    .line 559
    :goto_0
    return-object v0

    .line 555
    :cond_1
    new-instance v5, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    move-object v4, v5

    .line 556
    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    .line 557
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 558
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/util/SimpleArrayMap;

    .line 559
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 567
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroid/support/v4/app/BaseFragmentActivityJB;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 568
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v6

    move-object v2, v6

    .line 569
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 570
    move-object v6, v1

    const-string v7, "android:support:fragments"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 572
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v6}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 573
    move-object v6, v1

    const-string v7, "android:support:next_request_index"

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 575
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v6}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v6

    new-array v6, v6, [I

    move-object v3, v6

    .line 576
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v6}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object v4, v6

    .line 577
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v7}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 578
    move-object v6, v3

    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v8

    aput v8, v6, v7

    .line 579
    move-object v6, v4

    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v6, v7

    .line 577
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 581
    :cond_1
    move-object v6, v1

    const-string v7, "android:support:request_indicies"

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 582
    move-object v6, v1

    const-string v7, "android:support:request_fragment_who"

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 584
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 592
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onStart()V

    .line 594
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 595
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 596
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    if-nez v1, :cond_0

    .line 599
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    .line 600
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->dispatchActivityCreated()V

    .line 603
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 604
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z

    move-result v1

    .line 606
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->doLoaderStart()V

    .line 610
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->dispatchStart()V

    .line 611
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->reportLoaderStart()V

    .line 612
    return-void
.end method

.method public onStateNotSaved()V
    .locals 2

    .prologue
    .line 469
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 470
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 619
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onStop()V

    .line 621
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 622
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v1

    .line 624
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->dispatchStop()V

    .line 625
    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .locals 4

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V

    .line 241
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .locals 4

    .prologue
    .line 253
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V

    .line 254
    return-void
.end method

.method public final setSupportMediaController(Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/FragmentActivity;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 202
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 203
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat21;->setMediaController(Landroid/app/Activity;Ljava/lang/Object;)V

    .line 205
    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 6

    .prologue
    .line 851
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v3, :cond_0

    .line 852
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 853
    move v3, v2

    invoke-static {v3}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 856
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v4/app/BaseFragmentActivityJB;->startActivityForResult(Landroid/content/Intent;I)V

    .line 857
    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 8
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/support/v4/app/BaseFragmentActivityJB;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 9

    .prologue
    .line 918
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 919
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 12
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 926
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 928
    move v7, v3

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 929
    move-object v7, v0

    move-object v8, v2

    const/4 v9, -0x1

    move-object v10, v4

    :try_start_0
    invoke-static {v7, v8, v9, v10}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 939
    :goto_0
    return-void

    .line 932
    :cond_0
    move v7, v3

    :try_start_1
    invoke-static {v7}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 933
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Landroid/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroid/support/v4/app/Fragment;)I

    move-result v7

    move v5, v7

    .line 934
    move-object v7, v0

    move-object v8, v2

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x10

    shl-int/lit8 v9, v9, 0x10

    move v10, v3

    const v11, 0xffff

    and-int/2addr v10, v11

    add-int/2addr v9, v10

    move-object v10, v4

    invoke-static {v7, v8, v9, v10}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 937
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 939
    goto :goto_0

    .line 937
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    move-object v7, v6

    throw v7
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 14
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
    .line 75
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-super/range {v7 .. v13}, Landroid/support/v4/app/BaseFragmentActivityJB;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 16
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
    .line 75
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move-object v15, v7

    invoke-super/range {v8 .. v15}, Landroid/support/v4/app/BaseFragmentActivityJB;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 19
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
    .line 947
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object v11, v0

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 949
    move v11, v3

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 950
    move-object v11, v0

    move-object v12, v2

    move v13, v3

    move-object v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move-object/from16 v18, v8

    :try_start_0
    invoke-static/range {v11 .. v18}, Landroid/support/v4/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 962
    :goto_0
    return-void

    .line 954
    :cond_0
    move v11, v3

    :try_start_1
    invoke-static {v11}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 955
    move-object v11, v0

    move-object v12, v1

    invoke-direct {v11, v12}, Landroid/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroid/support/v4/app/Fragment;)I

    move-result v11

    move v9, v11

    .line 956
    move-object v11, v0

    move-object v12, v2

    move v13, v9

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    const/16 v14, 0x10

    shl-int/lit8 v13, v13, 0x10

    move v14, v3

    const v15, 0xffff

    and-int/2addr v14, v15

    add-int/2addr v13, v14

    move-object v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move-object/from16 v18, v8

    invoke-static/range {v11 .. v18}, Landroid/support/v4/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 960
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 962
    goto :goto_0

    .line 960
    :catchall_0
    move-exception v11

    move-object v10, v11

    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    move-object v11, v10

    throw v11
.end method

.method public supportFinishAfterTransition()V
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    .line 229
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 3

    .prologue
    .line 658
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 661
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompatHoneycomb;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 668
    :goto_0
    return-void

    .line 667
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    .line 668
    goto :goto_0
.end method

.method public supportPostponeEnterTransition()V
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 262
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 2

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 270
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 4

    .prologue
    .line 868
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    if-nez v2, :cond_0

    move v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 870
    move v2, v1

    invoke-static {v2}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 872
    :cond_0
    return-void
.end method
