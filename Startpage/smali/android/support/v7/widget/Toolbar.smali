.class public Landroid/support/v7/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Landroid/support/v7/widget/Toolbar$SavedState;,
        Landroid/support/v7/widget/Toolbar$LayoutParams;,
        Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mButtonGravity:I

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private mContentInsetEndWithActions:I

.field private mContentInsetStartWithNavigation:I

.field private mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private mMenuView:Landroid/support/v7/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

.field private mNavButtonView:Landroid/widget/ImageButton;

.field private mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

.field private mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 228
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroid/support/v7/appcompat/R$attr;->toolbarStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 30
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 232
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v25, v5

    invoke-direct/range {v22 .. v25}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 177
    move-object/from16 v22, v2

    const v23, 0x800013

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mGravity:I

    .line 189
    move-object/from16 v22, v2

    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 192
    move-object/from16 v22, v2

    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 194
    move-object/from16 v22, v2

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 198
    move-object/from16 v22, v2

    new-instance v23, Landroid/support/v7/widget/Toolbar$1;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    move-object/from16 v25, v2

    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar$1;-><init>(Landroid/support/v7/widget/Toolbar;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .line 217
    move-object/from16 v22, v2

    new-instance v23, Landroid/support/v7/widget/Toolbar$2;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    move-object/from16 v25, v2

    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar$2;-><init>(Landroid/support/v7/widget/Toolbar;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 235
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v23, v4

    sget-object v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar:[I

    move/from16 v25, v5

    const/16 v26, 0x0

    invoke-static/range {v22 .. v26}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v22

    move-object/from16 v6, v22

    .line 238
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextAppearance:I

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    .line 239
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextAppearance:I

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 240
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_android_gravity:I

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mGravity:I

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getInteger(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mGravity:I

    .line 241
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_buttonGravity:I

    const/16 v25, 0x30

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getInteger(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    .line 244
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargin:I

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v7, v22

    .line 245
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargins:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 247
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargins:I

    move/from16 v24, v7

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v7, v22

    .line 249
    :cond_0
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move/from16 v26, v7

    move-object/from16 v28, v25

    move/from16 v29, v26

    move/from16 v25, v29

    move-object/from16 v26, v28

    move/from16 v27, v29

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move-object/from16 v28, v24

    move/from16 v29, v25

    move/from16 v24, v29

    move-object/from16 v25, v28

    move/from16 v26, v29

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move-object/from16 v28, v23

    move/from16 v29, v24

    move/from16 v23, v29

    move-object/from16 v24, v28

    move/from16 v25, v29

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 251
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginStart:I

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v8, v22

    .line 252
    move/from16 v22, v8

    if-ltz v22, :cond_1

    .line 253
    move-object/from16 v22, v2

    move/from16 v23, v8

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 256
    :cond_1
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginEnd:I

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v9, v22

    .line 257
    move/from16 v22, v9

    if-ltz v22, :cond_2

    .line 258
    move-object/from16 v22, v2

    move/from16 v23, v9

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 261
    :cond_2
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginTop:I

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v10, v22

    .line 262
    move/from16 v22, v10

    if-ltz v22, :cond_3

    .line 263
    move-object/from16 v22, v2

    move/from16 v23, v10

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 266
    :cond_3
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginBottom:I

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v11, v22

    .line 268
    move/from16 v22, v11

    if-ltz v22, :cond_4

    .line 269
    move-object/from16 v22, v2

    move/from16 v23, v11

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 272
    :cond_4
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_maxButtonHeight:I

    const/16 v25, -0x1

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    .line 274
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetStart:I

    const/high16 v24, -0x80000000

    .line 275
    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v12, v22

    .line 277
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetEnd:I

    const/high16 v24, -0x80000000

    .line 278
    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v13, v22

    .line 280
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetLeft:I

    const/16 v24, 0x0

    .line 281
    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v14, v22

    .line 282
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetRight:I

    const/16 v24, 0x0

    .line 283
    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v15, v22

    .line 285
    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v22}, Landroid/support/v7/widget/Toolbar;->ensureContentInsets()V

    .line 286
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    move-object/from16 v22, v0

    move/from16 v23, v14

    move/from16 v24, v15

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 288
    move/from16 v22, v12

    const/high16 v23, -0x80000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    move/from16 v22, v13

    const/high16 v23, -0x80000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 290
    :cond_5
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    move-object/from16 v22, v0

    move/from16 v23, v12

    move/from16 v24, v13

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/RtlSpacingHelper;->setRelative(II)V

    .line 293
    :cond_6
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetStartWithNavigation:I

    const/high16 v25, -0x80000000

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 295
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetEndWithActions:I

    const/high16 v25, -0x80000000

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 298
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_collapseIcon:I

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 299
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_collapseContentDescription:I

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 301
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_title:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v16, v22

    .line 302
    move-object/from16 v22, v16

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 303
    move-object/from16 v22, v2

    move-object/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 306
    :cond_7
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitle:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v17, v22

    .line 307
    move-object/from16 v22, v17

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 308
    move-object/from16 v22, v2

    move-object/from16 v23, v17

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 312
    :cond_8
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 313
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_popupTheme:I

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 315
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_navigationIcon:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v18, v22

    .line 316
    move-object/from16 v22, v18

    if-eqz v22, :cond_9

    .line 317
    move-object/from16 v22, v2

    move-object/from16 v23, v18

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 319
    :cond_9
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_navigationContentDescription:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v19, v22

    .line 320
    move-object/from16 v22, v19

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 321
    move-object/from16 v22, v2

    move-object/from16 v23, v19

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 324
    :cond_a
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_logo:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v20, v22

    .line 325
    move-object/from16 v22, v20

    if-eqz v22, :cond_b

    .line 326
    move-object/from16 v22, v2

    move-object/from16 v23, v20

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 329
    :cond_b
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_logoDescription:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v21, v22

    .line 330
    move-object/from16 v22, v21

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 331
    move-object/from16 v22, v2

    move-object/from16 v23, v21

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 334
    :cond_c
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 335
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I

    const/16 v25, -0x1

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 338
    :cond_d
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 339
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    const/16 v25, -0x1

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    .line 341
    :cond_e
    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 342
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/Toolbar;)V
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/Toolbar;->ensureCollapseButtonView()V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/Toolbar;)I
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    move v0, v1

    return v0
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2015
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v9, v0

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_0
    move v3, v9

    .line 2016
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v9

    move v4, v9

    .line 2017
    move v9, v2

    move-object v10, v0

    .line 2018
    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v10

    .line 2017
    invoke-static {v9, v10}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v9

    move v5, v9

    .line 2020
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 2022
    move v9, v3

    if-eqz v9, :cond_3

    .line 2023
    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v6, v9

    :goto_1
    move v9, v6

    if-ltz v9, :cond_2

    .line 2024
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 2025
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v8, v9

    .line 2026
    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v9, :cond_0

    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v0

    move-object v10, v8

    iget v10, v10, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 2027
    invoke-direct {v9, v10}, Landroid/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v9

    move v10, v5

    if-ne v9, v10, :cond_0

    .line 2028
    move-object v9, v1

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 2023
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2015
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 2041
    :cond_2
    return-void

    .line 2032
    :cond_3
    const/4 v9, 0x0

    move v6, v9

    :goto_2
    move v9, v6

    move v10, v4

    if-ge v9, v10, :cond_2

    .line 2033
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 2034
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v8, v9

    .line 2035
    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v9, :cond_4

    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v0

    move-object v10, v8

    iget v10, v10, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 2036
    invoke-direct {v9, v10}, Landroid/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v9

    move v10, v5

    if-ne v9, v10, :cond_4

    .line 2037
    move-object v9, v1

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 2032
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .locals 8

    .prologue
    .line 1384
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v3, v5

    .line 1386
    move-object v5, v3

    if-nez v5, :cond_0

    .line 1387
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v5

    move-object v4, v5

    .line 1393
    :goto_0
    move-object v5, v4

    const/4 v6, 0x1

    iput v6, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1395
    move v5, v2

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 1396
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1397
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1401
    :goto_1
    return-void

    .line 1388
    :cond_0
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1389
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    .line 1391
    :cond_1
    move-object v5, v3

    check-cast v5, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v4, v5

    goto :goto_0

    .line 1399
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private ensureCollapseButtonView()V
    .locals 9

    .prologue
    .line 1365
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v2, :cond_0

    .line 1366
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/AppCompatImageButton;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget v7, Landroid/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1368
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1369
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1370
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v1, v2

    .line 1371
    move-object v2, v1

    const v3, 0x800003

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    const/16 v5, 0x70

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1372
    move-object v2, v1

    const/4 v3, 0x2

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1373
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1374
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v3, Landroid/support/v7/widget/Toolbar$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/Toolbar$3;-><init>(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1381
    :cond_0
    return-void
.end method

.method private ensureContentInsets()V
    .locals 5

    .prologue
    .line 2161
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-nez v1, :cond_0

    .line 2162
    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/RtlSpacingHelper;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/v7/widget/RtlSpacingHelper;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    .line 2164
    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 6

    .prologue
    .line 679
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 680
    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/AppCompatImageView;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 682
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 8

    .prologue
    .line 1027
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureMenuView()V

    .line 1028
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1030
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/MenuBuilder;

    move-object v1, v2

    .line 1031
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v2, :cond_0

    .line 1032
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/Toolbar$1;)V

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 1034
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1035
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 1037
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 7

    .prologue
    .line 1040
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-nez v2, :cond_0

    .line 1041
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/ActionMenuView;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 1042
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 1043
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 1044
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/ActionMenuView;->setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 1045
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v1, v2

    .line 1046
    move-object v2, v1

    const v3, 0x800005

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    const/16 v5, 0x70

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1047
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1048
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 1050
    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 9

    .prologue
    .line 1355
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v2, :cond_0

    .line 1356
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/AppCompatImageButton;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget v7, Landroid/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1358
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v1, v2

    .line 1359
    move-object v2, v1

    const v3, 0x800003

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    const/16 v5, 0x70

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1360
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1362
    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 7

    .prologue
    .line 2044
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    move v2, v5

    .line 2045
    move v5, v1

    move v6, v2

    invoke-static {v5, v6}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v5

    move v3, v5

    .line 2046
    move v5, v3

    const/4 v6, 0x7

    and-int/lit8 v5, v5, 0x7

    move v4, v5

    .line 2047
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 2053
    :pswitch_0
    move v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x5

    :goto_0
    move v0, v5

    :goto_1
    return v0

    .line 2051
    :pswitch_1
    move v5, v4

    move v0, v5

    goto :goto_1

    .line 2053
    :cond_0
    const/4 v5, 0x3

    goto :goto_0

    .line 2047
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 16

    .prologue
    .line 1964
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v3, v12

    .line 1965
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    move v4, v12

    .line 1966
    move v12, v2

    if-lez v12, :cond_1

    move v12, v4

    move v13, v2

    sub-int/2addr v12, v13

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    :goto_0
    move v5, v12

    .line 1967
    move-object v12, v0

    move-object v13, v3

    iget v13, v13, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {v12, v13}, Landroid/support/v7/widget/Toolbar;->getChildVerticalGravity(I)I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 1977
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v12

    move v6, v12

    .line 1978
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v12

    move v7, v12

    .line 1979
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v12

    move v8, v12

    .line 1980
    move v12, v8

    move v13, v6

    sub-int/2addr v12, v13

    move v13, v7

    sub-int/2addr v12, v13

    move v9, v12

    .line 1981
    move v12, v9

    move v13, v4

    sub-int/2addr v12, v13

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    move v10, v12

    .line 1982
    move v12, v10

    move-object v13, v3

    iget v13, v13, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v12, v13, :cond_2

    .line 1983
    move-object v12, v3

    iget v12, v12, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move v10, v12

    .line 1991
    :cond_0
    :goto_1
    move v12, v6

    move v13, v10

    add-int/2addr v12, v13

    move v0, v12

    :goto_2
    return v0

    .line 1966
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 1969
    :sswitch_0
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v12

    move v13, v5

    sub-int/2addr v12, v13

    move v0, v12

    goto :goto_2

    .line 1972
    :sswitch_1
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v12

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    move v13, v4

    sub-int/2addr v12, v13

    move-object v13, v3

    iget v13, v13, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    move v13, v5

    sub-int/2addr v12, v13

    move v0, v12

    goto :goto_2

    .line 1985
    :cond_2
    move v12, v8

    move v13, v7

    sub-int/2addr v12, v13

    move v13, v4

    sub-int/2addr v12, v13

    move v13, v10

    sub-int/2addr v12, v13

    move v13, v6

    sub-int/2addr v12, v13

    move v11, v12

    .line 1987
    move v12, v11

    move-object v13, v3

    iget v13, v13, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v12, v13, :cond_0

    .line 1988
    const/4 v12, 0x0

    move v13, v10

    move-object v14, v3

    iget v14, v14, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move v15, v11

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v10, v12

    goto :goto_1

    .line 1967
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private getChildVerticalGravity(I)I
    .locals 5

    .prologue
    .line 1996
    move-object v0, p0

    move v1, p1

    move v3, v1

    const/16 v4, 0x70

    and-int/lit8 v3, v3, 0x70

    move v2, v3

    .line 1997
    move v3, v2

    sparse-switch v3, :sswitch_data_0

    .line 2003
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mGravity:I

    const/16 v4, 0x70

    and-int/lit8 v3, v3, 0x70

    move v0, v3

    :goto_0
    return v0

    .line 2001
    :sswitch_0
    move v3, v2

    move v0, v3

    goto :goto_0

    .line 1997
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 2062
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v3

    .line 2063
    move-object v3, v2

    invoke-static {v3}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v3

    move-object v4, v2

    .line 2064
    invoke-static {v4}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v4

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 5

    .prologue
    .line 1053
    move-object v0, p0

    new-instance v1, Landroid/support/v7/view/SupportMenuInflater;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 2068
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v3

    .line 2069
    move-object v3, v2

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object v4, v2

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    .line 1919
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v14, v2

    const/4 v15, 0x0

    aget v14, v14, v15

    move v3, v14

    .line 1920
    move-object v14, v2

    const/4 v15, 0x1

    aget v14, v14, v15

    move v4, v14

    .line 1921
    const/4 v14, 0x0

    move v5, v14

    .line 1922
    move-object v14, v1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v6, v14

    .line 1923
    const/4 v14, 0x0

    move v7, v14

    :goto_0
    move v14, v7

    move v15, v6

    if-ge v14, v15, :cond_0

    .line 1924
    move-object v14, v1

    move v15, v7

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    move-object v8, v14

    .line 1925
    move-object v14, v8

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v9, v14

    .line 1926
    move-object v14, v9

    iget v14, v14, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    move v15, v3

    sub-int/2addr v14, v15

    move v10, v14

    .line 1927
    move-object v14, v9

    iget v14, v14, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    move v15, v4

    sub-int/2addr v14, v15

    move v11, v14

    .line 1928
    const/4 v14, 0x0

    move v15, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v12, v14

    .line 1929
    const/4 v14, 0x0

    move v15, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v13, v14

    .line 1930
    const/4 v14, 0x0

    move v15, v10

    neg-int v15, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v3, v14

    .line 1931
    const/4 v14, 0x0

    move v15, v11

    neg-int v15, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v4, v14

    .line 1932
    move v14, v5

    move v15, v12

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v15, v15, v16

    move/from16 v16, v13

    add-int v15, v15, v16

    add-int/2addr v14, v15

    move v5, v14

    .line 1923
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1934
    :cond_0
    move v14, v5

    move v0, v14

    return v0
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 2135
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v3, v0

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isCustomView(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 2101
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    iget v1, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 15

    .prologue
    .line 1939
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v9

    .line 1940
    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    move-object v10, v3

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-int/2addr v9, v10

    move v6, v9

    .line 1941
    move v9, v2

    const/4 v10, 0x0

    move v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v9, v10

    move v2, v9

    .line 1942
    move-object v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v6

    neg-int v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    aput v11, v9, v10

    .line 1943
    move-object v9, v0

    move-object v10, v1

    move v11, v4

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v9

    move v7, v9

    .line 1944
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move v8, v9

    .line 1945
    move-object v9, v1

    move v10, v2

    move v11, v7

    move v12, v2

    move v13, v8

    add-int/2addr v12, v13

    move v13, v7

    move-object v14, v1

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 1946
    move v9, v2

    move v10, v8

    move-object v11, v5

    iget v11, v11, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    move v2, v9

    .line 1947
    move v9, v2

    move v0, v9

    return v0
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 15

    .prologue
    .line 1952
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v9

    .line 1953
    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    move-object v10, v3

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int/2addr v9, v10

    move v6, v9

    .line 1954
    move v9, v2

    const/4 v10, 0x0

    move v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    sub-int/2addr v9, v10

    move v2, v9

    .line 1955
    move-object v9, v3

    const/4 v10, 0x1

    const/4 v11, 0x0

    move v12, v6

    neg-int v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    aput v11, v9, v10

    .line 1956
    move-object v9, v0

    move-object v10, v1

    move v11, v4

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v9

    move v7, v9

    .line 1957
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move v8, v9

    .line 1958
    move-object v9, v1

    move v10, v2

    move v11, v8

    sub-int/2addr v10, v11

    move v11, v7

    move v12, v2

    move v13, v7

    move-object v14, v1

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 1959
    move v9, v2

    move v10, v8

    move-object v11, v5

    iget v11, v11, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    sub-int/2addr v9, v10

    move v2, v9

    .line 1960
    move v9, v2

    move v0, v9

    return v0
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 20

    .prologue
    .line 1526
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v8, v16

    .line 1528
    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v16, v0

    move-object/from16 v17, v7

    const/16 v18, 0x0

    aget v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v9, v16

    .line 1529
    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v16, v0

    move-object/from16 v17, v7

    const/16 v18, 0x1

    aget v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v10, v16

    .line 1530
    const/16 v16, 0x0

    move/from16 v17, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v11, v16

    .line 1531
    const/16 v16, 0x0

    move/from16 v17, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v12, v16

    .line 1532
    move/from16 v16, v11

    move/from16 v17, v12

    add-int v16, v16, v17

    move/from16 v13, v16

    .line 1533
    move-object/from16 v16, v7

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, v9

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    aput v18, v16, v17

    .line 1534
    move-object/from16 v16, v7

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v19, v10

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    aput v18, v16, v17

    .line 1536
    move/from16 v16, v3

    move-object/from16 v17, v1

    .line 1537
    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v17

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v18, v13

    add-int v17, v17, v18

    move/from16 v18, v4

    add-int v17, v17, v18

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v18, v0

    .line 1536
    invoke-static/range {v16 .. v18}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v14, v16

    .line 1538
    move/from16 v16, v5

    move-object/from16 v17, v1

    .line 1539
    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v17

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v18

    add-int v17, v17, v18

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v18, v6

    add-int v17, v17, v18

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v18, v0

    .line 1538
    invoke-static/range {v16 .. v18}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v15, v16

    .line 1542
    move-object/from16 v16, v2

    move/from16 v17, v14

    move/from16 v18, v15

    invoke-virtual/range {v16 .. v18}, Landroid/view/View;->measure(II)V

    .line 1543
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v17, v13

    add-int v16, v16, v17

    move/from16 v1, v16

    return v1
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 15

    .prologue
    .line 1501
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v7, v12

    .line 1503
    move v12, v2

    move-object v13, v0

    .line 1504
    invoke-virtual {v13}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v13

    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v14

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    move v14, v3

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1503
    invoke-static {v12, v13, v14}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v12

    move v8, v12

    .line 1506
    move v12, v4

    move-object v13, v0

    .line 1507
    invoke-virtual {v13}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v13

    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    move v14, v5

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1506
    invoke-static {v12, v13, v14}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v12

    move v9, v12

    .line 1510
    move v12, v9

    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    move v10, v12

    .line 1511
    move v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v12, v13, :cond_0

    move v12, v6

    if-ltz v12, :cond_0

    .line 1512
    move v12, v10

    if-eqz v12, :cond_1

    move v12, v9

    .line 1513
    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    move v13, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    :goto_0
    move v11, v12

    .line 1515
    move v12, v11

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move v9, v12

    .line 1517
    :cond_0
    move-object v12, v1

    move v13, v8

    move v14, v9

    invoke-virtual {v12, v13, v14}, Landroid/view/View;->measure(II)V

    .line 1518
    return-void

    .line 1513
    :cond_1
    move v12, v6

    goto :goto_0
.end method

.method private postShowOverflowMenu()V
    .locals 3

    .prologue
    .line 1439
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1440
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1441
    return-void
.end method

.method private shouldCollapse()Z
    .locals 6

    .prologue
    .line 1550
    move-object v0, p0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/Toolbar;->mCollapsible:Z

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 1560
    :goto_0
    return v0

    .line 1552
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v4

    move v1, v4

    .line 1553
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 1554
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1555
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    move-object v4, v3

    .line 1556
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_1

    .line 1557
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 1553
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1560
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 2058
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v3, v0

    if-ne v2, v3, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method addChildrenForExpandedActionView()V
    .locals 6

    .prologue
    .line 2126
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 2128
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 2129
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2128
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2131
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2132
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 2

    .prologue
    .line 504
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->isOverflowReserved()Z

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

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 2097
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public collapseActionView()V
    .locals 3

    .prologue
    .line 709
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object v1, v2

    .line 711
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 712
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->collapseActionView()Z

    move-result v2

    .line 714
    :cond_0
    return-void

    .line 709
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 2

    .prologue
    .line 580
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    .line 581
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->dismissPopupMenus()V

    .line 583
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 6

    .prologue
    .line 2092
    move-object v0, p0

    new-instance v1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 7

    .prologue
    .line 2074
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 6

    .prologue
    .line 2079
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v2, :cond_0

    .line 2080
    new-instance v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/support/v7/widget/Toolbar$LayoutParams;)V

    move-object v0, v2

    .line 2086
    :goto_0
    return-object v0

    .line 2081
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/app/ActionBar$LayoutParams;

    if-eqz v2, :cond_1

    .line 2082
    new-instance v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/support/v7/app/ActionBar$LayoutParams;)V

    move-object v0, v2

    goto :goto_0

    .line 2083
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    .line 2084
    new-instance v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    goto :goto_0

    .line 2086
    :cond_2
    new-instance v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 2

    .prologue
    .line 1140
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/RtlSpacingHelper;->getEnd()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentInsetEndWithActions()I
    .locals 3

    .prologue
    .line 1262
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 1264
    :goto_0
    move v0, v1

    return v0

    .line 1262
    :cond_0
    move-object v1, v0

    .line 1264
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    goto :goto_0
.end method

.method public getContentInsetLeft()I
    .locals 2

    .prologue
    .line 1183
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/RtlSpacingHelper;->getLeft()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentInsetRight()I
    .locals 2

    .prologue
    .line 1203
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/RtlSpacingHelper;->getRight()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentInsetStart()I
    .locals 2

    .prologue
    .line 1120
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/RtlSpacingHelper;->getStart()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentInsetStartWithNavigation()I
    .locals 3

    .prologue
    .line 1219
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 1221
    :goto_0
    move v0, v1

    return v0

    .line 1219
    :cond_0
    move-object v1, v0

    .line 1221
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    goto :goto_0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 6

    .prologue
    .line 1314
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    .line 1315
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v3, :cond_0

    .line 1316
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v3

    move-object v2, v3

    .line 1317
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v1, v3

    .line 1319
    :cond_0
    move v3, v1

    if-eqz v3, :cond_2

    move-object v3, v0

    .line 1320
    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1321
    :goto_1
    move v0, v3

    return v0

    .line 1317
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1320
    :cond_2
    move-object v3, v0

    .line 1321
    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v3

    goto :goto_1
.end method

.method public getCurrentContentInsetLeft()I
    .locals 3

    .prologue
    .line 1334
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    .line 1335
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v1

    .line 1336
    :goto_0
    move v0, v1

    return v0

    .line 1335
    :cond_0
    move-object v1, v0

    .line 1336
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v1

    goto :goto_0
.end method

.method public getCurrentContentInsetRight()I
    .locals 3

    .prologue
    .line 1349
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    .line 1350
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v1

    .line 1351
    :goto_0
    move v0, v1

    return v0

    .line 1350
    :cond_0
    move-object v1, v0

    .line 1351
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v1

    goto :goto_0
.end method

.method public getCurrentContentInsetStart()I
    .locals 4

    .prologue
    .line 1300
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1301
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1302
    :goto_0
    move v0, v1

    return v0

    .line 1301
    :cond_0
    move-object v1, v0

    .line 1302
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    goto :goto_0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 637
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 675
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 1002
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 883
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 975
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1022
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 1023
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 2

    .prologue
    .line 368
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    move v0, v1

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 778
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 722
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getTitleMarginBottom()I
    .locals 2

    .prologue
    .line 465
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move v0, v1

    return v0
.end method

.method public getTitleMarginEnd()I
    .locals 2

    .prologue
    .line 443
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move v0, v1

    return v0
.end method

.method public getTitleMarginStart()I
    .locals 2

    .prologue
    .line 399
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    move v0, v1

    return v0
.end method

.method public getTitleMarginTop()I
    .locals 2

    .prologue
    .line 421
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move v0, v1

    return v0
.end method

.method public getWrapper()Landroid/support/v7/widget/DecorToolbar;
    .locals 7

    .prologue
    .line 2106
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    if-nez v1, :cond_0

    .line 2107
    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/ToolbarWidgetWrapper;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v2, v1, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    .line 2109
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    move-object v0, v1

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 2

    .prologue
    .line 695
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .prologue
    .line 537
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->hideOverflowMenu()Z

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

.method public inflateMenu(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .prologue
    .line 1065
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1066
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 2

    .prologue
    .line 519
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->isOverflowMenuShowPending()Z

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
    .line 514
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->isOverflowMenuShowing()Z

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

.method public isTitleTruncated()Z
    .locals 6

    .prologue
    .line 587
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 588
    const/4 v4, 0x0

    move v0, v4

    .line 602
    :goto_0
    return v0

    .line 591
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    move-object v1, v4

    .line 592
    move-object v4, v1

    if-nez v4, :cond_1

    .line 593
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 596
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    move v2, v4

    .line 597
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_3

    .line 598
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 599
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 597
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 602
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 1445
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1446
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1447
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 1480
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v4

    move v2, v4

    .line 1481
    move v4, v2

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    .line 1482
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1485
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    if-nez v4, :cond_1

    .line 1486
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    move v3, v4

    .line 1487
    move v4, v2

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    move v4, v3

    if-nez v4, :cond_1

    .line 1488
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1492
    :cond_1
    move v4, v2

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    move v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 1493
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1496
    :cond_3
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 46

    .prologue
    .line 1701
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v37, v2

    invoke-static/range {v37 .. v37}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_e

    const/16 v37, 0x1

    :goto_0
    move/from16 v8, v37

    .line 1702
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getWidth()I

    move-result v37

    move/from16 v9, v37

    .line 1703
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v37

    move/from16 v10, v37

    .line 1704
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v37

    move/from16 v11, v37

    .line 1705
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v37

    move/from16 v12, v37

    .line 1706
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v37

    move/from16 v13, v37

    .line 1707
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v37

    move/from16 v14, v37

    .line 1708
    move/from16 v37, v11

    move/from16 v15, v37

    .line 1709
    move/from16 v37, v9

    move/from16 v38, v12

    sub-int v37, v37, v38

    move/from16 v16, v37

    .line 1711
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    move-object/from16 v37, v0

    move-object/from16 v17, v37

    .line 1712
    move-object/from16 v37, v17

    const/16 v38, 0x0

    move-object/from16 v39, v17

    const/16 v40, 0x1

    const/16 v41, 0x0

    move-object/from16 v43, v39

    move/from16 v44, v40

    move/from16 v45, v41

    move/from16 v39, v45

    move-object/from16 v40, v43

    move/from16 v41, v44

    move/from16 v42, v45

    aput v42, v40, v41

    aput v39, v37, v38

    .line 1715
    move-object/from16 v37, v2

    invoke-static/range {v37 .. v37}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v37

    move/from16 v18, v37

    .line 1716
    move/from16 v37, v18

    if-ltz v37, :cond_f

    move/from16 v37, v18

    move/from16 v38, v7

    move/from16 v39, v5

    sub-int v38, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v37

    :goto_1
    move/from16 v19, v37

    .line 1718
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    if-eqz v37, :cond_0

    .line 1719
    move/from16 v37, v8

    if-eqz v37, :cond_10

    .line 1720
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v38, v0

    move/from16 v39, v16

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v16, v37

    .line 1728
    :cond_0
    :goto_2
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    if-eqz v37, :cond_1

    .line 1729
    move/from16 v37, v8

    if-eqz v37, :cond_11

    .line 1730
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v38, v0

    move/from16 v39, v16

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v16, v37

    .line 1738
    :cond_1
    :goto_3
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    if-eqz v37, :cond_2

    .line 1739
    move/from16 v37, v8

    if-eqz v37, :cond_12

    .line 1740
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v38, v0

    move/from16 v39, v15

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v15, v37

    .line 1748
    :cond_2
    :goto_4
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetLeft()I

    move-result v37

    move/from16 v20, v37

    .line 1749
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetRight()I

    move-result v37

    move/from16 v21, v37

    .line 1750
    move-object/from16 v37, v17

    const/16 v38, 0x0

    const/16 v39, 0x0

    move/from16 v40, v20

    move/from16 v41, v15

    sub-int v40, v40, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    aput v39, v37, v38

    .line 1751
    move-object/from16 v37, v17

    const/16 v38, 0x1

    const/16 v39, 0x0

    move/from16 v40, v21

    move/from16 v41, v9

    move/from16 v42, v12

    sub-int v41, v41, v42

    move/from16 v42, v16

    sub-int v41, v41, v42

    sub-int v40, v40, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    aput v39, v37, v38

    .line 1752
    move/from16 v37, v15

    move/from16 v38, v20

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v15, v37

    .line 1753
    move/from16 v37, v16

    move/from16 v38, v9

    move/from16 v39, v12

    sub-int v38, v38, v39

    move/from16 v39, v21

    sub-int v38, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v37

    move/from16 v16, v37

    .line 1755
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    if-eqz v37, :cond_3

    .line 1756
    move/from16 v37, v8

    if-eqz v37, :cond_13

    .line 1757
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v38, v0

    move/from16 v39, v16

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v16, v37

    .line 1765
    :cond_3
    :goto_5
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    if-eqz v37, :cond_4

    .line 1766
    move/from16 v37, v8

    if-eqz v37, :cond_14

    .line 1767
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    move/from16 v39, v16

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v16, v37

    .line 1775
    :cond_4
    :goto_6
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    move/from16 v22, v37

    .line 1776
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    move/from16 v23, v37

    .line 1777
    const/16 v37, 0x0

    move/from16 v24, v37

    .line 1778
    move/from16 v37, v22

    if-eqz v37, :cond_5

    .line 1779
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v25, v37

    .line 1780
    move/from16 v37, v24

    move-object/from16 v38, v25

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v39

    add-int v38, v38, v39

    move-object/from16 v39, v25

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v24, v37

    .line 1782
    :cond_5
    move/from16 v37, v23

    if-eqz v37, :cond_6

    .line 1783
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v25, v37

    .line 1784
    move/from16 v37, v24

    move-object/from16 v38, v25

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v39

    add-int v38, v38, v39

    move-object/from16 v39, v25

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v24, v37

    .line 1787
    :cond_6
    move/from16 v37, v22

    if-nez v37, :cond_7

    move/from16 v37, v23

    if-eqz v37, :cond_d

    .line 1789
    :cond_7
    move/from16 v37, v22

    if-eqz v37, :cond_15

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    :goto_7
    move-object/from16 v26, v37

    .line 1790
    move/from16 v37, v23

    if-eqz v37, :cond_16

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    :goto_8
    move-object/from16 v27, v37

    .line 1791
    move-object/from16 v37, v26

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v28, v37

    .line 1792
    move-object/from16 v37, v27

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v29, v37

    .line 1793
    move/from16 v37, v22

    if-eqz v37, :cond_8

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v37

    if-gtz v37, :cond_9

    :cond_8
    move/from16 v37, v23

    if-eqz v37, :cond_17

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    .line 1794
    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v37

    if-lez v37, :cond_17

    :cond_9
    const/16 v37, 0x1

    :goto_9
    move/from16 v30, v37

    .line 1796
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mGravity:I

    move/from16 v37, v0

    const/16 v38, 0x70

    and-int/lit8 v37, v37, 0x70

    sparse-switch v37, :sswitch_data_0

    .line 1802
    move/from16 v37, v10

    move/from16 v38, v13

    sub-int v37, v37, v38

    move/from16 v38, v14

    sub-int v37, v37, v38

    move/from16 v31, v37

    .line 1803
    move/from16 v37, v31

    move/from16 v38, v24

    sub-int v37, v37, v38

    const/16 v38, 0x2

    div-int/lit8 v37, v37, 0x2

    move/from16 v32, v37

    .line 1804
    move/from16 v37, v32

    move-object/from16 v38, v28

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_18

    .line 1805
    move-object/from16 v37, v28

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v37, v0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v32, v37

    .line 1814
    :cond_a
    :goto_a
    move/from16 v37, v13

    move/from16 v38, v32

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1821
    :goto_b
    move/from16 v37, v8

    if-eqz v37, :cond_1a

    .line 1822
    move/from16 v37, v30

    if-eqz v37, :cond_19

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v37, v0

    :goto_c
    move-object/from16 v38, v17

    const/16 v39, 0x1

    aget v38, v38, v39

    sub-int v37, v37, v38

    move/from16 v31, v37

    .line 1823
    move/from16 v37, v16

    const/16 v38, 0x0

    move/from16 v39, v31

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    sub-int v37, v37, v38

    move/from16 v16, v37

    .line 1824
    move-object/from16 v37, v17

    const/16 v38, 0x1

    const/16 v39, 0x0

    move/from16 v40, v31

    move/from16 v0, v40

    neg-int v0, v0

    move/from16 v40, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    aput v39, v37, v38

    .line 1825
    move/from16 v37, v16

    move/from16 v32, v37

    .line 1826
    move/from16 v37, v16

    move/from16 v33, v37

    .line 1828
    move/from16 v37, v22

    if-eqz v37, :cond_b

    .line 1829
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v34, v37

    .line 1830
    move/from16 v37, v32

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v38

    sub-int v37, v37, v38

    move/from16 v35, v37

    .line 1831
    move/from16 v37, v25

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v36, v37

    .line 1832
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move/from16 v38, v35

    move/from16 v39, v25

    move/from16 v40, v32

    move/from16 v41, v36

    invoke-virtual/range {v37 .. v41}, Landroid/widget/TextView;->layout(IIII)V

    .line 1833
    move/from16 v37, v35

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move/from16 v32, v37

    .line 1834
    move/from16 v37, v36

    move-object/from16 v38, v34

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1836
    :cond_b
    move/from16 v37, v23

    if-eqz v37, :cond_c

    .line 1837
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v34, v37

    .line 1838
    move/from16 v37, v25

    move-object/from16 v38, v34

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1839
    move/from16 v37, v33

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v38

    sub-int v37, v37, v38

    move/from16 v35, v37

    .line 1840
    move/from16 v37, v25

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v36, v37

    .line 1841
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move/from16 v38, v35

    move/from16 v39, v25

    move/from16 v40, v33

    move/from16 v41, v36

    invoke-virtual/range {v37 .. v41}, Landroid/widget/TextView;->layout(IIII)V

    .line 1842
    move/from16 v37, v33

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move/from16 v33, v37

    .line 1843
    move/from16 v37, v36

    move-object/from16 v38, v34

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1845
    :cond_c
    move/from16 v37, v30

    if-eqz v37, :cond_d

    .line 1846
    move/from16 v37, v32

    move/from16 v38, v33

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v37

    move/from16 v16, v37

    .line 1881
    :cond_d
    :goto_d
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    const/16 v39, 0x3

    invoke-direct/range {v37 .. v39}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1882
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v25, v37

    .line 1883
    const/16 v37, 0x0

    move/from16 v26, v37

    :goto_e
    move/from16 v37, v26

    move/from16 v38, v25

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_1e

    .line 1884
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move/from16 v39, v26

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/view/View;

    move/from16 v39, v15

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v15, v37

    .line 1883
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 1701
    :cond_e
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1716
    :cond_f
    const/16 v37, 0x0

    goto/16 :goto_1

    .line 1723
    :cond_10
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v38, v0

    move/from16 v39, v15

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v15, v37

    goto/16 :goto_2

    .line 1733
    :cond_11
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v38, v0

    move/from16 v39, v15

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v15, v37

    goto/16 :goto_3

    .line 1743
    :cond_12
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v38, v0

    move/from16 v39, v16

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v16, v37

    goto/16 :goto_4

    .line 1760
    :cond_13
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v38, v0

    move/from16 v39, v15

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v15, v37

    goto/16 :goto_5

    .line 1770
    :cond_14
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    move/from16 v39, v15

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v15, v37

    goto/16 :goto_6

    .line 1789
    :cond_15
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    goto/16 :goto_7

    .line 1790
    :cond_16
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    goto/16 :goto_8

    .line 1794
    :cond_17
    const/16 v37, 0x0

    goto/16 :goto_9

    .line 1798
    :sswitch_0
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v37

    move-object/from16 v38, v28

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1799
    goto/16 :goto_b

    .line 1807
    :cond_18
    move/from16 v37, v10

    move/from16 v38, v14

    sub-int v37, v37, v38

    move/from16 v38, v24

    sub-int v37, v37, v38

    move/from16 v38, v32

    sub-int v37, v37, v38

    move/from16 v38, v13

    sub-int v37, v37, v38

    move/from16 v33, v37

    .line 1809
    move/from16 v37, v33

    move-object/from16 v38, v28

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_a

    .line 1810
    const/16 v37, 0x0

    move/from16 v38, v32

    move-object/from16 v39, v29

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v39, v0

    move-object/from16 v40, v2

    move-object/from16 v0, v40

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v40, v0

    add-int v39, v39, v40

    move/from16 v40, v33

    sub-int v39, v39, v40

    sub-int v38, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v32, v37

    goto/16 :goto_a

    .line 1817
    :sswitch_1
    move/from16 v37, v10

    move/from16 v38, v14

    sub-int v37, v37, v38

    move-object/from16 v38, v29

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move/from16 v38, v24

    sub-int v37, v37, v38

    move/from16 v25, v37

    goto/16 :goto_b

    .line 1822
    :cond_19
    const/16 v37, 0x0

    goto/16 :goto_c

    .line 1849
    :cond_1a
    move/from16 v37, v30

    if-eqz v37, :cond_1d

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v37, v0

    :goto_f
    move-object/from16 v38, v17

    const/16 v39, 0x0

    aget v38, v38, v39

    sub-int v37, v37, v38

    move/from16 v31, v37

    .line 1850
    move/from16 v37, v15

    const/16 v38, 0x0

    move/from16 v39, v31

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    add-int v37, v37, v38

    move/from16 v15, v37

    .line 1851
    move-object/from16 v37, v17

    const/16 v38, 0x0

    const/16 v39, 0x0

    move/from16 v40, v31

    move/from16 v0, v40

    neg-int v0, v0

    move/from16 v40, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    aput v39, v37, v38

    .line 1852
    move/from16 v37, v15

    move/from16 v32, v37

    .line 1853
    move/from16 v37, v15

    move/from16 v33, v37

    .line 1855
    move/from16 v37, v22

    if-eqz v37, :cond_1b

    .line 1856
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v34, v37

    .line 1857
    move/from16 v37, v32

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v35, v37

    .line 1858
    move/from16 v37, v25

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v36, v37

    .line 1859
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move/from16 v38, v32

    move/from16 v39, v25

    move/from16 v40, v35

    move/from16 v41, v36

    invoke-virtual/range {v37 .. v41}, Landroid/widget/TextView;->layout(IIII)V

    .line 1860
    move/from16 v37, v35

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v32, v37

    .line 1861
    move/from16 v37, v36

    move-object/from16 v38, v34

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1863
    :cond_1b
    move/from16 v37, v23

    if-eqz v37, :cond_1c

    .line 1864
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v34, v37

    .line 1865
    move/from16 v37, v25

    move-object/from16 v38, v34

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1866
    move/from16 v37, v33

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v35, v37

    .line 1867
    move/from16 v37, v25

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v36, v37

    .line 1868
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move/from16 v38, v33

    move/from16 v39, v25

    move/from16 v40, v35

    move/from16 v41, v36

    invoke-virtual/range {v37 .. v41}, Landroid/widget/TextView;->layout(IIII)V

    .line 1869
    move/from16 v37, v35

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v33, v37

    .line 1870
    move/from16 v37, v36

    move-object/from16 v38, v34

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1872
    :cond_1c
    move/from16 v37, v30

    if-eqz v37, :cond_d

    .line 1873
    move/from16 v37, v32

    move/from16 v38, v33

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v15, v37

    goto/16 :goto_d

    .line 1849
    :cond_1d
    const/16 v37, 0x0

    goto/16 :goto_f

    .line 1888
    :cond_1e
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    const/16 v39, 0x5

    invoke-direct/range {v37 .. v39}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1889
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v26, v37

    .line 1890
    const/16 v37, 0x0

    move/from16 v27, v37

    :goto_10
    move/from16 v37, v27

    move/from16 v38, v26

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_1f

    .line 1891
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move/from16 v39, v27

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/view/View;

    move/from16 v39, v16

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v16, v37

    .line 1890
    add-int/lit8 v27, v27, 0x1

    goto :goto_10

    .line 1897
    :cond_1f
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-direct/range {v37 .. v39}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1898
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move-object/from16 v39, v17

    invoke-direct/range {v37 .. v39}, Landroid/support/v7/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v37

    move/from16 v27, v37

    .line 1899
    move/from16 v37, v11

    move/from16 v38, v9

    move/from16 v39, v11

    sub-int v38, v38, v39

    move/from16 v39, v12

    sub-int v38, v38, v39

    const/16 v39, 0x2

    div-int/lit8 v38, v38, 0x2

    add-int v37, v37, v38

    move/from16 v28, v37

    .line 1900
    move/from16 v37, v27

    const/16 v38, 0x2

    div-int/lit8 v37, v37, 0x2

    move/from16 v29, v37

    .line 1901
    move/from16 v37, v28

    move/from16 v38, v29

    sub-int v37, v37, v38

    move/from16 v30, v37

    .line 1902
    move/from16 v37, v30

    move/from16 v38, v27

    add-int v37, v37, v38

    move/from16 v31, v37

    .line 1903
    move/from16 v37, v30

    move/from16 v38, v15

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_21

    .line 1904
    move/from16 v37, v15

    move/from16 v30, v37

    .line 1909
    :cond_20
    :goto_11
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v32, v37

    .line 1910
    const/16 v37, 0x0

    move/from16 v33, v37

    :goto_12
    move/from16 v37, v33

    move/from16 v38, v32

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_22

    .line 1911
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move/from16 v39, v33

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/view/View;

    move/from16 v39, v30

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v30, v37

    .line 1910
    add-int/lit8 v33, v33, 0x1

    goto :goto_12

    .line 1905
    :cond_21
    move/from16 v37, v31

    move/from16 v38, v16

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_20

    .line 1906
    move/from16 v37, v30

    move/from16 v38, v31

    move/from16 v39, v16

    sub-int v38, v38, v39

    sub-int v37, v37, v38

    move/from16 v30, v37

    goto :goto_11

    .line 1915
    :cond_22
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 1916
    return-void

    .line 1796
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 30

    .prologue
    .line 1565
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    const/16 v22, 0x0

    move/from16 v5, v22

    .line 1566
    const/16 v22, 0x0

    move/from16 v6, v22

    .line 1567
    const/16 v22, 0x0

    move/from16 v7, v22

    .line 1569
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    move-object/from16 v22, v0

    move-object/from16 v8, v22

    .line 1572
    move-object/from16 v22, v2

    invoke-static/range {v22 .. v22}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1573
    const/16 v22, 0x1

    move/from16 v9, v22

    .line 1574
    const/16 v22, 0x0

    move/from16 v10, v22

    .line 1582
    :goto_0
    const/16 v22, 0x0

    move/from16 v11, v22

    .line 1583
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1584
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v4

    const/16 v27, 0x0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move/from16 v28, v0

    invoke-direct/range {v22 .. v28}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1586
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v11, v22

    .line 1587
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v25, v0

    .line 1588
    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    .line 1587
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1589
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    .line 1590
    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    .line 1589
    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1593
    :cond_0
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1594
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v4

    const/16 v27, 0x0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move/from16 v28, v0

    invoke-direct/range {v22 .. v28}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1596
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    .line 1597
    invoke-direct/range {v23 .. v24}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v11, v22

    .line 1598
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v25, v0

    .line 1599
    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    .line 1598
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1600
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    .line 1601
    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    .line 1600
    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1604
    :cond_1
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v22

    move/from16 v12, v22

    .line 1605
    move/from16 v22, v5

    move/from16 v23, v12

    move/from16 v24, v11

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1606
    move-object/from16 v22, v8

    move/from16 v23, v9

    const/16 v24, 0x0

    move/from16 v25, v12

    move/from16 v26, v11

    sub-int v25, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    aput v24, v22, v23

    .line 1608
    const/16 v22, 0x0

    move/from16 v13, v22

    .line 1609
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1610
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v4

    const/16 v27, 0x0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move/from16 v28, v0

    invoke-direct/range {v22 .. v28}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1612
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v13, v22

    .line 1613
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v25, v0

    .line 1614
    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    .line 1613
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1615
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v23, v0

    .line 1616
    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    .line 1615
    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1619
    :cond_2
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v22

    move/from16 v14, v22

    .line 1620
    move/from16 v22, v5

    move/from16 v23, v14

    move/from16 v24, v13

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1621
    move-object/from16 v22, v8

    move/from16 v23, v10

    const/16 v24, 0x0

    move/from16 v25, v14

    move/from16 v26, v13

    sub-int v25, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    aput v24, v22, v23

    .line 1623
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1624
    move/from16 v22, v5

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v24, v0

    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v4

    const/16 v28, 0x0

    move-object/from16 v29, v8

    invoke-direct/range {v23 .. v29}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1626
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v25, v0

    .line 1627
    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    .line 1626
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1628
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v23, v0

    .line 1629
    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    .line 1628
    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1632
    :cond_3
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1633
    move/from16 v22, v5

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v4

    const/16 v28, 0x0

    move-object/from16 v29, v8

    invoke-direct/range {v23 .. v29}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1635
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    .line 1636
    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    .line 1635
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1637
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    .line 1638
    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    .line 1637
    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1641
    :cond_4
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v22

    move/from16 v15, v22

    .line 1642
    const/16 v22, 0x0

    move/from16 v16, v22

    :goto_1
    move/from16 v22, v16

    move/from16 v23, v15

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 1643
    move-object/from16 v22, v2

    move/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v17, v22

    .line 1644
    move-object/from16 v22, v17

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v18, v22

    .line 1645
    move-object/from16 v22, v18

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    move/from16 v22, v0

    if-nez v22, :cond_5

    move-object/from16 v22, v2

    move-object/from16 v23, v17

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 1642
    :cond_5
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1576
    :cond_6
    const/16 v22, 0x0

    move/from16 v9, v22

    .line 1577
    const/16 v22, 0x1

    move/from16 v10, v22

    goto/16 :goto_0

    .line 1650
    :cond_7
    move/from16 v22, v5

    move-object/from16 v23, v2

    move-object/from16 v24, v17

    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v4

    const/16 v28, 0x0

    move-object/from16 v29, v8

    invoke-direct/range {v23 .. v29}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1652
    move/from16 v22, v6

    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v17

    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1653
    move/from16 v22, v7

    move-object/from16 v23, v17

    .line 1654
    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    .line 1653
    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    goto :goto_2

    .line 1657
    :cond_8
    const/16 v22, 0x0

    move/from16 v16, v22

    .line 1658
    const/16 v22, 0x0

    move/from16 v17, v22

    .line 1659
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v18, v22

    .line 1660
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v19, v22

    .line 1661
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1662
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v19

    add-int v25, v25, v26

    move/from16 v26, v4

    move/from16 v27, v18

    move-object/from16 v28, v8

    invoke-direct/range {v22 .. v28}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v22

    move/from16 v16, v22

    .line 1665
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v16, v22

    .line 1666
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v17, v22

    .line 1667
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    .line 1668
    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    .line 1667
    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1670
    :cond_9
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1671
    move/from16 v22, v16

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v19

    add-int v26, v26, v27

    move/from16 v27, v4

    move/from16 v28, v17

    move/from16 v29, v18

    add-int v28, v28, v29

    move-object/from16 v29, v8

    invoke-direct/range {v23 .. v29}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v16, v22

    .line 1675
    move/from16 v22, v17

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    .line 1676
    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v17, v22

    .line 1677
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    .line 1678
    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    .line 1677
    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1681
    :cond_a
    move/from16 v22, v5

    move/from16 v23, v16

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1682
    move/from16 v22, v6

    move/from16 v23, v17

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1686
    move/from16 v22, v5

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v23

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v24

    add-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1687
    move/from16 v22, v6

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v23

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v24

    add-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v6, v22

    .line 1689
    move/from16 v22, v5

    move-object/from16 v23, v2

    .line 1690
    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v23, v3

    move/from16 v24, v7

    const/high16 v25, -0x1000000

    and-int v24, v24, v25

    .line 1689
    invoke-static/range {v22 .. v24}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v22

    move/from16 v20, v22

    .line 1692
    move/from16 v22, v6

    move-object/from16 v23, v2

    .line 1693
    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v23, v4

    move/from16 v24, v7

    const/16 v25, 0x10

    shl-int/lit8 v24, v24, 0x10

    .line 1692
    invoke-static/range {v22 .. v24}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v22

    move/from16 v21, v22

    .line 1696
    move-object/from16 v22, v2

    move/from16 v23, v20

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Landroid/support/v7/widget/Toolbar;->shouldCollapse()Z

    move-result v24

    if-eqz v24, :cond_b

    const/16 v24, 0x0

    :goto_3
    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1697
    return-void

    .line 1696
    :cond_b
    move/from16 v24, v21

    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .prologue
    .line 1417
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    instance-of v5, v5, Landroid/support/v7/widget/Toolbar$SavedState;

    if-nez v5, :cond_0

    .line 1418
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1436
    :goto_0
    return-void

    .line 1422
    :cond_0
    move-object v5, v1

    check-cast v5, Landroid/support/v7/widget/Toolbar$SavedState;

    move-object v2, v5

    .line 1423
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v7/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v6

    invoke-super {v5, v6}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1425
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v5}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v5

    :goto_1
    move-object v3, v5

    .line 1426
    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v5, :cond_1

    move-object v5, v3

    if-eqz v5, :cond_1

    .line 1427
    move-object v5, v3

    move-object v6, v2

    iget v6, v6, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    move-object v4, v5

    .line 1428
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 1429
    move-object v5, v4

    invoke-static {v5}, Landroid/support/v4/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    move-result v5

    .line 1433
    :cond_1
    move-object v5, v2

    iget-boolean v5, v5, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v5, :cond_2

    .line 1434
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/Toolbar;->postShowOverflowMenu()V

    .line 1436
    :cond_2
    goto :goto_0

    .line 1425
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5

    .prologue
    .line 481
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 482
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 485
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureContentInsets()V

    .line 486
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RtlSpacingHelper;->setDirection(Z)V

    .line 487
    return-void

    .line 486
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 1405
    move-object v0, p0

    new-instance v2, Landroid/support/v7/widget/Toolbar$SavedState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-super {v4}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v1, v2

    .line 1407
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 1408
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1411
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1412
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 1456
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v4

    move v2, v4

    .line 1457
    move v4, v2

    if-nez v4, :cond_0

    .line 1458
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1461
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    if-nez v4, :cond_1

    .line 1462
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    move v3, v4

    .line 1463
    move v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-nez v4, :cond_1

    .line 1464
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1468
    :cond_1
    move v4, v2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    move v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 1469
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1472
    :cond_3
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method removeChildrenForExpandedActionView()V
    .locals 7

    .prologue
    .line 2113
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v5

    move v1, v5

    .line 2115
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    :goto_0
    move v5, v2

    if-ltz v5, :cond_1

    .line 2116
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 2117
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v4, v5

    .line 2118
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eq v5, v6, :cond_0

    .line 2119
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/Toolbar;->removeViewAt(I)V

    .line 2120
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 2115
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2123
    :cond_1
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 4

    .prologue
    .line 2144
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/Toolbar;->mCollapsible:Z

    .line 2145
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2146
    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 4

    .prologue
    .line 1280
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gez v2, :cond_0

    .line 1281
    const/high16 v2, -0x80000000

    move v1, v2

    .line 1283
    :cond_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    if-eq v2, v3, :cond_1

    .line 1284
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 1285
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1286
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1289
    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 4

    .prologue
    .line 1238
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gez v2, :cond_0

    .line 1239
    const/high16 v2, -0x80000000

    move v1, v2

    .line 1241
    :cond_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    if-eq v2, v3, :cond_1

    .line 1242
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 1243
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1244
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1247
    :cond_1
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 6

    .prologue
    .line 1162
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/Toolbar;->ensureContentInsets()V

    .line 1163
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 1164
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 6

    .prologue
    .line 1099
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/Toolbar;->ensureContentInsets()V

    .line 1100
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RtlSpacingHelper;->setRelative(II)V

    .line 1101
    return-void
.end method

.method public setLogo(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 499
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 500
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 615
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_2

    .line 616
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureLogoView()V

    .line 617
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 618
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 624
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 625
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 627
    :cond_1
    return-void

    .line 620
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 621
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 622
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public setLogoDescription(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 649
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 650
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 661
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 662
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureLogoView()V

    .line 664
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 665
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 667
    :cond_1
    return-void
.end method

.method public setMenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 10

    .prologue
    .line 542
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-nez v4, :cond_0

    .line 574
    :goto_0
    return-void

    .line 546
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/Toolbar;->ensureMenuView()V

    .line 547
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v4

    move-object v3, v4

    .line 548
    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 549
    goto :goto_0

    .line 552
    :cond_1
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 553
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 554
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 557
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v4, :cond_3

    .line 558
    move-object v4, v0

    new-instance v5, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/Toolbar$1;)V

    iput-object v5, v4, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 561
    :cond_3
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 562
    move-object v4, v1

    if-eqz v4, :cond_4

    .line 563
    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 564
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 571
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 572
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 573
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 574
    goto :goto_0

    .line 566
    :cond_4
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 567
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 568
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 569
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_1
.end method

.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .locals 6

    .prologue
    .line 2153
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 2154
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 2155
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v3, :cond_0

    .line 2156
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/ActionMenuView;->setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 2158
    :cond_0
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 897
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 898
    return-void

    .line 897
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 911
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 912
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 914
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 915
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 917
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 934
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 935
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 952
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_2

    .line 953
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 954
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 955
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 961
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 962
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 964
    :cond_1
    return-void

    .line 957
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 958
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 959
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    .line 988
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 989
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 990
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 4

    .prologue
    .line 1077
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    .line 1078
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1011
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 1012
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1013
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 8
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 352
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 353
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    .line 354
    move v2, v1

    if-nez v2, :cond_1

    .line 355
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    move-object v2, v0

    new-instance v3, Landroid/view/ContextThemeWrapper;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    move v6, v1

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 789
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 790
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 8

    .prologue
    .line 800
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 801
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 802
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    .line 803
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/AppCompatTextView;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 804
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 805
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 806
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v3, :cond_0

    .line 807
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 809
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    if-eqz v3, :cond_1

    .line 810
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 813
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 814
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 820
    :cond_2
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 821
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    :cond_3
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 824
    return-void

    .line 816
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 817
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 818
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 6
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 842
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 843
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 844
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 846
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 866
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    .line 867
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 868
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 870
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 734
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 735
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 8

    .prologue
    .line 746
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 747
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 748
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    .line 749
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/AppCompatTextView;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 750
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 751
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 752
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v3, :cond_0

    .line 753
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 755
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    if-eqz v3, :cond_1

    .line 756
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 759
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 760
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 766
    :cond_2
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 767
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    :cond_3
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 770
    return-void

    .line 762
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 763
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 764
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public setTitleMargin(IIII)V
    .locals 7

    .prologue
    .line 385
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 386
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 387
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 388
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 390
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 391
    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 4

    .prologue
    .line 476
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 477
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 478
    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 4

    .prologue
    .line 454
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 456
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 457
    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 4

    .prologue
    .line 410
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 412
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 413
    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 4

    .prologue
    .line 432
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 434
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 435
    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 6
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 831
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    .line 832
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 833
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 835
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 854
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    .line 855
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 856
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 858
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 2

    .prologue
    .line 528
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->showOverflowMenu()Z

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
