.class Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_ACTION_VIEWS:Ljava/lang/String; = "android:menu:action_views"

.field private static final STATE_CHECKED_ITEM:Ljava/lang/String; = "android:menu:checked"

.field private static final VIEW_TYPE_HEADER:I = 0x3

.field private static final VIEW_TYPE_NORMAL:I = 0x0

.field private static final VIEW_TYPE_SEPARATOR:I = 0x2

.field private static final VIEW_TYPE_SUBHEADER:I = 0x1


# instance fields
.field private mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateSuspended:Z

.field final synthetic this$0:Landroid/support/design/internal/NavigationMenuPresenter;


# direct methods
.method constructor <init>(Landroid/support/design/internal/NavigationMenuPresenter;)V
    .locals 6

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 348
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    .line 353
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 354
    return-void
.end method

.method private appendTransparentIconIfMissing(II)V
    .locals 7

    .prologue
    .line 525
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v1

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 526
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object v4, v5

    .line 527
    move-object v5, v4

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    .line 525
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 529
    :cond_0
    return-void
.end method

.method private prepareMenuItems()V
    .locals 20

    .prologue
    .line 455
    move-object/from16 v1, p0

    move-object v14, v1

    iget-boolean v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    if-eqz v14, :cond_0

    .line 522
    :goto_0
    return-void

    .line 458
    :cond_0
    move-object v14, v1

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    .line 459
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 460
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v15, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;-><init>(Landroid/support/design/internal/NavigationMenuPresenter$1;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 462
    const/4 v14, -0x1

    move v2, v14

    .line 463
    const/4 v14, 0x0

    move v3, v14

    .line 464
    const/4 v14, 0x0

    move v4, v14

    .line 465
    const/4 v14, 0x0

    move v5, v14

    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v14}, Landroid/support/design/internal/NavigationMenuPresenter;->access$000(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v6, v14

    :goto_1
    move v14, v5

    move v15, v6

    if-ge v14, v15, :cond_e

    .line 466
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v14}, Landroid/support/design/internal/NavigationMenuPresenter;->access$000(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v14

    move v15, v5

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v7, v14

    .line 467
    move-object v14, v7

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 468
    move-object v14, v1

    move-object v15, v7

    invoke-virtual {v14, v15}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 470
    :cond_1
    move-object v14, v7

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 471
    move-object v14, v7

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 473
    :cond_2
    move-object v14, v7

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 474
    move-object v14, v7

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v14

    move-object v8, v14

    .line 475
    move-object v14, v8

    invoke-interface {v14}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 476
    move v14, v5

    if-eqz v14, :cond_3

    .line 477
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v15, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/support/design/internal/NavigationMenuPresenter;->access$1100(Landroid/support/design/internal/NavigationMenuPresenter;)I

    move-result v17

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 479
    :cond_3
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v15, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v7

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/support/design/internal/NavigationMenuPresenter$1;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 480
    const/4 v14, 0x0

    move v9, v14

    .line 481
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v10, v14

    .line 482
    const/4 v14, 0x0

    move v11, v14

    move-object v14, v8

    invoke-interface {v14}, Landroid/view/SubMenu;->size()I

    move-result v14

    move v12, v14

    :goto_2
    move v14, v11

    move v15, v12

    if-ge v14, v15, :cond_8

    .line 483
    move-object v14, v8

    move v15, v11

    invoke-interface {v14, v15}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    check-cast v14, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v13, v14

    .line 484
    move-object v14, v13

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 485
    move v14, v9

    if-nez v14, :cond_4

    move-object v14, v13

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 486
    const/4 v14, 0x1

    move v9, v14

    .line 488
    :cond_4
    move-object v14, v13

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 489
    move-object v14, v13

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 491
    :cond_5
    move-object v14, v7

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 492
    move-object v14, v1

    move-object v15, v7

    invoke-virtual {v14, v15}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 494
    :cond_6
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v15, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v13

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/support/design/internal/NavigationMenuPresenter$1;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 482
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 497
    :cond_8
    move v14, v9

    if-eqz v14, :cond_9

    .line 498
    move-object v14, v1

    move v15, v10

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    .line 465
    :cond_9
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 502
    :cond_a
    move-object v14, v7

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v14

    move v8, v14

    .line 503
    move v14, v8

    move v15, v2

    if-eq v14, v15, :cond_d

    .line 504
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v3, v14

    .line 505
    move-object v14, v7

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_c

    const/4 v14, 0x1

    :goto_4
    move v4, v14

    .line 506
    move v14, v5

    if-eqz v14, :cond_b

    .line 507
    add-int/lit8 v3, v3, 0x1

    .line 508
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v15, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object/from16 v17, v0

    .line 509
    invoke-static/range {v17 .. v17}, Landroid/support/design/internal/NavigationMenuPresenter;->access$1100(Landroid/support/design/internal/NavigationMenuPresenter;)I

    move-result v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/support/design/internal/NavigationMenuPresenter;->access$1100(Landroid/support/design/internal/NavigationMenuPresenter;)I

    move-result v18

    invoke-direct/range {v16 .. v18}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    .line 508
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 515
    :cond_b
    :goto_5
    new-instance v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v7

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/support/design/internal/NavigationMenuPresenter$1;)V

    move-object v9, v14

    .line 516
    move-object v14, v9

    move v15, v4

    iput-boolean v15, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    .line 517
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    move-object v15, v9

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 518
    move v14, v8

    move v2, v14

    goto :goto_3

    .line 505
    :cond_c
    const/4 v14, 0x0

    goto :goto_4

    .line 511
    :cond_d
    move v14, v4

    if-nez v14, :cond_b

    move-object v14, v7

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_b

    .line 512
    const/4 v14, 0x1

    move v4, v14

    .line 513
    move-object v14, v1

    move v15, v3

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    goto :goto_5

    .line 521
    :cond_e
    move-object v14, v1

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    .line 522
    goto/16 :goto_0
.end method


# virtual methods
.method public createInstanceState()Landroid/os/Bundle;
    .locals 12

    .prologue
    .line 543
    move-object v0, p0

    new-instance v8, Landroid/os/Bundle;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    move-object v1, v8

    .line 544
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v8, :cond_0

    .line 545
    move-object v8, v1

    const-string v9, "android:menu:checked"

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v10}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 548
    :cond_0
    new-instance v8, Landroid/util/SparseArray;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v8

    .line 549
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_0
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-object v4, v8

    .line 550
    move-object v8, v4

    instance-of v8, v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v8, :cond_1

    .line 551
    move-object v8, v4

    check-cast v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v8}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v8

    move-object v5, v8

    .line 552
    move-object v8, v5

    if-eqz v8, :cond_2

    move-object v8, v5

    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v8

    :goto_1
    move-object v6, v8

    .line 553
    move-object v8, v6

    if-eqz v8, :cond_1

    .line 554
    new-instance v8, Landroid/support/design/internal/ParcelableSparseArray;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/support/design/internal/ParcelableSparseArray;-><init>()V

    move-object v7, v8

    .line 555
    move-object v8, v6

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 556
    move-object v8, v2

    move-object v9, v5

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v9

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 559
    :cond_1
    goto :goto_0

    .line 552
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 560
    :cond_3
    move-object v8, v1

    const-string v9, "android:menu:action_views"

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 561
    move-object v8, v1

    move-object v0, v8

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 363
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 358
    move-object v0, p0

    move v1, p1

    move v2, v1

    int-to-long v2, v2

    move-wide v0, v2

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 8

    .prologue
    .line 368
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-object v2, v4

    .line 369
    move-object v4, v2

    instance-of v4, v4, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    if-eqz v4, :cond_0

    .line 370
    const/4 v4, 0x2

    move v0, v4

    .line 378
    :goto_0
    return v0

    .line 371
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    if-eqz v4, :cond_1

    .line 372
    const/4 v4, 0x3

    move v0, v4

    goto :goto_0

    .line 373
    :cond_1
    move-object v4, v2

    instance-of v4, v4, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v4, :cond_3

    .line 374
    move-object v4, v2

    check-cast v4, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object v3, v4

    .line 375
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 376
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 378
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 381
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Unknown item type."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onBindViewHolder(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;I)V
    .locals 10

    .prologue
    .line 401
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 436
    :goto_0
    return-void

    .line 403
    :pswitch_0
    move-object v5, v1

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Landroid/support/design/internal/NavigationMenuItemView;

    move-object v3, v5

    .line 404
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v6}, Landroid/support/design/internal/NavigationMenuPresenter;->access$500(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/design/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 405
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v5}, Landroid/support/design/internal/NavigationMenuPresenter;->access$600(Landroid/support/design/internal/NavigationMenuPresenter;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 406
    move-object v5, v3

    move-object v6, v3

    invoke-virtual {v6}, Landroid/support/design/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v7}, Landroid/support/design/internal/NavigationMenuPresenter;->access$700(Landroid/support/design/internal/NavigationMenuPresenter;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/support/design/internal/NavigationMenuItemView;->setTextAppearance(Landroid/content/Context;I)V

    .line 408
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v5}, Landroid/support/design/internal/NavigationMenuPresenter;->access$800(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 409
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v6}, Landroid/support/design/internal/NavigationMenuPresenter;->access$800(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/design/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 411
    :cond_1
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v6}, Landroid/support/design/internal/NavigationMenuPresenter;->access$900(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    .line 412
    invoke-static {v6}, Landroid/support/design/internal/NavigationMenuPresenter;->access$900(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 411
    :goto_1
    invoke-virtual {v5, v6}, Landroid/support/design/internal/NavigationMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object v4, v5

    .line 414
    move-object v5, v3

    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    invoke-virtual {v5, v6}, Landroid/support/design/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    .line 415
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/support/design/internal/NavigationMenuItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 416
    goto :goto_0

    .line 412
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 419
    :pswitch_1
    move-object v5, v1

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    move-object v3, v5

    .line 420
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object v4, v5

    .line 421
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    goto/16 :goto_0

    .line 425
    :pswitch_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    move v6, v2

    .line 426
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    move-object v3, v5

    .line 427
    move-object v5, v1

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    const/4 v6, 0x0

    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingTop()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, v3

    .line 428
    invoke-virtual {v9}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingBottom()I

    move-result v9

    .line 427
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 429
    goto/16 :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .prologue
    .line 338
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onBindViewHolder(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;
    .locals 9

    .prologue
    .line 386
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 396
    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    .line 388
    :pswitch_0
    new-instance v3, Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v5}, Landroid/support/design/internal/NavigationMenuPresenter;->access$200(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v5

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v7}, Landroid/support/design/internal/NavigationMenuPresenter;->access$300(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    move-object v0, v3

    goto :goto_0

    .line 390
    :pswitch_1
    new-instance v3, Landroid/support/design/internal/NavigationMenuPresenter$SubheaderViewHolder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v5}, Landroid/support/design/internal/NavigationMenuPresenter;->access$200(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/design/internal/NavigationMenuPresenter$SubheaderViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    move-object v0, v3

    goto :goto_0

    .line 392
    :pswitch_2
    new-instance v3, Landroid/support/design/internal/NavigationMenuPresenter$SeparatorViewHolder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v5}, Landroid/support/design/internal/NavigationMenuPresenter;->access$200(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/design/internal/NavigationMenuPresenter$SeparatorViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    move-object v0, v3

    goto :goto_0

    .line 394
    :pswitch_3
    new-instance v3, Landroid/support/design/internal/NavigationMenuPresenter$HeaderViewHolder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v5}, Landroid/support/design/internal/NavigationMenuPresenter;->access$400(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/design/internal/NavigationMenuPresenter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    move-object v0, v3

    goto :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6

    .prologue
    .line 338
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public onViewRecycled(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;)V
    .locals 3

    .prologue
    .line 440
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;

    if-eqz v2, :cond_0

    .line 441
    move-object v2, v1

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/support/design/internal/NavigationMenuItemView;

    invoke-virtual {v2}, Landroid/support/design/internal/NavigationMenuItemView;->recycle()V

    .line 443
    :cond_0
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 338
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onViewRecycled(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;)V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    .line 565
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    const-string v9, "android:menu:checked"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    move v2, v8

    .line 566
    move v8, v2

    if-eqz v8, :cond_1

    .line 567
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    .line 568
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_0
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-object v4, v8

    .line 569
    move-object v8, v4

    instance-of v8, v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v8, :cond_3

    .line 570
    move-object v8, v4

    check-cast v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v8}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v8

    move-object v5, v8

    .line 571
    move-object v8, v5

    if-eqz v8, :cond_3

    move-object v8, v5

    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v8

    move v9, v2

    if-ne v8, v9, :cond_3

    .line 572
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 577
    :cond_0
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    .line 578
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 581
    :cond_1
    move-object v8, v1

    const-string v9, "android:menu:action_views"

    .line 582
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    move-object v3, v8

    .line 583
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_1
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-object v5, v8

    .line 584
    move-object v8, v5

    instance-of v8, v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v8, :cond_2

    .line 585
    move-object v8, v5

    check-cast v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v8}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v8

    move-object v6, v8

    .line 586
    move-object v8, v6

    if-eqz v8, :cond_4

    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v8

    :goto_2
    move-object v7, v8

    .line 587
    move-object v8, v7

    if-eqz v8, :cond_2

    .line 588
    move-object v8, v7

    move-object v9, v3

    move-object v10, v6

    invoke-virtual {v10}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    invoke-virtual {v8, v9}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 591
    :cond_2
    goto :goto_1

    .line 576
    :cond_3
    goto :goto_0

    .line 586
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 592
    :cond_5
    return-void
.end method

.method public setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 4

    .prologue
    .line 532
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v2, :cond_2

    .line 536
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 538
    :cond_2
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 539
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 540
    goto :goto_0
.end method

.method public setUpdateSuspended(Z)V
    .locals 4

    .prologue
    .line 595
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    .line 596
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 446
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 447
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->notifyDataSetChanged()V

    .line 448
    return-void
.end method
