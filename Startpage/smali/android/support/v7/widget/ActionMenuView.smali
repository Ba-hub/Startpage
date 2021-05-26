.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;
.implements Landroid/support/v7/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuView$LayoutParams;,
        Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field private mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 79
    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    move v3, v4

    .line 80
    move-object v4, v0

    const/high16 v5, 0x42600000    # 56.0f

    move v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    .line 81
    move-object v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    move v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 82
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 83
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    .line 84
    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/widget/ActionMenuView;)Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/ActionMenuView;)Landroid/support/v7/view/menu/MenuBuilder$Callback;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    move-object v0, v1

    return-object v0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 17

    .prologue
    .line 400
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v14, v0

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object v5, v14

    .line 402
    move v14, v3

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    move v15, v4

    sub-int/2addr v14, v15

    move v6, v14

    .line 404
    move v14, v3

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    move v7, v14

    .line 405
    move v14, v6

    move v15, v7

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move v8, v14

    .line 407
    move-object v14, v0

    instance-of v14, v14, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v14, :cond_3

    move-object v14, v0

    check-cast v14, Landroid/support/v7/view/menu/ActionMenuItemView;

    :goto_0
    move-object v9, v14

    .line 409
    move-object v14, v9

    if-eqz v14, :cond_4

    move-object v14, v9

    invoke-virtual {v14}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    :goto_1
    move v10, v14

    .line 411
    const/4 v14, 0x0

    move v11, v14

    .line 412
    move v14, v2

    if-lez v14, :cond_2

    move v14, v10

    if-eqz v14, :cond_0

    move v14, v2

    const/4 v15, 0x2

    if-lt v14, v15, :cond_2

    .line 413
    :cond_0
    move v14, v1

    move v15, v2

    mul-int/2addr v14, v15

    const/high16 v15, -0x80000000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move v12, v14

    .line 415
    move-object v14, v0

    move v15, v12

    move/from16 v16, v8

    invoke-virtual/range {v14 .. v16}, Landroid/view/View;->measure(II)V

    .line 417
    move-object v14, v0

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    move v13, v14

    .line 418
    move v14, v13

    move v15, v1

    div-int/2addr v14, v15

    move v11, v14

    .line 419
    move v14, v13

    move v15, v1

    rem-int/2addr v14, v15

    if-eqz v14, :cond_1

    add-int/lit8 v11, v11, 0x1

    .line 420
    :cond_1
    move v14, v10

    if-eqz v14, :cond_2

    move v14, v11

    const/4 v15, 0x2

    if-ge v14, v15, :cond_2

    const/4 v14, 0x2

    move v11, v14

    .line 423
    :cond_2
    move-object v14, v5

    iget-boolean v14, v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v14, :cond_5

    move v14, v10

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    :goto_2
    move v12, v14

    .line 424
    move-object v14, v5

    move v15, v12

    iput-boolean v15, v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 426
    move-object v14, v5

    move v15, v11

    iput v15, v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 427
    move v14, v11

    move v15, v1

    mul-int/2addr v14, v15

    move v13, v14

    .line 428
    move-object v14, v0

    move v15, v13

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    move/from16 v16, v8

    invoke-virtual/range {v14 .. v16}, Landroid/view/View;->measure(II)V

    .line 430
    move v14, v11

    move v0, v14

    return v0

    .line 407
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 409
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 423
    :cond_5
    const/4 v14, 0x0

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 38

    .prologue
    .line 174
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v32, v4

    invoke-static/range {v32 .. v32}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v32

    move/from16 v5, v32

    .line 175
    move/from16 v32, v3

    invoke-static/range {v32 .. v32}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v32

    move/from16 v6, v32

    .line 176
    move/from16 v32, v4

    invoke-static/range {v32 .. v32}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v32

    move/from16 v7, v32

    .line 178
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v32

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v33

    add-int v32, v32, v33

    move/from16 v8, v32

    .line 179
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroid/support/v7/widget/ActionMenuView;->getPaddingTop()I

    move-result v32

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroid/support/v7/widget/ActionMenuView;->getPaddingBottom()I

    move-result v33

    add-int v32, v32, v33

    move/from16 v9, v32

    .line 181
    move/from16 v32, v4

    move/from16 v33, v9

    const/16 v34, -0x2

    invoke-static/range {v32 .. v34}, Landroid/support/v7/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v32

    move/from16 v10, v32

    .line 184
    move/from16 v32, v6

    move/from16 v33, v8

    sub-int v32, v32, v33

    move/from16 v6, v32

    .line 187
    move/from16 v32, v6

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v33, v0

    div-int v32, v32, v33

    move/from16 v11, v32

    .line 188
    move/from16 v32, v6

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v33, v0

    rem-int v32, v32, v33

    move/from16 v12, v32

    .line 190
    move/from16 v32, v11

    if-nez v32, :cond_0

    .line 192
    move-object/from16 v32, v2

    move/from16 v33, v6

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 383
    :goto_0
    return-void

    .line 196
    :cond_0
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v32, v0

    move/from16 v33, v12

    move/from16 v34, v11

    div-int v33, v33, v34

    add-int v32, v32, v33

    move/from16 v13, v32

    .line 198
    move/from16 v32, v11

    move/from16 v14, v32

    .line 199
    const/16 v32, 0x0

    move/from16 v15, v32

    .line 200
    const/16 v32, 0x0

    move/from16 v16, v32

    .line 201
    const/16 v32, 0x0

    move/from16 v17, v32

    .line 202
    const/16 v32, 0x0

    move/from16 v18, v32

    .line 203
    const/16 v32, 0x0

    move/from16 v19, v32

    .line 206
    const-wide/16 v32, 0x0

    move-wide/from16 v20, v32

    .line 208
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v32

    move/from16 v22, v32

    .line 209
    const/16 v32, 0x0

    move/from16 v23, v32

    :goto_1
    move/from16 v32, v23

    move/from16 v33, v22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_8

    .line 210
    move-object/from16 v32, v2

    move/from16 v33, v23

    invoke-virtual/range {v32 .. v33}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v24, v32

    .line 211
    move-object/from16 v32, v24

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    .line 209
    :cond_1
    :goto_2
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 213
    :cond_2
    move-object/from16 v32, v24

    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;

    move/from16 v32, v0

    move/from16 v25, v32

    .line 214
    add-int/lit8 v18, v18, 0x1

    .line 216
    move/from16 v32, v25

    if-eqz v32, :cond_3

    .line 219
    move-object/from16 v32, v24

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v32 .. v36}, Landroid/view/View;->setPadding(IIII)V

    .line 222
    :cond_3
    move-object/from16 v32, v24

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v26, v32

    .line 223
    move-object/from16 v32, v26

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 224
    move-object/from16 v32, v26

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 225
    move-object/from16 v32, v26

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 226
    move-object/from16 v32, v26

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 227
    move-object/from16 v32, v26

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 228
    move-object/from16 v32, v26

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 229
    move-object/from16 v32, v26

    move/from16 v33, v25

    if-eqz v33, :cond_6

    move-object/from16 v33, v24

    check-cast v33, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual/range {v33 .. v33}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v33

    if-eqz v33, :cond_6

    const/16 v33, 0x1

    :goto_3
    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 232
    move-object/from16 v32, v26

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_7

    const/16 v32, 0x1

    :goto_4
    move/from16 v27, v32

    .line 234
    move-object/from16 v32, v24

    move/from16 v33, v13

    move/from16 v34, v27

    move/from16 v35, v10

    move/from16 v36, v9

    invoke-static/range {v32 .. v36}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v32

    move/from16 v28, v32

    .line 237
    move/from16 v32, v16

    move/from16 v33, v28

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v16, v32

    .line 238
    move-object/from16 v32, v26

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v32, v0

    if-eqz v32, :cond_4

    add-int/lit8 v17, v17, 0x1

    .line 239
    :cond_4
    move-object/from16 v32, v26

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_5

    const/16 v32, 0x1

    move/from16 v19, v32

    .line 241
    :cond_5
    move/from16 v32, v14

    move/from16 v33, v28

    sub-int v32, v32, v33

    move/from16 v14, v32

    .line 242
    move/from16 v32, v15

    move-object/from16 v33, v24

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getMeasuredHeight()I

    move-result v33

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v15, v32

    .line 243
    move/from16 v32, v28

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    move-wide/from16 v32, v20

    const/16 v34, 0x1

    move/from16 v35, v23

    shl-int v34, v34, v35

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    or-long v32, v32, v34

    move-wide/from16 v20, v32

    goto/16 :goto_2

    .line 229
    :cond_6
    const/16 v33, 0x0

    goto :goto_3

    .line 232
    :cond_7
    move/from16 v32, v14

    goto :goto_4

    .line 248
    :cond_8
    move/from16 v32, v19

    if-eqz v32, :cond_a

    move/from16 v32, v18

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_a

    const/16 v32, 0x1

    :goto_5
    move/from16 v23, v32

    .line 253
    const/16 v32, 0x0

    move/from16 v24, v32

    .line 254
    :goto_6
    move/from16 v32, v17

    if-lez v32, :cond_e

    move/from16 v32, v14

    if-lez v32, :cond_e

    .line 255
    const v32, 0x7fffffff

    move/from16 v25, v32

    .line 256
    const-wide/16 v32, 0x0

    move-wide/from16 v26, v32

    .line 257
    const/16 v32, 0x0

    move/from16 v28, v32

    .line 258
    const/16 v32, 0x0

    move/from16 v29, v32

    :goto_7
    move/from16 v32, v29

    move/from16 v33, v22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_d

    .line 259
    move-object/from16 v32, v2

    move/from16 v33, v29

    invoke-virtual/range {v32 .. v33}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v30, v32

    .line 260
    move-object/from16 v32, v30

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v31, v32

    .line 263
    move-object/from16 v32, v31

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v32, v0

    if-nez v32, :cond_b

    .line 258
    :cond_9
    :goto_8
    add-int/lit8 v29, v29, 0x1

    goto :goto_7

    .line 248
    :cond_a
    const/16 v32, 0x0

    goto :goto_5

    .line 266
    :cond_b
    move-object/from16 v32, v31

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v32, v0

    move/from16 v33, v25

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_c

    .line 267
    move-object/from16 v32, v31

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v32, v0

    move/from16 v25, v32

    .line 268
    const/16 v32, 0x1

    move/from16 v33, v29

    shl-int v32, v32, v33

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v26, v32

    .line 269
    const/16 v32, 0x1

    move/from16 v28, v32

    goto :goto_8

    .line 270
    :cond_c
    move-object/from16 v32, v31

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v32, v0

    move/from16 v33, v25

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    .line 271
    move-wide/from16 v32, v26

    const/16 v34, 0x1

    move/from16 v35, v29

    shl-int v34, v34, v35

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    or-long v32, v32, v34

    move-wide/from16 v26, v32

    .line 272
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .line 277
    :cond_d
    move-wide/from16 v32, v20

    move-wide/from16 v34, v26

    or-long v32, v32, v34

    move-wide/from16 v20, v32

    .line 279
    move/from16 v32, v28

    move/from16 v33, v14

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_13

    .line 308
    :cond_e
    move/from16 v32, v19

    if-nez v32, :cond_18

    move/from16 v32, v18

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_18

    const/16 v32, 0x1

    :goto_9
    move/from16 v25, v32

    .line 309
    move/from16 v32, v14

    if-lez v32, :cond_20

    move-wide/from16 v32, v20

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_20

    move/from16 v32, v14

    move/from16 v33, v18

    const/16 v34, 0x1

    add-int/lit8 v33, v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_f

    move/from16 v32, v25

    if-nez v32, :cond_f

    move/from16 v32, v16

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_20

    .line 311
    :cond_f
    move-wide/from16 v32, v20

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v26, v32

    .line 313
    move/from16 v32, v25

    if-nez v32, :cond_11

    .line 315
    move-wide/from16 v32, v20

    const-wide/16 v34, 0x1

    and-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_10

    .line 316
    move-object/from16 v32, v2

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v27, v32

    .line 317
    move-object/from16 v32, v27

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v32, v0

    if-nez v32, :cond_10

    move/from16 v32, v26

    const/high16 v33, 0x3f000000    # 0.5f

    sub-float v32, v32, v33

    move/from16 v26, v32

    .line 319
    :cond_10
    move-wide/from16 v32, v20

    const/16 v34, 0x1

    move/from16 v35, v22

    const/16 v36, 0x1

    add-int/lit8 v35, v35, -0x1

    shl-int v34, v34, v35

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    and-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_11

    .line 320
    move-object/from16 v32, v2

    move/from16 v33, v22

    const/16 v34, 0x1

    add-int/lit8 v33, v33, -0x1

    invoke-virtual/range {v32 .. v33}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v27, v32

    .line 321
    move-object/from16 v32, v27

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v32, v0

    if-nez v32, :cond_11

    move/from16 v32, v26

    const/high16 v33, 0x3f000000    # 0.5f

    sub-float v32, v32, v33

    move/from16 v26, v32

    .line 325
    :cond_11
    move/from16 v32, v26

    const/16 v33, 0x0

    cmpl-float v32, v32, v33

    if-lez v32, :cond_19

    move/from16 v32, v14

    move/from16 v33, v13

    mul-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v33, v26

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    :goto_a
    move/from16 v27, v32

    .line 328
    const/16 v32, 0x0

    move/from16 v28, v32

    :goto_b
    move/from16 v32, v28

    move/from16 v33, v22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_1f

    .line 329
    move-wide/from16 v32, v20

    const/16 v34, 0x1

    move/from16 v35, v28

    shl-int v34, v34, v35

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    and-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-nez v32, :cond_1a

    .line 328
    :cond_12
    :goto_c
    add-int/lit8 v28, v28, 0x1

    goto :goto_b

    .line 282
    :cond_13
    add-int/lit8 v25, v25, 0x1

    .line 284
    const/16 v32, 0x0

    move/from16 v29, v32

    :goto_d
    move/from16 v32, v29

    move/from16 v33, v22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_17

    .line 285
    move-object/from16 v32, v2

    move/from16 v33, v29

    invoke-virtual/range {v32 .. v33}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v30, v32

    .line 286
    move-object/from16 v32, v30

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v31, v32

    .line 287
    move-wide/from16 v32, v26

    const/16 v34, 0x1

    move/from16 v35, v29

    shl-int v34, v34, v35

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    and-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-nez v32, :cond_15

    .line 289
    move-object/from16 v32, v31

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v32, v0

    move/from16 v33, v25

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_14

    move-wide/from16 v32, v20

    const/16 v34, 0x1

    move/from16 v35, v29

    shl-int v34, v34, v35

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    or-long v32, v32, v34

    move-wide/from16 v20, v32

    .line 284
    :cond_14
    :goto_e
    add-int/lit8 v29, v29, 0x1

    goto :goto_d

    .line 293
    :cond_15
    move/from16 v32, v23

    if-eqz v32, :cond_16

    move-object/from16 v32, v31

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v32, v0

    if-eqz v32, :cond_16

    move/from16 v32, v14

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_16

    .line 295
    move-object/from16 v32, v30

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v33, v0

    move/from16 v34, v13

    add-int v33, v33, v34

    const/16 v34, 0x0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v32 .. v36}, Landroid/view/View;->setPadding(IIII)V

    .line 297
    :cond_16
    move-object/from16 v32, v31

    move-object/from16 v37, v32

    move-object/from16 v32, v37

    move-object/from16 v33, v37

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v33, v0

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 298
    move-object/from16 v32, v31

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 299
    add-int/lit8 v14, v14, -0x1

    goto :goto_e

    .line 302
    :cond_17
    const/16 v32, 0x1

    move/from16 v24, v32

    .line 303
    goto/16 :goto_6

    .line 308
    :cond_18
    const/16 v32, 0x0

    goto/16 :goto_9

    .line 325
    :cond_19
    const/16 v32, 0x0

    goto/16 :goto_a

    .line 331
    :cond_1a
    move-object/from16 v32, v2

    move/from16 v33, v28

    invoke-virtual/range {v32 .. v33}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v29, v32

    .line 332
    move-object/from16 v32, v29

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v30, v32

    .line 333
    move-object/from16 v32, v29

    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;

    move/from16 v32, v0

    if-eqz v32, :cond_1c

    .line 335
    move-object/from16 v32, v30

    move/from16 v33, v27

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 336
    move-object/from16 v32, v30

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 337
    move/from16 v32, v28

    if-nez v32, :cond_1b

    move-object/from16 v32, v30

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v32, v0

    if-nez v32, :cond_1b

    .line 340
    move-object/from16 v32, v30

    move/from16 v33, v27

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v33, v0

    const/16 v34, 0x2

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 342
    :cond_1b
    const/16 v32, 0x1

    move/from16 v24, v32

    goto/16 :goto_c

    .line 343
    :cond_1c
    move-object/from16 v32, v30

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1d

    .line 344
    move-object/from16 v32, v30

    move/from16 v33, v27

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 345
    move-object/from16 v32, v30

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 346
    move-object/from16 v32, v30

    move/from16 v33, v27

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v33, v0

    const/16 v34, 0x2

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 347
    const/16 v32, 0x1

    move/from16 v24, v32

    goto/16 :goto_c

    .line 352
    :cond_1d
    move/from16 v32, v28

    if-eqz v32, :cond_1e

    .line 353
    move-object/from16 v32, v30

    move/from16 v33, v27

    const/16 v34, 0x2

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 355
    :cond_1e
    move/from16 v32, v28

    move/from16 v33, v22

    const/16 v34, 0x1

    add-int/lit8 v33, v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_12

    .line 356
    move-object/from16 v32, v30

    move/from16 v33, v27

    const/16 v34, 0x2

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_c

    .line 361
    :cond_1f
    const/16 v32, 0x0

    move/from16 v14, v32

    .line 365
    :cond_20
    move/from16 v32, v24

    if-eqz v32, :cond_22

    .line 366
    const/16 v32, 0x0

    move/from16 v26, v32

    :goto_f
    move/from16 v32, v26

    move/from16 v33, v22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_22

    .line 367
    move-object/from16 v32, v2

    move/from16 v33, v26

    invoke-virtual/range {v32 .. v33}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v27, v32

    .line 368
    move-object/from16 v32, v27

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v28, v32

    .line 370
    move-object/from16 v32, v28

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v32, v0

    if-nez v32, :cond_21

    .line 366
    :goto_10
    add-int/lit8 v26, v26, 0x1

    goto :goto_f

    .line 372
    :cond_21
    move-object/from16 v32, v28

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v32, v0

    move/from16 v33, v13

    mul-int v32, v32, v33

    move-object/from16 v33, v28

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v29, v32

    .line 373
    move-object/from16 v32, v27

    move/from16 v33, v29

    const/high16 v34, 0x40000000    # 2.0f

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    move/from16 v34, v10

    invoke-virtual/range {v32 .. v34}, Landroid/view/View;->measure(II)V

    goto :goto_10

    .line 378
    :cond_22
    move/from16 v32, v5

    const/high16 v33, 0x40000000    # 2.0f

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_23

    .line 379
    move/from16 v32, v15

    move/from16 v7, v32

    .line 382
    :cond_23
    move-object/from16 v32, v2

    move/from16 v33, v6

    move/from16 v34, v7

    invoke-virtual/range {v32 .. v34}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 383
    goto/16 :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .prologue
    .line 604
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 2

    .prologue
    .line 707
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 708
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    move-result v1

    .line 710
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .prologue
    .line 732
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 7

    .prologue
    .line 577
    move-object v0, p0

    new-instance v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(II)V

    move-object v1, v2

    .line 579
    move-object v2, v1

    const/16 v3, 0x10

    iput v3, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 580
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 7

    .prologue
    .line 585
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 7

    .prologue
    .line 590
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-eqz v3, :cond_2

    .line 591
    move-object v3, v1

    instance-of v3, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz v3, :cond_1

    new-instance v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    check-cast v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {v4, v5}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/support/v7/widget/ActionMenuView$LayoutParams;)V

    :goto_0
    move-object v2, v3

    .line 594
    move-object v3, v2

    iget v3, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v3, :cond_0

    .line 595
    move-object v3, v2

    const/16 v4, 0x10

    iput v4, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 597
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .line 599
    :goto_1
    return-object v0

    .line 591
    :cond_1
    new-instance v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 599
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v3

    move-object v0, v3

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 4

    .prologue
    .line 609
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v2

    move-object v1, v2

    .line 610
    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 611
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 8

    .prologue
    .line 638
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v2, :cond_0

    .line 639
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v2

    .line 640
    move-object v2, v0

    new-instance v3, Landroid/support/v7/view/menu/MenuBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 641
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    new-instance v3, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/support/v7/widget/ActionMenuView;Landroid/support/v7/widget/ActionMenuView$1;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 642
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 643
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 644
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 646
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 647
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V

    .line 650
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v0, v2

    return-object v0

    .line 644
    :cond_1
    new-instance v3, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/widget/ActionMenuView;Landroid/support/v7/widget/ActionMenuView$1;)V

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 561
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 562
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    move v0, v1

    return v0
.end method

.method public getWindowAnimations()I
    .locals 2

    .prologue
    .line 621
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 8

    .prologue
    .line 716
    move-object v0, p0

    move v1, p1

    move v5, v1

    if-nez v5, :cond_0

    .line 717
    const/4 v5, 0x0

    move v0, v5

    .line 728
    :goto_0
    return v0

    .line 719
    :cond_0
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 720
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 721
    const/4 v5, 0x0

    move v4, v5

    .line 722
    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    move-object v5, v2

    instance-of v5, v5, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v5, :cond_1

    .line 723
    move v5, v4

    move-object v6, v2

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v6}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v6

    or-int/2addr v5, v6

    move v4, v5

    .line 725
    :cond_1
    move v5, v1

    if-lez v5, :cond_2

    move-object v5, v3

    instance-of v5, v5, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v5, :cond_2

    .line 726
    move v5, v4

    move-object v6, v3

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v6}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v6

    or-int/2addr v5, v6

    move v4, v5

    .line 728
    :cond_2
    move v5, v4

    move v0, v5

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .prologue
    .line 685
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

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

.method public initialize(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 4

    .prologue
    .line 626
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 627
    return-void
.end method

.method public invokeItem(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 5

    .prologue
    .line 616
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 2

    .prologue
    .line 700
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

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

.method public isOverflowMenuShowing()Z
    .locals 2

    .prologue
    .line 695
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

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

.method public isOverflowReserved()Z
    .locals 2

    .prologue
    .line 567
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    move v0, v1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 126
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v2, :cond_0

    .line 127
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 129
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v2

    .line 131
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v2

    .line 134
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 540
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 541
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->dismissPopupMenus()V

    .line 542
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 32

    .prologue
    .line 435
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 436
    move-object/from16 v26, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move/from16 v29, v5

    move/from16 v30, v6

    move/from16 v31, v7

    invoke-super/range {v26 .. v31}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 536
    :goto_0
    return-void

    .line 440
    :cond_0
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v26

    move/from16 v8, v26

    .line 441
    move/from16 v26, v7

    move/from16 v27, v5

    sub-int v26, v26, v27

    const/16 v27, 0x2

    div-int/lit8 v26, v26, 0x2

    move/from16 v9, v26

    .line 442
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v7/widget/ActionMenuView;->getDividerWidth()I

    move-result v26

    move/from16 v10, v26

    .line 443
    const/16 v26, 0x0

    move/from16 v11, v26

    .line 444
    const/16 v26, 0x0

    move/from16 v12, v26

    .line 445
    const/16 v26, 0x0

    move/from16 v13, v26

    .line 446
    move/from16 v26, v6

    move/from16 v27, v4

    sub-int v26, v26, v27

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v27

    sub-int v26, v26, v27

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v14, v26

    .line 447
    const/16 v26, 0x0

    move/from16 v15, v26

    .line 448
    move-object/from16 v26, v2

    invoke-static/range {v26 .. v26}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v26

    move/from16 v16, v26

    .line 449
    const/16 v26, 0x0

    move/from16 v17, v26

    :goto_1
    move/from16 v26, v17

    move/from16 v27, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 450
    move-object/from16 v26, v2

    move/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v18, v26

    .line 451
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 449
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 455
    :cond_1
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v19, v26

    .line 456
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    .line 457
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move/from16 v11, v26

    .line 458
    move-object/from16 v26, v2

    move/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 459
    move/from16 v26, v11

    move/from16 v27, v10

    add-int v26, v26, v27

    move/from16 v11, v26

    .line 461
    :cond_2
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    move/from16 v20, v26

    .line 464
    move/from16 v26, v16

    if-eqz v26, :cond_3

    .line 465
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v26

    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v22, v26

    .line 466
    move/from16 v26, v22

    move/from16 v27, v11

    add-int v26, v26, v27

    move/from16 v21, v26

    .line 471
    :goto_3
    move/from16 v26, v9

    move/from16 v27, v20

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    move/from16 v23, v26

    .line 472
    move/from16 v26, v23

    move/from16 v27, v20

    add-int v26, v26, v27

    move/from16 v24, v26

    .line 473
    move-object/from16 v26, v18

    move/from16 v27, v22

    move/from16 v28, v23

    move/from16 v29, v21

    move/from16 v30, v24

    invoke-virtual/range {v26 .. v30}, Landroid/view/View;->layout(IIII)V

    .line 475
    move/from16 v26, v14

    move/from16 v27, v11

    sub-int v26, v26, v27

    move/from16 v14, v26

    .line 476
    const/16 v26, 0x1

    move/from16 v15, v26

    .line 477
    goto/16 :goto_2

    .line 468
    :cond_3
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v26

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v27

    sub-int v26, v26, v27

    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v21, v26

    .line 469
    move/from16 v26, v21

    move/from16 v27, v11

    sub-int v26, v26, v27

    move/from16 v22, v26

    goto :goto_3

    .line 478
    :cond_4
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v20, v26

    .line 479
    move/from16 v26, v12

    move/from16 v27, v20

    add-int v26, v26, v27

    move/from16 v12, v26

    .line 480
    move/from16 v26, v14

    move/from16 v27, v20

    sub-int v26, v26, v27

    move/from16 v14, v26

    .line 481
    move-object/from16 v26, v2

    move/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 482
    move/from16 v26, v12

    move/from16 v27, v10

    add-int v26, v26, v27

    move/from16 v12, v26

    .line 484
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 488
    :cond_6
    move/from16 v26, v8

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    move/from16 v26, v15

    if-nez v26, :cond_7

    .line 490
    move-object/from16 v26, v2

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v17, v26

    .line 491
    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move/from16 v18, v26

    .line 492
    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    move/from16 v19, v26

    .line 493
    move/from16 v26, v6

    move/from16 v27, v4

    sub-int v26, v26, v27

    const/16 v27, 0x2

    div-int/lit8 v26, v26, 0x2

    move/from16 v20, v26

    .line 494
    move/from16 v26, v20

    move/from16 v27, v18

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    move/from16 v21, v26

    .line 495
    move/from16 v26, v9

    move/from16 v27, v19

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    move/from16 v22, v26

    .line 496
    move-object/from16 v26, v17

    move/from16 v27, v21

    move/from16 v28, v22

    move/from16 v29, v21

    move/from16 v30, v18

    add-int v29, v29, v30

    move/from16 v30, v22

    move/from16 v31, v19

    add-int v30, v30, v31

    invoke-virtual/range {v26 .. v30}, Landroid/view/View;->layout(IIII)V

    .line 497
    goto/16 :goto_0

    .line 500
    :cond_7
    move/from16 v26, v13

    move/from16 v27, v15

    if-eqz v27, :cond_9

    const/16 v27, 0x0

    :goto_4
    sub-int v26, v26, v27

    move/from16 v17, v26

    .line 501
    const/16 v26, 0x0

    move/from16 v27, v17

    if-lez v27, :cond_a

    move/from16 v27, v14

    move/from16 v28, v17

    div-int v27, v27, v28

    :goto_5
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v26

    move/from16 v18, v26

    .line 503
    move/from16 v26, v16

    if-eqz v26, :cond_d

    .line 504
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v26

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v19, v26

    .line 505
    const/16 v26, 0x0

    move/from16 v20, v26

    :goto_6
    move/from16 v26, v20

    move/from16 v27, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 506
    move-object/from16 v26, v2

    move/from16 v27, v20

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v21, v26

    .line 507
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v22, v26

    .line 508
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    move-object/from16 v26, v22

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v26, v0

    if-eqz v26, :cond_b

    .line 505
    :cond_8
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 500
    :cond_9
    const/16 v27, 0x1

    goto :goto_4

    .line 501
    :cond_a
    const/16 v27, 0x0

    goto :goto_5

    .line 512
    :cond_b
    move/from16 v26, v19

    move-object/from16 v27, v22

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v19, v26

    .line 513
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move/from16 v23, v26

    .line 514
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    move/from16 v24, v26

    .line 515
    move/from16 v26, v9

    move/from16 v27, v24

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    move/from16 v25, v26

    .line 516
    move-object/from16 v26, v21

    move/from16 v27, v19

    move/from16 v28, v23

    sub-int v27, v27, v28

    move/from16 v28, v25

    move/from16 v29, v19

    move/from16 v30, v25

    move/from16 v31, v24

    add-int v30, v30, v31

    invoke-virtual/range {v26 .. v30}, Landroid/view/View;->layout(IIII)V

    .line 517
    move/from16 v26, v19

    move/from16 v27, v23

    move-object/from16 v28, v22

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v28, v18

    add-int v27, v27, v28

    sub-int v26, v26, v27

    move/from16 v19, v26

    goto :goto_7

    .line 536
    :cond_c
    goto/16 :goto_0

    .line 520
    :cond_d
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v26

    move/from16 v19, v26

    .line 521
    const/16 v26, 0x0

    move/from16 v20, v26

    :goto_8
    move/from16 v26, v20

    move/from16 v27, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 522
    move-object/from16 v26, v2

    move/from16 v27, v20

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v21, v26

    .line 523
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v22, v26

    .line 524
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_e

    move-object/from16 v26, v22

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v26, v0

    if-eqz v26, :cond_f

    .line 521
    :cond_e
    :goto_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 528
    :cond_f
    move/from16 v26, v19

    move-object/from16 v27, v22

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v19, v26

    .line 529
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move/from16 v23, v26

    .line 530
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    move/from16 v24, v26

    .line 531
    move/from16 v26, v9

    move/from16 v27, v24

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    move/from16 v25, v26

    .line 532
    move-object/from16 v26, v21

    move/from16 v27, v19

    move/from16 v28, v25

    move/from16 v29, v19

    move/from16 v30, v23

    add-int v29, v29, v30

    move/from16 v30, v25

    move/from16 v31, v24

    add-int v30, v30, v31

    invoke-virtual/range {v26 .. v30}, Landroid/view/View;->layout(IIII)V

    .line 533
    move/from16 v26, v19

    move/from16 v27, v23

    move-object/from16 v28, v22

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v28, v18

    add-int v27, v27, v28

    add-int v26, v26, v27

    move/from16 v19, v26

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 15

    .prologue
    .line 143
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    move v3, v9

    .line 144
    move-object v9, v0

    move v10, v1

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, v9, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 146
    move v9, v3

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eq v9, v10, :cond_0

    .line 147
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 152
    :cond_0
    move v9, v1

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    move v4, v9

    .line 153
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v9, :cond_1

    move v9, v4

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v9, v10, :cond_1

    .line 154
    move-object v9, v0

    move v10, v4

    iput v10, v9, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 155
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 158
    :cond_1
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v9

    move v5, v9

    .line 159
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v9, :cond_3

    move v9, v5

    if-lez v9, :cond_3

    .line 160
    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/ActionMenuView;->onMeasureExactFormat(II)V

    .line 170
    :goto_1
    return-void

    .line 144
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 163
    :cond_3
    const/4 v9, 0x0

    move v6, v9

    :goto_2
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_4

    .line 164
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 165
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object v8, v9

    .line 166
    move-object v9, v8

    move-object v10, v8

    const/4 v11, 0x0

    move-object v13, v10

    move v14, v11

    move v10, v14

    move-object v11, v13

    move v12, v14

    iput v12, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v10, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 163
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 168
    :cond_4
    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-super {v9, v10, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    goto :goto_1
.end method

.method public peekMenu()Landroid/support/v7/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 667
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v0, v1

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 4

    .prologue
    .line 737
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 738
    return-void
.end method

.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .locals 5

    .prologue
    .line 658
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 659
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/widget/ActionMenuView;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 660
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .line 138
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 550
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 551
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 552
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 4

    .prologue
    .line 572
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    .line 573
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 8
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 94
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 95
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    .line 96
    move v2, v1

    if-nez v2, :cond_1

    .line 97
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    move-object v2, v0

    new-instance v3, Landroid/view/ContextThemeWrapper;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v5

    move v6, v1

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 119
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V

    .line 120
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 2

    .prologue
    .line 676
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

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
