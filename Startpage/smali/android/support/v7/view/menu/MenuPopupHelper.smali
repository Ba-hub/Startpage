.class public Landroid/support/v7/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuHelper;


# static fields
.field private static final TOUCH_EPICENTER_SIZE_DP:I = 0x30


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private mPopup:Landroid/support/v7/view/menu/MenuPopup;

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Landroid/support/v7/appcompat/R$attr;->popupMenuStyle:I

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    sget v9, Landroid/support/v7/appcompat/R$attr;->popupMenuStyle:I

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v7, v0

    const v8, 0x800003

    iput v8, v7, Landroid/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 330
    move-object v7, v0

    new-instance v8, Landroid/support/v7/view/menu/MenuPopupHelper$1;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/v7/view/menu/MenuPopupHelper$1;-><init>(Landroid/support/v7/view/menu/MenuPopupHelper;)V

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 79
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 80
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 81
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 82
    move-object v7, v0

    move v8, v4

    iput-boolean v8, v7, Landroid/support/v7/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 83
    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    .line 84
    move-object v7, v0

    move v8, v6

    iput v8, v7, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    .line 85
    return-void
.end method

.method private createPopup()Landroid/support/v7/view/menu/MenuPopup;
    .locals 17
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 218
    move-object/from16 v0, p0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    move-object v1, v8

    .line 220
    move-object v8, v1

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    move-object v2, v8

    .line 221
    new-instance v8, Landroid/graphics/Point;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    move-object v3, v8

    .line 223
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_0

    .line 224
    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 231
    :goto_0
    move-object v8, v3

    iget v8, v8, Landroid/graphics/Point;->x:I

    move-object v9, v3

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v4, v8

    .line 232
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Landroid/support/v7/appcompat/R$dimen;->abc_cascading_menus_min_smallest_width:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move v5, v8

    .line 234
    move v8, v4

    move v9, v5

    if-lt v8, v9, :cond_2

    const/4 v8, 0x1

    :goto_1
    move v6, v8

    .line 237
    move v8, v6

    if-eqz v8, :cond_3

    .line 238
    new-instance v8, Landroid/support/v7/view/menu/CascadingMenuPopup;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    move-object v12, v0

    iget v12, v12, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    move-object v14, v0

    iget-boolean v14, v14, Landroid/support/v7/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    invoke-direct/range {v9 .. v14}, Landroid/support/v7/view/menu/CascadingMenuPopup;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    move-object v7, v8

    .line 246
    :goto_2
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/MenuPopup;->addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 247
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/MenuPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 250
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/MenuPopup;->setAnchorView(Landroid/view/View;)V

    .line 251
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/MenuPopup;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 252
    move-object v8, v7

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/MenuPopup;->setForceShowIcon(Z)V

    .line 253
    move-object v8, v7

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/MenuPopup;->setGravity(I)V

    .line 255
    move-object v8, v7

    move-object v0, v8

    return-object v0

    .line 225
    :cond_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xd

    if-lt v8, v9, :cond_1

    .line 226
    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 228
    :cond_1
    move-object v8, v3

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v9

    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0

    .line 234
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 241
    :cond_3
    new-instance v8, Landroid/support/v7/view/menu/StandardMenuPopup;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    move-object v14, v0

    iget v14, v14, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    move-object v15, v0

    iget-boolean v15, v15, Landroid/support/v7/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    invoke-direct/range {v9 .. v15}, Landroid/support/v7/view/menu/StandardMenuPopup;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;IIZ)V

    move-object v7, v8

    goto :goto_2
.end method

.method private showPopup(IIZZ)V
    .locals 18

    .prologue
    .line 259
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/view/menu/MenuPopupHelper;->getPopup()Landroid/support/v7/view/menu/MenuPopup;

    move-result-object v10

    move-object v5, v10

    .line 260
    move-object v10, v5

    move v11, v4

    invoke-virtual {v10, v11}, Landroid/support/v7/view/menu/MenuPopup;->setShowTitle(Z)V

    .line 262
    move v10, v3

    if-eqz v10, :cond_1

    .line 266
    move-object v10, v0

    iget v10, v10, Landroid/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 267
    invoke-static {v11}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v11

    .line 266
    invoke-static {v10, v11}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v10

    const/4 v11, 0x7

    and-int/lit8 v10, v10, 0x7

    move v6, v10

    .line 268
    move v10, v6

    const/4 v11, 0x5

    if-ne v10, v11, :cond_0

    .line 269
    move v10, v1

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    move v1, v10

    .line 272
    :cond_0
    move-object v10, v5

    move v11, v1

    invoke-virtual {v10, v11}, Landroid/support/v7/view/menu/MenuPopup;->setHorizontalOffset(I)V

    .line 273
    move-object v10, v5

    move v11, v2

    invoke-virtual {v10, v11}, Landroid/support/v7/view/menu/MenuPopup;->setVerticalOffset(I)V

    .line 279
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    move v7, v10

    .line 280
    const/high16 v10, 0x42400000    # 48.0f

    move v11, v7

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    float-to-int v10, v10

    move v8, v10

    .line 281
    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move v12, v1

    move v13, v8

    sub-int/2addr v12, v13

    move v13, v2

    move v14, v8

    sub-int/2addr v13, v14

    move v14, v1

    move v15, v8

    add-int/2addr v14, v15

    move v15, v2

    move/from16 v16, v8

    add-int v15, v15, v16

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v9, v10

    .line 283
    move-object v10, v5

    move-object v11, v9

    invoke-virtual {v10, v11}, Landroid/support/v7/view/menu/MenuPopup;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 286
    :cond_1
    move-object v10, v5

    invoke-virtual {v10}, Landroid/support/v7/view/menu/MenuPopup;->show()V

    .line 287
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 294
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuPopup;->dismiss()V

    .line 297
    :cond_0
    return-void
.end method

.method public getGravity()I
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I

    move v0, v1

    return v0
.end method

.method public getPopup()Landroid/support/v7/view/menu/MenuPopup;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    if-nez v1, :cond_0

    .line 151
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/view/menu/MenuPopupHelper;->createPopup()Landroid/support/v7/view/menu/MenuPopup;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    .line 153
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    move-object v0, v1

    return-object v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 316
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDismiss()V
    .locals 3

    .prologue
    .line 308
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    .line 310
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v1, :cond_0

    .line 311
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 313
    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 100
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 113
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    if-eqz v2, :cond_0

    .line 114
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuPopup;->setForceShowIcon(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 127
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 4
    .param p1    # Landroid/widget/PopupWindow$OnDismissListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 89
    return-void
.end method

.method public setPresenterCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 4
    .param p1    # Landroid/support/v7/view/menu/MenuPresenter$Callback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 321
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 322
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    if-eqz v2, :cond_0

    .line 323
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuPopup;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 325
    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    return-void
.end method

.method public show(II)V
    .locals 7

    .prologue
    .line 143
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 146
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 6

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const/4 v1, 0x1

    move v0, v1

    .line 172
    :goto_0
    return v0

    .line 167
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 168
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 171
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/support/v7/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 172
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public tryShow(II)Z
    .locals 8

    .prologue
    .line 199
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    const/4 v3, 0x1

    move v0, v3

    .line 208
    :goto_0
    return v0

    .line 203
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 204
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 207
    :cond_1
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/support/v7/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 208
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method
