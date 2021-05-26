.class public Landroid/support/v7/util/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# static fields
.field private static final FLAG_CHANGED:I = 0x2

.field private static final FLAG_IGNORE:I = 0x10

.field private static final FLAG_MASK:I = 0x1f

.field private static final FLAG_MOVED_CHANGED:I = 0x4

.field private static final FLAG_MOVED_NOT_CHANGED:I = 0x8

.field private static final FLAG_NOT_CHANGED:I = 0x1

.field private static final FLAG_OFFSET:I = 0x5


# instance fields
.field private final mCallback:Landroid/support/v7/util/DiffUtil$Callback;

.field private final mDetectMoves:Z

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I

.field private final mSnakes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/util/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/DiffUtil$Callback;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;[I[IZ)V"
        }
    .end annotation

    .prologue
    .line 473
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 474
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    .line 475
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 476
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 477
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 478
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 479
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    .line 480
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/util/DiffUtil$Callback;->getOldListSize()I

    move-result v7

    iput v7, v6, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    .line 481
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/util/DiffUtil$Callback;->getNewListSize()I

    move-result v7

    iput v7, v6, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    .line 482
    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 483
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/util/DiffUtil$DiffResult;->addRootSnake()V

    .line 484
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItems()V

    .line 485
    return-void
.end method

.method private addRootSnake()V
    .locals 7

    .prologue
    .line 492
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    move-object v1, v3

    .line 493
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    if-nez v3, :cond_0

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    if-eqz v3, :cond_1

    .line 494
    :cond_0
    new-instance v3, Landroid/support/v7/util/DiffUtil$Snake;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    move-object v2, v3

    .line 495
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 496
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 497
    move-object v3, v2

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 498
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 499
    move-object v3, v2

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 500
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    const/4 v4, 0x0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 502
    :cond_1
    return-void

    .line 492
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/util/DiffUtil$Snake;

    goto :goto_0
.end method

.method private dispatchAdditions(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroid/support/v7/util/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 750
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v10, :cond_0

    .line 751
    move-object v10, v2

    move v11, v3

    move v12, v4

    invoke-interface {v10, v11, v12}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    .line 786
    :goto_0
    return-void

    .line 754
    :cond_0
    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v6, v10

    :goto_1
    move v10, v6

    if-ltz v10, :cond_2

    .line 755
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    move v11, v5

    move v12, v6

    add-int/2addr v11, v12

    aget v10, v10, v11

    const/16 v11, 0x1f

    and-int/lit8 v10, v10, 0x1f

    move v7, v10

    .line 756
    move v10, v7

    sparse-switch v10, :sswitch_data_0

    .line 781
    new-instance v10, Ljava/lang/IllegalStateException;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unknown flag for pos "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v5

    move v14, v6

    add-int/2addr v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v7

    int-to-long v13, v13

    .line 783
    invoke-static {v13, v14}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 758
    :sswitch_0
    move-object v10, v2

    move v11, v3

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    .line 759
    move-object v10, v1

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v8, v10

    :goto_2
    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-object v9, v10

    .line 760
    move-object v10, v9

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    iget v11, v11, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    .line 761
    goto :goto_2

    .line 754
    :cond_1
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 765
    :sswitch_1
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    move v11, v5

    move v12, v6

    add-int/2addr v11, v12

    aget v10, v10, v11

    const/4 v11, 0x5

    shr-int/lit8 v10, v10, 0x5

    move v8, v10

    .line 766
    move-object v10, v1

    move v11, v8

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/support/v7/util/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-result-object v10

    move-object v9, v10

    .line 770
    move-object v10, v2

    move-object v11, v9

    iget v11, v11, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    move v12, v3

    invoke-interface {v10, v11, v12}, Landroid/support/v7/util/ListUpdateCallback;->onMoved(II)V

    .line 771
    move v10, v7

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1

    .line 773
    move-object v10, v2

    move v11, v3

    const/4 v12, 0x1

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    move v14, v8

    move v15, v5

    move/from16 v16, v6

    add-int v15, v15, v16

    .line 774
    invoke-virtual {v13, v14, v15}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v13

    .line 773
    invoke-interface {v10, v11, v12, v13}, Landroid/support/v7/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_3

    .line 778
    :sswitch_2
    move-object v10, v1

    new-instance v11, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move v13, v5

    move v14, v6

    add-int/2addr v13, v14

    move v14, v3

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Landroid/support/v7/util/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 779
    goto :goto_3

    .line 786
    :cond_2
    goto/16 :goto_0

    .line 756
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private dispatchRemovals(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroid/support/v7/util/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 790
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v10, :cond_0

    .line 791
    move-object v10, v2

    move v11, v3

    move v12, v4

    invoke-interface {v10, v11, v12}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    .line 827
    :goto_0
    return-void

    .line 794
    :cond_0
    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v6, v10

    :goto_1
    move v10, v6

    if-ltz v10, :cond_2

    .line 795
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move v11, v5

    move v12, v6

    add-int/2addr v11, v12

    aget v10, v10, v11

    const/16 v11, 0x1f

    and-int/lit8 v10, v10, 0x1f

    move v7, v10

    .line 796
    move v10, v7

    sparse-switch v10, :sswitch_data_0

    .line 822
    new-instance v10, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unknown flag for pos "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v5

    move v14, v6

    add-int/2addr v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v7

    int-to-long v13, v13

    .line 824
    invoke-static {v13, v14}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 798
    :sswitch_0
    move-object v10, v2

    move v11, v3

    move v12, v6

    add-int/2addr v11, v12

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    .line 799
    move-object v10, v1

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v8, v10

    :goto_2
    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-object v9, v10

    .line 800
    move-object v10, v9

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    iget v11, v11, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    .line 801
    goto :goto_2

    .line 794
    :cond_1
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 805
    :sswitch_1
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move v11, v5

    move v12, v6

    add-int/2addr v11, v12

    aget v10, v10, v11

    const/4 v11, 0x5

    shr-int/lit8 v10, v10, 0x5

    move v8, v10

    .line 806
    move-object v10, v1

    move v11, v8

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/support/v7/util/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-result-object v10

    move-object v9, v10

    .line 811
    move-object v10, v2

    move v11, v3

    move v12, v6

    add-int/2addr v11, v12

    move-object v12, v9

    iget v12, v12, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v10, v11, v12}, Landroid/support/v7/util/ListUpdateCallback;->onMoved(II)V

    .line 812
    move v10, v7

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1

    .line 814
    move-object v10, v2

    move-object v11, v9

    iget v11, v11, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x1

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    move v14, v5

    move v15, v6

    add-int/2addr v14, v15

    move v15, v8

    .line 815
    invoke-virtual {v13, v14, v15}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v13

    .line 814
    invoke-interface {v10, v11, v12, v13}, Landroid/support/v7/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_3

    .line 819
    :sswitch_2
    move-object v10, v1

    new-instance v11, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move v13, v5

    move v14, v6

    add-int/2addr v13, v14

    move v14, v3

    move v15, v6

    add-int/2addr v14, v15

    const/4 v15, 0x1

    invoke-direct {v12, v13, v14, v15}, Landroid/support/v7/util/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 820
    goto :goto_3

    .line 827
    :cond_2
    goto/16 :goto_0

    .line 796
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private findAddition(III)V
    .locals 9

    .prologue
    .line 552
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-eqz v4, :cond_0

    .line 556
    :goto_0
    return-void

    .line 555
    :cond_0
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    move-result v4

    .line 556
    goto :goto_0
.end method

.method private findMatchingItem(IIIZ)Z
    .locals 21

    .prologue
    .line 581
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v17, v6

    if-eqz v17, :cond_0

    .line 582
    move/from16 v17, v4

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v7, v17

    .line 583
    move/from16 v17, v3

    move/from16 v8, v17

    .line 584
    move/from16 v17, v4

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v9, v17

    .line 590
    :goto_0
    move/from16 v17, v5

    move/from16 v10, v17

    :goto_1
    move/from16 v17, v10

    if-ltz v17, :cond_7

    .line 591
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    move-object/from16 v17, v0

    move/from16 v18, v10

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/support/v7/util/DiffUtil$Snake;

    move-object/from16 v11, v17

    .line 592
    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v12, v17

    .line 593
    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v13, v17

    .line 594
    move/from16 v17, v6

    if-eqz v17, :cond_4

    .line 596
    move/from16 v17, v8

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v14, v17

    :goto_2
    move/from16 v17, v14

    move/from16 v18, v12

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 597
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    move-object/from16 v17, v0

    move/from16 v18, v14

    move/from16 v19, v7

    invoke-virtual/range {v17 .. v19}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 599
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    move-object/from16 v17, v0

    move/from16 v18, v14

    move/from16 v19, v7

    invoke-virtual/range {v17 .. v19}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v17

    move/from16 v15, v17

    .line 600
    move/from16 v17, v15

    if-eqz v17, :cond_1

    const/16 v17, 0x8

    :goto_3
    move/from16 v16, v17

    .line 602
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    move-object/from16 v17, v0

    move/from16 v18, v7

    move/from16 v19, v14

    const/16 v20, 0x5

    shl-int/lit8 v19, v19, 0x5

    const/16 v20, 0x10

    or-int/lit8 v19, v19, 0x10

    aput v19, v17, v18

    .line 603
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move-object/from16 v17, v0

    move/from16 v18, v14

    move/from16 v19, v7

    const/16 v20, 0x5

    shl-int/lit8 v19, v19, 0x5

    move/from16 v20, v16

    or-int v19, v19, v20

    aput v19, v17, v18

    .line 604
    const/16 v17, 0x1

    move/from16 v2, v17

    .line 624
    :goto_4
    return v2

    .line 586
    :cond_0
    move/from16 v17, v3

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v7, v17

    .line 587
    move/from16 v17, v3

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v8, v17

    .line 588
    move/from16 v17, v4

    move/from16 v9, v17

    goto/16 :goto_0

    .line 600
    :cond_1
    const/16 v17, 0x4

    goto :goto_3

    .line 596
    :cond_2
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_2

    .line 621
    :cond_3
    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move/from16 v17, v0

    move/from16 v8, v17

    .line 622
    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move/from16 v17, v0

    move/from16 v9, v17

    .line 590
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_1

    .line 609
    :cond_4
    move/from16 v17, v9

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v14, v17

    :goto_5
    move/from16 v17, v14

    move/from16 v18, v13

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 610
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    move-object/from16 v17, v0

    move/from16 v18, v7

    move/from16 v19, v14

    invoke-virtual/range {v17 .. v19}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 612
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    move-object/from16 v17, v0

    move/from16 v18, v7

    move/from16 v19, v14

    invoke-virtual/range {v17 .. v19}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v17

    move/from16 v15, v17

    .line 613
    move/from16 v17, v15

    if-eqz v17, :cond_5

    const/16 v17, 0x8

    :goto_6
    move/from16 v16, v17

    .line 615
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move-object/from16 v17, v0

    move/from16 v18, v3

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v19, v14

    const/16 v20, 0x5

    shl-int/lit8 v19, v19, 0x5

    const/16 v20, 0x10

    or-int/lit8 v19, v19, 0x10

    aput v19, v17, v18

    .line 616
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    move-object/from16 v17, v0

    move/from16 v18, v14

    move/from16 v19, v3

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x5

    shl-int/lit8 v19, v19, 0x5

    move/from16 v20, v16

    or-int v19, v19, v20

    aput v19, v17, v18

    .line 617
    const/16 v17, 0x1

    move/from16 v2, v17

    goto/16 :goto_4

    .line 613
    :cond_5
    const/16 v17, 0x4

    goto :goto_6

    .line 609
    :cond_6
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 624
    :cond_7
    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_4
.end method

.method private findMatchingItems()V
    .locals 16

    .prologue
    .line 516
    move-object/from16 v0, p0

    move-object v12, v0

    iget v12, v12, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    move v1, v12

    .line 517
    move-object v12, v0

    iget v12, v12, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    move v2, v12

    .line 519
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v3, v12

    :goto_0
    move v12, v3

    if-ltz v12, :cond_4

    .line 520
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    move v13, v3

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v7/util/DiffUtil$Snake;

    move-object v4, v12

    .line 521
    move-object v12, v4

    iget v12, v12, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object v13, v4

    iget v13, v13, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v12, v13

    move v5, v12

    .line 522
    move-object v12, v4

    iget v12, v12, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move-object v13, v4

    iget v13, v13, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v12, v13

    move v6, v12

    .line 523
    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-eqz v12, :cond_1

    .line 524
    :goto_1
    move v12, v1

    move v13, v5

    if-le v12, v13, :cond_0

    .line 526
    move-object v12, v0

    move v13, v1

    move v14, v2

    move v15, v3

    invoke-direct {v12, v13, v14, v15}, Landroid/support/v7/util/DiffUtil$DiffResult;->findAddition(III)V

    .line 527
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 529
    :cond_0
    :goto_2
    move v12, v2

    move v13, v6

    if-le v12, v13, :cond_1

    .line 532
    move-object v12, v0

    move v13, v1

    move v14, v2

    move v15, v3

    invoke-direct {v12, v13, v14, v15}, Landroid/support/v7/util/DiffUtil$DiffResult;->findRemoval(III)V

    .line 533
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 536
    :cond_1
    const/4 v12, 0x0

    move v7, v12

    :goto_3
    move v12, v7

    move-object v13, v4

    iget v13, v13, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    if-ge v12, v13, :cond_3

    .line 538
    move-object v12, v4

    iget v12, v12, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move v13, v7

    add-int/2addr v12, v13

    move v8, v12

    .line 539
    move-object v12, v4

    iget v12, v12, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move v13, v7

    add-int/2addr v12, v13

    move v9, v12

    .line 540
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    move v13, v8

    move v14, v9

    .line 541
    invoke-virtual {v12, v13, v14}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v12

    move v10, v12

    .line 542
    move v12, v10

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    :goto_4
    move v11, v12

    .line 543
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move v13, v8

    move v14, v9

    const/4 v15, 0x5

    shl-int/lit8 v14, v14, 0x5

    move v15, v11

    or-int/2addr v14, v15

    aput v14, v12, v13

    .line 544
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    move v13, v9

    move v14, v8

    const/4 v15, 0x5

    shl-int/lit8 v14, v14, 0x5

    move v15, v11

    or-int/2addr v14, v15

    aput v14, v12, v13

    .line 536
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 542
    :cond_2
    const/4 v12, 0x2

    goto :goto_4

    .line 546
    :cond_3
    move-object v12, v4

    iget v12, v12, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move v1, v12

    .line 547
    move-object v12, v4

    iget v12, v12, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move v2, v12

    .line 519
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 549
    :cond_4
    return-void
.end method

.method private findRemoval(III)V
    .locals 9

    .prologue
    .line 559
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-eqz v4, :cond_0

    .line 563
    :goto_0
    return-void

    .line 562
    :cond_0
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    move-result v4

    .line 563
    goto :goto_0
.end method

.method private static removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;IZ)",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;"
        }
    .end annotation

    .prologue
    .line 734
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    :goto_0
    move v6, v3

    if-ltz v6, :cond_3

    .line 735
    move-object v6, v0

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-object v4, v6

    .line 736
    move-object v6, v4

    iget v6, v6, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->posInOwnerList:I

    move v7, v1

    if-ne v6, v7, :cond_2

    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->removal:Z

    move v7, v2

    if-ne v6, v7, :cond_2

    .line 737
    move-object v6, v0

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    .line 738
    move v6, v3

    move v5, v6

    :goto_1
    move v6, v5

    move-object v7, v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 740
    move-object v6, v0

    move v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    move v8, v2

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_2
    add-int/2addr v7, v8

    iput v7, v6, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    .line 738
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 740
    :cond_0
    const/4 v8, -0x1

    goto :goto_2

    .line 742
    :cond_1
    move-object v6, v4

    move-object v0, v6

    .line 745
    :goto_3
    return-object v0

    .line 734
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 745
    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_3
.end method


# virtual methods
.method public dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V
    .locals 21

    .prologue
    .line 693
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v13, v2

    instance-of v13, v13, Landroid/support/v7/util/BatchingListUpdateCallback;

    if-eqz v13, :cond_3

    .line 694
    move-object v13, v2

    check-cast v13, Landroid/support/v7/util/BatchingListUpdateCallback;

    move-object v3, v13

    .line 704
    :goto_0
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v13

    .line 705
    move-object v13, v1

    iget v13, v13, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    move v5, v13

    .line 706
    move-object v13, v1

    iget v13, v13, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    move v6, v13

    .line 707
    move-object v13, v1

    iget-object v13, v13, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v7, v13

    :goto_1
    move v13, v7

    if-ltz v13, :cond_5

    .line 708
    move-object v13, v1

    iget-object v13, v13, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    move v14, v7

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v7/util/DiffUtil$Snake;

    move-object v8, v13

    .line 709
    move-object v13, v8

    iget v13, v13, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    move v9, v13

    .line 710
    move-object v13, v8

    iget v13, v13, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move v14, v9

    add-int/2addr v13, v14

    move v10, v13

    .line 711
    move-object v13, v8

    iget v13, v13, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move v14, v9

    add-int/2addr v13, v14

    move v11, v13

    .line 712
    move v13, v10

    move v14, v5

    if-ge v13, v14, :cond_0

    .line 713
    move-object v13, v1

    move-object v14, v4

    move-object v15, v3

    move/from16 v16, v10

    move/from16 v17, v5

    move/from16 v18, v10

    sub-int v17, v17, v18

    move/from16 v18, v10

    invoke-direct/range {v13 .. v18}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchRemovals(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V

    .line 716
    :cond_0
    move v13, v11

    move v14, v6

    if-ge v13, v14, :cond_1

    .line 717
    move-object v13, v1

    move-object v14, v4

    move-object v15, v3

    move/from16 v16, v10

    move/from16 v17, v6

    move/from16 v18, v11

    sub-int v17, v17, v18

    move/from16 v18, v11

    invoke-direct/range {v13 .. v18}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchAdditions(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V

    .line 720
    :cond_1
    move v13, v9

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v12, v13

    :goto_2
    move v13, v12

    if-ltz v13, :cond_4

    .line 721
    move-object v13, v1

    iget-object v13, v13, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move-object v14, v8

    iget v14, v14, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move v15, v12

    add-int/2addr v14, v15

    aget v13, v13, v14

    const/16 v14, 0x1f

    and-int/lit8 v13, v13, 0x1f

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 722
    move-object v13, v3

    move-object v14, v8

    iget v14, v14, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move v15, v12

    add-int/2addr v14, v15

    const/4 v15, 0x1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    move-object/from16 v16, v0

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move/from16 v17, v0

    move/from16 v18, v12

    add-int v17, v17, v18

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move/from16 v18, v0

    move/from16 v19, v12

    add-int v18, v18, v19

    .line 723
    invoke-virtual/range {v16 .. v18}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v16

    .line 722
    invoke-virtual/range {v13 .. v16}, Landroid/support/v7/util/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 720
    :cond_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 696
    :cond_3
    new-instance v13, Landroid/support/v7/util/BatchingListUpdateCallback;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v15, v2

    invoke-direct {v14, v15}, Landroid/support/v7/util/BatchingListUpdateCallback;-><init>(Landroid/support/v7/util/ListUpdateCallback;)V

    move-object v3, v13

    .line 700
    move-object v13, v3

    move-object v2, v13

    goto/16 :goto_0

    .line 726
    :cond_4
    move-object v13, v8

    iget v13, v13, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move v5, v13

    .line 727
    move-object v13, v8

    iget v13, v13, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move v6, v13

    .line 707
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 729
    :cond_5
    move-object v13, v3

    invoke-virtual {v13}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 730
    return-void
.end method

.method public dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 8

    .prologue
    .line 659
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    new-instance v3, Landroid/support/v7/util/DiffUtil$DiffResult$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/v7/util/DiffUtil$DiffResult$1;-><init>(Landroid/support/v7/util/DiffUtil$DiffResult;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V

    .line 680
    return-void
.end method

.method getSnakes()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation

    .prologue
    .line 831
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method
