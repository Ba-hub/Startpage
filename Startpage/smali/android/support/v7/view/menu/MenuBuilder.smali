.class public Landroid/support/v7/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;,
        Landroid/support/v7/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

.field private mFrozenViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mOverrideVisibleItems:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 129
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 160
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 162
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 164
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 166
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    .line 168
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 170
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 215
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 216
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 217
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 219
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 220
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 222
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 223
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 224
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 226
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 227
    return-void
.end method

.method private createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 17

    .prologue
    .line 451
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    new-instance v7, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move-object v14, v5

    move v15, v6

    invoke-direct/range {v8 .. v15}, Landroid/support/v7/view/menu/MenuItemImpl;-><init>(Landroid/support/v7/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    move-object v0, v7

    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 7

    .prologue
    .line 275
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    :goto_0
    return-void

    .line 277
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 278
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v3, v5

    .line 279
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/MenuPresenter;

    move-object v4, v5

    .line 280
    move-object v5, v4

    if-nez v5, :cond_1

    .line 281
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 285
    :goto_2
    goto :goto_1

    .line 283
    :cond_1
    move-object v5, v4

    move v6, v1

    invoke-interface {v5, v6}, Landroid/support/v7/view/menu/MenuPresenter;->updateMenuView(Z)V

    goto :goto_2

    .line 286
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 287
    goto :goto_0
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 335
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    const-string v9, "android:menu:presenters"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    move-object v2, v8

    .line 337
    move-object v8, v2

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_1
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    move-object v4, v8

    .line 340
    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/MenuPresenter;

    move-object v5, v8

    .line 341
    move-object v8, v5

    if-nez v8, :cond_3

    .line 342
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    .line 352
    :cond_2
    :goto_2
    goto :goto_1

    .line 344
    :cond_3
    move-object v8, v5

    invoke-interface {v8}, Landroid/support/v7/view/menu/MenuPresenter;->getId()I

    move-result v8

    move v6, v8

    .line 345
    move v8, v6

    if-lez v8, :cond_2

    .line 346
    move-object v8, v2

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Parcelable;

    move-object v7, v8

    .line 347
    move-object v8, v7

    if-eqz v8, :cond_2

    .line 348
    move-object v8, v5

    move-object v9, v7

    invoke-interface {v8, v9}, Landroid/support/v7/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_2

    .line 353
    :cond_4
    goto :goto_0
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 332
    :goto_0
    return-void

    .line 314
    :cond_0
    new-instance v8, Landroid/util/SparseArray;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v8

    .line 316
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_1
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    move-object v4, v8

    .line 317
    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/MenuPresenter;

    move-object v5, v8

    .line 318
    move-object v8, v5

    if-nez v8, :cond_2

    .line 319
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    .line 329
    :cond_1
    :goto_2
    goto :goto_1

    .line 321
    :cond_2
    move-object v8, v5

    invoke-interface {v8}, Landroid/support/v7/view/menu/MenuPresenter;->getId()I

    move-result v8

    move v6, v8

    .line 322
    move v8, v6

    if-lez v8, :cond_1

    .line 323
    move-object v8, v5

    invoke-interface {v8}, Landroid/support/v7/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v8

    move-object v7, v8

    .line 324
    move-object v8, v7

    if-eqz v8, :cond_1

    .line 325
    move-object v8, v2

    move v9, v6

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 331
    :cond_3
    move-object v8, v1

    const-string v9, "android:menu:presenters"

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 332
    goto :goto_0
.end method

.method private dispatchSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;Landroid/support/v7/view/menu/MenuPresenter;)Z
    .locals 9

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    move v0, v7

    .line 308
    :goto_0
    return v0

    .line 293
    :cond_0
    const/4 v7, 0x0

    move v3, v7

    .line 296
    move-object v7, v2

    if-eqz v7, :cond_1

    .line 297
    move-object v7, v2

    move-object v8, v1

    invoke-interface {v7, v8}, Landroid/support/v7/view/menu/MenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    move-result v7

    move v3, v7

    .line 300
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    :goto_1
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    move-object v5, v7

    .line 301
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/view/menu/MenuPresenter;

    move-object v6, v7

    .line 302
    move-object v7, v6

    if-nez v7, :cond_3

    .line 303
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 307
    :cond_2
    :goto_2
    goto :goto_1

    .line 304
    :cond_3
    move v7, v3

    if-nez v7, :cond_2

    .line 305
    move-object v7, v6

    move-object v8, v1

    invoke-interface {v7, v8}, Landroid/support/v7/view/menu/MenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    move-result v7

    move v3, v7

    goto :goto_2

    .line 308
    :cond_4
    move v7, v3

    move v0, v7

    goto :goto_0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 823
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 824
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v3, v4

    .line 825
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getOrdering()I

    move-result v4

    move v5, v1

    if-gt v4, v5, :cond_0

    .line 826
    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    .line 830
    :goto_1
    return v0

    .line 823
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 830
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private static getOrdering(I)I
    .locals 6

    .prologue
    .line 756
    move v0, p0

    move v2, v0

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    const/16 v3, 0x10

    shr-int/lit8 v2, v2, 0x10

    move v1, v2

    .line 758
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    sget-object v3, Landroid/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 759
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "order does not contain a valid category."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 762
    :cond_1
    sget-object v2, Landroid/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I

    move v3, v1

    aget v2, v2, v3

    const/16 v3, 0x10

    shl-int/lit8 v2, v2, 0x10

    move v3, v0

    const v4, 0xffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method private removeItemAtInt(IZ)V
    .locals 5

    .prologue
    .line 561
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .line 565
    move v3, v2

    if-eqz v3, :cond_2

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 566
    :cond_2
    goto :goto_0
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 10

    .prologue
    .line 1190
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v6, v7

    .line 1192
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 1193
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1196
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1197
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1216
    :goto_0
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1217
    return-void

    .line 1199
    :cond_0
    move v7, v1

    if-lez v7, :cond_3

    .line 1200
    move-object v7, v0

    move-object v8, v6

    move v9, v1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1205
    :cond_1
    :goto_1
    move v7, v3

    if-lez v7, :cond_4

    .line 1206
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v8

    move v9, v3

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1212
    :cond_2
    :goto_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_0

    .line 1201
    :cond_3
    move-object v7, v2

    if-eqz v7, :cond_1

    .line 1202
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1207
    :cond_4
    move-object v7, v4

    if-eqz v7, :cond_2

    .line 1208
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 5

    .prologue
    .line 789
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 790
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$bool;->abc_config_showMenuShortcutsWhenKeyboardPresent:I

    .line 791
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 792
    return-void

    .line 791
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 8

    .prologue
    .line 461
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 11

    .prologue
    .line 471
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    move v10, v4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 10

    .prologue
    .line 466
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 7

    .prologue
    .line 456
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 25

    .prologue
    .line 501
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v11, v18

    .line 502
    move-object/from16 v18, v11

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    const/16 v22, 0x0

    .line 503
    invoke-virtual/range {v18 .. v22}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    move-object/from16 v12, v18

    .line 504
    move-object/from16 v18, v12

    if-eqz v18, :cond_2

    move-object/from16 v18, v12

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    :goto_0
    move/from16 v13, v18

    .line 506
    move/from16 v18, v9

    const/16 v19, 0x1

    and-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_0

    .line 507
    move-object/from16 v18, v2

    move/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/view/menu/MenuBuilder;->removeGroup(I)V

    .line 510
    :cond_0
    const/16 v18, 0x0

    move/from16 v14, v18

    :goto_1
    move/from16 v18, v14

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 511
    move-object/from16 v18, v12

    move/from16 v19, v14

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v15, v18

    .line 512
    new-instance v18, Landroid/content/Intent;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    move/from16 v20, v0

    if-gez v20, :cond_3

    move-object/from16 v20, v8

    :goto_2
    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v16, v18

    .line 514
    move-object/from16 v18, v16

    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v22, v15

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v18

    .line 517
    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v15

    move-object/from16 v23, v11

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v18 .. v22}, Landroid/support/v7/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v19, v15

    move-object/from16 v20, v11

    .line 518
    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v19, v16

    .line 519
    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v17, v18

    .line 520
    move-object/from16 v18, v10

    if-eqz v18, :cond_1

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    move/from16 v18, v0

    if-ltz v18, :cond_1

    .line 521
    move-object/from16 v18, v10

    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    move/from16 v19, v0

    move-object/from16 v20, v17

    aput-object v20, v18, v19

    .line 510
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 504
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 512
    :cond_3
    move-object/from16 v20, v7

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    move/from16 v21, v0

    aget-object v20, v20, v21

    goto/16 :goto_2

    .line 525
    :cond_4
    move/from16 v18, v13

    move/from16 v2, v18

    return v2
.end method

.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 14

    .prologue
    .line 432
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move v7, v3

    invoke-static {v7}, Landroid/support/v7/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v7

    move v5, v7

    .line 434
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v5

    move-object v12, v4

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    invoke-direct/range {v7 .. v13}, Landroid/support/v7/view/menu/MenuBuilder;->createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v7

    move-object v6, v7

    .line 437
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v7, :cond_0

    .line 439
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 442
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v9, v5

    invoke-static {v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v8

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 443
    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 445
    move-object v7, v6

    move-object v0, v7

    return-object v0
.end method

.method public addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V
    .locals 5

    .prologue
    .line 241
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 242
    return-void
.end method

.method public addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 255
    move-object v3, v1

    move-object v4, v2

    move-object v5, v0

    invoke-interface {v3, v4, v5}, Landroid/support/v7/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 256
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 257
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 8

    .prologue
    .line 481
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 11

    .prologue
    .line 495
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    move v10, v4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 13

    .prologue
    .line 486
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    check-cast v7, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v5, v7

    .line 487
    new-instance v7, Landroid/support/v7/view/menu/SubMenuBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    move-object v10, v0

    move-object v11, v5

    invoke-direct {v8, v9, v10, v11}, Landroid/support/v7/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)V

    move-object v6, v7

    .line 488
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/MenuItemImpl;->setSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V

    .line 490
    move-object v7, v6

    move-object v0, v7

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 7

    .prologue
    .line 476
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public changeMenuMode()V
    .locals 3

    .prologue
    .line 817
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    if-eqz v1, :cond_0

    .line 818
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder$Callback;->onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 820
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 583
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 584
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v1

    .line 586
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 588
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 589
    return-void
.end method

.method public clearAll()V
    .locals 3

    .prologue
    .line 573
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 574
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->clear()V

    .line 575
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->clearHeader()V

    .line 576
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 577
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 578
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 579
    return-void
.end method

.method public clearHeader()V
    .locals 3

    .prologue
    .line 1181
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1182
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1183
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1185
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1186
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 1018
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 1019
    return-void
.end method

.method public final close(Z)V
    .locals 8

    .prologue
    .line 1002
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v5, :cond_0

    .line 1014
    :goto_0
    return-void

    .line 1004
    :cond_0
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    .line 1005
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v3, v5

    .line 1006
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/MenuPresenter;

    move-object v4, v5

    .line 1007
    move-object v5, v4

    if-nez v5, :cond_1

    .line 1008
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 1012
    :goto_2
    goto :goto_1

    .line 1010
    :cond_1
    move-object v5, v4

    move-object v6, v0

    move v7, v1

    invoke-interface {v5, v6, v7}, Landroid/support/v7/view/menu/MenuPresenter;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    goto :goto_2

    .line 1013
    :cond_2
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    .line 1014
    goto :goto_0
.end method

.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 10

    .prologue
    .line 1341
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v7, v1

    if-eq v6, v7, :cond_1

    :cond_0
    const/4 v6, 0x0

    move v0, v6

    .line 1359
    :goto_0
    return v0

    .line 1343
    :cond_1
    const/4 v6, 0x0

    move v2, v6

    .line 1345
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1346
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    move-object v4, v6

    .line 1347
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuPresenter;

    move-object v5, v6

    .line 1348
    move-object v6, v5

    if-nez v6, :cond_3

    .line 1349
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 1353
    :cond_2
    goto :goto_1

    .line 1350
    :cond_3
    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Landroid/support/v7/view/menu/MenuPresenter;->collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v6

    move v9, v6

    move v6, v9

    move v7, v9

    move v2, v7

    if-eqz v6, :cond_2

    .line 1354
    :cond_4
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1356
    move v6, v2

    if-eqz v6, :cond_5

    .line 1357
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 1359
    :cond_5
    move v6, v2

    move v0, v6

    goto :goto_0
.end method

.method dispatchMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 810
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v7/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 10

    .prologue
    .line 1319
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    move v0, v6

    .line 1337
    :goto_0
    return v0

    .line 1321
    :cond_0
    const/4 v6, 0x0

    move v2, v6

    .line 1323
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1324
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    move-object v4, v6

    .line 1325
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuPresenter;

    move-object v5, v6

    .line 1326
    move-object v6, v5

    if-nez v6, :cond_2

    .line 1327
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 1331
    :cond_1
    goto :goto_1

    .line 1328
    :cond_2
    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Landroid/support/v7/view/menu/MenuPresenter;->expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v6

    move v9, v6

    move v6, v9

    move v7, v9

    move v2, v7

    if-eqz v6, :cond_1

    .line 1332
    :cond_3
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1334
    move v6, v2

    if-eqz v6, :cond_4

    .line 1335
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 1337
    :cond_4
    move v6, v2

    move v0, v6

    goto :goto_0
.end method

.method public findGroupIndex(I)I
    .locals 5

    .prologue
    .line 701
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 8

    .prologue
    .line 705
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v6

    move v3, v6

    .line 707
    move v6, v2

    if-gez v6, :cond_0

    .line 708
    const/4 v6, 0x0

    move v2, v6

    .line 711
    :cond_0
    move v6, v2

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 712
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v5, v6

    .line 714
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_1

    .line 715
    move v6, v4

    move v0, v6

    .line 719
    :goto_1
    return v0

    .line 711
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 719
    :cond_2
    const/4 v6, -0x1

    move v0, v6

    goto :goto_1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 8

    .prologue
    .line 670
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v6

    move v2, v6

    .line 671
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 672
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v4, v6

    .line 673
    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_0

    .line 674
    move-object v6, v4

    move-object v0, v6

    .line 684
    :goto_1
    return-object v0

    .line 675
    :cond_0
    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 676
    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v6

    move v7, v1

    invoke-interface {v6, v7}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    move-object v5, v6

    .line 678
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 679
    move-object v6, v5

    move-object v0, v6

    goto :goto_1

    .line 671
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 684
    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public findItemIndex(I)I
    .locals 7

    .prologue
    .line 688
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v5

    move v2, v5

    .line 690
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 691
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v4, v5

    .line 692
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v5

    move v6, v1

    if-ne v5, v6, :cond_0

    .line 693
    move v5, v3

    move v0, v5

    .line 697
    :goto_1
    return v0

    .line 690
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 697
    :cond_1
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 16

    .prologue
    .line 902
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    move-object v3, v11

    .line 903
    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 904
    move-object v11, v0

    move-object v12, v3

    move v13, v1

    move-object v14, v2

    invoke-virtual {v11, v12, v13, v14}, Landroid/support/v7/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 906
    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 907
    const/4 v11, 0x0

    move-object v0, v11

    .line 937
    :goto_0
    return-object v0

    .line 910
    :cond_0
    move-object v11, v2

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v11

    move v4, v11

    .line 911
    new-instance v11, Landroid/view/KeyCharacterMap$KeyData;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    move-object v5, v11

    .line 913
    move-object v11, v2

    move-object v12, v5

    invoke-virtual {v11, v12}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v11

    .line 916
    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 917
    move v11, v6

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 918
    move-object v11, v3

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v0, v11

    goto :goto_0

    .line 921
    :cond_1
    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v11

    move v7, v11

    .line 924
    const/4 v11, 0x0

    move v8, v11

    :goto_1
    move v11, v8

    move v12, v6

    if-ge v11, v12, :cond_7

    .line 925
    move-object v11, v3

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v9, v11

    .line 926
    move v11, v7

    if-eqz v11, :cond_5

    move-object v11, v9

    invoke-virtual {v11}, Landroid/support/v7/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v11

    .line 927
    :goto_2
    move v10, v11

    .line 928
    move v11, v10

    move-object v12, v5

    iget-object v12, v12, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v13, 0x0

    aget-char v12, v12, v13

    if-ne v11, v12, :cond_2

    move v11, v4

    const/4 v12, 0x2

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_4

    :cond_2
    move v11, v10

    move-object v12, v5

    iget-object v12, v12, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v13, 0x2

    aget-char v12, v12, v13

    if-ne v11, v12, :cond_3

    move v11, v4

    const/4 v12, 0x2

    and-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_4

    :cond_3
    move v11, v7

    if-eqz v11, :cond_6

    move v11, v10

    const/16 v12, 0x8

    if-ne v11, v12, :cond_6

    move v11, v1

    const/16 v12, 0x43

    if-ne v11, v12, :cond_6

    .line 934
    :cond_4
    move-object v11, v9

    move-object v0, v11

    goto :goto_0

    .line 926
    :cond_5
    move-object v11, v9

    .line 927
    invoke-virtual {v11}, Landroid/support/v7/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v11

    goto :goto_2

    .line 924
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 937
    :cond_7
    const/4 v11, 0x0

    move-object v0, v11

    goto/16 :goto_0
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 858
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v12

    move v4, v12

    .line 859
    move-object v12, v3

    invoke-virtual {v12}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v12

    move v5, v12

    .line 860
    new-instance v12, Landroid/view/KeyCharacterMap$KeyData;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    move-object v6, v12

    .line 862
    move-object v12, v3

    move-object v13, v6

    invoke-virtual {v12, v13}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v12

    move v7, v12

    .line 864
    move v12, v7

    if-nez v12, :cond_0

    move v12, v2

    const/16 v13, 0x43

    if-eq v12, v13, :cond_0

    .line 886
    :goto_0
    return-void

    .line 869
    :cond_0
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v8, v12

    .line 870
    const/4 v12, 0x0

    move v9, v12

    :goto_1
    move v12, v9

    move v13, v8

    if-ge v12, v13, :cond_5

    .line 871
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v10, v12

    .line 872
    move-object v12, v10

    invoke-virtual {v12}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 873
    move-object v12, v10

    invoke-virtual {v12}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v12

    check-cast v12, Landroid/support/v7/view/menu/MenuBuilder;

    move-object v13, v1

    move v14, v2

    move-object v15, v3

    invoke-virtual {v12, v13, v14, v15}, Landroid/support/v7/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 875
    :cond_1
    move v12, v4

    if-eqz v12, :cond_4

    move-object v12, v10

    invoke-virtual {v12}, Landroid/support/v7/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v12

    :goto_2
    move v11, v12

    .line 876
    move v12, v5

    const/4 v13, 0x5

    and-int/lit8 v12, v12, 0x5

    if-nez v12, :cond_3

    move v12, v11

    if-eqz v12, :cond_3

    move v12, v11

    move-object v13, v6

    iget-object v13, v13, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v14, 0x0

    aget-char v13, v13, v14

    if-eq v12, v13, :cond_2

    move v12, v11

    move-object v13, v6

    iget-object v13, v13, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v14, 0x2

    aget-char v13, v13, v14

    if-eq v12, v13, :cond_2

    move v12, v4

    if-eqz v12, :cond_3

    move v12, v11

    const/16 v13, 0x8

    if-ne v12, v13, :cond_3

    move v12, v2

    const/16 v13, 0x43

    if-ne v12, v13, :cond_3

    :cond_2
    move-object v12, v10

    .line 882
    invoke-virtual {v12}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 883
    move-object v12, v1

    move-object v13, v10

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 870
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 875
    :cond_4
    move-object v12, v10

    invoke-virtual {v12}, Landroid/support/v7/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v12

    goto :goto_2

    .line 886
    :cond_5
    goto :goto_0
.end method

.method public flagActionItems()V
    .locals 8

    .prologue
    .line 1131
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v6

    move-object v1, v6

    .line 1133
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v6, :cond_0

    .line 1168
    :goto_0
    return-void

    .line 1138
    :cond_0
    const/4 v6, 0x0

    move v2, v6

    .line 1139
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    move-object v4, v6

    .line 1140
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuPresenter;

    move-object v5, v6

    .line 1141
    move-object v6, v5

    if-nez v6, :cond_1

    .line 1142
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 1146
    :goto_2
    goto :goto_1

    .line 1144
    :cond_1
    move v6, v2

    move-object v7, v5

    invoke-interface {v7}, Landroid/support/v7/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v7

    or-int/2addr v6, v7

    move v2, v6

    goto :goto_2

    .line 1148
    :cond_2
    move v6, v2

    if-eqz v6, :cond_5

    .line 1149
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1150
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1151
    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 1152
    const/4 v6, 0x0

    move v4, v6

    :goto_3
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_4

    .line 1153
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v5, v6

    .line 1154
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1155
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1152
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1157
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_4

    .line 1167
    :cond_4
    :goto_5
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1168
    goto :goto_0

    .line 1163
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1164
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1165
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v6

    goto :goto_5
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1171
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->flagActionItems()V

    .line 1172
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 421
    move-object v0, p0

    const-string v1, "android:menu:actionviewstates"

    move-object v0, v1

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 806
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method public getExpandedItem()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 2

    .prologue
    .line 1363
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1284
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1280
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 2

    .prologue
    .line 1288
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 729
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    move-object v0, v2

    return-object v0
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1176
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->flagActionItems()V

    .line 1177
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 2

    .prologue
    .line 1315
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    move v0, v1

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 802
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    move-object v0, v1

    return-object v0
.end method

.method public getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 1296
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1086
    move-object v0, p0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    move-object v0, v4

    .line 1101
    :goto_0
    return-object v0

    .line 1089
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1091
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 1093
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 1094
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v2, v4

    .line 1095
    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1093
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1098
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1099
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1101
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    move-object v0, v4

    goto :goto_0
.end method

.method public hasVisibleItems()Z
    .locals 6

    .prologue
    .line 652
    move-object v0, p0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    if-eqz v4, :cond_0

    .line 653
    const/4 v4, 0x1

    move v0, v4

    .line 665
    :goto_0
    return v0

    .line 656
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v4

    move v1, v4

    .line 658
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 659
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v3, v4

    .line 660
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 661
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 658
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 665
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method isQwertyMode()Z
    .locals 2

    .prologue
    .line 769
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mQwertyMode:Z

    move v0, v1

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 734
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 2

    .prologue
    .line 798
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z

    move v0, v1

    return v0
.end method

.method onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 4

    .prologue
    .line 1080
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1081
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1082
    return-void
.end method

.method onItemVisibleChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 4

    .prologue
    .line 1069
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1070
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1071
    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 4

    .prologue
    .line 1029
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v2, :cond_1

    .line 1030
    move v2, v1

    if-eqz v2, :cond_0

    .line 1031
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1032
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1035
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    .line 1039
    :goto_0
    return-void

    .line 1037
    :cond_1
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 6

    .prologue
    .line 943
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 7

    .prologue
    .line 947
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z
    .locals 16

    .prologue
    .line 951
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v1

    check-cast v9, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v4, v9

    .line 953
    move-object v9, v4

    if-eqz v9, :cond_0

    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 954
    :cond_0
    const/4 v9, 0x0

    move v0, v9

    .line 990
    :goto_0
    return v0

    .line 957
    :cond_1
    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->invoke()Z

    move-result v9

    move v5, v9

    .line 959
    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v9

    move-object v6, v9

    .line 960
    move-object v9, v6

    if-eqz v9, :cond_3

    move-object v9, v6

    invoke-virtual {v9}, Landroid/support/v4/view/ActionProvider;->hasSubMenu()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    :goto_1
    move v7, v9

    .line 961
    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 962
    move v9, v5

    move-object v10, v4

    invoke-virtual {v10}, Landroid/support/v7/view/menu/MenuItemImpl;->expandActionView()Z

    move-result v10

    or-int/2addr v9, v10

    move v5, v9

    .line 963
    move v9, v5

    if-eqz v9, :cond_2

    .line 964
    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 990
    :cond_2
    :goto_2
    move v9, v5

    move v0, v9

    goto :goto_0

    .line 960
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 966
    :cond_4
    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v9

    if-nez v9, :cond_5

    move v9, v7

    if-eqz v9, :cond_a

    .line 967
    :cond_5
    move v9, v3

    const/4 v10, 0x4

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_6

    .line 969
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 972
    :cond_6
    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v9

    if-nez v9, :cond_7

    .line 973
    move-object v9, v4

    new-instance v10, Landroid/support/v7/view/menu/SubMenuBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object v13, v0

    move-object v14, v4

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)V

    invoke-virtual {v9, v10}, Landroid/support/v7/view/menu/MenuItemImpl;->setSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V

    .line 976
    :cond_7
    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    check-cast v9, Landroid/support/v7/view/menu/SubMenuBuilder;

    move-object v8, v9

    .line 977
    move v9, v7

    if-eqz v9, :cond_8

    .line 978
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/support/v4/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 980
    :cond_8
    move v9, v5

    move-object v10, v0

    move-object v11, v8

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;Landroid/support/v7/view/menu/MenuPresenter;)Z

    move-result v10

    or-int/2addr v9, v10

    move v5, v9

    .line 981
    move v9, v5

    if-nez v9, :cond_9

    .line 982
    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 984
    :cond_9
    goto :goto_2

    .line 985
    :cond_a
    move v9, v3

    const/4 v10, 0x1

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_2

    .line 986
    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    goto :goto_2
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 9

    .prologue
    .line 835
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v6

    move-object v4, v6

    .line 837
    const/4 v6, 0x0

    move v5, v6

    .line 839
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 840
    move-object v6, v0

    move-object v7, v4

    move v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v6

    move v5, v6

    .line 843
    :cond_0
    move v6, v3

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    .line 844
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 847
    :cond_1
    move v6, v5

    move v0, v6

    return v0
.end method

.method public removeGroup(I)V
    .locals 8

    .prologue
    .line 535
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v5

    move v2, v5

    .line 537
    move v5, v2

    if-ltz v5, :cond_1

    .line 538
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    sub-int/2addr v5, v6

    move v3, v5

    .line 539
    const/4 v5, 0x0

    move v4, v5

    .line 540
    :goto_0
    move v5, v4

    add-int/lit8 v4, v4, 0x1

    move v6, v3

    if-ge v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v5

    move v6, v1

    if-ne v5, v6, :cond_0

    .line 542
    move-object v5, v0

    move v6, v2

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    goto :goto_0

    .line 546
    :cond_0
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 548
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 5

    .prologue
    .line 530
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 531
    return-void
.end method

.method public removeItemAt(I)V
    .locals 5

    .prologue
    .line 569
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 570
    return-void
.end method

.method public removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V
    .locals 7

    .prologue
    .line 266
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v3, v5

    .line 267
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/MenuPresenter;

    move-object v4, v5

    .line 268
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    move-object v6, v1

    if-ne v5, v6, :cond_1

    .line 269
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 271
    :cond_1
    goto :goto_0

    .line 272
    :cond_2
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 391
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    if-nez v8, :cond_0

    .line 418
    :goto_0
    return-void

    .line 395
    :cond_0
    move-object v8, v1

    move-object v9, v0

    .line 396
    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v9

    .line 395
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    move-object v2, v8

    .line 398
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v8

    move v3, v8

    .line 399
    const/4 v8, 0x0

    move v4, v8

    :goto_1
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 400
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    move-object v5, v8

    .line 401
    move-object v8, v5

    invoke-static {v8}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v8

    move-object v6, v8

    .line 402
    move-object v8, v6

    if-eqz v8, :cond_1

    move-object v8, v6

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 403
    move-object v8, v6

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 405
    :cond_1
    move-object v8, v5

    invoke-interface {v8}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 406
    move-object v8, v5

    invoke-interface {v8}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/SubMenuBuilder;

    move-object v7, v8

    .line 407
    move-object v8, v7

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 399
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 411
    :cond_3
    move-object v8, v1

    const-string v9, "android:menu:expandedactionview"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 412
    move v8, v4

    if-lez v8, :cond_4

    .line 413
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    move-object v5, v8

    .line 414
    move-object v8, v5

    if-eqz v8, :cond_4

    .line 415
    move-object v8, v5

    invoke-static {v8}, Landroid/support/v4/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    move-result v8

    .line 418
    :cond_4
    goto :goto_0
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 360
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 361
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    .line 364
    move-object v0, p0

    move-object v1, p1

    const/4 v8, 0x0

    move-object v2, v8

    .line 366
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v8

    move v3, v8

    .line 367
    const/4 v8, 0x0

    move v4, v8

    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 368
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    move-object v5, v8

    .line 369
    move-object v8, v5

    invoke-static {v8}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v8

    move-object v6, v8

    .line 370
    move-object v8, v6

    if-eqz v8, :cond_1

    move-object v8, v6

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 371
    move-object v8, v2

    if-nez v8, :cond_0

    .line 372
    new-instance v8, Landroid/util/SparseArray;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v8

    .line 374
    :cond_0
    move-object v8, v6

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 375
    move-object v8, v5

    invoke-static {v8}, Landroid/support/v4/view/MenuItemCompat;->isActionViewExpanded(Landroid/view/MenuItem;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 376
    move-object v8, v1

    const-string v9, "android:menu:expandedactionview"

    move-object v10, v5

    invoke-interface {v10}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 379
    :cond_1
    move-object v8, v5

    invoke-interface {v8}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 380
    move-object v8, v5

    invoke-interface {v8}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/SubMenuBuilder;

    move-object v7, v8

    .line 381
    move-object v8, v7

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 367
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 385
    :cond_3
    move-object v8, v2

    if-eqz v8, :cond_4

    .line 386
    move-object v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 388
    :cond_4
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 356
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 357
    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .locals 4

    .prologue
    .line 425
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 426
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    .line 1307
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1308
    return-void
.end method

.method public setDefaultShowAsAction(I)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 231
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 9

    .prologue
    .line 592
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-interface {v6}, Landroid/view/MenuItem;->getGroupId()I

    move-result v6

    move v2, v6

    .line 594
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 595
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_4

    .line 596
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v5, v6

    .line 597
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v6

    move v7, v2

    if-ne v6, v7, :cond_0

    .line 598
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 595
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 599
    :cond_1
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 602
    :cond_2
    move-object v6, v5

    move-object v7, v5

    move-object v8, v1

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 605
    :cond_4
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 9

    .prologue
    .line 609
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v7

    .line 611
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 612
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v6, v7

    .line 613
    move-object v7, v6

    invoke-virtual {v7}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v7

    move v8, v1

    if-ne v7, v8, :cond_0

    .line 614
    move-object v7, v6

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 615
    move-object v7, v6

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v7

    .line 611
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 618
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 8

    .prologue
    .line 640
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 642
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 643
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v5, v6

    .line 644
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_0

    .line 645
    move-object v6, v5

    move v7, v2

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v6

    .line 642
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 648
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 9

    .prologue
    .line 622
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v7

    .line 627
    const/4 v7, 0x0

    move v4, v7

    .line 628
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 629
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v6, v7

    .line 630
    move-object v7, v6

    invoke-virtual {v7}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v7

    move v8, v1

    if-ne v7, v8, :cond_0

    .line 631
    move-object v7, v6

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    move v4, v7

    .line 628
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 635
    :cond_1
    move v7, v4

    if-eqz v7, :cond_2

    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 636
    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(I)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 8

    .prologue
    .line 1263
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1264
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 8

    .prologue
    .line 1251
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1252
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method protected setHeaderTitleInt(I)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 8

    .prologue
    .line 1239
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1240
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 8

    .prologue
    .line 1227
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1228
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 8

    .prologue
    .line 1275
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1276
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setOptionalIconsVisible(Z)V
    .locals 4

    .prologue
    .line 1311
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1312
    return-void
.end method

.method public setOverrideVisibleItems(Z)V
    .locals 4

    .prologue
    .line 1372
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    .line 1373
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 4

    .prologue
    .line 739
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 741
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 742
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 4

    .prologue
    .line 780
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 786
    :goto_0
    return-void

    .line 784
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 785
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 786
    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 724
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 3

    .prologue
    .line 1054
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1056
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v1, :cond_0

    .line 1057
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1058
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1060
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 3

    .prologue
    .line 1047
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v1, :cond_0

    .line 1048
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1049
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1051
    :cond_0
    return-void
.end method
