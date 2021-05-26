.class public Landroid/support/graphics/drawable/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field params:[F

.field type:C


# direct methods
.method private constructor <init>(C[F)V
    .locals 5

    .prologue
    .line 297
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 298
    move-object v3, v0

    move v4, v1

    iput-char v4, v3, Landroid/support/graphics/drawable/PathParser$PathDataNode;->type:C

    .line 299
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    .line 300
    return-void
.end method

.method synthetic constructor <init>(C[FLandroid/support/graphics/drawable/PathParser$1;)V
    .locals 7

    .prologue
    .line 292
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/graphics/drawable/PathParser$PathDataNode;-><init>(C[F)V

    return-void
.end method

.method private constructor <init>(Landroid/support/graphics/drawable/PathParser$PathDataNode;)V
    .locals 6

    .prologue
    .line 302
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 303
    move-object v2, v0

    move-object v3, v1

    iget-char v3, v3, Landroid/support/graphics/drawable/PathParser$PathDataNode;->type:C

    iput-char v3, v2, Landroid/support/graphics/drawable/PathParser$PathDataNode;->type:C

    .line 304
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    const/4 v4, 0x0

    move-object v5, v1

    iget-object v5, v5, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    array-length v5, v5

    invoke-static {v3, v4, v5}, Landroid/support/graphics/drawable/PathParser;->access$300([FII)[F

    move-result-object v3

    iput-object v3, v2, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    .line 305
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/graphics/drawable/PathParser$PathDataNode;Landroid/support/graphics/drawable/PathParser$1;)V
    .locals 5

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/graphics/drawable/PathParser$PathDataNode;-><init>(Landroid/support/graphics/drawable/PathParser$PathDataNode;)V

    return-void
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .locals 29

    .prologue
    .line 342
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    const/16 v17, 0x2

    move/from16 v7, v17

    .line 343
    move-object/from16 v17, v3

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v8, v17

    .line 344
    move-object/from16 v17, v3

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v9, v17

    .line 345
    move-object/from16 v17, v3

    const/16 v18, 0x2

    aget v17, v17, v18

    move/from16 v10, v17

    .line 346
    move-object/from16 v17, v3

    const/16 v18, 0x3

    aget v17, v17, v18

    move/from16 v11, v17

    .line 347
    move-object/from16 v17, v3

    const/16 v18, 0x4

    aget v17, v17, v18

    move/from16 v12, v17

    .line 348
    move-object/from16 v17, v3

    const/16 v18, 0x5

    aget v17, v17, v18

    move/from16 v13, v17

    .line 352
    move/from16 v17, v5

    sparse-switch v17, :sswitch_data_0

    .line 395
    :goto_0
    const/16 v17, 0x0

    move/from16 v16, v17

    :goto_1
    move/from16 v17, v16

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    .line 396
    move/from16 v17, v5

    sparse-switch v17, :sswitch_data_1

    .line 579
    :goto_2
    move/from16 v17, v5

    move/from16 v4, v17

    .line 395
    move/from16 v17, v16

    move/from16 v18, v7

    add-int v17, v17, v18

    move/from16 v16, v17

    goto :goto_1

    .line 355
    :sswitch_0
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->close()V

    .line 359
    move/from16 v17, v12

    move/from16 v8, v17

    .line 360
    move/from16 v17, v13

    move/from16 v9, v17

    .line 361
    move/from16 v17, v12

    move/from16 v10, v17

    .line 362
    move/from16 v17, v13

    move/from16 v11, v17

    .line 363
    move-object/from16 v17, v2

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->moveTo(FF)V

    .line 364
    goto :goto_0

    .line 371
    :sswitch_1
    const/16 v17, 0x2

    move/from16 v7, v17

    .line 372
    goto :goto_0

    .line 377
    :sswitch_2
    const/16 v17, 0x1

    move/from16 v7, v17

    .line 378
    goto :goto_0

    .line 381
    :sswitch_3
    const/16 v17, 0x6

    move/from16 v7, v17

    .line 382
    goto :goto_0

    .line 387
    :sswitch_4
    const/16 v17, 0x4

    move/from16 v7, v17

    .line 388
    goto :goto_0

    .line 391
    :sswitch_5
    const/16 v17, 0x7

    move/from16 v7, v17

    goto :goto_0

    .line 398
    :sswitch_6
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 399
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 400
    move/from16 v17, v16

    if-lez v17, :cond_0

    .line 404
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/16 :goto_2

    .line 406
    :cond_0
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 407
    move/from16 v17, v8

    move/from16 v12, v17

    .line 408
    move/from16 v17, v9

    move/from16 v13, v17

    .line 410
    goto/16 :goto_2

    .line 412
    :sswitch_7
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v8, v17

    .line 413
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    move/from16 v9, v17

    .line 414
    move/from16 v17, v16

    if-lez v17, :cond_1

    .line 418
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_2

    .line 420
    :cond_1
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->moveTo(FF)V

    .line 421
    move/from16 v17, v8

    move/from16 v12, v17

    .line 422
    move/from16 v17, v9

    move/from16 v13, v17

    .line 424
    goto/16 :goto_2

    .line 426
    :sswitch_8
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 427
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 428
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 429
    goto/16 :goto_2

    .line 431
    :sswitch_9
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->lineTo(FF)V

    .line 432
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v8, v17

    .line 433
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    move/from16 v9, v17

    .line 434
    goto/16 :goto_2

    .line 436
    :sswitch_a
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 437
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 438
    goto/16 :goto_2

    .line 440
    :sswitch_b
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move/from16 v19, v9

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->lineTo(FF)V

    .line 441
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v8, v17

    .line 442
    goto/16 :goto_2

    .line 444
    :sswitch_c
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x0

    add-int/lit8 v20, v20, 0x0

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 445
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 446
    goto/16 :goto_2

    .line 448
    :sswitch_d
    move-object/from16 v17, v2

    move/from16 v18, v8

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x0

    add-int/lit8 v20, v20, 0x0

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->lineTo(FF)V

    .line 449
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v9, v17

    .line 450
    goto/16 :goto_2

    .line 452
    :sswitch_e
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x3

    add-int/lit8 v22, v22, 0x3

    aget v21, v21, v22

    move-object/from16 v22, v6

    move/from16 v23, v16

    const/16 v24, 0x4

    add-int/lit8 v23, v23, 0x4

    aget v22, v22, v23

    move-object/from16 v23, v6

    move/from16 v24, v16

    const/16 v25, 0x5

    add-int/lit8 v24, v24, 0x5

    aget v23, v23, v24

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 455
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v10, v17

    .line 456
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x3

    add-int/lit8 v19, v19, 0x3

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v11, v17

    .line 457
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x4

    add-int/lit8 v19, v19, 0x4

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 458
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x5

    add-int/lit8 v19, v19, 0x5

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 460
    goto/16 :goto_2

    .line 462
    :sswitch_f
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x3

    add-int/lit8 v22, v22, 0x3

    aget v21, v21, v22

    move-object/from16 v22, v6

    move/from16 v23, v16

    const/16 v24, 0x4

    add-int/lit8 v23, v23, 0x4

    aget v22, v22, v23

    move-object/from16 v23, v6

    move/from16 v24, v16

    const/16 v25, 0x5

    add-int/lit8 v24, v24, 0x5

    aget v23, v23, v24

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 464
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x4

    add-int/lit8 v18, v18, 0x4

    aget v17, v17, v18

    move/from16 v8, v17

    .line 465
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x5

    add-int/lit8 v18, v18, 0x5

    aget v17, v17, v18

    move/from16 v9, v17

    .line 466
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    aget v17, v17, v18

    move/from16 v10, v17

    .line 467
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    aget v17, v17, v18

    move/from16 v11, v17

    .line 468
    goto/16 :goto_2

    .line 470
    :sswitch_10
    const/16 v17, 0x0

    move/from16 v14, v17

    .line 471
    const/16 v17, 0x0

    move/from16 v15, v17

    .line 472
    move/from16 v17, v4

    const/16 v18, 0x63

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move/from16 v17, v4

    const/16 v18, 0x73

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move/from16 v17, v4

    const/16 v18, 0x43

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move/from16 v17, v4

    const/16 v18, 0x53

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 474
    :cond_2
    move/from16 v17, v8

    move/from16 v18, v10

    sub-float v17, v17, v18

    move/from16 v14, v17

    .line 475
    move/from16 v17, v9

    move/from16 v18, v11

    sub-float v17, v17, v18

    move/from16 v15, v17

    .line 477
    :cond_3
    move-object/from16 v17, v2

    move/from16 v18, v14

    move/from16 v19, v15

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x0

    add-int/lit8 v21, v21, 0x0

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    aget v21, v21, v22

    move-object/from16 v22, v6

    move/from16 v23, v16

    const/16 v24, 0x2

    add-int/lit8 v23, v23, 0x2

    aget v22, v22, v23

    move-object/from16 v23, v6

    move/from16 v24, v16

    const/16 v25, 0x3

    add-int/lit8 v24, v24, 0x3

    aget v23, v23, v24

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 481
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v10, v17

    .line 482
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v11, v17

    .line 483
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 484
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x3

    add-int/lit8 v19, v19, 0x3

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 485
    goto/16 :goto_2

    .line 487
    :sswitch_11
    move/from16 v17, v8

    move/from16 v14, v17

    .line 488
    move/from16 v17, v9

    move/from16 v15, v17

    .line 489
    move/from16 v17, v4

    const/16 v18, 0x63

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move/from16 v17, v4

    const/16 v18, 0x73

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move/from16 v17, v4

    const/16 v18, 0x43

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move/from16 v17, v4

    const/16 v18, 0x53

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 491
    :cond_4
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v18, v8

    mul-float v17, v17, v18

    move/from16 v18, v10

    sub-float v17, v17, v18

    move/from16 v14, v17

    .line 492
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v18, v9

    mul-float v17, v17, v18

    move/from16 v18, v11

    sub-float v17, v17, v18

    move/from16 v15, v17

    .line 494
    :cond_5
    move-object/from16 v17, v2

    move/from16 v18, v14

    move/from16 v19, v15

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x0

    add-int/lit8 v21, v21, 0x0

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    aget v21, v21, v22

    move-object/from16 v22, v6

    move/from16 v23, v16

    const/16 v24, 0x2

    add-int/lit8 v23, v23, 0x2

    aget v22, v22, v23

    move-object/from16 v23, v6

    move/from16 v24, v16

    const/16 v25, 0x3

    add-int/lit8 v24, v24, 0x3

    aget v23, v23, v24

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 496
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v10, v17

    .line 497
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    move/from16 v11, v17

    .line 498
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    aget v17, v17, v18

    move/from16 v8, v17

    .line 499
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    aget v17, v17, v18

    move/from16 v9, v17

    .line 500
    goto/16 :goto_2

    .line 502
    :sswitch_12
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x3

    add-int/lit8 v22, v22, 0x3

    aget v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 503
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v10, v17

    .line 504
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v11, v17

    .line 505
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 506
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x3

    add-int/lit8 v19, v19, 0x3

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 507
    goto/16 :goto_2

    .line 509
    :sswitch_13
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x3

    add-int/lit8 v22, v22, 0x3

    aget v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 510
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v10, v17

    .line 511
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    move/from16 v11, v17

    .line 512
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    aget v17, v17, v18

    move/from16 v8, v17

    .line 513
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    aget v17, v17, v18

    move/from16 v9, v17

    .line 514
    goto/16 :goto_2

    .line 516
    :sswitch_14
    const/16 v17, 0x0

    move/from16 v14, v17

    .line 517
    const/16 v17, 0x0

    move/from16 v15, v17

    .line 518
    move/from16 v17, v4

    const/16 v18, 0x71

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    move/from16 v17, v4

    const/16 v18, 0x74

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    move/from16 v17, v4

    const/16 v18, 0x51

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    move/from16 v17, v4

    const/16 v18, 0x54

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 520
    :cond_6
    move/from16 v17, v8

    move/from16 v18, v10

    sub-float v17, v17, v18

    move/from16 v14, v17

    .line 521
    move/from16 v17, v9

    move/from16 v18, v11

    sub-float v17, v17, v18

    move/from16 v15, v17

    .line 523
    :cond_7
    move-object/from16 v17, v2

    move/from16 v18, v14

    move/from16 v19, v15

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x0

    add-int/lit8 v21, v21, 0x0

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    aget v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 525
    move/from16 v17, v8

    move/from16 v18, v14

    add-float v17, v17, v18

    move/from16 v10, v17

    .line 526
    move/from16 v17, v9

    move/from16 v18, v15

    add-float v17, v17, v18

    move/from16 v11, v17

    .line 527
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 528
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 529
    goto/16 :goto_2

    .line 531
    :sswitch_15
    move/from16 v17, v8

    move/from16 v14, v17

    .line 532
    move/from16 v17, v9

    move/from16 v15, v17

    .line 533
    move/from16 v17, v4

    const/16 v18, 0x71

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    move/from16 v17, v4

    const/16 v18, 0x74

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    move/from16 v17, v4

    const/16 v18, 0x51

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    move/from16 v17, v4

    const/16 v18, 0x54

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 535
    :cond_8
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v18, v8

    mul-float v17, v17, v18

    move/from16 v18, v10

    sub-float v17, v17, v18

    move/from16 v14, v17

    .line 536
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v18, v9

    mul-float v17, v17, v18

    move/from16 v18, v11

    sub-float v17, v17, v18

    move/from16 v15, v17

    .line 538
    :cond_9
    move-object/from16 v17, v2

    move/from16 v18, v14

    move/from16 v19, v15

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x0

    add-int/lit8 v21, v21, 0x0

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    aget v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 540
    move/from16 v17, v14

    move/from16 v10, v17

    .line 541
    move/from16 v17, v15

    move/from16 v11, v17

    .line 542
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v8, v17

    .line 543
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    move/from16 v9, v17

    .line 544
    goto/16 :goto_2

    .line 547
    :sswitch_16
    move-object/from16 v17, v2

    move/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x5

    add-int/lit8 v21, v21, 0x5

    aget v20, v20, v21

    move/from16 v21, v8

    add-float v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x6

    add-int/lit8 v22, v22, 0x6

    aget v21, v21, v22

    move/from16 v22, v9

    add-float v21, v21, v22

    move-object/from16 v22, v6

    move/from16 v23, v16

    const/16 v24, 0x0

    add-int/lit8 v23, v23, 0x0

    aget v22, v22, v23

    move-object/from16 v23, v6

    move/from16 v24, v16

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget v23, v23, v24

    move-object/from16 v24, v6

    move/from16 v25, v16

    const/16 v26, 0x2

    add-int/lit8 v25, v25, 0x2

    aget v24, v24, v25

    move-object/from16 v25, v6

    move/from16 v26, v16

    const/16 v27, 0x3

    add-int/lit8 v26, v26, 0x3

    aget v25, v25, v26

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_a

    const/16 v25, 0x1

    :goto_3
    move-object/from16 v26, v6

    move/from16 v27, v16

    const/16 v28, 0x4

    add-int/lit8 v27, v27, 0x4

    aget v26, v26, v27

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_b

    const/16 v26, 0x1

    :goto_4
    invoke-static/range {v17 .. v26}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 557
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x5

    add-int/lit8 v19, v19, 0x5

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 558
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x6

    add-int/lit8 v19, v19, 0x6

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 559
    move/from16 v17, v8

    move/from16 v10, v17

    .line 560
    move/from16 v17, v9

    move/from16 v11, v17

    .line 561
    goto/16 :goto_2

    .line 547
    :cond_a
    const/16 v25, 0x0

    goto :goto_3

    :cond_b
    const/16 v26, 0x0

    goto :goto_4

    .line 563
    :sswitch_17
    move-object/from16 v17, v2

    move/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x5

    add-int/lit8 v21, v21, 0x5

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x6

    add-int/lit8 v22, v22, 0x6

    aget v21, v21, v22

    move-object/from16 v22, v6

    move/from16 v23, v16

    const/16 v24, 0x0

    add-int/lit8 v23, v23, 0x0

    aget v22, v22, v23

    move-object/from16 v23, v6

    move/from16 v24, v16

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget v23, v23, v24

    move-object/from16 v24, v6

    move/from16 v25, v16

    const/16 v26, 0x2

    add-int/lit8 v25, v25, 0x2

    aget v24, v24, v25

    move-object/from16 v25, v6

    move/from16 v26, v16

    const/16 v27, 0x3

    add-int/lit8 v26, v26, 0x3

    aget v25, v25, v26

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_c

    const/16 v25, 0x1

    :goto_5
    move-object/from16 v26, v6

    move/from16 v27, v16

    const/16 v28, 0x4

    add-int/lit8 v27, v27, 0x4

    aget v26, v26, v27

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_d

    const/16 v26, 0x1

    :goto_6
    invoke-static/range {v17 .. v26}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 573
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x5

    add-int/lit8 v18, v18, 0x5

    aget v17, v17, v18

    move/from16 v8, v17

    .line 574
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x6

    add-int/lit8 v18, v18, 0x6

    aget v17, v17, v18

    move/from16 v9, v17

    .line 575
    move/from16 v17, v8

    move/from16 v10, v17

    .line 576
    move/from16 v17, v9

    move/from16 v11, v17

    goto/16 :goto_2

    .line 563
    :cond_c
    const/16 v25, 0x0

    goto :goto_5

    :cond_d
    const/16 v26, 0x0

    goto :goto_6

    .line 581
    :cond_e
    move-object/from16 v17, v3

    const/16 v18, 0x0

    move/from16 v19, v8

    aput v19, v17, v18

    .line 582
    move-object/from16 v17, v3

    const/16 v18, 0x1

    move/from16 v19, v9

    aput v19, v17, v18

    .line 583
    move-object/from16 v17, v3

    const/16 v18, 0x2

    move/from16 v19, v10

    aput v19, v17, v18

    .line 584
    move-object/from16 v17, v3

    const/16 v18, 0x3

    move/from16 v19, v11

    aput v19, v17, v18

    .line 585
    move-object/from16 v17, v3

    const/16 v18, 0x4

    move/from16 v19, v12

    aput v19, v17, v18

    .line 586
    move-object/from16 v17, v3

    const/16 v18, 0x5

    move/from16 v19, v13

    aput v19, v17, v18

    .line 587
    return-void

    .line 352
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_3
        0x48 -> :sswitch_2
        0x4c -> :sswitch_1
        0x4d -> :sswitch_1
        0x51 -> :sswitch_4
        0x53 -> :sswitch_4
        0x54 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_0
        0x61 -> :sswitch_5
        0x63 -> :sswitch_3
        0x68 -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
        0x71 -> :sswitch_4
        0x73 -> :sswitch_4
        0x74 -> :sswitch_1
        0x76 -> :sswitch_2
        0x7a -> :sswitch_0
    .end sparse-switch

    .line 396
    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_17
        0x43 -> :sswitch_f
        0x48 -> :sswitch_b
        0x4c -> :sswitch_9
        0x4d -> :sswitch_7
        0x51 -> :sswitch_13
        0x53 -> :sswitch_11
        0x54 -> :sswitch_15
        0x56 -> :sswitch_d
        0x61 -> :sswitch_16
        0x63 -> :sswitch_e
        0x68 -> :sswitch_a
        0x6c -> :sswitch_8
        0x6d -> :sswitch_6
        0x71 -> :sswitch_12
        0x73 -> :sswitch_10
        0x74 -> :sswitch_14
        0x76 -> :sswitch_c
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .locals 73

    .prologue
    .line 694
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-wide/from16 v17, p15

    move-wide/from16 v19, p17

    move-wide/from16 v65, v19

    const-wide/high16 v67, 0x4010000000000000L    # 4.0

    mul-double v65, v65, v67

    const-wide v67, 0x400921fb54442d18L    # Math.PI

    div-double v65, v65, v67

    invoke-static/range {v65 .. v66}, Ljava/lang/Math;->abs(D)D

    move-result-wide v65

    invoke-static/range {v65 .. v66}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v65

    move-wide/from16 v0, v65

    double-to-int v0, v0

    move/from16 v65, v0

    move/from16 v21, v65

    .line 696
    move-wide/from16 v65, v17

    move-wide/from16 v22, v65

    .line 697
    move-wide/from16 v65, v15

    invoke-static/range {v65 .. v66}, Ljava/lang/Math;->cos(D)D

    move-result-wide v65

    move-wide/from16 v24, v65

    .line 698
    move-wide/from16 v65, v15

    invoke-static/range {v65 .. v66}, Ljava/lang/Math;->sin(D)D

    move-result-wide v65

    move-wide/from16 v26, v65

    .line 699
    move-wide/from16 v65, v22

    invoke-static/range {v65 .. v66}, Ljava/lang/Math;->cos(D)D

    move-result-wide v65

    move-wide/from16 v28, v65

    .line 700
    move-wide/from16 v65, v22

    invoke-static/range {v65 .. v66}, Ljava/lang/Math;->sin(D)D

    move-result-wide v65

    move-wide/from16 v30, v65

    .line 701
    move-wide/from16 v65, v7

    move-wide/from16 v0, v65

    neg-double v0, v0

    move-wide/from16 v65, v0

    move-wide/from16 v67, v24

    mul-double v65, v65, v67

    move-wide/from16 v67, v30

    mul-double v65, v65, v67

    move-wide/from16 v67, v9

    move-wide/from16 v69, v26

    mul-double v67, v67, v69

    move-wide/from16 v69, v28

    mul-double v67, v67, v69

    sub-double v65, v65, v67

    move-wide/from16 v32, v65

    .line 702
    move-wide/from16 v65, v7

    move-wide/from16 v0, v65

    neg-double v0, v0

    move-wide/from16 v65, v0

    move-wide/from16 v67, v26

    mul-double v65, v65, v67

    move-wide/from16 v67, v30

    mul-double v65, v65, v67

    move-wide/from16 v67, v9

    move-wide/from16 v69, v24

    mul-double v67, v67, v69

    move-wide/from16 v69, v28

    mul-double v67, v67, v69

    add-double v65, v65, v67

    move-wide/from16 v34, v65

    .line 704
    move-wide/from16 v65, v19

    move/from16 v67, v21

    move/from16 v0, v67

    int-to-double v0, v0

    move-wide/from16 v67, v0

    div-double v65, v65, v67

    move-wide/from16 v36, v65

    .line 705
    const/16 v65, 0x0

    move/from16 v38, v65

    :goto_0
    move/from16 v65, v38

    move/from16 v66, v21

    move/from16 v0, v65

    move/from16 v1, v66

    if-ge v0, v1, :cond_0

    .line 706
    move-wide/from16 v65, v22

    move-wide/from16 v67, v36

    add-double v65, v65, v67

    move-wide/from16 v39, v65

    .line 707
    move-wide/from16 v65, v39

    invoke-static/range {v65 .. v66}, Ljava/lang/Math;->sin(D)D

    move-result-wide v65

    move-wide/from16 v41, v65

    .line 708
    move-wide/from16 v65, v39

    invoke-static/range {v65 .. v66}, Ljava/lang/Math;->cos(D)D

    move-result-wide v65

    move-wide/from16 v43, v65

    .line 709
    move-wide/from16 v65, v3

    move-wide/from16 v67, v7

    move-wide/from16 v69, v24

    mul-double v67, v67, v69

    move-wide/from16 v69, v43

    mul-double v67, v67, v69

    add-double v65, v65, v67

    move-wide/from16 v67, v9

    move-wide/from16 v69, v26

    mul-double v67, v67, v69

    move-wide/from16 v69, v41

    mul-double v67, v67, v69

    sub-double v65, v65, v67

    move-wide/from16 v45, v65

    .line 710
    move-wide/from16 v65, v5

    move-wide/from16 v67, v7

    move-wide/from16 v69, v26

    mul-double v67, v67, v69

    move-wide/from16 v69, v43

    mul-double v67, v67, v69

    add-double v65, v65, v67

    move-wide/from16 v67, v9

    move-wide/from16 v69, v24

    mul-double v67, v67, v69

    move-wide/from16 v69, v41

    mul-double v67, v67, v69

    add-double v65, v65, v67

    move-wide/from16 v47, v65

    .line 711
    move-wide/from16 v65, v7

    move-wide/from16 v0, v65

    neg-double v0, v0

    move-wide/from16 v65, v0

    move-wide/from16 v67, v24

    mul-double v65, v65, v67

    move-wide/from16 v67, v41

    mul-double v65, v65, v67

    move-wide/from16 v67, v9

    move-wide/from16 v69, v26

    mul-double v67, v67, v69

    move-wide/from16 v69, v43

    mul-double v67, v67, v69

    sub-double v65, v65, v67

    move-wide/from16 v49, v65

    .line 712
    move-wide/from16 v65, v7

    move-wide/from16 v0, v65

    neg-double v0, v0

    move-wide/from16 v65, v0

    move-wide/from16 v67, v26

    mul-double v65, v65, v67

    move-wide/from16 v67, v41

    mul-double v65, v65, v67

    move-wide/from16 v67, v9

    move-wide/from16 v69, v24

    mul-double v67, v67, v69

    move-wide/from16 v69, v43

    mul-double v67, v67, v69

    add-double v65, v65, v67

    move-wide/from16 v51, v65

    .line 713
    move-wide/from16 v65, v39

    move-wide/from16 v67, v22

    sub-double v65, v65, v67

    const-wide/high16 v67, 0x4000000000000000L    # 2.0

    div-double v65, v65, v67

    invoke-static/range {v65 .. v66}, Ljava/lang/Math;->tan(D)D

    move-result-wide v65

    move-wide/from16 v53, v65

    .line 714
    move-wide/from16 v65, v39

    move-wide/from16 v67, v22

    sub-double v65, v65, v67

    .line 715
    invoke-static/range {v65 .. v66}, Ljava/lang/Math;->sin(D)D

    move-result-wide v65

    const-wide/high16 v67, 0x4010000000000000L    # 4.0

    const-wide/high16 v69, 0x4008000000000000L    # 3.0

    move-wide/from16 v71, v53

    mul-double v69, v69, v71

    move-wide/from16 v71, v53

    mul-double v69, v69, v71

    add-double v67, v67, v69

    invoke-static/range {v67 .. v68}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v67

    const-wide/high16 v69, 0x3ff0000000000000L    # 1.0

    sub-double v67, v67, v69

    mul-double v65, v65, v67

    const-wide/high16 v67, 0x4008000000000000L    # 3.0

    div-double v65, v65, v67

    move-wide/from16 v55, v65

    .line 716
    move-wide/from16 v65, v11

    move-wide/from16 v67, v55

    move-wide/from16 v69, v32

    mul-double v67, v67, v69

    add-double v65, v65, v67

    move-wide/from16 v57, v65

    .line 717
    move-wide/from16 v65, v13

    move-wide/from16 v67, v55

    move-wide/from16 v69, v34

    mul-double v67, v67, v69

    add-double v65, v65, v67

    move-wide/from16 v59, v65

    .line 718
    move-wide/from16 v65, v45

    move-wide/from16 v67, v55

    move-wide/from16 v69, v49

    mul-double v67, v67, v69

    sub-double v65, v65, v67

    move-wide/from16 v61, v65

    .line 719
    move-wide/from16 v65, v47

    move-wide/from16 v67, v55

    move-wide/from16 v69, v51

    mul-double v67, v67, v69

    sub-double v65, v65, v67

    move-wide/from16 v63, v65

    .line 721
    move-object/from16 v65, v2

    move-wide/from16 v66, v57

    move-wide/from16 v0, v66

    double-to-float v0, v0

    move/from16 v66, v0

    move-wide/from16 v67, v59

    move-wide/from16 v0, v67

    double-to-float v0, v0

    move/from16 v67, v0

    move-wide/from16 v68, v61

    move-wide/from16 v0, v68

    double-to-float v0, v0

    move/from16 v68, v0

    move-wide/from16 v69, v63

    move-wide/from16 v0, v69

    double-to-float v0, v0

    move/from16 v69, v0

    move-wide/from16 v70, v45

    move-wide/from16 v0, v70

    double-to-float v0, v0

    move/from16 v70, v0

    move-wide/from16 v71, v47

    move-wide/from16 v0, v71

    double-to-float v0, v0

    move/from16 v71, v0

    invoke-virtual/range {v65 .. v71}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 727
    move-wide/from16 v65, v39

    move-wide/from16 v22, v65

    .line 728
    move-wide/from16 v65, v45

    move-wide/from16 v11, v65

    .line 729
    move-wide/from16 v65, v47

    move-wide/from16 v13, v65

    .line 730
    move-wide/from16 v65, v49

    move-wide/from16 v32, v65

    .line 731
    move-wide/from16 v65, v51

    move-wide/from16 v34, v65

    .line 705
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_0

    .line 733
    :cond_0
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 76

    .prologue
    .line 601
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v56, v9

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v56, v0

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v56

    move-wide/from16 v12, v56

    .line 603
    move-wide/from16 v56, v12

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->cos(D)D

    move-result-wide v56

    move-wide/from16 v14, v56

    .line 604
    move-wide/from16 v56, v12

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sin(D)D

    move-result-wide v56

    move-wide/from16 v16, v56

    .line 607
    move/from16 v56, v3

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-wide/from16 v58, v14

    mul-double v56, v56, v58

    move/from16 v58, v4

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    move-wide/from16 v60, v16

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move/from16 v58, v7

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    div-double v56, v56, v58

    move-wide/from16 v18, v56

    .line 608
    move/from16 v56, v3

    move/from16 v0, v56

    neg-float v0, v0

    move/from16 v56, v0

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-wide/from16 v58, v16

    mul-double v56, v56, v58

    move/from16 v58, v4

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    move-wide/from16 v60, v14

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move/from16 v58, v8

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    div-double v56, v56, v58

    move-wide/from16 v20, v56

    .line 609
    move/from16 v56, v5

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-wide/from16 v58, v14

    mul-double v56, v56, v58

    move/from16 v58, v6

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    move-wide/from16 v60, v16

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move/from16 v58, v7

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    div-double v56, v56, v58

    move-wide/from16 v22, v56

    .line 610
    move/from16 v56, v5

    move/from16 v0, v56

    neg-float v0, v0

    move/from16 v56, v0

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-wide/from16 v58, v16

    mul-double v56, v56, v58

    move/from16 v58, v6

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    move-wide/from16 v60, v14

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move/from16 v58, v8

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    div-double v56, v56, v58

    move-wide/from16 v24, v56

    .line 613
    move-wide/from16 v56, v18

    move-wide/from16 v58, v22

    sub-double v56, v56, v58

    move-wide/from16 v26, v56

    .line 614
    move-wide/from16 v56, v20

    move-wide/from16 v58, v24

    sub-double v56, v56, v58

    move-wide/from16 v28, v56

    .line 615
    move-wide/from16 v56, v18

    move-wide/from16 v58, v22

    add-double v56, v56, v58

    const-wide/high16 v58, 0x4000000000000000L    # 2.0

    div-double v56, v56, v58

    move-wide/from16 v30, v56

    .line 616
    move-wide/from16 v56, v20

    move-wide/from16 v58, v24

    add-double v56, v56, v58

    const-wide/high16 v58, 0x4000000000000000L    # 2.0

    div-double v56, v56, v58

    move-wide/from16 v32, v56

    .line 618
    move-wide/from16 v56, v26

    move-wide/from16 v58, v26

    mul-double v56, v56, v58

    move-wide/from16 v58, v28

    move-wide/from16 v60, v28

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v34, v56

    .line 619
    move-wide/from16 v56, v34

    const-wide/16 v58, 0x0

    cmpl-double v56, v56, v58

    if-nez v56, :cond_0

    .line 620
    const-string v56, "PathParser"

    const-string v57, " Points are coincident"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v56

    .line 664
    :goto_0
    return-void

    .line 623
    :cond_0
    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v58, v34

    div-double v56, v56, v58

    const-wide/high16 v58, 0x3fd0000000000000L    # 0.25

    sub-double v56, v56, v58

    move-wide/from16 v36, v56

    .line 624
    move-wide/from16 v56, v36

    const-wide/16 v58, 0x0

    cmpg-double v56, v56, v58

    if-gez v56, :cond_1

    .line 625
    const-string v56, "PathParser"

    new-instance v57, Ljava/lang/StringBuilder;

    move-object/from16 v75, v57

    move-object/from16 v57, v75

    move-object/from16 v58, v75

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Points are too far apart "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-wide/from16 v58, v34

    invoke-virtual/range {v57 .. v59}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v56

    .line 626
    move-wide/from16 v56, v34

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v56

    const-wide v58, 0x3ffffff583a53b8eL    # 1.99999

    div-double v56, v56, v58

    move-wide/from16 v0, v56

    double-to-float v0, v0

    move/from16 v56, v0

    move/from16 v38, v56

    .line 627
    move-object/from16 v56, v2

    move/from16 v57, v3

    move/from16 v58, v4

    move/from16 v59, v5

    move/from16 v60, v6

    move/from16 v61, v7

    move/from16 v62, v38

    mul-float v61, v61, v62

    move/from16 v62, v8

    move/from16 v63, v38

    mul-float v62, v62, v63

    move/from16 v63, v9

    move/from16 v64, v10

    move/from16 v65, v11

    invoke-static/range {v56 .. v65}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 629
    goto :goto_0

    .line 631
    :cond_1
    move-wide/from16 v56, v36

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v56

    move-wide/from16 v38, v56

    .line 632
    move-wide/from16 v56, v38

    move-wide/from16 v58, v26

    mul-double v56, v56, v58

    move-wide/from16 v40, v56

    .line 633
    move-wide/from16 v56, v38

    move-wide/from16 v58, v28

    mul-double v56, v56, v58

    move-wide/from16 v42, v56

    .line 636
    move/from16 v56, v10

    move/from16 v57, v11

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_3

    .line 637
    move-wide/from16 v56, v30

    move-wide/from16 v58, v42

    sub-double v56, v56, v58

    move-wide/from16 v44, v56

    .line 638
    move-wide/from16 v56, v32

    move-wide/from16 v58, v40

    add-double v56, v56, v58

    move-wide/from16 v46, v56

    .line 644
    :goto_1
    move-wide/from16 v56, v20

    move-wide/from16 v58, v46

    sub-double v56, v56, v58

    move-wide/from16 v58, v18

    move-wide/from16 v60, v44

    sub-double v58, v58, v60

    invoke-static/range {v56 .. v59}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v56

    move-wide/from16 v48, v56

    .line 646
    move-wide/from16 v56, v24

    move-wide/from16 v58, v46

    sub-double v56, v56, v58

    move-wide/from16 v58, v22

    move-wide/from16 v60, v44

    sub-double v58, v58, v60

    invoke-static/range {v56 .. v59}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v56

    move-wide/from16 v50, v56

    .line 648
    move-wide/from16 v56, v50

    move-wide/from16 v58, v48

    sub-double v56, v56, v58

    move-wide/from16 v52, v56

    .line 649
    move/from16 v56, v11

    move-wide/from16 v57, v52

    const-wide/16 v59, 0x0

    cmpl-double v57, v57, v59

    if-ltz v57, :cond_4

    const/16 v57, 0x1

    :goto_2
    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_2

    .line 650
    move-wide/from16 v56, v52

    const-wide/16 v58, 0x0

    cmpl-double v56, v56, v58

    if-lez v56, :cond_5

    .line 651
    move-wide/from16 v56, v52

    const-wide v58, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v56, v56, v58

    move-wide/from16 v52, v56

    .line 657
    :cond_2
    :goto_3
    move-wide/from16 v56, v44

    move/from16 v58, v7

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    move-wide/from16 v44, v56

    .line 658
    move-wide/from16 v56, v46

    move/from16 v58, v8

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    move-wide/from16 v46, v56

    .line 659
    move-wide/from16 v56, v44

    move-wide/from16 v54, v56

    .line 660
    move-wide/from16 v56, v44

    move-wide/from16 v58, v14

    mul-double v56, v56, v58

    move-wide/from16 v58, v46

    move-wide/from16 v60, v16

    mul-double v58, v58, v60

    sub-double v56, v56, v58

    move-wide/from16 v44, v56

    .line 661
    move-wide/from16 v56, v54

    move-wide/from16 v58, v16

    mul-double v56, v56, v58

    move-wide/from16 v58, v46

    move-wide/from16 v60, v14

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v46, v56

    .line 663
    move-object/from16 v56, v2

    move-wide/from16 v57, v44

    move-wide/from16 v59, v46

    move/from16 v61, v7

    move/from16 v0, v61

    float-to-double v0, v0

    move-wide/from16 v61, v0

    move/from16 v63, v8

    move/from16 v0, v63

    float-to-double v0, v0

    move-wide/from16 v63, v0

    move/from16 v65, v3

    move/from16 v0, v65

    float-to-double v0, v0

    move-wide/from16 v65, v0

    move/from16 v67, v4

    move/from16 v0, v67

    float-to-double v0, v0

    move-wide/from16 v67, v0

    move-wide/from16 v69, v12

    move-wide/from16 v71, v48

    move-wide/from16 v73, v52

    invoke-static/range {v56 .. v74}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    .line 664
    goto/16 :goto_0

    .line 640
    :cond_3
    move-wide/from16 v56, v30

    move-wide/from16 v58, v42

    add-double v56, v56, v58

    move-wide/from16 v44, v56

    .line 641
    move-wide/from16 v56, v32

    move-wide/from16 v58, v40

    sub-double v56, v56, v58

    move-wide/from16 v46, v56

    goto/16 :goto_1

    .line 649
    :cond_4
    const/16 v57, 0x0

    goto/16 :goto_2

    .line 653
    :cond_5
    move-wide/from16 v56, v52

    const-wide v58, 0x401921fb54442d18L    # 6.283185307179586

    add-double v56, v56, v58

    move-wide/from16 v52, v56

    goto/16 :goto_3
.end method

.method public static nodesToPath([Landroid/support/graphics/drawable/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .locals 11

    .prologue
    .line 314
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x6

    new-array v5, v5, [F

    move-object v2, v5

    .line 315
    const/16 v5, 0x6d

    move v3, v5

    .line 316
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move-object v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 317
    move-object v5, v1

    move-object v6, v2

    move v7, v3

    move-object v8, v0

    move v9, v4

    aget-object v8, v8, v9

    iget-char v8, v8, Landroid/support/graphics/drawable/PathParser$PathDataNode;->type:C

    move-object v9, v0

    move v10, v4

    aget-object v9, v9, v10

    iget-object v9, v9, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    .line 318
    move-object v5, v0

    move v6, v4

    aget-object v5, v5, v6

    iget-char v5, v5, Landroid/support/graphics/drawable/PathParser$PathDataNode;->type:C

    move v3, v5

    .line 316
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 320
    :cond_0
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Landroid/support/graphics/drawable/PathParser$PathDataNode;Landroid/support/graphics/drawable/PathParser$PathDataNode;F)V
    .locals 10

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move-object v6, v1

    iget-object v6, v6, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 334
    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    move v6, v4

    move-object v7, v1

    iget-object v7, v7, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    move v8, v4

    aget v7, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v3

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    move-object v8, v2

    iget-object v8, v8, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    move v9, v4

    aget v8, v8, v9

    move v9, v3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v5, v6

    .line 333
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 337
    :cond_0
    return-void
.end method
