.class Landroid/support/v4/print/PrintHelperKitkat$3;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelperKitkat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAttributes:Landroid/print/PrintAttributes;

.field mBitmap:Landroid/graphics/Bitmap;

.field mLoadBitmap:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v4/print/PrintHelperKitkat;

.field final synthetic val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

.field final synthetic val$fittingMode:I

.field final synthetic val$imageFile:Landroid/net/Uri;

.field final synthetic val$jobName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;I)V
    .locals 8

    .prologue
    .line 450
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v4/print/PrintHelperKitkat$3;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroid/support/v4/print/PrintHelperKitkat$3;->val$jobName:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroid/support/v4/print/PrintHelperKitkat$3;->val$imageFile:Landroid/net/Uri;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroid/support/v4/print/PrintHelperKitkat$3;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    move-object v6, v0

    move v7, v5

    iput v7, v6, Landroid/support/v4/print/PrintHelperKitkat$3;->val$fittingMode:I

    move-object v6, v0

    invoke-direct {v6}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 453
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v4/print/PrintHelperKitkat$3;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$300(Landroid/support/v4/print/PrintHelperKitkat$3;)V
    .locals 2

    .prologue
    .line 450
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/print/PrintHelperKitkat$3;->cancelLoad()V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v4/print/PrintHelperKitkat$3;)Landroid/print/PrintAttributes;
    .locals 2

    .prologue
    .line 450
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/print/PrintHelperKitkat$3;->mAttributes:Landroid/print/PrintAttributes;

    move-object v0, v1

    return-object v0
.end method

.method private cancelLoad()V
    .locals 6

    .prologue
    .line 557
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/print/PrintHelperKitkat$3;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-static {v3}, Landroid/support/v4/print/PrintHelperKitkat;->access$700(Landroid/support/v4/print/PrintHelperKitkat;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 558
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/print/PrintHelperKitkat$3;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget-object v3, v3, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v3, :cond_0

    .line 559
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/print/PrintHelperKitkat$3;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget-object v3, v3, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v3}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 560
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/print/PrintHelperKitkat$3;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 562
    :cond_0
    move-object v3, v1

    monitor-exit v3

    .line 563
    return-void

    .line 562
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 567
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    .line 568
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/print/PrintHelperKitkat$3;->cancelLoad()V

    .line 569
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/print/PrintHelperKitkat$3;->mLoadBitmap:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 570
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/print/PrintHelperKitkat$3;->mLoadBitmap:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v1

    .line 572
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/print/PrintHelperKitkat$3;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    if-eqz v1, :cond_1

    .line 573
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/print/PrintHelperKitkat$3;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    invoke-interface {v1}, Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;->onFinish()V

    .line 575
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/print/PrintHelperKitkat$3;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 576
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/print/PrintHelperKitkat$3;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 577
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/print/PrintHelperKitkat$3;->mBitmap:Landroid/graphics/Bitmap;

    .line 579
    :cond_2
    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 17

    .prologue
    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v8, v0

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v6, v9

    monitor-enter v8

    .line 463
    move-object v8, v0

    move-object v9, v2

    :try_start_0
    iput-object v9, v8, Landroid/support/v4/print/PrintHelperKitkat$3;->mAttributes:Landroid/print/PrintAttributes;

    .line 464
    move-object v8, v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    move-object v8, v3

    invoke-virtual {v8}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 467
    move-object v8, v4

    invoke-virtual {v8}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 554
    :goto_0
    return-void

    .line 464
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v6

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v7

    throw v8

    .line 471
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/print/PrintHelperKitkat$3;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    .line 472
    new-instance v8, Landroid/print/PrintDocumentInfo$Builder;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/print/PrintHelperKitkat$3;->val$jobName:Ljava/lang/String;

    invoke-direct {v9, v10}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    .line 473
    invoke-virtual {v8, v9}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v8

    const/4 v9, 0x1

    .line 474
    invoke-virtual {v8, v9}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v8

    .line 475
    invoke-virtual {v8}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v8

    move-object v6, v8

    .line 476
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    move v7, v8

    .line 477
    move-object v8, v4

    move-object v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 478
    goto :goto_0

    .line 476
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 481
    :cond_2
    move-object v8, v0

    new-instance v9, Landroid/support/v4/print/PrintHelperKitkat$3$1;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    move-object v12, v3

    move-object v13, v2

    move-object v14, v1

    move-object v15, v4

    invoke-direct/range {v10 .. v15}, Landroid/support/v4/print/PrintHelperKitkat$3$1;-><init>(Landroid/support/v4/print/PrintHelperKitkat$3;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V

    const/4 v10, 0x0

    new-array v10, v10, [Landroid/net/Uri;

    .line 553
    invoke-virtual {v9, v10}, Landroid/support/v4/print/PrintHelperKitkat$3$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v9

    iput-object v9, v8, Landroid/support/v4/print/PrintHelperKitkat$3;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 554
    goto :goto_0
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 12

    .prologue
    .line 585
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/print/PrintHelperKitkat$3;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/print/PrintHelperKitkat$3;->mAttributes:Landroid/print/PrintAttributes;

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/print/PrintHelperKitkat$3;->val$fittingMode:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/print/PrintHelperKitkat$3;->mBitmap:Landroid/graphics/Bitmap;

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-static/range {v5 .. v11}, Landroid/support/v4/print/PrintHelperKitkat;->access$000(Landroid/support/v4/print/PrintHelperKitkat;Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    .line 587
    return-void
.end method
