.class Landroid/support/v4/app/FragmentTransitionCompat21;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;,
        Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 497
    return-void
.end method

.method static synthetic access$000(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V
    .locals 8

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    check-cast v7, Landroid/transition/Transition;

    move-object v2, v7

    .line 464
    move-object v7, v2

    instance-of v7, v7, Landroid/transition/TransitionSet;

    if-eqz v7, :cond_1

    .line 465
    move-object v7, v2

    check-cast v7, Landroid/transition/TransitionSet;

    move-object v3, v7

    .line 466
    move-object v7, v3

    invoke-virtual {v7}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v7

    move v4, v7

    .line 467
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_0

    .line 468
    move-object v7, v3

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v7

    move-object v6, v7

    .line 469
    move-object v7, v6

    move-object v8, v1

    invoke-static {v7, v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 467
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 481
    :cond_0
    return-void

    .line 471
    :cond_1
    move-object v7, v2

    invoke-static {v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 472
    move-object v7, v2

    invoke-virtual {v7}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v7

    move-object v3, v7

    .line 473
    move-object v7, v3

    invoke-static {v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 475
    move-object v7, v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v7

    .line 476
    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_0

    .line 477
    move-object v7, v2

    move-object v8, v1

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v7

    .line 476
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static addTransitionTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;",
            "Landroid/view/View;",
            "Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v16, v0

    check-cast v16, Landroid/transition/Transition;

    move-object/from16 v13, v16

    .line 144
    move-object/from16 v16, v2

    check-cast v16, Landroid/transition/Transition;

    move-object/from16 v14, v16

    .line 145
    move-object/from16 v16, v1

    check-cast v16, Landroid/transition/Transition;

    move-object/from16 v15, v16

    .line 146
    move-object/from16 v16, v13

    move-object/from16 v17, v14

    move-object/from16 v18, v9

    const/16 v19, 0x1

    invoke-static/range {v16 .. v19}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 147
    move-object/from16 v16, v0

    if-nez v16, :cond_0

    move-object/from16 v16, v1

    if-eqz v16, :cond_3

    .line 148
    :cond_0
    move-object/from16 v16, v13

    if-eqz v16, :cond_1

    .line 149
    move-object/from16 v16, v13

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v17}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v16

    .line 151
    :cond_1
    move-object/from16 v16, v1

    if-eqz v16, :cond_2

    .line 152
    move-object/from16 v16, v15

    move-object/from16 v17, v5

    move-object/from16 v18, v10

    move-object/from16 v19, v12

    invoke-static/range {v16 .. v19}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 154
    move-object/from16 v16, v13

    move-object/from16 v17, v15

    move-object/from16 v18, v12

    const/16 v19, 0x1

    invoke-static/range {v16 .. v19}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 155
    move-object/from16 v16, v14

    move-object/from16 v17, v15

    move-object/from16 v18, v12

    const/16 v19, 0x1

    invoke-static/range {v16 .. v19}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 158
    :cond_2
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v16

    new-instance v17, Landroid/support/v4/app/FragmentTransitionCompat21$2;

    move-object/from16 v27, v17

    move-object/from16 v17, v27

    move-object/from16 v18, v27

    move-object/from16 v19, v3

    move-object/from16 v20, v13

    move-object/from16 v21, v5

    move-object/from16 v22, v4

    move-object/from16 v23, v7

    move-object/from16 v24, v11

    move-object/from16 v25, v8

    move-object/from16 v26, v14

    invoke-direct/range {v18 .. v26}, Landroid/support/v4/app/FragmentTransitionCompat21$2;-><init>(Landroid/view/View;Landroid/transition/Transition;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 195
    move-object/from16 v16, v13

    move-object/from16 v17, v6

    invoke-static/range {v16 .. v17}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementEpicenter(Landroid/transition/Transition;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;)V

    .line 197
    :cond_3
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    check-cast v3, Landroid/transition/Transition;

    move-object v2, v3

    .line 67
    move-object v3, v0

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 68
    return-void
.end method

.method private static bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 286
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v2, v9

    .line 287
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    invoke-static {v9, v10, v11}, Landroid/support/v4/app/FragmentTransitionCompat21;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 304
    :goto_0
    return-void

    .line 290
    :cond_0
    move-object v9, v0

    move-object v10, v1

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 291
    move v9, v2

    move v3, v9

    :goto_1
    move v9, v3

    move-object v10, v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 292
    move-object v9, v0

    move v10, v3

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v4, v9

    .line 293
    move-object v9, v4

    instance-of v9, v9, Landroid/view/ViewGroup;

    if-eqz v9, :cond_2

    .line 294
    move-object v9, v4

    check-cast v9, Landroid/view/ViewGroup;

    move-object v5, v9

    .line 295
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    move v6, v9

    .line 296
    const/4 v9, 0x0

    move v7, v9

    :goto_2
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_2

    .line 297
    move-object v9, v5

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v8, v9

    .line 298
    move-object v9, v0

    move-object v10, v8

    move v11, v2

    invoke-static {v9, v10, v11}, Landroid/support/v4/app/FragmentTransitionCompat21;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 299
    move-object v9, v0

    move-object v10, v8

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 296
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 291
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 304
    :cond_3
    goto :goto_0
.end method

.method public static captureExitingViews(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    if-eqz v5, :cond_1

    .line 46
    move-object v5, v2

    move-object v6, v1

    invoke-static {v5, v6}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 47
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 48
    move-object v5, v2

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v5

    .line 50
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 51
    const/4 v5, 0x0

    move-object v0, v5

    .line 57
    :cond_1
    :goto_0
    move-object v5, v0

    move-object v0, v5

    return-object v0

    .line 53
    :cond_2
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 54
    move-object v5, v0

    check-cast v5, Landroid/transition/Transition;

    move-object v6, v2

    invoke-static {v5, v6}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private static captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 346
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 347
    move-object v6, v1

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    .line 348
    move-object v6, v1

    check-cast v6, Landroid/view/ViewGroup;

    move-object v2, v6

    .line 349
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 350
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v3, v6

    .line 353
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 354
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 355
    move-object v6, v0

    move-object v7, v5

    invoke-static {v6, v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 353
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 359
    :cond_2
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0
.end method

.method public static cleanupTransitions(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object v15, v2

    check-cast v15, Landroid/transition/Transition;

    move-object v11, v15

    .line 388
    move-object v15, v4

    check-cast v15, Landroid/transition/Transition;

    move-object v12, v15

    .line 389
    move-object v15, v6

    check-cast v15, Landroid/transition/Transition;

    move-object v13, v15

    .line 390
    move-object v15, v8

    check-cast v15, Landroid/transition/Transition;

    move-object v14, v15

    .line 391
    move-object v15, v14

    if-eqz v15, :cond_0

    .line 392
    move-object v15, v0

    invoke-virtual {v15}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v15

    new-instance v16, Landroid/support/v4/app/FragmentTransitionCompat21$4;

    move-object/from16 v29, v16

    move-object/from16 v16, v29

    move-object/from16 v17, v29

    move-object/from16 v18, v0

    move-object/from16 v19, v11

    move-object/from16 v20, v3

    move-object/from16 v21, v12

    move-object/from16 v22, v5

    move-object/from16 v23, v13

    move-object/from16 v24, v7

    move-object/from16 v25, v10

    move-object/from16 v26, v9

    move-object/from16 v27, v14

    move-object/from16 v28, v1

    invoke-direct/range {v17 .. v28}, Landroid/support/v4/app/FragmentTransitionCompat21$4;-><init>(Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/view/View;)V

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 426
    :cond_0
    return-void
.end method

.method public static cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    .line 38
    move-object v1, v0

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v1

    move-object v0, v1

    .line 40
    :cond_0
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method private static containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 312
    move-object v4, v0

    move v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 313
    const/4 v4, 0x1

    move v0, v4

    .line 316
    :goto_1
    return v0

    .line 311
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 316
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public static excludeSharedElementViews(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object v8, v0

    check-cast v8, Landroid/transition/Transition;

    move-object v5, v8

    .line 119
    move-object v8, v1

    check-cast v8, Landroid/transition/Transition;

    move-object v6, v8

    .line 120
    move-object v8, v2

    check-cast v8, Landroid/transition/Transition;

    move-object v7, v8

    .line 121
    move-object v8, v5

    move-object v9, v7

    move-object v10, v3

    move v11, v4

    invoke-static {v8, v9, v10, v11}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 122
    move-object v8, v6

    move-object v9, v7

    move-object v10, v3

    move v11, v4

    invoke-static {v8, v9, v10, v11}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 123
    return-void
.end method

.method public static excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    check-cast v4, Landroid/transition/Transition;

    move-object v3, v4

    .line 62
    move-object v4, v3

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    move-result-object v4

    .line 63
    return-void
.end method

.method private static excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    if-eqz v6, :cond_1

    .line 98
    move-object v6, v1

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    move v4, v6

    .line 99
    const/4 v6, 0x0

    move v5, v6

    :goto_1
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 100
    move-object v6, v0

    move-object v7, v2

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    move-result-object v6

    .line 99
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 98
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_0

    .line 103
    :cond_1
    return-void
.end method

.method public static findNamedViews(Ljava/util/Map;Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 365
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 366
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 367
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 368
    move-object v7, v0

    move-object v8, v2

    move-object v9, v1

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 370
    :cond_0
    move-object v7, v1

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    .line 371
    move-object v7, v1

    check-cast v7, Landroid/view/ViewGroup;

    move-object v3, v7

    .line 372
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v4, v7

    .line 373
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 374
    move-object v7, v3

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 375
    move-object v7, v0

    move-object v8, v6

    invoke-static {v7, v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 373
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 379
    :cond_1
    return-void
.end method

.method private static getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 10

    .prologue
    .line 337
    move-object v0, p0

    new-instance v3, Landroid/graphics/Rect;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v1, v3

    .line 338
    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object v2, v3

    .line 339
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 341
    move-object v3, v1

    move-object v4, v2

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object v5, v2

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object v6, v2

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    move-object v7, v2

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 342
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static hasSimpleTarget(Landroid/transition/Transition;)Z
    .locals 2

    .prologue
    .line 484
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 485
    invoke-virtual {v1}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 486
    invoke-virtual {v1}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNullOrEmpty(Ljava/util/List;)Z
    .locals 2

    .prologue
    .line 490
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 14

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v11, 0x1

    move v4, v11

    .line 203
    move-object v11, v0

    check-cast v11, Landroid/transition/Transition;

    move-object v5, v11

    .line 204
    move-object v11, v1

    check-cast v11, Landroid/transition/Transition;

    move-object v6, v11

    .line 205
    move-object v11, v2

    check-cast v11, Landroid/transition/Transition;

    move-object v7, v11

    .line 207
    move-object v11, v5

    if-eqz v11, :cond_0

    move-object v11, v6

    if-eqz v11, :cond_0

    .line 208
    move v11, v3

    move v4, v11

    .line 216
    :cond_0
    move v11, v4

    if-eqz v11, :cond_4

    .line 218
    new-instance v11, Landroid/transition/TransitionSet;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Landroid/transition/TransitionSet;-><init>()V

    move-object v9, v11

    .line 219
    move-object v11, v5

    if-eqz v11, :cond_1

    .line 220
    move-object v11, v9

    move-object v12, v5

    invoke-virtual {v11, v12}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v11

    .line 222
    :cond_1
    move-object v11, v6

    if-eqz v11, :cond_2

    .line 223
    move-object v11, v9

    move-object v12, v6

    invoke-virtual {v11, v12}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v11

    .line 225
    :cond_2
    move-object v11, v7

    if-eqz v11, :cond_3

    .line 226
    move-object v11, v9

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v11

    .line 228
    :cond_3
    move-object v11, v9

    move-object v8, v11

    .line 254
    :goto_0
    move-object v11, v8

    move-object v0, v11

    return-object v0

    .line 232
    :cond_4
    const/4 v11, 0x0

    move-object v9, v11

    .line 233
    move-object v11, v6

    if-eqz v11, :cond_7

    move-object v11, v5

    if-eqz v11, :cond_7

    .line 234
    new-instance v11, Landroid/transition/TransitionSet;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Landroid/transition/TransitionSet;-><init>()V

    move-object v12, v6

    .line 235
    invoke-virtual {v11, v12}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v11

    move-object v12, v5

    .line 236
    invoke-virtual {v11, v12}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v11

    const/4 v12, 0x1

    .line 237
    invoke-virtual {v11, v12}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object v11

    move-object v9, v11

    .line 243
    :cond_5
    :goto_1
    move-object v11, v7

    if-eqz v11, :cond_9

    .line 244
    new-instance v11, Landroid/transition/TransitionSet;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Landroid/transition/TransitionSet;-><init>()V

    move-object v10, v11

    .line 245
    move-object v11, v9

    if-eqz v11, :cond_6

    .line 246
    move-object v11, v10

    move-object v12, v9

    invoke-virtual {v11, v12}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v11

    .line 248
    :cond_6
    move-object v11, v10

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v11

    .line 249
    move-object v11, v10

    move-object v8, v11

    .line 250
    goto :goto_0

    .line 238
    :cond_7
    move-object v11, v6

    if-eqz v11, :cond_8

    .line 239
    move-object v11, v6

    move-object v9, v11

    goto :goto_1

    .line 240
    :cond_8
    move-object v11, v5

    if-eqz v11, :cond_5

    .line 241
    move-object v11, v5

    move-object v9, v11

    goto :goto_1

    .line 251
    :cond_9
    move-object v11, v9

    move-object v8, v11

    goto :goto_0
.end method

.method public static removeTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    check-cast v7, Landroid/transition/Transition;

    move-object v2, v7

    .line 435
    move-object v7, v2

    instance-of v7, v7, Landroid/transition/TransitionSet;

    if-eqz v7, :cond_1

    .line 436
    move-object v7, v2

    check-cast v7, Landroid/transition/TransitionSet;

    move-object v3, v7

    .line 437
    move-object v7, v3

    invoke-virtual {v7}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v7

    move v4, v7

    .line 438
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_0

    .line 439
    move-object v7, v3

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v7

    move-object v6, v7

    .line 440
    move-object v7, v6

    move-object v8, v1

    invoke-static {v7, v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->removeTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 438
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 452
    :cond_0
    return-void

    .line 442
    :cond_1
    move-object v7, v2

    invoke-static {v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 443
    move-object v7, v2

    invoke-virtual {v7}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v7

    move-object v3, v7

    .line 444
    move-object v7, v3

    if-eqz v7, :cond_0

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v7, v8, :cond_0

    move-object v7, v3

    move-object v8, v1

    .line 445
    invoke-interface {v7, v8}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 447
    move-object v7, v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    :goto_1
    move v7, v4

    if-ltz v7, :cond_0

    .line 448
    move-object v7, v2

    move-object v8, v1

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v7

    .line 447
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method public static setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 9

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    check-cast v4, Landroid/transition/Transition;

    move-object v2, v4

    .line 72
    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    move-object v3, v4

    .line 74
    move-object v4, v2

    new-instance v5, Landroid/support/v4/app/FragmentTransitionCompat21$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Landroid/support/v4/app/FragmentTransitionCompat21$1;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 80
    return-void
.end method

.method private static setSharedElementEpicenter(Landroid/transition/Transition;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;)V
    .locals 7

    .prologue
    .line 321
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 322
    move-object v2, v0

    new-instance v3, Landroid/support/v4/app/FragmentTransitionCompat21$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v4/app/FragmentTransitionCompat21$3;-><init>(Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;)V

    invoke-virtual {v2, v3}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 334
    :cond_0
    return-void
.end method

.method public static setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v9, v0

    check-cast v9, Landroid/transition/TransitionSet;

    move-object v4, v9

    .line 267
    move-object v9, v3

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 268
    move-object v9, v3

    move-object v10, v2

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v9

    .line 270
    move-object v9, v4

    invoke-virtual {v9}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v9

    move-object v5, v9

    .line 271
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 272
    move-object v9, v3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v9

    .line 273
    const/4 v9, 0x0

    move v7, v9

    :goto_0
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_0

    .line 274
    move-object v9, v3

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v8, v9

    .line 275
    move-object v9, v5

    move-object v10, v8

    invoke-static {v9, v10}, Landroid/support/v4/app/FragmentTransitionCompat21;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    .line 273
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 277
    :cond_0
    move-object v9, v3

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 278
    move-object v9, v4

    move-object v10, v3

    invoke-static {v9, v10}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 279
    return-void
.end method

.method public static wrapSharedElementTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 83
    move-object v0, p0

    move-object v3, v0

    if-nez v3, :cond_0

    .line 84
    const/4 v3, 0x0

    move-object v0, v3

    .line 92
    :goto_0
    return-object v0

    .line 86
    :cond_0
    move-object v3, v0

    check-cast v3, Landroid/transition/Transition;

    move-object v1, v3

    .line 87
    move-object v3, v1

    if-nez v3, :cond_1

    .line 88
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 90
    :cond_1
    new-instance v3, Landroid/transition/TransitionSet;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/transition/TransitionSet;-><init>()V

    move-object v2, v3

    .line 91
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    .line 92
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method
